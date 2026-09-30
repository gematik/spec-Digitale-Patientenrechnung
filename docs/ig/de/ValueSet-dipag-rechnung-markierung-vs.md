# Digitale Patientenrechnung Rechnung Markierung VS - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Rechnung Markierung VS**

## ValueSet: Digitale Patientenrechnung Rechnung Markierung VS 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/ValueSet/dipag-rechnung-markierung-vs | *Version*:1.1.0 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagRechnungMarkierungVS |

 
ValueSet für die Differenzierung von verschiedenen Arten von Markierungen eines Dokumentes 

 **References** 

* [Digitale Patientenrechnung DocumentReference Markierung](StructureDefinition-dipag-documentreference-markierung.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "dipag-rechnung-markierung-vs",
  "url" : "https://gematik.de/fhir/dipag/ValueSet/dipag-rechnung-markierung-vs",
  "version" : "1.1.0",
  "name" : "DiPagRechnungMarkierungVS",
  "title" : "Digitale Patientenrechnung Rechnung Markierung VS",
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
  "description" : "ValueSet für die Differenzierung von verschiedenen Arten von Markierungen eines Dokumentes",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-markierung-cs"
    }]
  }
}

```
