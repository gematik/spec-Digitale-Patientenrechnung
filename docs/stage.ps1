# Stages FHIR resources and PDFs from the repo into docs/data/ and docs/pdfs/
# for local development. Mirrors exactly what the CI workflow does.
#
# Usage (from either repo root or docs/):
#   .\docs\stage.ps1
#   cd docs; .\stage.ps1

$ErrorActionPreference = "Continue"

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$RepoRoot  = Split-Path -Parent $ScriptDir

$DataDir      = Join-Path $ScriptDir "data"
$PdfsDir      = Join-Path $ScriptDir "pdfs"
$ResourcesDir = Join-Path $RepoRoot "Resources\fsh-generated\resources"
$PdfSource    = Join-Path $RepoRoot "Material\KFO Mehrkostenberechnungen.pdf"

New-Item -ItemType Directory -Force -Path $DataDir | Out-Null
New-Item -ItemType Directory -Force -Path $PdfsDir | Out-Null

Write-Host "Staging FHIR resources from $ResourcesDir ..."
foreach ($pattern in @("Invoice-*.json","ChargeItem-*.json","Organization-*.json","Patient-*.json","Practitioner-*.json","CodeSystem-*.json")) {
  $files = Get-ChildItem -Path $ResourcesDir -Filter $pattern -ErrorAction SilentlyContinue
  foreach ($f in $files) { Copy-Item $f.FullName $DataDir }
}

Write-Host "Staging PDFs from $PdfSource ..."
$pdfs = Get-ChildItem -Path $PdfSource -Filter "*.pdf" -ErrorAction SilentlyContinue
foreach ($p in $pdfs) { Copy-Item $p.FullName $PdfsDir }

Write-Host "Extracting code displays ..."
node (Join-Path $ScriptDir "build\extract-displays.mjs")

Write-Host "Done. Start server with: cd '$ScriptDir'; npx serve -l 8080 ."
