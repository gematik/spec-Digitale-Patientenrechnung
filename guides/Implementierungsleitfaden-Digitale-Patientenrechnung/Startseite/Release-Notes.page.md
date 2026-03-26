---
topic: Release Notes
---

## {{page-title}}

Im Rahmen der "Digitale Patientenrechnung"-Veröffentlichungen wird das [Semantic Versioning](https://semver.org/lang/de/) verwendet.

Alle technischen Artefakte werden innerhalb des Packages ["de.gematik.dipag"](https://simplifier.net/DigitalePatientenrechnung/~packages) versioniert veröffentlicht. Die Versionsnummer des Packages entspricht der Versionsnummer des dazugehörigen Implementierungsleitfadens.

----

### Version 1.0.5

- Die Spezifikation wurde um die fachliche Beschreibung der Duplikaterkennung beim $invoice-submit erweitert und um den Modus "korrektur" zur Einreichung bereits bekannter Rechnungen ergänzt.
- Die Spezifikation wurde um ein dreistufiges Signaturkonzept erweitert, bei dem Signaturen auf Attachment-Ebene, auf DocumentReference-Ebene sowie eingebettet in relevante PDF/A-Dokumente beschrieben und in Profilen, Beispielen und Leitfaden konsistent abgebildet wurden.
- Die Extenion `DiPagInvoiceReplaces` musste von Typ `valueCanonical` auf `valueReference` geändert werden, da die Referenzierung von Rechnungen als Canonical in diesem Kontext nicht möglich ist. Alle Profile, Beispiele und Leitfadenstellen wurden entsprechend angepasst.

### Version 1.0.4

#### Profile und Extensions

##### Neue Profile

* **DiPagDokumentenmetadatenEingang**: Neues Profil für DocumentReference beim Einreichen von Rechnungen durch Leistungserbringer
  * Definiert Attachment-Formate: `originaleRechnung`, `strukturierterRechnungsinhalt`, `anhang`
  * Unterstützt base64-kodierte Daten in `attachment.data` (FD lagert in Binary aus)
  * Extension: `DiPagDocRefSignature` für digitale Signaturen
  * Invariante `RechnungOderAnhang`: Dokument ist entweder Anhang ODER Rechnung inkl. strukturierten Inhalten
  * Invariante `SignaturVerpflichtendRechnung`: Signatur verpflichtend für Rechnungsdokumente

* **DiPagDokumentenmetadatenIntern**: Neues Profil für DocumentReference im Fachdienst (interne Verwaltung)
  * Zusätzliche Extensions: `rechnungsdatum`, `zahlungszieldatum`, `gesamtbetrag`, `fachrichtung`, `leistungsart`, `behandlungsart`
  * Meta-Extension: `DiPagDocumentReferenceMarkierung` für Markierungen (gelesen/ungelesen)
  * Meta-Tag: `dipag-rechnungsstatus` aus ValueSet `DiPagRechnungsstatusVS` (offen/erledigt/papierkorb)
  * Author-Referenz mit Telematik-ID des einreichenden Akteurs
  * Attachment-Formate: `originaleRechnung`, `angereicherteRechnung`, `strukturierterRechnungsinhalt`, `anhang`
  * Attachments referenzieren Binary-Ressourcen via `url` statt inline `data`
  * Context.related verknüpft Patient und Anhänge

* **DiPagRechnungsBundle**: Neues Profil für collection-Bundle zur Zusammenfassung strukturierter Rechnungsinhalte
  * Bundle-Typ: `collection`
  * Wird base64-kodiert in DocumentReference referenziert

##### Überarbeitete Profile

* **DiPagPerson**:
  * Identifier `USt-ID-Nr`: Pattern geändert von `type.text = "UmsatzsteuerId"` zu `type = DiPagRechnungIdentifierTypeCS#ustid`
  * Telecom-Slicing: Discriminator geändert von `type = #pattern, path = "$this"` zu `type = #value, path = "system"`
  * Telecom[Telefon].system: Änderung von `= #phone` zu `= #phone (exactly)`

* **DiPagInstitution**:
  * Identifier `USt-ID-Nr`: Pattern geändert von `type.text = "UmsatzsteuerId"` zu `type = DiPagRechnungIdentifierTypeCS#ustid`
  * Type-Element: Entfernung des Slicings für Fachrichtung - direkte ValueSet-Bindung an `$ihe-practiceSettingCode`
  * Telecom-Slicing: Discriminator geändert von `type = #pattern, path = "$this"` zu `type = #value, path = "system"`
  * Telecom[Telefon].system: Änderung von `= #phone` zu `= #phone (exactly)`

* **DiPagRechnung**:
  * Extension `DiPagAbrechnungsDiagnoseProzedur.Use`: Kommentar präzisiert - "SOLL vorhanden sein, wenn es sich um eine HD handelt"
  * Identifier-Slicing: Entfernung des Slices `Antragsnummer` (war 0..1)
  * LineItem.priceComponent-Slicing: Discriminator-Path geändert von `"$this"` zu `"type"`

* **DiPagRechnungsposition**:
  * ProductOrService.coding[PZN]: Neuer `^patternCoding.system = "http://fhir.de/CodeSystem/ifa/pzn"`

##### Extension-Korrekturen

* **DiPagDocumentReferenceMarkierung**:
  * Bug-Fix: Korrektur von `extension[details]` zu `extension[artDerArchivierung]` in ValueX-Definition
  * Bug-Fix: Korrektur von `extension[markierung]` zu `extension[artDerArchivierung]` in ValueSet-Bindung

* **DiPagInvoiceAbrechnungsDiagnoseProzedur**:
  * Extension[Use]: Kardinalität geändert von `1..1` zu `0..1` (Use ist jetzt optional)

* Technische Fehlerhebung (z.B. fehlender Extension-Context) in div. Profilen und Extensions. Keine inhaltichen Änderungen.

#### CodeSystems und ValueSets

##### Angepasste CodeSystems

* **DiPagAttachmentFormatCS** (`dipag-attachment-format-cs`):
  * `#originaleRechnung` - "Das originale PDF der Rechnung"
  * `#angereichertesPDF` - "Digitale Patientenrechnungs Dokument mit eingebetteten strukturierten Rechnungsinhalt"
  * `#rechnungsinhalt` - "Strukturierter Rechnungsinhalt"
  * `#rechnungsanhang` - "Rechnungsanhang"

##### Erweiterte CodeSystems

* **DiPagRechnungIdentifierTypeCS**: Neuer Code `#ustid` für Umsatzsteuer-ID Nummer (USt-ID-Nr)
  * Ausführlicher Hinweis: Kein System-Teil beim Identifier erforderlich, da kein offizielles FHIR-NamingSystem für USt-ID existiert
  * Hinweis auf mögliche zukünftige Anpassungen

##### Allgemein

* Harmonisierung von "-cs"-Postfix in CodeSystem Canonicals

#### OperationDefinitions

* **DiPagOperationSubmit** (`dipag-operation-submit`):
  * Parameter `rechnung`: Hinzufügen von `targetProfile = Canonical(DiPagDokumentenmetadatenEingang)`
  * Parameter `anhang`: Hinzufügen von `targetProfile = Canonical(DiPagDokumentenmetadatenEingang)`

* **DiPagOperationRetrieve** (`dipag-operation-retrieve`):
  * Typo-Korrektur: "Dokumentoken" → "Dokumenttoken"
  * **Neuer Input-Parameter `pdf`** (boolean, min=0, max=1):
    * Angabe, ob angereicherte Rechnung/Anhang als PDF im Output enthalten sein soll
    * Default: `false`
  * Parameter `strukturierterRechnungsinhalt`: Dokumentation präzisiert - Binary-Ressource im Output statt content-Element
  * Parameter `originaleRechnung`: Dokumentation präzisiert - Binary-Ressource im Output statt content-Element
  * **Neue Output-Parameter**:
    * `dokument`: Hinzufügen von `targetProfile = Canonical(DiPagDokumentenmetadatenIntern)`
    * `dokument.pdf` (Binary, min=1, max=1): Angereichertes PDF mit Barcode ODER Anhang
    * `dokument.strukturierteRechnungsinhalte` (Binary, min=0, max=1): Strukturierte Rechnungsinhalte (abhängig von Input-Parameter)
    * `dokument.originaleRechnung` (Binary, min=0, max=1): Originale Rechnung inkl. Signatur (abhängig von Input-Parameter)

#### CapabilityStatement

* **CapabilityStatementFD**:
  * Neue Ressource `Binary` hinzugefügt
  * Unterstützte Interaktion: `read` (SHALL)
  * Supported Profile: `Canonical(DiPagRechnungsdokument)`

#### Technische Infrastruktur

* **RuleSets.fsh**:
  * Neues RuleSet `base64`: Enthält base64-kodierten Dummy-PDF für Verwendung in Beispielen

#### Beispiele

* Alle Beispiele wurden angepasst und erweitert, um die neuen Profile, Extensions und Operation-Parameter widerzuspiegeln

### Version 1.0.3

#### Profile und Extensions

* **DiPagRechnung**: Korrektur der Slicing-Definition für `totalPriceComponent`
  * Die Extension `DiPagTeilsumme` gilt nun nur noch für den Slice `SummeRechnungspositionen` statt für alle `totalPriceComponent`-Elemente
  * Behebung von überlappenden Slice-Definitionen
* **DiPagInstitution**: Änderung der Anforderung an die KZVAbrechnungsnummer von "SOLL" (1..1 MS) auf "KANN" (0..1 MS)
* **DiPagDokumentenmetadaten**: 
  * Korrektur der Invariante `SignaturVerpflichtendRechnung` - Signaturvalidierung ist nun nur noch für angereicherte PDFs (mit `format.code = 'angereichertesPDF'`) verpflichtend
  * Korrektur der CodeSystem-Referenz für MIME-Types: Wechsel von `http://terminology.hl7.org/CodeSystem/mimetypes` zu `urn:ietf:bcp:13` für `application/fhir+json` und `application/fhir+xml`

#### ValueSets

* **DiPagSonstigesDokumentTypeVS**: Expliziter Ausschluss von "Rechnung ambulante/stationäre Behandlung" (AM010106) aus dem ValueSet für sonstige Dokumente

#### Operationen und API-Änderungen

* **$submit Operation**: 
  * Umbenennung der Operation `dipag-submit` zu `invoice-submit`
  * Hinzufügen eines optionalen `warnungen`-Parameters im Output für Validierungswarnungen (OperationOutcome)
  * Überarbeitung der Output-Struktur mit Token-basiertem Response
* **Bulk-Operationen (AF_10136-Bulk und AF_10271-Bulk)**:
  * Umstellung von `transaction`-Bundle auf `batch`-Bundle für Bulk-Operationen
  * Implementierung asynchroner Verarbeitung mit `Prefer: respond-async`-Header gemäß RFC7240
  * Rückgabe von HTTP 202 (Accepted) mit `Location`-Header für Polling
  * Detaillierte Fehlerbehandlung für Bulk-Operationen
  * Klarstellung der Access-Token-Anforderungen für Batch-Responses
  * Unterstützung für Rate-Limiting und `Retry-After`-Header
  * Vermeidung von zu POST für die  Dubletten durch Prüfung des `DocumentReference.identifier`
* **$retrieve Operation**: Wechsel von GETBulk-Variante (R4)

#### Dokumentation

* Vollständige Überarbeitung der Beschreibungen für {{pagelink:AF_10136-Bulk}} (R2-Rechnung-validieren-einreichen-Bulk)
  * Entfernung detaillierter Validierungsbeschreibungen (Verweis auf AF_10136)
  * Fokussierung auf Bulk-spezifische Aspekte und asynchrone Verarbeitung
  * Aktualisierung der Beispiele
* Überarbeitung der Beschreibungen für {{pagelink:AF_10271-Bulk}} (R4-Abfrage-von-angereicherten-PDF-A-per-Token-Rechnungsersteller-Bulk)
  * Hinzufügen der asynchronen Verarbeitung
  * Aktualisierung der HTTP-Methode von GET zu POST
* Hinzufügen von Beispielen für Batch-Operationen (R0)
* Klarstellung in verschiedenen Szenarien bzgl. Token-basiertem Zugriff

#### Beispiele

* Aktualisierung aller Bulk-Submit- und Bulk-Retrieve-Beispiele
* Hinzufügen von `BeispielOperationOutcomeRechnung3.1-FD` zur Demonstration von Validierungswarnungen
* Anpassung von `BeispielParameterSubmitOutput3.1-FD` mit neuem Token-basierten Response-Format
* Korrektur der Bundle-Typen in allen Bulk-API-Beispielen
* **Entfernung von xRechnung-Referenzen**: Alle xRechnung-Content-Elemente (`content[+].format = #xrechnung`) wurden aus den DocumentReference-Beispielen entfernt
  * Betrifft: BeispielDocumentReferenceRechnung3-LE/FD, BeispielDocumentReferenceRechnung3.1-LE/FD
  * In Retrieve-Beispielen: Wechsel von `format = #xrechnung` mit `application/xml` zu `format = #dipag` mit `application/fhir+xml`

#### Sonstige Änderungen

* Diverse Bugfixes und Klarstellungen in der Dokumentation

### Version 1.0.2

* Update der Deutschen Basisprofile auf v1.5.4, sowie der KDL auf v2025.0.1
* Umbenennung einiger Conformance-Artefakt mit einem "ERG"-Prefix zu "DiPag" 
* Umbenennung der Operation "dipag-submit" zu "invoice-submit"
* Änderung der Anforderung an die "KZVAbrechnungsnummer" im "DiPagInstitution"-Profil von "SOLL" auf "KANN"
* Überarbeitung der 'R2-Rechnung-validieren-einreichen-Bulk' Beschreibungen

### Version 1.0.1

* Kommentierte und freigegebene Version
