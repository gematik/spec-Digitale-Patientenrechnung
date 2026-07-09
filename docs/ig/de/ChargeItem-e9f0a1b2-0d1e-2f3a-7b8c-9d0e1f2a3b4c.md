# Wegegeld/Reiseentschädigung: Hausbesuch - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Wegegeld/Reiseentschädigung: Hausbesuch**

## Beispiel ChargeItem: Wegegeld/Reiseentschädigung: Hausbesuch

Profile: [Digitale Patientenrechnung Rechnungsposition](StructureDefinition-dipag-rechnungsposition.md)

**Digitale Patientenrechnung Typ der Rechnungsposition Extension**: [Digitale Patientenrechnung Typ der Rechnungsposition CodeSystem: WegegeldReiseentschaedigung](CodeSystem-dipag-chargeitem-type-cs.md#dipag-chargeitem-type-cs-WegegeldReiseentschaedigung) (Wegegeld/Reiseentschädigung)

> **Digitale Patientenrechnung Wegegeld/Reiseentschädigung Extension****Abwesenheit**: 3 h (Details: UCUM codeh = 'h')**Entfernung**: 50 km (Details: UCUM codekm = 'km')**Uebernachtung**: €80,00 (EUR)**Verkehrsmittel**: [SNOMED CT: 46160005](http://snomed.info/id/46160005) (Motor vehicle)
> **url**[Reiseentschaedigung](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Reiseentschaedigung)

**Digitale Patientenrechnung Rechnungsposition Behandlungsdatum**: 2024-03-05

**status**: Billable

**code**: Reiseentschädigung für Hausbesuch

**subject**: [Max Mustermann(official) Male, DoB: 1980-05-15 ( Krankenversichertennummer)](Patient-8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c.md)

**occurrence**: 2024-03-05 --> 2024-03-05

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Practitioner Dr. Hans Schulz(official)](Practitioner-c1d2e3f4-2b3c-4d5e-9f0a-1b2c3d4e5f6a.md) |



## Resource Content

```json
{
  "resourceType" : "ChargeItem",
  "id" : "e9f0a1b2-0d1e-2f3a-7b8c-9d0e1f2a3b4c",
  "meta" : {
    "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"]
  },
  "extension" : [{
    "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition-type",
    "valueCoding" : {
      "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-chargeitem-type-cs",
      "code" : "WegegeldReiseentschaedigung"
    }
  },
  {
    "extension" : [{
      "extension" : [{
        "url" : "Abwesenheit",
        "valueQuantity" : {
          "value" : 3,
          "unit" : "h",
          "system" : "http://unitsofmeasure.org",
          "code" : "h"
        }
      },
      {
        "url" : "Entfernung",
        "valueQuantity" : {
          "value" : 50,
          "unit" : "km",
          "system" : "http://unitsofmeasure.org",
          "code" : "km"
        }
      },
      {
        "url" : "Uebernachtung",
        "valueMoney" : {
          "value" : 80,
          "currency" : "EUR"
        }
      },
      {
        "url" : "Verkehrsmittel",
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "46160005",
          "display" : "Motor vehicle"
        }
      }],
      "url" : "Reiseentschaedigung"
    }],
    "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-wegegeld-reiseentschaedigung"
  },
  {
    "url" : "https://gematik.de/fhir/dipag/StructureDefinition/DiPagRechnungspositionBehandlungsdatum",
    "valueDate" : "2024-03-05"
  }],
  "status" : "billable",
  "code" : {
    "text" : "Reiseentschädigung für Hausbesuch"
  },
  "subject" : {
    "reference" : "Patient/8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c"
  },
  "occurrencePeriod" : {
    "start" : "2024-03-05",
    "end" : "2024-03-05"
  },
  "performer" : [{
    "actor" : {
      "reference" : "Practitioner/c1d2e3f4-2b3c-4d5e-9f0a-1b2c3d4e5f6a"
    }
  }]
}

```
