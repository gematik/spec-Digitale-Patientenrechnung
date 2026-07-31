# Beispielrechnung - Zahnärztliche Behandlung - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Beispielrechnung - Zahnärztliche Behandlung**

## Beispiel Invoice: Beispielrechnung - Zahnärztliche Behandlung

Profile: [Digitale Patientenrechnung Rechnung](StructureDefinition-dipag-rechnung.md)

**Digitale Patientenrechnung Extension Behandlungsart**: [ActCode: AMB](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (ambulatory)

**Digitale Patientenrechnung Extension Fachrichtung**: [Aerztliche Fachrichtungen: MZKH](https://simplifier.net/resolve?scope=de.ihe-d.terminology@3.0.1&canonical=http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen#AerztlicheFachrichtungen-MZKH) (Zahnmedizin)

**Invoice.period als Backport aus R5**: 2024-01-15 --> 2024-03-10

> **Abrechnungsrelevanz von Diagnosen und Prozeduren**
* Referenz: [Condition Zahnkaries, nicht näher bezeichnet](Condition-f0a1b2c3-1e2f-3a4b-8c9d-0e1f2a3b4c5d.md)
* Use: [Digitale Patientenrechnung Abrechnungsdiagnose Use CodeSystem: main-diagnosis](CodeSystem-dipag-abrechnungs-diagnose-use-cs.md#dipag-abrechnungs-diagnose-use-cs-main-diagnosis) (Hauptdiagnose)

> **Abrechnungsrelevanz von Diagnosen und Prozeduren**
* Referenz: [Condition Chronische Parodontitis](Condition-a1b2c3d4-2f3a-4b5c-9d0e-1f2a3b4c5d6e.md)
* Referenz: [Procedure Implantation alloplastisches Material, Zahn](Procedure-b2c3d4e5-3a4b-5c6d-0e1f-2a3b4c5d6e7f.md)

**Abrechnungsrelevanz von Diagnosen und Prozeduren als Freitext**: Behandlung von Karies und Parodontitis mit Implantation

**Digitale Patientenrechnung BasedOn Extension**: Antragsreferenz/HKP-2024-001-123456

**identifier**: Rechnungsnummer/RG-2024-001234

**status**: issued

**type**: Gebührenordnung für Ärzte

**subject**: [Max Mustermann(official) Male, DoB: 1980-05-15 ( Krankenversichertennummer)](Patient-8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c.md)

**recipient**: [Max Mustermann](Patient-8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c.md)

**date**: 2024-03-15

> **participant****role**: Leistungserbringer**actor**: [Practitioner Dr. Anna Mueller(official)](Practitioner-d2e3f4a5-3c4d-5e6f-0a1b-2c3d4e5f6a7b.md)

> **participant****role**: Forderungsinhaber**actor**: [Organization Zahnarztpraxis Dr. Schulz](Organization-e3f4a5b6-4d5e-6f7a-1b2c-3d4e5f6a7b8c.md)

**issuer**: [Organization Zahnarztpraxis Dr. Schulz](Organization-e3f4a5b6-4d5e-6f7a-1b2c-3d4e5f6a7b8c.md)

> **lineItem****sequence**: 1**chargeItem**: [ChargeItem Beratung](ChargeItem-a5b6c7d8-6f7a-8b9c-3d4e-5f6a7b8c9d0e.md)
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 29.35 | Euro |


> **priceComponent****type**: tax

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 4.69 | Euro |



> **lineItem****sequence**: 3**chargeItem**: [ChargeItem Professionelle Zahnreinigung](ChargeItem-b6c7d8e9-7a8b-9c0d-4e5f-6a7b8c9d0e1f.md)
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 142.8 | Euro |


> **priceComponent****type**: tax

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 22.8 | Euro |



> **lineItem****sequence**: 4**chargeItem**: [ChargeItem ](ChargeItem-c7d8e9f0-8b9c-0d1e-5f6a-7b8c9d0e1f2a.md)
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 952 | Euro |


> **priceComponent****type**: tax

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 152 | Euro |



> **lineItem****sequence**: 5**chargeItem**: [ChargeItem ](ChargeItem-d8e9f0a1-9c0d-1e2f-6a7b-8c9d0e1f2a3b.md)
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 53.55 | Euro |


> **priceComponent****type**: tax

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 8.55 | Euro |



> **lineItem****sequence**: 6**chargeItem**: [ChargeItem ](ChargeItem-e9f0a1b2-0d1e-2f3a-7b8c-9d0e1f2a3b4c.md)
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 238 | Euro |


> **priceComponent****type**: tax

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 45.22 | Euro |



> **totalPriceComponent****type**: base price**code**: Summe aller Rechnungspositionen

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 1415.7 | Euro |


> **totalPriceComponent****type**: base price**code**: Fremdlaborleistungen

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 800 | Euro |


> **totalPriceComponent****type**: deduction**code**: Festzuschuss Kasse

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | -250 | Euro |


### TotalNets

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 1415.7 | Euro |

### TotalGrosses

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 1648.96 | Euro |

**paymentTerms**: 

Bitte überweisen Sie den Rechnungsbetrag bis zum 30.04.2024 auf folgendes Konto.

**note**: 

> 

Gemäß §1 Abs. 2 GOÄ werden diese Leistungen nach dieser Gebührenordnung für Ärzte berechnet. Bitte überweisen Sie den Betrag innerhalb von 14 Tagen.




## Resource Content

```json
{
  "resourceType" : "Invoice",
  "id" : "c3d4e5f6-4b5c-6d7e-1f2a-3b4c5d6e7f8a",
  "meta" : {
    "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnung"]
  },
  "extension" : [{
    "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-behandlungsart",
    "valueCoding" : {
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
      "code" : "AMB",
      "display" : "ambulatory"
    }
  },
  {
    "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-fachrichtung",
    "valueCoding" : {
      "system" : "http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen",
      "code" : "MZKH",
      "display" : "Zahnmedizin"
    }
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Invoice.period[x]",
    "valuePeriod" : {
      "start" : "2024-01-15",
      "end" : "2024-03-10"
    }
  },
  {
    "extension" : [{
      "url" : "Referenz",
      "valueReference" : {
        "reference" : "Condition/f0a1b2c3-1e2f-3a4b-8c9d-0e1f2a3b4c5d"
      }
    },
    {
      "url" : "Use",
      "valueCoding" : {
        "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-abrechnungs-diagnose-use-cs",
        "code" : "main-diagnosis",
        "display" : "Hauptdiagnose"
      }
    }],
    "url" : "https://gematik.de/fhir/dipag/StructureDefinition/DiPagAbrechnungsDiagnoseProzedur"
  },
  {
    "extension" : [{
      "url" : "Referenz",
      "valueReference" : {
        "reference" : "Condition/a1b2c3d4-2f3a-4b5c-9d0e-1f2a3b4c5d6e"
      }
    },
    {
      "url" : "Referenz",
      "valueReference" : {
        "reference" : "Procedure/b2c3d4e5-3a4b-5c6d-0e1f-2a3b4c5d6e7f"
      }
    }],
    "url" : "https://gematik.de/fhir/dipag/StructureDefinition/DiPagAbrechnungsDiagnoseProzedur"
  },
  {
    "url" : "https://gematik.de/fhir/dipag/StructureDefinition/DiPagAbrechnungsDiagnoseProzedurFreitext",
    "valueString" : "Behandlung von Karies und Parodontitis mit Implantation"
  },
  {
    "url" : "https://gematik.de/fhir/dipag/StructureDefinition/DiPagInvoiceBasedOn",
    "valueIdentifier" : {
      "type" : {
        "coding" : [{
          "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-identifier-type-cs",
          "code" : "antragsreferenz"
        }]
      },
      "system" : "https://example.org/fhir/sid/kostenplan",
      "value" : "HKP-2024-001-123456"
    }
  }],
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-identifier-type-cs",
        "code" : "invoice"
      }]
    },
    "system" : "https://zahnarzt-schulz.de/fhir/sid/rechnungsnummer",
    "value" : "RG-2024-001234"
  }],
  "status" : "issued",
  "type" : {
    "coding" : [{
      "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-abrechnungsart-cs",
      "code" : "GOÄ",
      "display" : "Gebührenordnung für Ärzte"
    },
    {
      "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnungsart-cs",
      "code" : "ABSCHLUSS",
      "display" : "Abschlussrechnung"
    }]
  },
  "subject" : {
    "reference" : "Patient/8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c"
  },
  "recipient" : {
    "reference" : "Patient/8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c",
    "identifier" : {
      "type" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/identifier-type-de-basis",
          "code" : "KVZ10"
        }]
      },
      "system" : "http://fhir.de/sid/gkv/kvid-10",
      "value" : "K123456789"
    },
    "display" : "Max Mustermann"
  },
  "date" : "2024-03-15",
  "participant" : [{
    "role" : {
      "coding" : [{
        "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-participant-role-cs",
        "code" : "leistungserbringer"
      }]
    },
    "actor" : {
      "reference" : "Practitioner/d2e3f4a5-3c4d-5e6f-0a1b-2c3d4e5f6a7b"
    }
  },
  {
    "role" : {
      "coding" : [{
        "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-participant-role-cs",
        "code" : "forderungsinhaber"
      }]
    },
    "actor" : {
      "reference" : "Organization/e3f4a5b6-4d5e-6f7a-1b2c-3d4e5f6a7b8c"
    }
  }],
  "issuer" : {
    "reference" : "Organization/e3f4a5b6-4d5e-6f7a-1b2c-3d4e5f6a7b8c"
  },
  "lineItem" : [{
    "sequence" : 1,
    "chargeItemReference" : {
      "reference" : "ChargeItem/a5b6c7d8-6f7a-8b9c-3d4e-5f6a7b8c9d0e"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : 29.35,
        "currency" : "EUR"
      }
    },
    {
      "type" : "tax",
      "amount" : {
        "value" : 4.69,
        "currency" : "EUR"
      }
    }]
  },
  {
    "sequence" : 3,
    "chargeItemReference" : {
      "reference" : "ChargeItem/b6c7d8e9-7a8b-9c0d-4e5f-6a7b8c9d0e1f"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : 142.8,
        "currency" : "EUR"
      }
    },
    {
      "type" : "tax",
      "amount" : {
        "value" : 22.8,
        "currency" : "EUR"
      }
    }]
  },
  {
    "sequence" : 4,
    "chargeItemReference" : {
      "reference" : "ChargeItem/c7d8e9f0-8b9c-0d1e-5f6a-7b8c9d0e1f2a"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : 952,
        "currency" : "EUR"
      }
    },
    {
      "type" : "tax",
      "amount" : {
        "value" : 152,
        "currency" : "EUR"
      }
    }]
  },
  {
    "sequence" : 5,
    "chargeItemReference" : {
      "reference" : "ChargeItem/d8e9f0a1-9c0d-1e2f-6a7b-8c9d0e1f2a3b"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : 53.55,
        "currency" : "EUR"
      }
    },
    {
      "type" : "tax",
      "amount" : {
        "value" : 8.55,
        "currency" : "EUR"
      }
    }]
  },
  {
    "sequence" : 6,
    "chargeItemReference" : {
      "reference" : "ChargeItem/e9f0a1b2-0d1e-2f3a-7b8c-9d0e1f2a3b4c"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : 238,
        "currency" : "EUR"
      }
    },
    {
      "type" : "tax",
      "amount" : {
        "value" : 45.22,
        "currency" : "EUR"
      }
    }]
  }],
  "totalPriceComponent" : [{
    "type" : "base",
    "code" : {
      "coding" : [{
        "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-total-price-component-type-cs",
        "code" : "SummeRechnungspositionen",
        "display" : "Summe aller Rechnungspositionen"
      }]
    },
    "amount" : {
      "value" : 1415.7,
      "currency" : "EUR"
    }
  },
  {
    "type" : "base",
    "code" : {
      "coding" : [{
        "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-total-price-component-type-cs",
        "code" : "Fremdlaborleistungen",
        "display" : "Fremdlaborleistungen"
      }]
    },
    "amount" : {
      "value" : 800,
      "currency" : "EUR"
    }
  },
  {
    "type" : "deduction",
    "code" : {
      "coding" : [{
        "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-total-price-component-type-cs",
        "code" : "FestzuschussKasse",
        "display" : "Festzuschuss Kasse"
      }]
    },
    "amount" : {
      "value" : -250,
      "currency" : "EUR"
    }
  }],
  "totalNet" : {
    "value" : 1415.7,
    "currency" : "EUR"
  },
  "totalGross" : {
    "value" : 1648.96,
    "currency" : "EUR"
  },
  "paymentTerms" : "Bitte überweisen Sie den Rechnungsbetrag bis zum 30.04.2024 auf folgendes Konto.",
  "_paymentTerms" : {
    "extension" : [{
      "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-zahlungsziel",
      "valueDate" : "2024-04-30"
    },
    {
      "extension" : [{
        "url" : "paymentType",
        "valueCodeableConcept" : {
          "text" : "IBAN"
        }
      },
      {
        "url" : "account",
        "valueString" : "DE89370400440532013000"
      },
      {
        "url" : "bank",
        "valueString" : "Commerzbank AG"
      },
      {
        "url" : "branch",
        "valueString" : "COBADEFFXXX"
      },
      {
        "url" : "accountHolderName",
        "valueString" : "Zahnarztpraxis Dr. Schulz"
      },
      {
        "url" : "reference",
        "valueString" : "RG-2024-001234"
      }],
      "url" : "https://gematik.de/fhir/dipag/StructureDefinition/DiPagPaymentTo"
    }]
  },
  "note" : [{
    "text" : "Gemäß §1 Abs. 2 GOÄ werden diese Leistungen nach dieser Gebührenordnung für Ärzte berechnet. Bitte überweisen Sie den Betrag innerhalb von 14 Tagen."
  }]
}

```
