# Digitale Patientenrechnung Art des Abzugs von der Summe der gesamten Rechnungspositionen - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Art des Abzugs von der Summe der gesamten Rechnungspositionen**

## ValueSet: Digitale Patientenrechnung Art des Abzugs von der Summe der gesamten Rechnungspositionen 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/ValueSet/dipag-total-price-component-deduction-type-vs | *Version*:1.0.8 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagTotalPriceComponentDeductionTypeVS |

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
  "id" : "dipag-total-price-component-deduction-type-vs",
  "url" : "https://gematik.de/fhir/dipag/ValueSet/dipag-total-price-component-deduction-type-vs",
  "version" : "1.0.8",
  "name" : "DiPagTotalPriceComponentDeductionTypeVS",
  "title" : "Digitale Patientenrechnung Art des Abzugs von der Summe der gesamten Rechnungspositionen",
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
      "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-total-price-component-type-cs",
      "concept" : [{
        "code" : "FestzuschussKasse",
        "display" : "Festzuschuss Kasse"
      },
      {
        "code" : "VorleistungKst",
        "display" : "Vorleistungen anderer Kostenträger"
      },
      {
        "code" : "KostenBema13AtoD",
        "display" : "Kosten gem. den BEMA-Pos. 13a - d"
      }]
    }]
  }
}

```
