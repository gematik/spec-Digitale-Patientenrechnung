#!/usr/bin/env bash
# Stages FHIR resources and PDFs from the repo into docs/data/ and docs/pdfs/
# for local development. Mirrors exactly what the CI workflow does.
#
# Usage (from either repo root or docs/):
#   ./docs/stage.sh
#   cd docs && ./stage.sh

set -e

# Resolve script location so paths work regardless of CWD
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

DATA_DIR="$SCRIPT_DIR/data"
PDFS_DIR="$SCRIPT_DIR/pdfs"
RESOURCES_DIR="$REPO_ROOT/Resources/fsh-generated/resources"
PDF_SOURCE="$REPO_ROOT/Material/KFO Mehrkostenberechnungen.pdf"

mkdir -p "$DATA_DIR" "$PDFS_DIR"

echo "Staging FHIR resources from $RESOURCES_DIR ..."
cp "$RESOURCES_DIR"/Invoice-*.json      "$DATA_DIR/" 2>/dev/null || true
cp "$RESOURCES_DIR"/ChargeItem-*.json   "$DATA_DIR/" 2>/dev/null || true
cp "$RESOURCES_DIR"/Organization-*.json "$DATA_DIR/" 2>/dev/null || true
cp "$RESOURCES_DIR"/Patient-*.json      "$DATA_DIR/" 2>/dev/null || true
cp "$RESOURCES_DIR"/Practitioner-*.json "$DATA_DIR/" 2>/dev/null || true
cp "$RESOURCES_DIR"/CodeSystem-*.json   "$DATA_DIR/" 2>/dev/null || true

echo "Staging PDFs from \"$PDF_SOURCE\" ..."
cp "$PDF_SOURCE"/*.pdf "$PDFS_DIR/" 2>/dev/null || true

echo "Extracting code displays ..."
node "$SCRIPT_DIR/build/extract-displays.mjs"

echo "Done. Start server with: cd \"$SCRIPT_DIR\" && npx serve -l 8080 ."
