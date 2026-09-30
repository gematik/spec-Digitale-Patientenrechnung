# Digitale Patientenrechnung Rechnungsart VS - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Rechnungsart VS**

## ValueSet: Digitale Patientenrechnung Rechnungsart VS 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/ValueSet/dipag-rechnungsart-vs | *Version*:1.1.0 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagRechnungsartVS |

 
ValueSet zur Klassifizierung von Rechnungsarten 

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
  "id" : "dipag-rechnungsart-vs",
  "url" : "https://gematik.de/fhir/dipag/ValueSet/dipag-rechnungsart-vs",
  "version" : "1.1.0",
  "name" : "DiPagRechnungsartVS",
  "title" : "Digitale Patientenrechnung Rechnungsart VS",
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
  "description" : "ValueSet zur Klassifizierung von Rechnungsarten",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnungsart-cs"
    }]
  }
}

```
