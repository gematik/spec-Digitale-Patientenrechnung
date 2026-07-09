# Sachkosten: Dentalmaterial - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Sachkosten: Dentalmaterial**

## Beispiel ChargeItem: Sachkosten: Dentalmaterial

Profile: [Digitale Patientenrechnung Rechnungsposition](StructureDefinition-dipag-rechnungsposition.md)

**Digitale Patientenrechnung Typ der Rechnungsposition Extension**: [Digitale Patientenrechnung Typ der Rechnungsposition CodeSystem: SachkostenAuslagen](CodeSystem-dipag-chargeitem-type-cs.md#dipag-chargeitem-type-cs-SachkostenAuslagen) (Sachkosten/Auslagen)

**Digitale Patientenrechnung Rechnungsposition Behandlungsdatum**: 2024-02-20

**status**: Billable

**code**: Dentalmaterial

**subject**: [Max Mustermann(official) Male, DoB: 1980-05-15 ( Krankenversichertennummer)](Patient-8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c.md)

**occurrence**: 2024-02-20 --> 2024-02-20

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Organization Zahnarztpraxis Dr. Schulz](Organization-e3f4a5b6-4d5e-6f7a-1b2c-3d4e5f6a7b8c.md) |

**quantity**: 2 Anzahl (Details: UCUM code{count} = '{count}')

**product**: Komposit-Füllungsmaterial



## Resource Content

```json
{
  "resourceType" : "ChargeItem",
  "id" : "d8e9f0a1-9c0d-1e2f-6a7b-8c9d0e1f2a3b",
  "meta" : {
    "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"]
  },
  "extension" : [{
    "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition-type",
    "valueCoding" : {
      "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-chargeitem-type-cs",
      "code" : "SachkostenAuslagen"
    }
  },
  {
    "url" : "https://gematik.de/fhir/dipag/StructureDefinition/DiPagRechnungspositionBehandlungsdatum",
    "valueDate" : "2024-02-20"
  }],
  "status" : "billable",
  "code" : {
    "text" : "Dentalmaterial"
  },
  "subject" : {
    "reference" : "Patient/8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c"
  },
  "occurrencePeriod" : {
    "start" : "2024-02-20",
    "end" : "2024-02-20"
  },
  "performer" : [{
    "actor" : {
      "reference" : "Organization/e3f4a5b6-4d5e-6f7a-1b2c-3d4e5f6a7b8c"
    }
  }],
  "quantity" : {
    "value" : 2,
    "unit" : "Anzahl",
    "system" : "http://unitsofmeasure.org",
    "code" : "{count}"
  },
  "productCodeableConcept" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/ifa/pzn",
      "code" : "12345678",
      "display" : "Komposit XYZ"
    }],
    "text" : "Komposit-Füllungsmaterial"
  }
}

```
