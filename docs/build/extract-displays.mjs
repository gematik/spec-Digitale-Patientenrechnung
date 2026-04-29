// Reads all CodeSystem-*.json from docs/data/ and extracts code -> display mappings.
// Writes docs/data/code-displays.json  (key: "<system>#<code>", value: "<display>")
// Run from repo root: node docs/build/extract-displays.mjs

import { readFileSync, writeFileSync, readdirSync } from 'fs';
import { join, dirname } from 'path';
import { fileURLToPath } from 'url';

const __dirname = dirname(fileURLToPath(import.meta.url));
const dataDir = join(__dirname, '..', 'data');

let files;
try {
  files = readdirSync(dataDir).filter(f => f.startsWith('CodeSystem-') && f.endsWith('.json'));
} catch (e) {
  console.error('docs/data/ not found — run stage.sh first.');
  process.exit(1);
}

const displays = {};

for (const file of files) {
  const cs = JSON.parse(readFileSync(join(dataDir, file), 'utf-8'));
  const url = cs.url;
  if (!url || !Array.isArray(cs.concept)) continue;

  for (const concept of cs.concept) {
    if (concept.code && concept.display) {
      displays[url + '#' + concept.code] = concept.display;
    }
    // nested concepts
    for (const sub of concept.concept ?? []) {
      if (sub.code && sub.display) {
        displays[url + '#' + sub.code] = sub.display;
      }
    }
  }
}

const outPath = join(dataDir, 'code-displays.json');
writeFileSync(outPath, JSON.stringify(displays, null, 2), 'utf-8');
console.log(`Wrote ${Object.keys(displays).length} entries to ${outPath}`);
