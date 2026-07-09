# Musterrechnung Position 6 - GOÄ Nr. 3501 (19.10.18) - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Musterrechnung Position 6 - GOÄ Nr. 3501 (19.10.18)**

## Beispiel ChargeItem: Musterrechnung Position 6 - GOÄ Nr. 3501 (19.10.18)

Profile: [Digitale Patientenrechnung Rechnungsposition](StructureDefinition-dipag-rechnungsposition.md)

**Digitale Patientenrechnung Typ der Rechnungsposition Extension**: [Digitale Patientenrechnung Typ der Rechnungsposition CodeSystem: GOÄ](CodeSystem-dipag-chargeitem-type-cs.md#dipag-chargeitem-type-cs-GO.196) (Leistung nach Gebührenordnung GOÄ)

> **Digitale Patientenrechnung Angaben bei Gebührenordnungen bei einer Rechnungsposition****Value**: 1.15
> **url**[Faktor](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Faktor)

**Digitale Patientenrechnung Rechnungsposition Behandlungsdatum**: 2018-10-19

**status**: Billable

**code**: Blutsenkung

**subject**: [B. Patient(official) Male, DoB: 1969-10-10 ( Krankenversichertennummer)](Patient-1a2b3c4d-5e6f-7a8b-9c0d-1e2f3a4b5c6d.md)

**occurrence**: 2018-10-19 --> 2018-10-19

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Practitioner Dr. A. Arzt(official)](Practitioner-2b3c4d5e-6f7a-8b9c-0d1e-2f3a4b5c6d7e.md) |

**quantity**: 1 Anzahl (Details: UCUM code{count} = '{count}')



## Resource Content

```json
{
  "resourceType" : "ChargeItem",
  "id" : "9c0d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f",
  "meta" : {
    "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"]
  },
  "extension" : [{
    "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition-type",
    "valueCoding" : {
      "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-chargeitem-type-cs",
      "code" : "GOÄ"
    }
  },
  {
    "extension" : [{
      "extension" : [{
        "url" : "Value",
        "valueDecimal" : 1.15
      }],
      "url" : "Faktor"
    }],
    "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition-go-angaben"
  },
  {
    "url" : "https://gematik.de/fhir/dipag/StructureDefinition/DiPagRechnungspositionBehandlungsdatum",
    "valueDate" : "2018-10-19"
  }],
  "status" : "billable",
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bäk/goä",
      "code" : "3501"
    }],
    "text" : "Blutsenkung"
  },
  "subject" : {
    "reference" : "Patient/1a2b3c4d-5e6f-7a8b-9c0d-1e2f3a4b5c6d"
  },
  "occurrencePeriod" : {
    "start" : "2018-10-19",
    "end" : "2018-10-19"
  },
  "performer" : [{
    "actor" : {
      "reference" : "Practitioner/2b3c4d5e-6f7a-8b9c-0d1e-2f3a4b5c6d7e"
    }
  }],
  "quantity" : {
    "value" : 1,
    "unit" : "Anzahl",
    "system" : "http://unitsofmeasure.org",
    "code" : "{count}"
  }
}

```
