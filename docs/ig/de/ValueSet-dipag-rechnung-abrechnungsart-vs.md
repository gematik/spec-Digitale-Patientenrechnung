# Digitale Patientenrechnung Rechnung Abrechnungsart VS - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Rechnung Abrechnungsart VS**

## ValueSet: Digitale Patientenrechnung Rechnung Abrechnungsart VS 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/ValueSet/dipag-rechnung-abrechnungsart-vs | *Version*:1.1.0 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagRechnungAbrechnungsartVS |

 
ValueSet zur Klassifizierung von Abrechnungsarten 

 **References** 

* [Digitale Patientenrechnung Rechnung](StructureDefinition-dipag-rechnung.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "dipag-rechnung-abrechnungsart-vs",
  "url" : "https://gematik.de/fhir/dipag/ValueSet/dipag-rechnung-abrechnungsart-vs",
  "version" : "1.1.0",
  "name" : "DiPagRechnungAbrechnungsartVS",
  "title" : "Digitale Patientenrechnung Rechnung Abrechnungsart VS",
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
  "description" : "ValueSet zur Klassifizierung von Abrechnungsarten",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-abrechnungsart-cs"
    }]
  }
}

```
