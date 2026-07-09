# Digitale Patientenrechnung Rechnung Abrechnungsart CS - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Rechnung Abrechnungsart CS**

## CodeSystem: Digitale Patientenrechnung Rechnung Abrechnungsart CS 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-abrechnungsart-cs | *Version*:1.0.8 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagRechnungAbrechnungsartCS |

 
CodeSystem für die verschiedenen Abrechnungsarten innerhalb einer E-Rechnnung 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [DiPagRechnungAbrechnungsartVS](ValueSet-dipag-rechnung-abrechnungsart-vs.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dipag-rechnung-abrechnungsart-cs",
  "url" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-abrechnungsart-cs",
  "version" : "1.0.8",
  "name" : "DiPagRechnungAbrechnungsartCS",
  "title" : "Digitale Patientenrechnung Rechnung Abrechnungsart CS",
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
  "description" : "CodeSystem für die verschiedenen Abrechnungsarten innerhalb einer E-Rechnnung",
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
  "count" : 3,
  "concept" : [{
    "code" : "BEMA",
    "display" : "Einheitliche Bewertungsmaßstab für zahnärztliche Leistungen"
  },
  {
    "code" : "GOÄ",
    "display" : "Gebührenordnung für Ärzte"
  },
  {
    "code" : "GOZ",
    "display" : "Gebührenordnung für Zahnärzte"
  }]
}

```
