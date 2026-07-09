# KfoMehrkosten3 Rechnungsposition 3 – BEMA 119d Umformung UK besonders schwierig (29.07.24) - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **KfoMehrkosten3 Rechnungsposition 3 – BEMA 119d Umformung UK besonders schwierig (29.07.24)**

## Beispiel ChargeItem: KfoMehrkosten3 Rechnungsposition 3 – BEMA 119d Umformung UK besonders schwierig (29.07.24)

Profile: [Digitale Patientenrechnung Rechnungsposition](StructureDefinition-dipag-rechnungsposition.md)

**Digitale Patientenrechnung Typ der Rechnungsposition Extension**: [Digitale Patientenrechnung Typ der Rechnungsposition CodeSystem: BEMA](CodeSystem-dipag-chargeitem-type-cs.md#dipag-chargeitem-type-cs-BEMA) (BEMA-Leistung)

> **Digitale Patientenrechnung Angaben bei Gebührenordnungen bei einer Rechnungsposition**
* Punktzahl: 336

**status**: Billable

**code**: Maßnahmen zur Umformung eines Kiefers einschließlich Retention - besonders schwierig durchführbarer Art

**subject**: [Patient/KfoMehrkosten3Patient](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/KfoMehrkosten3Patient)

**occurrence**: 2024-07-29

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Organization ARZ ZB GmbH](Organization-KfoMehrkosten3Behandler.md) |

**quantity**: 1 {#} (Details: UCUM code{#} = '{#}')

**bodysite**: 



## Resource Content

```json
{
  "resourceType" : "ChargeItem",
  "id" : "KfoMehrkosten3-P3",
  "meta" : {
    "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"]
  },
  "extension" : [{
    "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition-type",
    "valueCoding" : {
      "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-chargeitem-type-cs",
      "code" : "BEMA"
    }
  },
  {
    "extension" : [{
      "url" : "Punktzahl",
      "valueDecimal" : 336
    }],
    "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition-go-angaben"
  }],
  "status" : "billable",
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bäk/bema",
      "code" : "119d",
      "display" : "Maßnahmen zur Umformung eines Kiefers einschließlich Retention - besonders schwierig durchführbarer Art"
    }]
  },
  "subject" : {
    "reference" : "Patient/KfoMehrkosten3Patient"
  },
  "occurrenceDateTime" : "2024-07-29",
  "performer" : [{
    "actor" : {
      "reference" : "Organization/KfoMehrkosten3Behandler"
    }
  }],
  "quantity" : {
    "value" : 1,
    "unit" : "{#}",
    "system" : "http://unitsofmeasure.org",
    "code" : "{#}"
  },
  "bodysite" : [{
    "extension" : [{
      "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-zahnregion",
      "valueString" : "UK"
    }]
  }]
}

```
