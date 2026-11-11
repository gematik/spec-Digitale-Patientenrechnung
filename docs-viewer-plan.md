# DiPag Invoice Viewer — Implementierungsplan

## Context

Im Repo `spec-Digitale-Patientenrechnung` liegen FHIR-Invoice-Beispiele (DiPag-Profil) als JSON in `Resources/fsh-generated/resources/` und als Original-PDFs in `Material/KFO Mehrkostenberechnungen.pdf/`. Ziel: Ein statischer HTML/CSS/JS-Viewer, gehostet auf GitHub Pages, mit dem man die strukturierten Rechnungsdaten gerendert ansehen und gegen das Original-PDF abgleichen kann. Das ist ein internes Review-/Abgleich-Werkzeug für das laufende Spezifikations-Projekt.

Deployment erfolgt zunächst aus dem Branch `removing-bema-related-stuff` (enthält die vier aktuellen KFO-Mehrkosten-Beispiele), später Wechsel auf `master` — die entsprechenden Stellen werden mit `TODO(switch-to-master)` markiert.

## Grundentscheidungen

- **Deploy-Zielordner**: `docs/` im Repo-Root, ausgeliefert via `actions/deploy-pages@v4`. Kein separater `gh-pages`-Branch (weniger Pflegeaufwand, alles in einem Branch versioniert).
- **Framework**: Vanilla JS + CSS — "schlicht" laut User. Keine Build-Tools, kein Bundler.
- **PDF-Renderer**: `<iframe>` (Browser-nativ, kein JS-Dep). Architektur hält pdf.js als späteren Austausch offen (ein Container-Div).
- **Referenz-Resolver**: Invoice-JSONs referenzieren andere Resources per String (`"Organization/KfoMehrkosten3Behandler"`). Viewer parst `ResourceType/id` und lädt die passende Datei aus `docs/data/<ResourceType>-<id>.json` (SUSHI-Namenskonvention). Fehlende Referenzen werden als "nicht aufgelöst"-Platzhalter angezeigt (User-Entscheidung).
- **Simplifier**: Runtime-Fetch direkt aus dem Browser (User-Entscheidung, CORS-Risiko akzeptiert). Wenn CORS scheitert, Fehlermeldung im Viewer anzeigen.
- **Codes → lesbare Displays**: Hybrid: (1) `coding.display` wenn vorhanden, (2) Lookup in `docs/data/code-displays.json` (Build-Step extrahiert `concept[*].{code,display}` aus den internen DiPag-CodeSystem-JSONs), (3) Fallback auf raw `code`.

## Ordnerstruktur (neu anzulegen)

```
docs/
  index.html              — Tabs, Dropdown, Split-Screen-Button
  styles.css              — Layout, Grid-Split, Tabellen
  viewer.js               — Config-Loader, Resolver, Renderer
  config.json             — Liste der anzeigbaren Invoices (+ PDF-Refs)
  build/
    extract-displays.mjs  — Liest CodeSystem-*.json, schreibt code-displays.json
  data/                   — .gitignore'd; vom Workflow befüllt
  pdfs/                   — .gitignore'd; vom Workflow befüllt
.github/workflows/
  pages.yml               — Deploy-Workflow
```

`docs/data/` und `docs/pdfs/` werden vom Workflow beim Deploy aus `Resources/fsh-generated/resources/` bzw. `Material/KFO Mehrkostenberechnungen.pdf/` kopiert. Ein `docs/stage.sh` (oder `.ps1`) spiegelt denselben Kopier-Schritt für lokales Testen.

## Config-Format (`docs/config.json`)

```jsonc
{
  "resourceBase": "data/",
  "invoices": [
    {
      "id": "KfoMehrkosten1",
      "label": "KFO Mehrkosten 1 — Abschlussrechnung",
      "source": { "type": "local", "path": "data/Invoice-KfoMehrkosten1Rechnung.json" },
      "pdf": "pdfs/KFO Mehrkostenberechnungen-1.pdf"
    },
    {
      "id": "SimplifierBeispiel",
      "label": "Simplifier-Beispiel",
      "source": {
        "type": "simplifier",
        "url": "https://simplifier.net/DigitalePatientenrechnung/Invoice-XYZ/$raw"
      }
    }
  ]
}
```

- `source.type`: `"local"` | `"simplifier"`.
- `pdf`: optional; wenn vorhanden, zweiter Tab + Split-Screen verfügbar.
- `resourceBase`: Präfix für Referenz-Auflösung bei `local`-Quellen.

## Rendering-Sektionen

Generisches daten-getriebenes Rendering mit einer Field-Descriptor-Tabelle (nicht pro Profil fest gecodet). Reihenfolge:

1. **Kopfzeile**: Rechnungsnummer, Datum, Status-Badge, Abrechnungsart, Rechnungsart
2. **Leistungserbringer** (aufgelöste `issuer`): Name, Adresse, Identifier-Slices (Telematik-ID, IKNR, BSNR, KZV, USt-ID)
3. **Patient/Empfänger**: `recipient` + `subject`, Name, KVNR, Anschrift
4. **Behandlungsinfo**: Extensions `Behandlungszeitraum`, `Behandlungsart`, `Fachrichtung`, `AbrechnungsDiagnoseProzedur`
5. **Positionen-Tabelle**: Pro `lineItem` → aufgelöster ChargeItem (Datum, Code, Text, Punktzahl/Einfachsatz/Faktor, Begründung, Zusatz, ZahnRegion, Betrag)
6. **Summen**: `totalPriceComponent[SummeRechnungspositionen]`, `totalPriceComponent[Abzug]`, `totalNet`, `totalGross`, `BemaPunktsumme`
7. **Korrekturrechnungs-Block** (nur wenn vorhanden): `Korrekturrechnung`, `Korrekturtoken`
8. **Antragsreferenz** (nur wenn vorhanden)
9. **Zahlungsinformationen**: `paymentTerms` + `Zahlungsziel`-Extension

**Regel**: Renderer-Helfer `renderField(obj, path)` gibt `null` bei fehlendem Pfad zurück. Template filtert `null` → keine leeren Zeilen für fehlende optionale Felder.

**Fehlende Referenzen**: Wenn Resolver 404 liefert, rendert Viewer den Reference-String mit Badge "nicht aufgelöst". Betrifft aktuell Patient/Organization für Rechnungen 1, 2, 4.

**Datumsformat**: ISO (`2024-09-30`) → `30.09.2024` für Lesbarkeit.

## Split-Screen & Tabs

CSS-Grid am Container:
- Default: `grid-template-columns: 1fr;` + eine Klasse `.active` pro Pane (Tabs).
- Split-Modus: Button toggelt `.split` am Container → `grid-template-columns: 1fr 1fr;`, beide Panes sichtbar.
- Unter 900px Breite: Split automatisch deaktivieren (Media-Query).

## Deploy-Workflow (`.github/workflows/pages.yml`)

```yaml
name: Deploy Viewer to GitHub Pages
on:
  push:
    branches: [removing-bema-related-stuff]   # TODO(switch-to-master): -> [master]
  workflow_dispatch:
permissions:
  pages: write
  id-token: write
  contents: read
concurrency:
  group: "pages"
  cancel-in-progress: false
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Stage invoice data
        run: |
          mkdir -p docs/data docs/pdfs
          cp Resources/fsh-generated/resources/Invoice-*.json docs/data/ || true
          cp Resources/fsh-generated/resources/ChargeItem-*.json docs/data/ || true
          cp Resources/fsh-generated/resources/Organization-*.json docs/data/ || true
          cp Resources/fsh-generated/resources/Patient-*.json docs/data/ || true
          cp Resources/fsh-generated/resources/Practitioner-*.json docs/data/ || true
          cp Resources/fsh-generated/resources/CodeSystem-*.json docs/data/ || true
          cp "Material/KFO Mehrkostenberechnungen.pdf/"*.pdf docs/pdfs/ || true
      - name: Extract code displays
        run: node docs/build/extract-displays.mjs
      - uses: actions/configure-pages@v5
      - uses: actions/upload-pages-artifact@v3
        with: { path: docs }
  deploy:
    needs: build
    runs-on: ubuntu-latest
    environment:
      name: github-pages
      url: ${{ steps.deployment.outputs.page_url }}
    steps:
      - id: deployment
        uses: actions/deploy-pages@v4
```

**TODO-Marker im Workflow** (Grep-freundlich):
- `# TODO(switch-to-master): branches: [master]` — Branch-Filter beim späteren Main-Switch austauschen.

**Repo-Settings-Hinweis** (einmalig durch User): *Settings → Pages → Build and deployment → Source = GitHub Actions* aktivieren. Ohne diesen Schritt schlägt `deploy-pages` fehl.

## Kritische Dateien (zu erstellen)

- `docs/index.html` — Grundgerüst mit Dropdown, Tabs, Split-Button
- `docs/styles.css` — Layout, Typografie, Tabellen, Grid-Split
- `docs/viewer.js` — Config-Load, fetch-Resolver, Render-Funktionen mit Field-Descriptor-Tabelle
- `docs/config.json` — Anfangs mit den 4 KFO-Beispielen gefüllt
- `docs/build/extract-displays.mjs` — Node-Script, liest CodeSystem-JSONs → `data/code-displays.json`
- `docs/stage.sh` + `docs/stage.ps1` — Lokales Staging (kopiert gleiche Dateien wie Workflow)
- `docs/.gitignore` — ignoriert `data/` und `pdfs/` (werden beim Deploy erzeugt, im Repo nicht nötig)
- `.github/workflows/pages.yml` — Deploy-Workflow

## Lokales Testing

**Warum nicht `file://`**: Moderne Browser blockieren `fetch()` auf `file:`-URLs (CORS/same-origin). Für den Viewer ist also ein lokaler HTTP-Server Pflicht.

**Voraussetzungen**: Node.js (wird ohnehin für `extract-displays.mjs` gebraucht) — damit hat man auch gleich einen Webserver zur Hand (`npx serve`), ohne zusätzliche Python-Abhängigkeit.

### Ordner-Layout für lokales Testing

- `docs/data/` und `docs/pdfs/` werden **nicht** committed (via `docs/.gitignore`), sondern lokal durch das Staging-Script gespiegelt — exakt dieselben Kopier-Befehle wie im CI-Workflow, um Drift zwischen lokal und Deploy zu vermeiden.
- `docs/config.json` ist committed und wird sowohl lokal als auch im Deploy unverändert verwendet.

### Staging-Script (`docs/stage.sh` / `docs/stage.ps1`)

Das Skript macht genau dasselbe wie der `Stage invoice data`-Step im Workflow — kopiert `Invoice-*.json`, `ChargeItem-*.json`, `Organization-*.json`, `Patient-*.json`, `Practitioner-*.json`, `CodeSystem-*.json` aus `Resources/fsh-generated/resources/` und die PDFs aus `Material/KFO Mehrkostenberechnungen.pdf/`. Ruft anschließend `node build/extract-displays.mjs` auf, damit lokal und im Deploy dieselben `code-displays.json` entstehen.

User ist auf Windows mit Git Bash — `stage.sh` ist primär, `stage.ps1` ist Komfort für PowerShell-Nutzer. Beide Skripte müssen aus dem Repo-Root ODER aus `docs/` aufrufbar sein (Path-Resolution relativ zum Script-Ort, nicht zum CWD).

### One-Command-Workflow

```bash
# Aus docs/ heraus
./stage.sh && npx serve -l 8080 .
# Browser: http://localhost:8080
```

`npx serve` serviert mit sinnvollen Defaults (kein Caching, Auto-MIME-Types für `.json`, CORS offen). Alternative ohne Node: `python -m http.server 8080`.

### Typische lokale Test-Zyklen

1. **FSH-Änderung → Viewer-Anzeige**: SUSHI laufen lassen (`sushi Resources/` aus Repo-Root), dann `docs/stage.sh`, dann Browser-Reload. Kein Server-Neustart nötig.
2. **Viewer-JS/CSS-Änderung**: Einfach Browser-Reload. Kein Staging nötig.
3. **Neue CodeSystem-Einträge**: SUSHI + `stage.sh` (enthält `extract-displays.mjs`).
4. **Simplifier-Quelle testen**: Lokal ist ein CORS-Problem am wahrscheinlichsten — entweder Browser mit deaktiviertem CORS (Chrome `--disable-web-security`) oder vorab auf GitHub Pages testen, wo der Origin `github.io` ist.

### Quick-Check vor Commit

```bash
# Aus Repo-Root
sushi Resources/                    # Optional, falls FSH geändert
cd docs && ./stage.sh
npx serve -l 8080 .
# Browser öffnen, alle 4 KFO-Rechnungen + Split-Screen durchklicken
```

### Abgleich-Test

Alle 4 KFO-Rechnungen im Dropdown durchprobieren, Split-Screen aktivieren, jede Position visuell mit der entsprechenden PDF (`Material/KFO Mehrkostenberechnungen.pdf/KFO Mehrkostenberechnungen-{1..4}.pdf`) vergleichen. Abweichungen/fehlende Felder notieren.

### Nach Deploy

PR/Push auf `removing-bema-related-stuff` → Actions-Tab → Pages-Environment-URL öffnen → gleiche 4 Rechnungen prüfen. Wenn lokal und Deploy divergieren, liegt es meist an: (a) nicht committeten FSH-Änderungen, (b) `fsh-generated/` nicht committed (siehe Risiko 2), oder (c) Browser-Cache.

## Offene Punkte / Risiken

1. **Simplifier-CORS**: Der User hat Runtime-Fetch gewählt. Wenn es in der Praxis scheitert, Fehler im Viewer anzeigen und später Build-Time-Snapshot-Alternative nachrüsten.
2. **Invoice-3 & Invoice-4**: Nicht in `fsh-generated/resources/`. Vor dem ersten Deploy SUSHI laufen lassen (oder generierte Dateien committen), sonst fehlen sie im Dropdown.
3. **Fehlende Patient-/Organization-Instanzen** für Rechnungen 1, 2, 4 werden vom Viewer graceful als "nicht aufgelöst" dargestellt — fachliche Ergänzung kann später separat erfolgen.
4. **Master-Switch**: Nach Merge auf `master` die `TODO(switch-to-master)`-Stellen im Workflow anpassen.
