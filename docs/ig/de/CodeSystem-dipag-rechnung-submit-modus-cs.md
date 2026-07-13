# Digitale Patientenrechnung Rechnung Submit Modus CS - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Rechnung Submit Modus CS**

## CodeSystem: Digitale Patientenrechnung Rechnung Submit Modus CS 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-submit-modus-cs | *Version*:1.0.8 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagRechnungSubmitModusCS |

 
CodeSystem für die Differenzierung der Verarbeitungsmodi für $invoice-submit 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [DiPagRechnungSubmitModusVS](ValueSet-dipag-rechnung-submit-modus-vs.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dipag-rechnung-submit-modus-cs",
  "url" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-submit-modus-cs",
  "version" : "1.0.8",
  "name" : "DiPagRechnungSubmitModusCS",
  "title" : "Digitale Patientenrechnung Rechnung Submit Modus CS",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-03-26",
  "publisher" : "gematik GmbH",
  "contact" : [{
    "name" : "gematik GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.gematik.de"
    }]
  }],
  "description" : "CodeSystem für die Differenzierung der Verarbeitungsmodi für $invoice-submit",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "hierarchyMeaning" : "is-a",
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "test",
    "display" : "Test",
    "definition" : "Digitale Patientenrechnung wird als Test eingereicht. Der Fachdienst validiert nur die Digitale Patientenrechnung und speichert diese nicht."
  },
  {
    "code" : "normal",
    "display" : "Normal",
    "definition" : "Digitale Patientenrechnung wird durch den Fachdienst gespeichert falls keine gravierenden Validierungsfehler vorhanden sind."
  }]
}

```
