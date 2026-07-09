# Digitale Patientenrechnung Rechnungsart CS - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Rechnungsart CS**

## CodeSystem: Digitale Patientenrechnung Rechnungsart CS 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnungsart-cs | *Version*:1.0.8 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagRechnungsartCS |

 
CodeSystem für die verschiedenen Rechnungsarten innerhalb einer E-Rechnnung 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [DiPagRechnungsartVS](ValueSet-dipag-rechnungsart-vs.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dipag-rechnungsart-cs",
  "url" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnungsart-cs",
  "version" : "1.0.8",
  "name" : "DiPagRechnungsartCS",
  "title" : "Digitale Patientenrechnung Rechnungsart CS",
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
  "description" : "CodeSystem für die verschiedenen Rechnungsarten innerhalb einer E-Rechnnung",
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
    "code" : "ABSCHLUSS",
    "display" : "Abschlussrechnung"
  },
  {
    "code" : "TEIL",
    "display" : "Teilrechnung"
  }]
}

```
