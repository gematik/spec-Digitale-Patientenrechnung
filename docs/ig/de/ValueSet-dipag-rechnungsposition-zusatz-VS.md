# Digitale Patientenrechnung Rechnungsposition Zusatz ValueSet - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Rechnungsposition Zusatz ValueSet**

## ValueSet: Digitale Patientenrechnung Rechnungsposition Zusatz ValueSet 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/ValueSet/dipag-rechnungsposition-zusatz-VS | *Version*:1.0.8 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagRechnungspositionZusatzVS |

 
ValueSet für die Zusatzkennzeichen einer Rechnungsposition 

 **References** 

* [Digitale Patientenrechnung Rechnungsposition Zusatz Extension](StructureDefinition-DiPagRechnungspositionZusatz.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "dipag-rechnungsposition-zusatz-VS",
  "url" : "https://gematik.de/fhir/dipag/ValueSet/dipag-rechnungsposition-zusatz-VS",
  "version" : "1.0.8",
  "name" : "DiPagRechnungspositionZusatzVS",
  "title" : "Digitale Patientenrechnung Rechnungsposition Zusatz ValueSet",
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
  "description" : "ValueSet für die Zusatzkennzeichen einer Rechnungsposition",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnungsposition-zusatz-cs"
    }]
  }
}

```
