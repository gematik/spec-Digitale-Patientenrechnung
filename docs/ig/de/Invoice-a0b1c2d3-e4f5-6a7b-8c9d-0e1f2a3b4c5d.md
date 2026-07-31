# Musterrechnung Arztbehandlung - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Musterrechnung Arztbehandlung**

## Beispiel Invoice: Musterrechnung Arztbehandlung

Profile: [Digitale Patientenrechnung Rechnung](StructureDefinition-dipag-rechnung.md)

**Digitale Patientenrechnung Extension Behandlungsart**: [ActCode: AMB](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (ambulatory)

**Digitale Patientenrechnung Extension Fachrichtung**: [Aerztliche Fachrichtungen: INNE](https://simplifier.net/resolve?scope=de.ihe-d.terminology@3.0.1&canonical=http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen#AerztlicheFachrichtungen-INNE) (Innere Medizin)

**Invoice.period als Backport aus R5**: 2018-10-04 --> 2018-10-19

**Abrechnungsrelevanz von Diagnosen und Prozeduren als Freitext**: Grippaler Infekt; Hepatopathie

**identifier**: Rechnungsnummer/1425

**status**: issued

**type**: Gebührenordnung für Ärzte

**subject**: [B. Patient(official) Male, DoB: 1969-10-10 ( Krankenversichertennummer)](Patient-1a2b3c4d-5e6f-7a8b-9c0d-1e2f3a4b5c6d.md)

**recipient**: [Herr B. Patient](Patient-1a2b3c4d-5e6f-7a8b-9c0d-1e2f3a4b5c6d.md)

**date**: 2018-10-24

> **participant****role**: Leistungserbringer**actor**: [Practitioner Dr. A. Arzt(official)](Practitioner-2b3c4d5e-6f7a-8b9c-0d1e-2f3a4b5c6d7e.md)

> **participant****role**: Forderungsinhaber**actor**: [Organization Praxis Dr. A. Arzt](Organization-3c4d5e6f-7a8b-9c0d-1e2f-3a4b5c6d7e8f.md)

**issuer**: [Organization Praxis Dr. A. Arzt](Organization-3c4d5e6f-7a8b-9c0d-1e2f-3a4b5c6d7e8f.md)

> **lineItem****sequence**: 1**chargeItem**: [ChargeItem 1](ChargeItem-4d5e6f7a-8b9c-0d1e-2f3a-4b5c6d7e8f9a.md)
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 10.72 | Euro |



> **lineItem****sequence**: 2**chargeItem**: [ChargeItem 5](ChargeItem-5e6f7a8b-9c0d-1e2f-3a4b-5c6d7e8f9a0b.md)
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 10.72 | Euro |



> **lineItem****sequence**: 3**chargeItem**: [ChargeItem 70](ChargeItem-6f7a8b9c-0d1e-2f3a-4b5c-6d7e8f9a0b1c.md)
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 5.36 | Euro |



> **lineItem****sequence**: 4**chargeItem**: [ChargeItem 1](ChargeItem-7a8b9c0d-1e2f-3a4b-5c6d-7e8f9a0b1c2d.md)
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 10.72 | Euro |



> **lineItem****sequence**: 5**chargeItem**: [ChargeItem 5](ChargeItem-8b9c0d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e.md)
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 10.72 | Euro |



> **lineItem****sequence**: 6**chargeItem**: [ChargeItem 3501](ChargeItem-9c0d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f.md)
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 4.02 | Euro |



> **lineItem****sequence**: 7**chargeItem**: [ChargeItem 3597.H1](ChargeItem-0d1e2f3a-4b5c-6d7e-8f9a-0b1c2d3e4f5a.md)
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 2.68 | Euro |



### TotalNets

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 54.95 | Euro |

### TotalGrosses

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 54.95 | Euro |

**paymentTerms**: 

Zahlbar bis zum 14.11.2018

**note**: 

> 

Berechnet nach der Gebührenordnung für Ärzte / GOÄ (Stand 01.01.2002). Bitte überweisen Sie den Betrag unter Angabe der Rechnungsnummer und des Rechnungsdatums bis zum 14.11.2018 auf das unten angegebene Konto.




## Resource Content

```json
{
  "resourceType" : "Invoice",
  "id" : "a0b1c2d3-e4f5-6a7b-8c9d-0e1f2a3b4c5d",
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
      "code" : "INNE",
      "display" : "Innere Medizin"
    }
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Invoice.period[x]",
    "valuePeriod" : {
      "start" : "2018-10-04",
      "end" : "2018-10-19"
    }
  },
  {
    "url" : "https://gematik.de/fhir/dipag/StructureDefinition/DiPagAbrechnungsDiagnoseProzedurFreitext",
    "valueString" : "Grippaler Infekt; Hepatopathie"
  }],
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-identifier-type-cs",
        "code" : "invoice"
      }]
    },
    "system" : "https://praxis-dr-arzt.de/fhir/sid/rechnungsnummer",
    "value" : "1425"
  }],
  "status" : "issued",
  "type" : {
    "coding" : [{
      "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-abrechnungsart-cs",
      "code" : "GOÄ",
      "display" : "Gebührenordnung für Ärzte"
    }]
  },
  "subject" : {
    "reference" : "Patient/1a2b3c4d-5e6f-7a8b-9c0d-1e2f3a4b5c6d"
  },
  "recipient" : {
    "reference" : "Patient/1a2b3c4d-5e6f-7a8b-9c0d-1e2f3a4b5c6d",
    "identifier" : {
      "type" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/identifier-type-de-basis",
          "code" : "KVZ10"
        }]
      },
      "system" : "http://fhir.de/sid/gkv/kvid-10",
      "value" : "B123456789"
    },
    "display" : "Herr B. Patient"
  },
  "date" : "2018-10-24",
  "participant" : [{
    "role" : {
      "coding" : [{
        "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-participant-role-cs",
        "code" : "leistungserbringer"
      }]
    },
    "actor" : {
      "reference" : "Practitioner/2b3c4d5e-6f7a-8b9c-0d1e-2f3a4b5c6d7e"
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
      "reference" : "Organization/3c4d5e6f-7a8b-9c0d-1e2f-3a4b5c6d7e8f"
    }
  }],
  "issuer" : {
    "reference" : "Organization/3c4d5e6f-7a8b-9c0d-1e2f-3a4b5c6d7e8f"
  },
  "lineItem" : [{
    "sequence" : 1,
    "chargeItemReference" : {
      "reference" : "ChargeItem/4d5e6f7a-8b9c-0d1e-2f3a-4b5c6d7e8f9a"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : 10.72,
        "currency" : "EUR"
      }
    }]
  },
  {
    "sequence" : 2,
    "chargeItemReference" : {
      "reference" : "ChargeItem/5e6f7a8b-9c0d-1e2f-3a4b-5c6d7e8f9a0b"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : 10.72,
        "currency" : "EUR"
      }
    }]
  },
  {
    "sequence" : 3,
    "chargeItemReference" : {
      "reference" : "ChargeItem/6f7a8b9c-0d1e-2f3a-4b5c-6d7e8f9a0b1c"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : 5.36,
        "currency" : "EUR"
      }
    }]
  },
  {
    "sequence" : 4,
    "chargeItemReference" : {
      "reference" : "ChargeItem/7a8b9c0d-1e2f-3a4b-5c6d-7e8f9a0b1c2d"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : 10.72,
        "currency" : "EUR"
      }
    }]
  },
  {
    "sequence" : 5,
    "chargeItemReference" : {
      "reference" : "ChargeItem/8b9c0d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : 10.72,
        "currency" : "EUR"
      }
    }]
  },
  {
    "sequence" : 6,
    "chargeItemReference" : {
      "reference" : "ChargeItem/9c0d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : 4.02,
        "currency" : "EUR"
      }
    }]
  },
  {
    "sequence" : 7,
    "chargeItemReference" : {
      "reference" : "ChargeItem/0d1e2f3a-4b5c-6d7e-8f9a-0b1c2d3e4f5a"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : 2.68,
        "currency" : "EUR"
      }
    }]
  }],
  "totalNet" : {
    "value" : 54.95,
    "currency" : "EUR"
  },
  "totalGross" : {
    "value" : 54.95,
    "currency" : "EUR"
  },
  "paymentTerms" : "Zahlbar bis zum 14.11.2018",
  "_paymentTerms" : {
    "extension" : [{
      "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-zahlungsziel",
      "valueDate" : "2018-11-14"
    }]
  },
  "note" : [{
    "text" : "Berechnet nach der Gebührenordnung für Ärzte / GOÄ (Stand 01.01.2002). Bitte überweisen Sie den Betrag unter Angabe der Rechnungsnummer und des Rechnungsdatums bis zum 14.11.2018 auf das unten angegebene Konto."
  }]
}

```
