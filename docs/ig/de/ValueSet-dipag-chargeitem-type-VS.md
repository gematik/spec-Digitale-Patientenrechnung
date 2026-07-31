# Digitale Patientenrechnung Typ der Rechnungsposition ValueSet - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Typ der Rechnungsposition ValueSet**

## ValueSet: Digitale Patientenrechnung Typ der Rechnungsposition ValueSet 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/ValueSet/dipag-chargeitem-type-VS | *Version*:1.1.0 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagRechnungspositionTypeVS |

 
ValueSet für die verschiedenen Typen einer Rechnungsposition 

 **References** 

* [Digitale Patientenrechnung Teilsumme](StructureDefinition-DiPagTeilsumme.md)
* [Digitale Patientenrechnung Typ der Rechnungsposition Extension](StructureDefinition-dipag-rechnungsposition-type.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "dipag-chargeitem-type-VS",
  "url" : "https://gematik.de/fhir/dipag/ValueSet/dipag-chargeitem-type-VS",
  "version" : "1.1.0",
  "name" : "DiPagRechnungspositionTypeVS",
  "title" : "Digitale Patientenrechnung Typ der Rechnungsposition ValueSet",
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
  "description" : "ValueSet für die verschiedenen Typen einer Rechnungsposition",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-chargeitem-type-cs"
    }]
  }
}

```
