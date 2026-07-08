#!/usr/bin/env node
// Bumps the version of individual FHIR artifacts when their content changed
// relative to the base branch (default: origin/master), and stamps the current
// date into each bumped artifact.
//
// Core idea (idempotent, no Sushi):
//   * The comparison ALWAYS runs against the base branch, not the previous
//     commit. The target version is a pure function bump(artifactBaseVersion,
//     level), recomputed identically on every run -> running it multiple times
//     in the same PR never double-bumps.
//   * "level" (major|minor|patch) comes from the diff of the global version in
//     sushi-config against the base branch. Only runs when that global version
//     was raised.
//   * "Changed" is detected via the committed fsh-generated JSONs (field
//     normalization: version/date/meta.lastUpdated + line endings). Hence it
//     does not matter how many artifacts live in a single FSH file.
//   * Date: bumped artifacts get the bump day as their 'date' (--today,
//     otherwise today). The date is written both in the FSH (as ^date/date
//     depending on definition/instance) and in the generated JSON, so it
//     survives a re-run of Sushi.
//
// Usage:  node bump-artifact-versions.mjs [--base origin/master] [--today YYYY-MM-DD]
//                                         [--write | --status | --check-release]
//   no flag:   dry run (report only, exit 0)
//   --write:   write FSH + generated JSON (version + date)
//   --status:  print a single token to stdout and exit (exit 0):
//       bootstrap  = base branch has no global version yet
//       unchanged  = global version identical to base (no bump needed)
//       patch|minor|major = detected bump level (global version raised)
//     Gate for the pipeline (abort neutrally on unchanged/bootstrap).
//   --check-release: verifies that the guide version was raised alongside the
//     release (guide.yaml + Index.page.md raised, Index date = today). Fails
//     (exit 1) on violation so the bump never runs. Only relevant when the
//     global version was raised.

import { execFileSync } from 'node:child_process';
import { readFileSync, writeFileSync, readdirSync } from 'node:fs';
import { join } from 'node:path';

const REPO_ROOT = execFileSync('git', ['rev-parse', '--show-toplevel'], { encoding: 'utf8' }).trim();
const RES_DIR = 'Resources';
const GEN_DIR = `${RES_DIR}/fsh-generated/resources`;
const FSH_DIR = `${RES_DIR}/input/fsh`;
const SUSHI_CONFIG = `${RES_DIR}/sushi-config.yaml`;

// Guide files whose version must be raised alongside a release.
const GUIDE_DIR = 'guides/Implementierungsleitfaden-Digitale-Patientenrechnung';
const GUIDE_YAML = `${GUIDE_DIR}/guide.yaml`;
const GUIDE_INDEX = `${GUIDE_DIR}/Startseite/Index.page.md`;

// Only these resourceTypes are versioned conformance artifacts.
// Everything else (Invoice, Patient, Bundle, AuditEvent ... = examples) is ignored.
const CONFORMANCE_TYPES = new Set([
  'StructureDefinition',
  'CodeSystem',
  'ValueSet',
  'CapabilityStatement',
  'OperationDefinition',
  'SearchParameter',
]);

const args = process.argv.slice(2);
const BASE = argVal('--base') ?? 'origin/master';
const WRITE = args.includes('--write');
const STATUS = args.includes('--status');
const CHECK_RELEASE = args.includes('--check-release');
const TODAY = argVal('--today') || new Date().toISOString().slice(0, 10); // YYYY-MM-DD

main();

function main() {
  // 1) Determine global version + bump level
  const baseRawCfg = readBaseFile(SUSHI_CONFIG);
  const baseVersion = baseRawCfg == null ? null : parseVersion(baseRawCfg);
  const prVersion = parseVersion(readFileSync(join(REPO_ROOT, SUSHI_CONFIG), 'utf8'));
  if (!prVersion) {
    fail(`Could not read global version in PR (${SUSHI_CONFIG} has no valid 'version:').`);
  }
  const level = baseVersion ? bumpLevel(baseVersion, prVersion) : null;
  const state = !baseVersion ? 'bootstrap' : (level ?? 'unchanged');

  if (STATUS) { log(state); return; }

  if (CHECK_RELEASE) {
    // Only check when an actual bump happens; the gate (unchanged/bootstrap) is
    // handled separately (neutral) in the pipeline.
    if (state === 'patch' || state === 'minor' || state === 'major') {
      checkRelease();
      log('Release checks passed (guide.yaml + Index version raised, Index date current).');
    } else {
      log(`No bump (${state}) - no release checks needed.`);
    }
    return;
  }

  if (state === 'bootstrap') {
    log(`Base branch (${BASE}) has no global version. Establishing baseline, no bump.`);
    return;
  }
  if (state === 'unchanged') {
    log(`Global version unchanged (${fmt(prVersion)}). No bump needed.`);
    return;
  }
  log(`Global version: ${fmt(baseVersion)} -> ${fmt(prVersion)}  => level: ${level}  (date: ${TODAY})`);

  // 2) FSH index: artifact id -> version declaration in the FSH
  const index = buildFshIndex();

  // 3) Determine changed artifacts and bump them
  const genFiles = readdirSync(join(REPO_ROOT, GEN_DIR)).filter((f) => f.endsWith('.json'));
  const changes = [];
  const skipped = [];
  for (const file of genFiles) {
    const prRaw = readFileSync(join(REPO_ROOT, GEN_DIR, file), 'utf8');
    let prJson;
    try { prJson = JSON.parse(prRaw); } catch { continue; }
    if (!CONFORMANCE_TYPES.has(prJson.resourceType)) continue;

    const baseRaw = readBaseFile(`${GEN_DIR}/${file}`);
    const isNew = baseRaw == null;
    if (!isNew && canonical(baseRaw) === canonical(prRaw)) continue; // content unchanged

    const id = prJson.id;
    const entry = index.get(id);
    if (!entry) {
      skipped.push(`${prJson.resourceType}/${id}: no FSH version line found`);
      continue;
    }

    let baseArtVersion;
    if (isNew) {
      baseArtVersion = prVersion; // new artifact starts at the global target version
    } else {
      const bv = parseVersion(`version: ${JSON.parse(baseRaw).version ?? ''}`);
      baseArtVersion = bv ?? baseVersion;
    }
    const target = isNew ? baseArtVersion : applyBump(baseArtVersion, level);
    const targetStr = fmt(target);
    if (entry.current.trim() === targetStr) continue; // already at target (idempotency)
    changes.push({ id, type: prJson.resourceType, from: entry.current, to: targetStr, entry, isNew, jsonFile: file });
  }

  // 4) Apply - FSH declaration AND the generated JSON in one go. A bump only
  //    changes version + date in the JSON, so these are patched directly
  //    (byte-identical to what Sushi would produce) - no re-run of Sushi and no
  //    CI re-trigger needed.
  report(changes, skipped);
  if (WRITE) {
    // Safety net: the bump is only written when the guide version was raised
    // (guide.yaml + Index.page.md, Index date = today). The check deliberately
    // also lives here in the script (not only as a separate workflow step),
    // because workflow_run always uses the workflow file from the default
    // branch, which can lag behind the script.
    checkRelease();
    writeChanges(changes);
    log(`${changes.length} artifact(s) bumped (version + date ${TODAY}) in FSH + generated JSON.`);
  } else if (changes.length) {
    log('(Dry run - with --write the changes above would be written.)');
  }
}

// ---------- Writing (version + date) ----------

function writeChanges(changes) {
  // Edit FSH grouped per file and from bottom to top: date lines may be
  // inserted; bottom-to-top keeps the indices of the not-yet-processed
  // (higher-up) artifacts valid.
  const byFile = new Map();
  for (const c of changes) {
    const arr = byFile.get(c.entry.file) ?? [];
    arr.push(c);
    byFile.set(c.entry.file, arr);
  }
  for (const [file, cs] of byFile) {
    const text = readFileSync(file, 'utf8');
    const eol = text.includes('\r\n') ? '\r\n' : '\n';
    const lines = text.split(/\r?\n/);
    cs.sort((a, b) => b.entry.lineIdx - a.entry.lineIdx);
    for (const c of cs) {
      rewriteVersionLine(lines, c.entry, c.to);
      setFshDate(lines, c.entry, TODAY);
    }
    writeFileSync(file, lines.join(eol));
  }
  // Generated JSONs: exactly one file per artifact.
  for (const c of changes) {
    patchGeneratedJson(join(REPO_ROOT, GEN_DIR, c.jsonFile), c.to, TODAY);
  }
}

function rewriteVersionLine(lines, entry, target) {
  const l = lines[entry.lineIdx];
  let nl;
  if (entry.form === 'insert') {
    nl = l.replace(/(\binsert\s+Meta(?:Instance)?\s*\(\s*)[^)]*?(\s*\))/, `$1${target}$2`);
  } else {
    nl = l.replace(/(^\s*\*\s*\^?version\s*=\s*")[^"]*(")/, `$1${target}$2`);
  }
  if (nl === l) fail(`Version rewrite changed nothing: ${entry.file}:${entry.lineIdx + 1}`);
  lines[entry.lineIdx] = nl;
}

// Sets the date in the FSH block: update an existing date line, otherwise insert
// it after the version line. Definitions use ^date, instances use date.
function setFshDate(lines, entry, iso) {
  const dateRe = /^(\s*\*\s*\^?date\s*=\s*")[^"]*(")/;
  for (let i = entry.startLine; i < entry.endLine && i < lines.length; i++) {
    if (dateRe.test(lines[i])) {
      lines[i] = lines[i].replace(dateRe, `$1${iso}$2`);
      return;
    }
  }
  const caret = entry.kw === 'Instance' ? '' : '^';
  lines.splice(entry.lineIdx + 1, 0, `* ${caret}date = "${iso}"`);
}

// Sets version + date in the generated JSON. version is always replaced; date is
// replaced if present, otherwise inserted right after the version line (e.g.
// SearchParameters have no date field by default).
function patchGeneratedJson(absPath, targetVersion, iso) {
  const text = readFileSync(absPath, 'utf8');
  const eol = text.includes('\r\n') ? '\r\n' : '\n';
  const lines = text.split(/\r?\n/);

  let versionIdx = -1;
  for (let i = 0; i < lines.length; i++) {
    if (/^\s*"version"\s*:\s*"[^"]*"\s*,?\s*$/.test(lines[i])) {
      lines[i] = lines[i].replace(/("version"\s*:\s*")[^"]*(")/, `$1${targetVersion}$2`);
      versionIdx = i;
      break;
    }
  }
  if (versionIdx < 0) fail(`No version field found in generated JSON: ${absPath}`);

  let dateIdx = -1;
  for (let i = 0; i < lines.length; i++) {
    if (/^\s*"date"\s*:\s*"[^"]*"\s*,?\s*$/.test(lines[i])) {
      lines[i] = lines[i].replace(/("date"\s*:\s*")[^"]*(")/, `$1${iso}$2`);
      dateIdx = i;
      break;
    }
  }
  if (dateIdx < 0) {
    const indent = (lines[versionIdx].match(/^(\s*)/) || ['', ''])[1];
    lines.splice(versionIdx + 1, 0, `${indent}"date": "${iso}",`);
  }
  writeFileSync(absPath, lines.join(eol));
}

// ---------- Release checks (guide version raised?) ----------

function checkRelease() {
  const problems = [];
  const todayDe = isoToGerman(TODAY);

  // guide.yaml: version raised relative to base?
  const gyPr = parseVersion(readFileSync(join(REPO_ROOT, GUIDE_YAML), 'utf8'));
  const gyBaseRaw = readBaseFile(GUIDE_YAML);
  const gyBase = gyBaseRaw == null ? null : parseVersion(gyBaseRaw);
  if (!gyPr) problems.push(`No valid 'version:' in ${GUIDE_YAML}.`);
  else if (gyBase && fmt(gyPr) === fmt(gyBase)) {
    problems.push(`Version in ${GUIDE_YAML} was not raised (still ${fmt(gyPr)}).`);
  }

  // Index.page.md: version raised + date = today?
  const idxRaw = readFileSync(join(REPO_ROOT, GUIDE_INDEX), 'utf8');
  const idxBaseRaw = readBaseFile(GUIDE_INDEX);
  const idxVer = indexVersion(idxRaw);
  const idxBaseVer = idxBaseRaw == null ? null : indexVersion(idxBaseRaw);
  if (!idxVer) problems.push(`No "Version:" line in ${GUIDE_INDEX}.`);
  else if (idxBaseVer && idxVer === idxBaseVer) {
    problems.push(`Version in ${GUIDE_INDEX} was not raised (still ${idxVer}).`);
  }

  const idxDate = indexDate(idxRaw);
  if (!idxDate) problems.push(`No "Datum:" line in ${GUIDE_INDEX}.`);
  else if (idxDate !== todayDe) {
    problems.push(`Date in ${GUIDE_INDEX} is "${idxDate}", expected "${todayDe}" (today).`);
  }

  if (problems.length) {
    fail('Release preparation incomplete - bump will not run:\n  - ' + problems.join('\n  - '));
  }
}

// "Version: 1.2.3" from the Index page (status section).
function indexVersion(text) {
  const m = String(text).match(/^\s*Version:\s*(\d+\.\d+\.\d+)/mi);
  return m ? m[1] : null;
}
// "Datum: DD.MM.YYYY" from the Index page.
function indexDate(text) {
  const m = String(text).match(/^\s*Datum:\s*(\d{2}\.\d{2}\.\d{4})/mi);
  return m ? m[1] : null;
}
// "2026-07-08" -> "08.07.2026"
function isoToGerman(iso) {
  const m = String(iso).match(/^(\d{4})-(\d{2})-(\d{2})/);
  return m ? `${m[3]}.${m[2]}.${m[1]}` : iso;
}

// ---------- FSH index ----------

function buildFshIndex() {
  const index = new Map(); // id -> { file, kw, startLine, endLine, lineIdx, form, current }
  for (const file of walkFsh(join(REPO_ROOT, FSH_DIR))) {
    const text = readFileSync(file, 'utf8');
    const lines = text.split(/\n/);
    let block = null; // { kw, name, id, instanceOf, startLine }
    const flush = (endLine) => {
      if (!block) return;
      const id = resolveId(block);
      if (!id) { block = null; return; }
      const vloc = findVersionLine(lines, block.startLine, endLine);
      if (vloc) index.set(id, { file, kw: block.kw, startLine: block.startLine, endLine, ...vloc });
      block = null;
    };
    for (let i = 0; i < lines.length; i++) {
      const m = lines[i].match(/^(Profile|Extension|CodeSystem|ValueSet|Instance)\s*:\s*(\S+)/);
      if (m) {
        flush(i);
        block = { kw: m[1], name: m[2], startLine: i };
      } else if (block) {
        const idm = lines[i].match(/^\s*Id\s*:\s*(\S+)/);
        if (idm) block.id = idm[1];
        const iom = lines[i].match(/^\s*InstanceOf\s*:\s*(\S+)/);
        if (iom) block.instanceOf = iom[1];
      }
    }
    flush(lines.length);
  }
  return index;
}

function resolveId(block) {
  if (block.kw === 'Instance') {
    // Conformance instances only; examples are ignored.
    if (!['SearchParameter', 'OperationDefinition', 'CapabilityStatement'].includes(block.instanceOf)) {
      return null;
    }
    return block.id ?? block.name; // file name uses Id: if present, otherwise the instance name
  }
  return block.id ?? block.name;
}

// Finds the version declaration within [start,end) and returns line + form.
function findVersionLine(lines, start, end) {
  for (let i = start; i < end; i++) {
    const l = lines[i];
    let m = l.match(/\binsert\s+Meta(?:Instance)?\s*\(\s*([^)]*?)\s*\)/);
    if (m) return { lineIdx: i, form: 'insert', current: m[1] };
    m = l.match(/^\s*\*\s*\^?version\s*=\s*"([^"]*)"/);
    if (m) return { lineIdx: i, form: 'assign', current: m[1] };
  }
  return null;
}

// ---------- Version helpers ----------

// Parses "version: 1.2.3-beta" -> {major,minor,patch}; suffixes are ignored.
function parseVersion(fileOrLine) {
  const m = String(fileOrLine).match(/^version\s*:\s*["']?\s*(\d+)\.(\d+)\.(\d+)/m);
  if (!m) return null;
  return { major: +m[1], minor: +m[2], patch: +m[3] };
}

function fmt(v) {
  return `${v.major}.${v.minor}.${v.patch}`;
}

// The highest changed position determines the level; null if equal.
function bumpLevel(base, pr) {
  if (pr.major !== base.major) return 'major';
  if (pr.minor !== base.minor) return 'minor';
  if (pr.patch !== base.patch) return 'patch';
  return null;
}

function applyBump(v, level) {
  if (level === 'major') return { major: v.major + 1, minor: 0, patch: 0 };
  if (level === 'minor') return { major: v.major, minor: v.minor + 1, patch: 0 };
  return { major: v.major, minor: v.minor, patch: v.patch + 1 };
}

// ---------- JSON comparison normalization ----------

function canonical(raw) {
  const o = JSON.parse(raw);
  delete o.version;
  delete o.date;
  if (o.meta) { delete o.meta.lastUpdated; if (Object.keys(o.meta).length === 0) delete o.meta; }
  return JSON.stringify(sortNorm(o));
}

// Deep: sort keys + normalize CRLF in strings (robust against line endings).
function sortNorm(x) {
  if (Array.isArray(x)) return x.map(sortNorm);
  if (x && typeof x === 'object') {
    const out = {};
    for (const k of Object.keys(x).sort()) out[k] = sortNorm(x[k]);
    return out;
  }
  if (typeof x === 'string') return x.replace(/\r\n/g, '\n');
  return x;
}

// ---------- Git / IO ----------

// Content of a file in the base branch; null if not present there.
function readBaseFile(relPath) {
  try {
    return execFileSync('git', ['show', `${BASE}:${relPath}`], {
      cwd: REPO_ROOT, encoding: 'utf8', stdio: ['ignore', 'pipe', 'ignore'],
    });
  } catch {
    return null;
  }
}

function* walkFsh(dir) {
  for (const e of readdirSync(dir, { withFileTypes: true })) {
    const p = join(dir, e.name);
    if (e.isDirectory()) yield* walkFsh(p);
    else if (e.name.endsWith('.fsh')) yield p;
  }
}

// ---------- Output ----------

function report(changes, skipped) {
  if (!changes.length) log('No changed artifacts - nothing to bump.');
  for (const c of changes) {
    log(`  ${c.isNew ? 'NEW  ' : 'BUMP '} ${c.type}/${c.id}: ${c.from} -> ${c.to}`);
  }
  for (const s of skipped) log(`  WARN ${s}`);
}

function argVal(flag) {
  const i = args.indexOf(flag);
  return i >= 0 ? args[i + 1] : undefined;
}
function log(m) { process.stdout.write(m + '\n'); }
function fail(m) { process.stderr.write('ERROR: ' + m + '\n'); process.exit(1); }
