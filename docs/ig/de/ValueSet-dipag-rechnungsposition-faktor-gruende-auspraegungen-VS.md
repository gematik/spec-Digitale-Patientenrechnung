# Digitale Patientenrechnung Rechnungsposition Faktor Gründe ValueSet - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Rechnungsposition Faktor Gründe ValueSet**

## ValueSet: Digitale Patientenrechnung Rechnungsposition Faktor Gründe ValueSet 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/ValueSet/dipag-rechnungsposition-faktor-gruende-auspraegungen-VS | *Version*:1.0.8 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagRechnungspositionFaktorGruendeVS |

 **References** 

* [Digitale Patientenrechnung Angaben bei Gebührenordnungen bei einer Rechnungsposition](StructureDefinition-dipag-rechnungsposition-go-angaben.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "dipag-rechnungsposition-faktor-gruende-auspraegungen-VS",
  "url" : "https://gematik.de/fhir/dipag/ValueSet/dipag-rechnungsposition-faktor-gruende-auspraegungen-VS",
  "version" : "1.0.8",
  "name" : "DiPagRechnungspositionFaktorGruendeVS",
  "title" : "Digitale Patientenrechnung Rechnungsposition Faktor Gründe ValueSet",
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
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnungsposition-faktor-gruende-cs"
    }]
  }
}

```
