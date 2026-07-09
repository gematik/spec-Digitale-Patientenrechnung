# GOZ Position: Professionelle Zahnreinigung - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **GOZ Position: Professionelle Zahnreinigung**

## Beispiel ChargeItem: GOZ Position: Professionelle Zahnreinigung

Profile: [Digitale Patientenrechnung Rechnungsposition](StructureDefinition-dipag-rechnungsposition.md)

**Digitale Patientenrechnung Typ der Rechnungsposition Extension**: [Digitale Patientenrechnung Typ der Rechnungsposition CodeSystem: GOZ](CodeSystem-dipag-chargeitem-type-cs.md#dipag-chargeitem-type-cs-GOZ) (Leistung nach Gebührenordnung GOZ)

**Digitale Patientenrechnung Rechnungsposition Zusatz Extension**: [Digitale Patientenrechnung Rechnungsposition Zusatz CodeSystem: V](CodeSystem-dipag-rechnungsposition-zusatz-cs.md#dipag-rechnungsposition-zusatz-cs-V) (auf Verlangen erbrachte Leistung)

> **Digitale Patientenrechnung Angaben bei Gebührenordnungen bei einer Rechnungsposition**
> **url**[Einfachsatz](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Einfachsatz)
**value**: €60,00 (EUR)
> **url**[Punktzahl](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Punktzahl)
**value**: 28**Value**: 2
> **url**[Faktor](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Faktor)

**Digitale Patientenrechnung Rechnungsposition Behandlungsdatum**: 2024-02-25

**status**: Billable

**code**: Professionelle Zahnreinigung

**subject**: [Max Mustermann(official) Male, DoB: 1980-05-15 ( Krankenversichertennummer)](Patient-8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c.md)

**occurrence**: 2024-02-25 --> 2024-02-25

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Practitioner Dr. Hans Schulz(official)](Practitioner-c1d2e3f4-2b3c-4d5e-9f0a-1b2c3d4e5f6a.md) |

**bodysite**: 



## Resource Content

```json
{
  "resourceType" : "ChargeItem",
  "id" : "b6c7d8e9-7a8b-9c0d-4e5f-6a7b8c9d0e1f",
  "meta" : {
    "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"]
  },
  "extension" : [{
    "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition-type",
    "valueCoding" : {
      "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-chargeitem-type-cs",
      "code" : "GOZ"
    }
  },
  {
    "url" : "https://gematik.de/fhir/dipag/StructureDefinition/DiPagRechnungspositionZusatz",
    "valueCoding" : {
      "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnungsposition-zusatz-cs",
      "code" : "V",
      "display" : "auf Verlangen erbrachte Leistung"
    }
  },
  {
    "extension" : [{
      "url" : "Einfachsatz",
      "valueMoney" : {
        "value" : 60,
        "currency" : "EUR"
      }
    },
    {
      "url" : "Punktzahl",
      "valueDecimal" : 28
    },
    {
      "extension" : [{
        "url" : "Value",
        "valueDecimal" : 2
      }],
      "url" : "Faktor"
    }],
    "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition-go-angaben"
  },
  {
    "url" : "https://gematik.de/fhir/dipag/StructureDefinition/DiPagRechnungspositionBehandlungsdatum",
    "valueDate" : "2024-02-25"
  }],
  "status" : "billable",
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bäk/gzä",
      "code" : "1040",
      "display" : "Professionelle Zahnreinigung"
    }]
  },
  "subject" : {
    "reference" : "Patient/8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c"
  },
  "occurrencePeriod" : {
    "start" : "2024-02-25",
    "end" : "2024-02-25"
  },
  "performer" : [{
    "actor" : {
      "reference" : "Practitioner/c1d2e3f4-2b3c-4d5e-9f0a-1b2c3d4e5f6a"
    }
  }],
  "bodysite" : [{
    "extension" : [{
      "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-zahnregion",
      "valueString" : "11-48"
    }]
  }]
}

```
