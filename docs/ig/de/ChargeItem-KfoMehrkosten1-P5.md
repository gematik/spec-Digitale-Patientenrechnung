# KfoMehrkosten1 Rechnungsposition 5 – BEMA 126a Abzug zu P4 (20.08.24) - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **KfoMehrkosten1 Rechnungsposition 5 – BEMA 126a Abzug zu P4 (20.08.24)**

## Beispiel ChargeItem: KfoMehrkosten1 Rechnungsposition 5 – BEMA 126a Abzug zu P4 (20.08.24)

Profile: [Digitale Patientenrechnung Rechnungsposition](StructureDefinition-dipag-rechnungsposition.md)

**Digitale Patientenrechnung Typ der Rechnungsposition Extension**: [Digitale Patientenrechnung Typ der Rechnungsposition CodeSystem: BEMA](CodeSystem-dipag-chargeitem-type-cs.md#dipag-chargeitem-type-cs-BEMA) (BEMA-Leistung)

> **Digitale Patientenrechnung Angaben bei Gebührenordnungen bei einer Rechnungsposition**
* Punktzahl: 18

**status**: Billable

**code**: Eingliedern eines Brackets oder eines Attachments aus Edelstahl oder nickelfreiem Metall einschließlich Material- und Laborkosten

**subject**: [Patient/KfoMehrkosten1Patient](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/KfoMehrkosten1Patient)

**occurrence**: 2024-08-20

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Organization/KfoMehrkosten1Behandler](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Organization/KfoMehrkosten1Behandler) |

**quantity**: 3 {#} (Details: UCUM code{#} = '{#}')



## Resource Content

```json
{
  "resourceType" : "ChargeItem",
  "id" : "KfoMehrkosten1-P5",
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
      "valueDecimal" : 18
    }],
    "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition-go-angaben"
  }],
  "status" : "billable",
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bäk/bema",
      "code" : "126a",
      "display" : "Eingliedern eines Brackets oder eines Attachments aus Edelstahl oder nickelfreiem Metall einschließlich Material- und Laborkosten"
    }]
  },
  "subject" : {
    "reference" : "Patient/KfoMehrkosten1Patient"
  },
  "occurrenceDateTime" : "2024-08-20",
  "performer" : [{
    "actor" : {
      "reference" : "Organization/KfoMehrkosten1Behandler"
    }
  }],
  "quantity" : {
    "value" : 3,
    "unit" : "{#}",
    "system" : "http://unitsofmeasure.org",
    "code" : "{#}"
  }
}

```
