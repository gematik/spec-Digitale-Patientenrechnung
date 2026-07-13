# Digitale Patientenrechnung Rechnungsposition Zusatz CodeSystem - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Rechnungsposition Zusatz CodeSystem**

## CodeSystem: Digitale Patientenrechnung Rechnungsposition Zusatz CodeSystem 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnungsposition-zusatz-cs | *Version*:1.0.8 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagRechnungspositionZusatzCS |

 
CodeSystem für die Zusatzkennzeichen einer Rechnungsposition: auf Verlangen erbrachte Leistung, Leistung zur Früherkennung und analoge Leistung 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [DiPagRechnungspositionZusatzVS](ValueSet-dipag-rechnungsposition-zusatz-VS.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dipag-rechnungsposition-zusatz-cs",
  "url" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnungsposition-zusatz-cs",
  "version" : "1.0.8",
  "name" : "DiPagRechnungspositionZusatzCS",
  "title" : "Digitale Patientenrechnung Rechnungsposition Zusatz CodeSystem",
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
  "description" : "CodeSystem für die Zusatzkennzeichen einer Rechnungsposition: auf Verlangen erbrachte Leistung, Leistung zur Früherkennung und analoge Leistung",
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
    "code" : "V",
    "display" : "auf Verlangen erbrachte Leistung"
  },
  {
    "code" : "F",
    "display" : "Leistung zur Früherkennung"
  },
  {
    "code" : "A",
    "display" : "analoge Leistung"
  }]
}

```
