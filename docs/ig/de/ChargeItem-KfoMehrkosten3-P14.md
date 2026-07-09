# KfoMehrkosten3 Rechnungsposition 14 – Labor 711-0 Abschirmelement (16.09.24) - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **KfoMehrkosten3 Rechnungsposition 14 – Labor 711-0 Abschirmelement (16.09.24)**

## Beispiel ChargeItem: KfoMehrkosten3 Rechnungsposition 14 – Labor 711-0 Abschirmelement (16.09.24)

Profile: [Digitale Patientenrechnung Rechnungsposition](StructureDefinition-dipag-rechnungsposition.md)

**Digitale Patientenrechnung Typ der Rechnungsposition Extension**: [Digitale Patientenrechnung Typ der Rechnungsposition CodeSystem: EigenlaborleistungMaterial](CodeSystem-dipag-chargeitem-type-cs.md#dipag-chargeitem-type-cs-EigenlaborleistungMaterial) (Eigenlaborleistung/Material)

**status**: Billable

**code**: 711-0 - Abschirmelement

**subject**: [Patient/KfoMehrkosten3Patient](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/KfoMehrkosten3Patient)

**occurrence**: 2024-09-16

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Organization ARZ ZB GmbH](Organization-KfoMehrkosten3Behandler.md) |

**quantity**: 1 {#} (Details: UCUM code{#} = '{#}')



## Resource Content

```json
{
  "resourceType" : "ChargeItem",
  "id" : "KfoMehrkosten3-P14",
  "meta" : {
    "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"]
  },
  "extension" : [{
    "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition-type",
    "valueCoding" : {
      "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-chargeitem-type-cs",
      "code" : "EigenlaborleistungMaterial"
    }
  }],
  "status" : "billable",
  "code" : {
    "text" : "711-0 - Abschirmelement"
  },
  "subject" : {
    "reference" : "Patient/KfoMehrkosten3Patient"
  },
  "occurrenceDateTime" : "2024-09-16",
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
  }
}

```
