---
topic: Release Notes
---

## {{page-title}}

Im Rahmen der "Digitale Patientenrechnung"-Veröffentlichungen wird das [Semantic Versioning](https://semver.org/lang/de/) verwendet.

Alle technischen Artefakte werden innerhalb des Packages ["de.gematik.dipag"](https://simplifier.net/DigitalePatientenrechnung/~packages) versioniert veröffentlicht. Die Versionsnummer des Packages entspricht der Versionsnummer des dazugehörigen Implementierungsleitfadens.

----
### Version 1.0.4

#### Profile und Extensions

* Technische Fehlerhebung (z.B. fehlender Extension-Context) in div. Profilen und Extensions. Keine inhaltichen Änderungen.

#### CodeSystems

* Harmonisierung von "-cs"-Postfix in CodeSystem Canonicals

#### Beispiele

* Korrektur div. Beispiele

----
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
