#!/usr/bin/env node
// Hebt die Version einzelner FHIR-Artefakte an, wenn sich ihr Inhalt
// gegenüber dem Basis-Branch (Standard: origin/master) geändert hat, und
// stempelt bei jedem Bump das aktuelle Datum in das Artefakt.
//
// Kernidee (idempotent, ohne Sushi):
//   * Der Vergleich läuft IMMER gegen den Basis-Branch, nicht gegen den
//     vorherigen Commit. Die Zielversion ist eine reine Funktion
//     bump(basisVersionDesArtefakts, level) und wird bei jedem Lauf identisch
//     neu berechnet -> mehrfaches Ausführen im selben PR bumpt nie doppelt.
//   * "level" (major|minor|patch) kommt aus dem Diff der globalen Version in
//     der sushi-config gegenüber dem Basis-Branch. Läuft nur, wenn diese
//     globale Version angehoben wurde.
//   * "Geändert" wird über die committeten fsh-generated JSONs erkannt
//     (Feld-Normalisierung: version/date/meta.lastUpdated + Zeilenenden).
//     Dadurch egal, wie viele Artefakte in einer FSH-Datei stehen.
//   * Datum: Gebumpte Artefakte erhalten als 'date' den Tag des Bumps
//     (--today, sonst heute). Das Datum wird sowohl in der FSH (als
//     ^date/date je nach Definition/Instanz) als auch im generierten JSON
//     gesetzt, damit es einen erneuten Sushi-Lauf übersteht.
//
// Aufruf:  node bump-artifact-versions.mjs [--base origin/master] [--today YYYY-MM-DD]
//                                          [--write | --status | --check-release]
//   ohne Flag: Dry-Run (nur Report, exit 0)
//   --write:   FSH + generiertes JSON schreiben (Version + Datum)
//   --status:  gibt nur ein Token auf stdout aus und beendet sich (exit 0):
//       bootstrap  = Basis-Branch hat noch keine globale Version
//       unchanged  = globale Version identisch zu Basis (kein Bump nötig)
//       patch|minor|major = ermitteltes Bump-Level (globale Version angehoben)
//     Gate für die Pipeline (neutral abbrechen bei unchanged/bootstrap).
//   --check-release: prüft, ob zur Release-Vorbereitung auch die Guide-Version
//     mitgezogen wurde (guide.yaml + Index.page.md angehoben, Index-Datum =
//     heute). Schlägt bei Verstoß fehl (exit 1), damit der Bump gar nicht erst
//     läuft. Nur relevant, wenn die globale Version angehoben wurde.

import { execFileSync } from 'node:child_process';
import { readFileSync, writeFileSync, readdirSync } from 'node:fs';
import { join } from 'node:path';

const REPO_ROOT = execFileSync('git', ['rev-parse', '--show-toplevel'], { encoding: 'utf8' }).trim();
const RES_DIR = 'Resources';
const GEN_DIR = `${RES_DIR}/fsh-generated/resources`;
const FSH_DIR = `${RES_DIR}/input/fsh`;
const SUSHI_CONFIG = `${RES_DIR}/sushi-config.yaml`;

// Guide-Dateien, deren Version bei einem Release mitgezogen werden muss.
const GUIDE_DIR = 'guides/Implementierungsleitfaden-Digitale-Patientenrechnung';
const GUIDE_YAML = `${GUIDE_DIR}/guide.yaml`;
const GUIDE_INDEX = `${GUIDE_DIR}/Startseite/Index.page.md`;

// Nur diese resourceTypes sind versionierte Conformance-Artefakte.
// Alles andere (Invoice, Patient, Bundle, AuditEvent ... = Beispiele) wird ignoriert.
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
  // 1) Globale Version + Bump-Level bestimmen
  const baseRawCfg = readBaseFile(SUSHI_CONFIG);
  const baseVersion = baseRawCfg == null ? null : parseVersion(baseRawCfg);
  const prVersion = parseVersion(readFileSync(join(REPO_ROOT, SUSHI_CONFIG), 'utf8'));
  if (!prVersion) {
    fail(`Konnte globale Version im PR nicht lesen (${SUSHI_CONFIG} enthält keine gültige 'version:').`);
  }
  const level = baseVersion ? bumpLevel(baseVersion, prVersion) : null;
  const state = !baseVersion ? 'bootstrap' : (level ?? 'unchanged');

  if (STATUS) { log(state); return; }

  if (CHECK_RELEASE) {
    // Nur prüfen, wenn tatsächlich gebumpt wird; das Gate (unchanged/bootstrap)
    // greift separat neutral in der Pipeline.
    if (state === 'patch' || state === 'minor' || state === 'major') {
      checkRelease();
      log('Release-Checks bestanden (guide.yaml + Index-Version angehoben, Index-Datum aktuell).');
    } else {
      log(`Kein Bump (${state}) – keine Release-Checks nötig.`);
    }
    return;
  }

  if (state === 'bootstrap') {
    log(`Basis-Branch (${BASE}) hat keine globale Version. Baseline wird etabliert, kein Bump.`);
    return;
  }
  if (state === 'unchanged') {
    log(`Globale Version unverändert (${fmt(prVersion)}). Kein Bump nötig.`);
    return;
  }
  log(`Globale Version: ${fmt(baseVersion)} -> ${fmt(prVersion)}  => Level: ${level}  (Datum: ${TODAY})`);

  // 2) FSH-Index: artefakt-id -> Versions-Deklaration im FSH
  const index = buildFshIndex();

  // 3) Geänderte Artefakte ermitteln und bumpen
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
    if (!isNew && canonical(baseRaw) === canonical(prRaw)) continue; // inhaltlich unverändert

    const id = prJson.id;
    const entry = index.get(id);
    if (!entry) {
      skipped.push(`${prJson.resourceType}/${id}: keine FSH-Versionszeile gefunden`);
      continue;
    }

    let baseArtVersion;
    if (isNew) {
      baseArtVersion = prVersion; // neues Artefakt startet auf globaler Zielversion
    } else {
      const bv = parseVersion(`version: ${JSON.parse(baseRaw).version ?? ''}`);
      baseArtVersion = bv ?? baseVersion;
    }
    const target = isNew ? baseArtVersion : applyBump(baseArtVersion, level);
    const targetStr = fmt(target);
    if (entry.current.trim() === targetStr) continue; // schon auf Ziel (Idempotenz)
    changes.push({ id, type: prJson.resourceType, from: entry.current, to: targetStr, entry, isNew, jsonFile: file });
  }

  // 4) Anwenden – FSH-Deklaration UND das generierte JSON in einem Rutsch.
  //    Ein Bump ändert im JSON nur version + date, daher werden diese direkt
  //    gepatcht (byte-identisch zu dem, was Sushi erzeugen würde) – kein
  //    erneuter Sushi-Lauf und kein CI-Re-Trigger nötig.
  report(changes, skipped);
  if (WRITE) {
    writeChanges(changes);
    log(`${changes.length} Artefakt(e) angehoben (Version + Datum ${TODAY}) in FSH + generiertem JSON.`);
  } else if (changes.length) {
    log('(Dry-Run – mit --write würden obige Änderungen geschrieben.)');
  }
}

// ---------- Schreiben (Version + Datum) ----------

function writeChanges(changes) {
  // FSH pro Datei gebündelt und von unten nach oben editieren: Datums-Zeilen
  // können eingefügt werden; bottom-to-top hält die Indizes der noch nicht
  // bearbeiteten (weiter oben liegenden) Artefakte gültig.
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
  // Generierte JSONs: genau eine Datei pro Artefakt.
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
  if (nl === l) fail(`Version-Rewrite hat nichts geändert: ${entry.file}:${entry.lineIdx + 1}`);
  lines[entry.lineIdx] = nl;
}

// Setzt das date im FSH-Block: vorhandene date-Zeile aktualisieren, sonst nach
// der Versionszeile einfügen. Definitionen nutzen ^date, Instanzen date.
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

// Setzt version + date im generierten JSON. version wird immer ersetzt; date
// wird ersetzt, falls vorhanden, sonst direkt nach der version-Zeile eingefügt
// (z. B. SearchParameter haben von Haus aus kein date-Feld).
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
  if (versionIdx < 0) fail(`Kein version-Feld im generierten JSON gefunden: ${absPath}`);

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

// ---------- Release-Checks (Guide-Version mitgezogen?) ----------

function checkRelease() {
  const problems = [];
  const todayDe = isoToGerman(TODAY);

  // guide.yaml: Version gegenüber Basis angehoben?
  const gyPr = parseVersion(readFileSync(join(REPO_ROOT, GUIDE_YAML), 'utf8'));
  const gyBaseRaw = readBaseFile(GUIDE_YAML);
  const gyBase = gyBaseRaw == null ? null : parseVersion(gyBaseRaw);
  if (!gyPr) problems.push(`Keine gültige 'version:' in ${GUIDE_YAML}.`);
  else if (gyBase && fmt(gyPr) === fmt(gyBase)) {
    problems.push(`Version in ${GUIDE_YAML} wurde nicht angehoben (weiterhin ${fmt(gyPr)}).`);
  }

  // Index.page.md: Version angehoben + Datum = heute?
  const idxRaw = readFileSync(join(REPO_ROOT, GUIDE_INDEX), 'utf8');
  const idxBaseRaw = readBaseFile(GUIDE_INDEX);
  const idxVer = indexVersion(idxRaw);
  const idxBaseVer = idxBaseRaw == null ? null : indexVersion(idxBaseRaw);
  if (!idxVer) problems.push(`Keine "Version:"-Zeile in ${GUIDE_INDEX}.`);
  else if (idxBaseVer && idxVer === idxBaseVer) {
    problems.push(`Version in ${GUIDE_INDEX} wurde nicht angehoben (weiterhin ${idxVer}).`);
  }

  const idxDate = indexDate(idxRaw);
  if (!idxDate) problems.push(`Keine "Datum:"-Zeile in ${GUIDE_INDEX}.`);
  else if (idxDate !== todayDe) {
    problems.push(`Datum in ${GUIDE_INDEX} ist "${idxDate}", erwartet "${todayDe}" (heutiger Tag).`);
  }

  if (problems.length) {
    fail('Release-Vorbereitung unvollständig – Bump wird nicht ausgeführt:\n  - ' + problems.join('\n  - '));
  }
}

// "Version: 1.2.3" aus der Index-Seite (Status-Abschnitt).
function indexVersion(text) {
  const m = String(text).match(/^\s*Version:\s*(\d+\.\d+\.\d+)/mi);
  return m ? m[1] : null;
}
// "Datum: TT.MM.JJJJ" aus der Index-Seite.
function indexDate(text) {
  const m = String(text).match(/^\s*Datum:\s*(\d{2}\.\d{2}\.\d{4})/mi);
  return m ? m[1] : null;
}
// "2026-07-08" -> "08.07.2026"
function isoToGerman(iso) {
  const m = String(iso).match(/^(\d{4})-(\d{2})-(\d{2})/);
  return m ? `${m[3]}.${m[2]}.${m[1]}` : iso;
}

// ---------- FSH-Index ----------

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
    // Nur Conformance-Instanzen; Beispiele werden ignoriert.
    if (!['SearchParameter', 'OperationDefinition', 'CapabilityStatement'].includes(block.instanceOf)) {
      return null;
    }
    return block.id ?? block.name; // Dateiname nutzt Id: falls vorhanden, sonst Instanzname
  }
  return block.id ?? block.name;
}

// Sucht innerhalb [start,end) die Versions-Deklaration und liefert Zeile + Form.
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

// ---------- Versions-Helfer ----------

// Parst "version: 1.2.3-beta" -> {major,minor,patch}; Suffixe werden ignoriert.
function parseVersion(fileOrLine) {
  const m = String(fileOrLine).match(/^version\s*:\s*["']?\s*(\d+)\.(\d+)\.(\d+)/m);
  if (!m) return null;
  return { major: +m[1], minor: +m[2], patch: +m[3] };
}

function fmt(v) {
  return `${v.major}.${v.minor}.${v.patch}`;
}

// Höchste geänderte Stelle bestimmt das Level; null wenn gleich.
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

// ---------- Normalisierung des JSON-Vergleichs ----------

function canonical(raw) {
  const o = JSON.parse(raw);
  delete o.version;
  delete o.date;
  if (o.meta) { delete o.meta.lastUpdated; if (Object.keys(o.meta).length === 0) delete o.meta; }
  return JSON.stringify(sortNorm(o));
}

// Deep: Keys sortieren + CRLF in Strings vereinheitlichen (robust gegen Zeilenenden).
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

// Inhalt einer Datei im Basis-Branch; null wenn dort nicht vorhanden.
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

// ---------- Ausgabe ----------

function report(changes, skipped) {
  if (!changes.length) log('Keine geänderten Artefakte – nichts zu bumpen.');
  for (const c of changes) {
    log(`  ${c.isNew ? 'NEU  ' : 'BUMP '} ${c.type}/${c.id}: ${c.from} -> ${c.to}`);
  }
  for (const s of skipped) log(`  WARN ${s}`);
}

function argVal(flag) {
  const i = args.indexOf(flag);
  return i >= 0 ? args[i + 1] : undefined;
}
function log(m) { process.stdout.write(m + '\n'); }
function fail(m) { process.stderr.write('FEHLER: ' + m + '\n'); process.exit(1); }
