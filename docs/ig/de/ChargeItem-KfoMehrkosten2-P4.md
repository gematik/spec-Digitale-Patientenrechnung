# KfoMehrkosten2 Rechnungsposition 4 – BEMA 128A Abzug zu P3 (04.08.25) - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **KfoMehrkosten2 Rechnungsposition 4 – BEMA 128A Abzug zu P3 (04.08.25)**

## Beispiel ChargeItem: KfoMehrkosten2 Rechnungsposition 4 – BEMA 128A Abzug zu P3 (04.08.25)

Profile: [Digitale Patientenrechnung Rechnungsposition](StructureDefinition-dipag-rechnungsposition.md)

**Digitale Patientenrechnung Typ der Rechnungsposition Extension**: [Digitale Patientenrechnung Typ der Rechnungsposition CodeSystem: BEMA](CodeSystem-dipag-chargeitem-type-cs.md#dipag-chargeitem-type-cs-BEMA) (BEMA-Leistung)

> **Digitale Patientenrechnung Angaben bei Gebührenordnungen bei einer Rechnungsposition**
* Punktzahl: 32

**status**: Billable

**code**: Eingliederung eines konfektionierten Vollbogens aus Edelstahl einschließlich Material- und Laborkosten

**subject**: [Patient/KfoMehrkosten2Patient](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/KfoMehrkosten2Patient)

**occurrence**: 2025-08-04

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Organization/KfoMehrkosten2Behandler](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Organization/KfoMehrkosten2Behandler) |

**quantity**: 2 {#} (Details: UCUM code{#} = '{#}')



## Resource Content

```json
{
  "resourceType" : "ChargeItem",
  "id" : "KfoMehrkosten2-P4",
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
      "valueDecimal" : 32
    }],
    "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition-go-angaben"
  }],
  "status" : "billable",
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bäk/bema",
      "code" : "128a",
      "display" : "Eingliederung eines konfektionierten Vollbogens aus Edelstahl einschließlich Material- und Laborkosten"
    }]
  },
  "subject" : {
    "reference" : "Patient/KfoMehrkosten2Patient"
  },
  "occurrenceDateTime" : "2025-08-04",
  "performer" : [{
    "actor" : {
      "reference" : "Organization/KfoMehrkosten2Behandler"
    }
  }],
  "quantity" : {
    "value" : 2,
    "unit" : "{#}",
    "system" : "http://unitsofmeasure.org",
    "code" : "{#}"
  }
}

```
