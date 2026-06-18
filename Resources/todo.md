# todo.md — Migration Simplifier → IG-Publisher (Digitale Patientenrechnung)

IG-Wurzel: `Resources/`. Migration des Guides
`guides/Implementierungsleitfaden-Digitale-Patientenrechnung/`. Stand der
Migration siehe Commit-Historie dieses Branches.

## Getroffene Entscheidungen (E1–E12)

| # | Entscheidung | Wert | Quelle |
|---|---|---|---|
| E1 | Canonical | `https://gematik.de/fhir/dipag` (beibehalten) | bestehende sushi-config |
| E2 | IG-`id` | `de.gematik.dipag` | Nutzerentscheidung |
| E3 | version / status / releaseLabel | `1.0.7` / `draft` / `ci-build` | Startseite + ReleaseNotes (s. Pflichtaufgaben) |
| E4 | fhirVersion | `4.0.1` | bestehende sushi-config |
| E5 | Dependencies | `de.basisprofil.r4 1.5.4`, `dvmd.kdl.r4 2025.0.1`, `de.ihe-d.terminology 3.0.1` | bestehende sushi-config |
| E6 | Template | `https://github.com/gematik/fhir-ig-template/tree/v0.0.1` | Nutzerentscheidung, verifiziert an `gematik/spec-ISiK-Basismodul` |
| E7 | Publisher | gematik GmbH / https://www.gematik.de | README |
| E8 | Profilquelle | vorhandenes FSH unter `Resources/input/fsh/` | Repo |
| E9 | FQL/dynamische Inhalte | gestrichen; kein Fachinhalt verloren (FQL-Tabellen = generierte Artefaktseiten) | Konzept §5.5/§8 |
| E10 | Hosting/CI | nur lokales Build-Setup; bestehende Workflows unangetastet | Nutzerentscheidung |
| E11 | Sprache / Jurisdiction | `de` / `urn:iso:std:iso:3166#DE` | Projektkontext |
| E12 | Alte `guides/` löschen | erst NACH grünem IG-Publisher-Build | Konzept §8.11 |
| —  | BEMA-Guide | unangetastet (out of scope) | Nutzerentscheidung |

## Pflichtaufgaben (vor Release zu klären)

- [ ] **Version/Status bestätigen.** `guide.yaml` nannte `version: 1.0.5`, die
  Startseite **und** die Release Notes nennen jedoch `1.0.7` als aktuellen
  Stand → es wurde `1.0.7` übernommen. Bitte bestätigen. Vor Release ggf.
  `status: active` und passenden `releaseLabel` setzen (`sushi-config.yaml`).
- [ ] **AF_10245-Ambiguität prüfen.** Im Simplifier-Quelltext trugen ZWEI
  Seiten denselben `topic: AF_10245` (R7 „Status ändern" und R9 „Löschen").
  `{{pagelink:AF_10245}}` wurde kontextbasiert aufgelöst (Akteure-Seite:
  „Manuelles Ändern…"→R7, „Löschen…"→R9). Bitte gegenlesen.
- [ ] **Alte `guides/`-Struktur löschen**, sobald der IG-Publisher-Build grün ist
  (`Resources/output/qa.html` ohne Errors). Betroffen: nur
  `guides/Implementierungsleitfaden-Digitale-Patientenrechnung/` — **nicht** den
  BEMA-Ordner.
- [ ] **CI prüfen.** `.github/workflows/main.yml` ruft SUSHI mit
  `SUSHI_OPTIONS: Resources/` auf. Da `FSHOnly: true` entfernt wurde, erzeugt
  SUSHI nun zusätzlich `ImplementationGuide-de.gematik.dipag.json`; die
  Firely-Validierung läuft über `Resources/fsh-generated/resources/` und
  validiert diese Datei mit. Lauf nach dem Merge beobachten.

## QA-Status (IG-Publisher-Build)

Der IG-Publisher-Build (`ig.ini` + gematik-Template) **läuft vollständig durch**
und erzeugt `output/` (3164 HTML-Seiten, 614.549 Links). `sushi .` ist sauber
(0/0). Die internen Links **aller migrierten Seiten** lösen im Output auf
(verifiziert).

Erste QA: **138 Errors / 426 Warnings**. Einordnung:

- **Migrationsbedingt: 1** — `ignoreWarnings.txt` nutzte nicht das „neue Format"
  (erste Zeile muss `== Suppressed Messages ==` sein). **Behoben** — der
  Re-Build bestätigte den Rückgang auf **137 Errors**; die Migration trägt damit
  **0 Errors** bei.
- **Vorbestehend (~135)** — Ressourcen-/Beispiel-Validierung, **nicht** durch die
  Migration verursacht und außerhalb ihres Scopes:
  - ~118 Referenz-/Terminologie-/Slicing-Fehler in Beispielen (z. B.
    Platzhalter-Referenzen `Binary/id-der-originalen-rechnung`,
    `Patient/NutzerkontoPatient`; `code-invalid AM010106`). Dieselbe Klasse, die
    die Firely-CI (`validator/advisor.json` + `main.yml`-Filter) bereits handhabt.
  - 9× **`Resource id/url mismatch`** bzw. `URL Mismatch` — die
    OperationDefinitions/CapabilityStatement/StructureDefinitions haben eine
    `id` (z. B. `DiPagOperationSubmit`), die nicht dem URL-Ende (`…/Submit`)
    entspricht. Eigenschaft der FSH-Quellen, vom IG-Publisher (strenger als
    Firely) bemängelt. Korrektur würde Canonicals/IDs ändern → bewusst NICHT im
    Rahmen dieser Migration.
  - 2× HL7-Workgroup-Hinweis (Template-Check), broken-Links-Metrik in
    generierten Ressourcen-Beschreibungen (nicht in migrierten Seiten).

Nach Ergänzung des MS-Kommentar-Tabs (s. u.) erneut gebaut: weiterhin **137
Errors / 426 Warnings** (der MS-Tab fügt **0 Errors** hinzu). Der MS-Tab
erscheint auf **12 Profilen** (z. B. `DiPagRechnung`: 122 Zeilen). Der
HTML-Link-Crawler meldet durchgehend **0 broken links** (alle Hrefs lösen auf);
die QA-Aggregatmetrik „Broken Links" stieg 3→4, ist aber nicht navigierbar
(der MS-Tab enthält reine Text-Zellen ohne Links, die Trigger-Seite erzeugt
keine Output-Seite) und wird vom QA-Report nicht itemisiert → der QA-Stabilisierung
zugeordnet.

- [ ] **QA-Stabilisierung (separat, optional):** Vorbestehende Errors entweder
  in `input/ignoreWarnings.txt` aufnehmen (analog der Firely-Advisor-Filter) oder
  in den FSH-Quellen beheben (`id`↔`url`-Angleichung der Operationen; Auffüllen
  der Platzhalter-Referenzen in Beispielen). Nicht Teil der Migration.

## Inhaltliche Korrekturen / Hinweise

- [ ] **Externes Logo entfernt.** Die alte Startseite lud das gematik-Logo per
  `raw.githubusercontent.com`-URL aus `spec-ISiK-Basismodul` (§8.7). Entfernt —
  Branding kommt jetzt aus dem gematik-Template. Falls ein Logo im Seiteninhalt
  gewünscht ist: `Resources/input/images/Gematik_Logo_Flag.png` ist vorhanden.
- [x] **Must-Support-Anmerkungen → MS-Kommentar-Tab (SQL-on-FHIR).** Die 12
  „Anmerkungen-zu-Must-Support-Elementen"-Seiten waren reine FQL-Tabellen
  (Feldname/Kurzbeschreibung/Kommentar, `mustSupport=true`). Gemäß V2 §5.4.1
  (Branch 2) und dem MS-Comment-Feature des gematik-Templates wurden sie **nicht
  nur gestrichen, sondern als auto-generierter MS-Tab wiederhergestellt**:
  - `Resources/input/includes/ms-comments-data.html` — `{% sqlToData ms_comments … %}`
    (1:1 nach `gematik/spec-ISiK-Basismodul`).
  - `Resources/input/pagecontent/_generate-ms-data.md` — Trigger (`layout: none`).
  Das gematik-Template rendert daraus auf **jeder Profilseite** automatisch einen
  „Must Support"-Tab (Filter nach `ProfileUrl`, Spalten Element/Kurzbeschreibung/
  Kommentar) — stets aktuell aus den Ressourcen, ohne pro-Profil-Pflege. Damit
  ist der ursprüngliche Fachinhalt der MS-Seiten verlustfrei und besser
  abgebildet als im Simplifier-Original.
- [ ] **Quell-Tippfehler bewusst erhalten.** In Fließtext-Passagen wurden
  Tippfehler aus dem Original nicht korrigiert (z. B. „Digitalenn",
  „validierenm", „enhalten"), um eine 1:1-Übernahme zu gewährleisten. Optionales
  Lektorat empfohlen.
- [x] **`Musterrechnung_Arztbehandlung.png`** wird jetzt auf der neuen Seite
  `rechnungsinhalt.md` (Beispiele-Sektion) eingebunden.
- [x] **Nachgezogene Seite `Artefakte-Inhalte/Index.page.md` (Korrektur).** Diese
  Section-Index-Seite wurde in der ersten Triage fälschlich als reine
  `{{index:current}}`-Seite eingestuft und gestrichen, enthielt aber Fachinhalt:
  eine Beispiele-Sektion (Maximalbeispiel `Bundle-BundleExample`, reales Beispiel
  `Bundle-MusterrechnungBundle`, Musterrechnungs-PNG) und eine FQL-Tabelle
  „Zuordnung Rechnungsinhalte zum FHIR-Element" über die 7 Rechnungsinhalt-Profile.
  → **Nachgeholt** als neue Hauptmenü-Seite **`rechnungsinhalt.md`**:
  - Beispiele-Sektion verlustfrei übernommen (Links auf die generierten
    Bundle-Seiten + lokales PNG).
  - FQL-Tabelle als **SQL-on-FHIR** umgesetzt
    (`Resources/input/includes/rechnungsinhalt-data.html`, Datenvariable
    `rechnungsinhalt`), **beschränkt auf die 7 strukturierten Rechnungsinhalt-
    Profile** (institution, person, patient, rechnung, rechnungsposition,
    rechnungsdiagnose, rechnungsprozedur), Filter `mustSupport=true and short
    exists`, Spalten Profil/Kurzbeschreibung/Feldname/Hinweise (Profil-Spalte
    ergänzt ggü. dem 3-spaltigen Original). Generierung über die bestehende
    Trigger-Seite `_generate-ms-data.md`.
- [ ] **`szenarien.md`** ist eine reine Einleitungsseite (Navigation via Menü).
  Optional um eine Akteur-Übersicht/Linkliste ergänzen.

## Optionale Verbesserungen

- [ ] GitHub-Actions-Workflow für IG-Publisher-Build + GitHub-Pages-Deploy (E10
  bewusst ausgelassen; `pages.yml` deployt weiterhin den Testclient-Viewer).
- [ ] `Resources/input/ignoreWarnings.txt` im Zuge der QA gezielt befüllen.
- [ ] Per-Profil `-intro.md`/`-notes.md` ergänzen, wo über die FSH-`description`
  hinaus Erläuterung sinnvoll ist (§5.10).

## Seiten-Mapping (alt → neu)

Redaktionell migriert (21 Seiten, `Startseite/…` → `Resources/input/pagecontent/`):

| alt (`guides/…/Startseite/`) | neu |
|---|---|
| `Index.page.md` | `index.md` |
| `Über-diese-Spezifikation/Zweckbestimmung.page.md` | `zweckbestimmung.md` |
| `Über-diese-Spezifikation/Use-Cases.page.md` | `use-cases.md` |
| `Über-diese-Spezifikation/Akteure-und-Interaktionen.page.md` | `akteure-und-interaktionen.md` |
| `Über-diese-Spezifikation/Informationsmodell.page.md` | `informationsmodell.md` |
| `Über-diese-Spezifikation/Begriffsdefinitionen.page.md` | `begriffsdefinitionen.md` |
| `Szenarien/index.page.md` | `szenarien.md` |
| `Szenarien/RE-PS-als-Akteur/R0-…` | `R0-rechnungsempfaenger-ermitteln.md` |
| `Szenarien/RE-PS-als-Akteur/R1-…` | `R1-rechnung-versenden.md` |
| `Szenarien/RE-PS-als-Akteur/R2-…` | `R2-rechnung-einreichen-bulk.md` |
| `Szenarien/RE-PS-als-Akteur/R3-…` | `R3-pdf-abruf-rechnungsersteller.md` |
| `Szenarien/RE-PS-als-Akteur/R4-…` | `R4-pdf-abruf-rechnungsersteller-bulk.md` |
| `Szenarien/DiPag-FdV-als-Akteur/R5-…` | `R5-rechnungsabruf-rechnungsempfaenger.md` |
| `Szenarien/DiPag-FdV-als-Akteur/R6-…` | `R6-abfrage-token-rechnungsempfaenger.md` |
| `Szenarien/DiPag-FdV-als-Akteur/R7-…` | `R7-status-aendern.md` |
| `Szenarien/DiPag-FdV-als-Akteur/R8-…` | `R8-markieren.md` |
| `Szenarien/DiPag-FdV-als-Akteur/R9-…` | `R9-loeschen.md` |
| `Szenarien/DiPag-FdV-als-Akteur/R10-…` | `R10-nutzungsprotokoll.md` |
| `Szenarien/ITSys-KTR-als-Akteur/R11-…` | `R11-abfrage-token-kostentraeger.md` |
| `Artefakte-Inhalte/Index.page.md` (Beispiele + FQL-Tabelle) | `rechnungsinhalt.md` (+ `includes/rechnungsinhalt-data.html`) |
| `Release-Notes.page.md` | `release-notes.md` |

Bewusst NICHT migriert (vom IG-Publisher generiert bzw. reine Navigation):
- alle `*/Profil.page.md` (12) → generierte StructureDefinition-Seiten
- alle `*/Anmerkungen-zu-Must-Support-Elementen.page.md` (12) → reine FQL, s. o.
- alle `*/Index.page.md` der Datenobjekt-/Akteur-Ordner → `{{index:current}}`
- `Extensions/*.page.md`, `Terminologien/CodeSystem-*.page.md`, `…/Übersicht.page.md` → generierte Artefaktseiten
- `Artefakte-Metadaten/CapabilityStatements/Akteur-CapabilityStatementFD.page.md` → generierte CapabilityStatement-Seite
- `Datenobjekt_*/Beispiele.page.md` → generierte Beispielseiten
- `FQL-Capability-*.page.md`, `FQL-CodeSystem.page.md` → FQL-Snippets (`{{page:…}}`-Includes)
- `Inhaltsverzeichnis-duplicate-2.page.md` → `{{index:root}}`
