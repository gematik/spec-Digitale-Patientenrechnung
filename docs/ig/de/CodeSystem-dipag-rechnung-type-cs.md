# Digitale Patientenrechnung Rechnung Type CS - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Rechnung Type CS**

## CodeSystem: Digitale Patientenrechnung Rechnung Type CS 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-type-cs | *Version*:1.0.8 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagRechnungTypeCS |

 
CodeSystem für die Differenzierung von verschiedenen Typen einer Digitalen Patientenrechnung 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dipag-rechnung-type-cs",
  "url" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-type-cs",
  "version" : "1.0.8",
  "name" : "DiPagRechnungTypeCS",
  "title" : "Digitale Patientenrechnung Rechnung Type CS",
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
  "description" : "CodeSystem für die Differenzierung von verschiedenen Typen einer Digitalen Patientenrechnung",
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
  "count" : 1,
  "concept" : [{
    "code" : "dipag",
    "display" : "Digitale Patientenrechnung"
  }]
}

```
