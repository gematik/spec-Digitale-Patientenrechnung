# KFO-GKV-Abrechnung Q3/2024 – ARZ ZB GmbH - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **KFO-GKV-Abrechnung Q3/2024 – ARZ ZB GmbH**

## Beispiel Invoice: KFO-GKV-Abrechnung Q3/2024 – ARZ ZB GmbH

Profile: [Digitale Patientenrechnung Rechnung](StructureDefinition-dipag-rechnung.md)

**Digitale Patientenrechnung Extension Behandlungsart**: [ActCode: AMB](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (ambulatory)

**Digitale Patientenrechnung Extension Fachrichtung**: [Aerztliche Fachrichtungen: MZKH](https://simplifier.net/resolve?scope=de.ihe-d.terminology@3.0.1&canonical=http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen#AerztlicheFachrichtungen-MZKH) (Zahnmedizin)

**Invoice.period als Backport aus R5**: 2024-01-09 --> (ongoing)

**identifier**: Rechnungsnummer/324349010376

**status**: issued

**type**: Einheitliche Bewertungsmaßstab für zahnärztliche Leistungen

**subject**: [Patient/KfoMehrkosten3Patient](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/KfoMehrkosten3Patient)

**recipient**: [Maria Muster](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/KfoMehrkosten3Patient)

**date**: 2024-10-28

### Participants

| | | |
| :--- | :--- | :--- |
| - | **Role** | **Actor** |
| * | Leistungserbringer | [Organization ARZ ZB GmbH](Organization-KfoMehrkosten3Behandler.md) |

**issuer**: [Organization ARZ ZB GmbH](Organization-KfoMehrkosten3Behandler.md)

> **lineItem****sequence**: 1**chargeItem**: [ChargeItem Beseitigen scharfer Zahnkanten oder störender Prothesenränder oder Ähnliches, je Sitzung](ChargeItem-KfoMehrkosten3-P1.md)
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 12.56 | Euro |



> **lineItem****sequence**: 2**chargeItem**: [ChargeItem Maßnahmen zur Umformung eines Kiefers einschließlich Retention - besonders schwierig durchführbarer Art](ChargeItem-KfoMehrkosten3-P2.md)

> **lineItem****sequence**: 3**chargeItem**: [ChargeItem Maßnahmen zur Umformung eines Kiefers einschließlich Retention - besonders schwierig durchführbarer Art](ChargeItem-KfoMehrkosten3-P3.md)

> **lineItem****sequence**: 4**chargeItem**: [ChargeItem Maßnahmen zur Einstellung des Unterkiefers in den Regelbiss in sagittaler oder lateraler Richtung einschließlich Retention - besonders schwierig durchführbarer Art](ChargeItem-KfoMehrkosten3-P4.md)

> **lineItem****sequence**: 5**chargeItem**: [ChargeItem ](ChargeItem-KfoMehrkosten3-P5.md)
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 5.6 | Euro |



> **lineItem****sequence**: 6**chargeItem**: [ChargeItem ](ChargeItem-KfoMehrkosten3-P6.md)
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 14.68 | Euro |



> **lineItem****sequence**: 7**chargeItem**: [ChargeItem ](ChargeItem-KfoMehrkosten3-P7.md)
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 7.62 | Euro |



> **lineItem****sequence**: 8**chargeItem**: [ChargeItem ](ChargeItem-KfoMehrkosten3-P8.md)
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 13.3 | Euro |



> **lineItem****sequence**: 9**chargeItem**: [ChargeItem ](ChargeItem-KfoMehrkosten3-P9.md)
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 142.68 | Euro |



> **lineItem****sequence**: 10**chargeItem**: [ChargeItem ](ChargeItem-KfoMehrkosten3-P10.md)
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 53.2 | Euro |



> **lineItem****sequence**: 11**chargeItem**: [ChargeItem ](ChargeItem-KfoMehrkosten3-P11.md)
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 39.92 | Euro |



> **lineItem****sequence**: 12**chargeItem**: [ChargeItem ](ChargeItem-KfoMehrkosten3-P12.md)
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 14.27 | Euro |



> **lineItem****sequence**: 13**chargeItem**: [ChargeItem ](ChargeItem-KfoMehrkosten3-P13.md)
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 27.57 | Euro |



> **lineItem****sequence**: 14**chargeItem**: [ChargeItem ](ChargeItem-KfoMehrkosten3-P14.md)
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 20.92 | Euro |



> **lineItem****sequence**: 15**chargeItem**: [ChargeItem ](ChargeItem-KfoMehrkosten3-P15.md)
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 24.74 | Euro |



> **totalPriceComponent****type**: base price**code**: Summe aller Rechnungspositionen

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 467.77 | Euro |


> **totalPriceComponent****type**: deduction**code**: Vorleistungen anderer Kostenträger

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | -376.73 | Euro |


### TotalNets

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 91.04 | Euro |

### TotalGrosses

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 91.04 | Euro |

**paymentTerms**: 

Bitte zahlen Sie den Versichertenanteil in Höhe von 91,04 EUR.



## Resource Content

```json
{
  "resourceType" : "Invoice",
  "id" : "KfoMehrkosten3Rechnung",
  "meta" : {
    "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnung"]
  },
  "extension" : [{
    "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-behandlungsart",
    "valueCoding" : {
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
      "code" : "AMB"
    }
  },
  {
    "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-fachrichtung",
    "valueCoding" : {
      "system" : "http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen",
      "code" : "MZKH"
    }
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Invoice.period[x]",
    "valuePeriod" : {
      "start" : "2024-01-09"
    }
  }],
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-identifier-type-cs",
        "code" : "invoice"
      }]
    },
    "system" : "http://example.org/rechnungsnummer",
    "value" : "324349010376"
  }],
  "status" : "issued",
  "type" : {
    "coding" : [{
      "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-abrechnungsart-cs",
      "code" : "BEMA"
    },
    {
      "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnungsart-cs",
      "code" : "TEIL"
    }]
  },
  "subject" : {
    "reference" : "Patient/KfoMehrkosten3Patient"
  },
  "recipient" : {
    "reference" : "Patient/KfoMehrkosten3Patient",
    "identifier" : {
      "system" : "http://fhir.de/sid/gkv/kvid-10",
      "value" : "H0013371209"
    },
    "display" : "Maria Muster"
  },
  "date" : "2024-10-28",
  "participant" : [{
    "role" : {
      "coding" : [{
        "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-participant-role-cs",
        "code" : "leistungserbringer"
      }]
    },
    "actor" : {
      "reference" : "Organization/KfoMehrkosten3Behandler"
    }
  }],
  "issuer" : {
    "reference" : "Organization/KfoMehrkosten3Behandler"
  },
  "lineItem" : [{
    "sequence" : 1,
    "chargeItemReference" : {
      "reference" : "ChargeItem/KfoMehrkosten3-P1"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : 12.56,
        "currency" : "EUR"
      }
    }]
  },
  {
    "sequence" : 2,
    "chargeItemReference" : {
      "reference" : "ChargeItem/KfoMehrkosten3-P2"
    }
  },
  {
    "sequence" : 3,
    "chargeItemReference" : {
      "reference" : "ChargeItem/KfoMehrkosten3-P3"
    }
  },
  {
    "sequence" : 4,
    "chargeItemReference" : {
      "reference" : "ChargeItem/KfoMehrkosten3-P4"
    }
  },
  {
    "sequence" : 5,
    "chargeItemReference" : {
      "reference" : "ChargeItem/KfoMehrkosten3-P5"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : 5.6,
        "currency" : "EUR"
      }
    }]
  },
  {
    "sequence" : 6,
    "chargeItemReference" : {
      "reference" : "ChargeItem/KfoMehrkosten3-P6"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : 14.68,
        "currency" : "EUR"
      }
    }]
  },
  {
    "sequence" : 7,
    "chargeItemReference" : {
      "reference" : "ChargeItem/KfoMehrkosten3-P7"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : 7.62,
        "currency" : "EUR"
      }
    }]
  },
  {
    "sequence" : 8,
    "chargeItemReference" : {
      "reference" : "ChargeItem/KfoMehrkosten3-P8"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : 13.3,
        "currency" : "EUR"
      }
    }]
  },
  {
    "sequence" : 9,
    "chargeItemReference" : {
      "reference" : "ChargeItem/KfoMehrkosten3-P9"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : 142.68,
        "currency" : "EUR"
      }
    }]
  },
  {
    "sequence" : 10,
    "chargeItemReference" : {
      "reference" : "ChargeItem/KfoMehrkosten3-P10"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : 53.2,
        "currency" : "EUR"
      }
    }]
  },
  {
    "sequence" : 11,
    "chargeItemReference" : {
      "reference" : "ChargeItem/KfoMehrkosten3-P11"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : 39.92,
        "currency" : "EUR"
      }
    }]
  },
  {
    "sequence" : 12,
    "chargeItemReference" : {
      "reference" : "ChargeItem/KfoMehrkosten3-P12"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : 14.27,
        "currency" : "EUR"
      }
    }]
  },
  {
    "sequence" : 13,
    "chargeItemReference" : {
      "reference" : "ChargeItem/KfoMehrkosten3-P13"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : 27.57,
        "currency" : "EUR"
      }
    }]
  },
  {
    "sequence" : 14,
    "chargeItemReference" : {
      "reference" : "ChargeItem/KfoMehrkosten3-P14"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : 20.92,
        "currency" : "EUR"
      }
    }]
  },
  {
    "sequence" : 15,
    "chargeItemReference" : {
      "reference" : "ChargeItem/KfoMehrkosten3-P15"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : 24.74,
        "currency" : "EUR"
      }
    }]
  }],
  "totalPriceComponent" : [{
    "type" : "base",
    "code" : {
      "coding" : [{
        "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-total-price-component-type-cs",
        "code" : "SummeRechnungspositionen"
      }]
    },
    "amount" : {
      "value" : 467.77,
      "currency" : "EUR"
    }
  },
  {
    "type" : "deduction",
    "code" : {
      "coding" : [{
        "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-total-price-component-type-cs",
        "code" : "VorleistungKst"
      }]
    },
    "amount" : {
      "value" : -376.73,
      "currency" : "EUR"
    }
  }],
  "totalNet" : {
    "value" : 91.04,
    "currency" : "EUR"
  },
  "totalGross" : {
    "value" : 91.04,
    "currency" : "EUR"
  },
  "paymentTerms" : "Bitte zahlen Sie den Versichertenanteil in Höhe von 91,04 EUR.",
  "_paymentTerms" : {
    "extension" : [{
      "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-zahlungsziel",
      "valueDate" : "2024-02-09"
    }]
  }
}

```
