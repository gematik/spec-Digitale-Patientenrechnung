# KFO-Mehrkosten Rechnung Q3/2025 – KIG 3-5 Mehrkostenvereinbarung - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **KFO-Mehrkosten Rechnung Q3/2025 – KIG 3-5 Mehrkostenvereinbarung**

## Beispiel Invoice: KFO-Mehrkosten Rechnung Q3/2025 – KIG 3-5 Mehrkostenvereinbarung

Profile: [Digitale Patientenrechnung Rechnung](StructureDefinition-dipag-rechnung.md)

**Digitale Patientenrechnung Extension Behandlungsart**: [ActCode: AMB](http://terminology.hl7.org/7.2.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (ambulatory)

**Digitale Patientenrechnung Extension Fachrichtung**: [Aerztliche Fachrichtungen: MZKH](https://simplifier.net/resolve?scope=de.ihe-d.terminology@3.0.1&canonical=http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen#AerztlicheFachrichtungen-MZKH) (Zahnmedizin)

**Invoice.period als Backport aus R5**: 2025-07-23 --> 2025-07-23

**identifier**: Rechnungsnummer/325349020031

**status**: issued

**type**: Gebührenordnung für Zahnärzte

**subject**: [Patient/KfoMehrkosten4Patient](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/KfoMehrkosten4Patient)

**recipient**: [Maria Muster](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/KfoMehrkosten4Patient)

**date**: 2025-07-31

### Participants

| | | |
| :--- | :--- | :--- |
| - | **Role** | **Actor** |
| * | Leistungserbringer | [Organization/KfoMehrkosten4Behandler](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Organization/KfoMehrkosten4Behandler) |

**issuer**: [Organization/KfoMehrkosten4Behandler](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Organization/KfoMehrkosten4Behandler)

> **lineItem****sequence**: 1**chargeItem**: [ChargeItem Eingliederung eines Klebebrackets zur Aufnahme orthodontischer Hilfsmittel](ChargeItem-KfoMehrkosten4-P1.md)
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 686.8 | Euro |



> **lineItem****sequence**: 2**chargeItem**: [ChargeItem Eingliederung eines ungeteilten Bogens, alle Zahngruppen umfassend, je Kiefer](ChargeItem-KfoMehrkosten4-P2.md)
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 393.68 | Euro |



> **totalPriceComponent****type**: base price**code**: Summe aller Rechnungspositionen

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 1080.48 | Euro |


> **totalPriceComponent****type**: deduction**code**: Vorleistungen anderer Kostenträger

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | -550.22 | Euro |


### TotalNets

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 530.26 | Euro |

### TotalGrosses

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 530.26 | Euro |

**paymentTerms**: 

Bitte zahlen Sie 530,26 EUR unter Angabe der Rechnungsnummer 325349020031.



## Resource Content

```json
{
  "resourceType" : "Invoice",
  "id" : "KfoMehrkosten4Rechnung",
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
      "start" : "2025-07-23",
      "end" : "2025-07-23"
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
    "value" : "325349020031"
  }],
  "status" : "issued",
  "type" : {
    "coding" : [{
      "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-abrechnungsart-cs",
      "code" : "GOZ"
    },
    {
      "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnungsart-cs",
      "code" : "TEIL"
    }]
  },
  "subject" : {
    "reference" : "Patient/KfoMehrkosten4Patient"
  },
  "recipient" : {
    "reference" : "Patient/KfoMehrkosten4Patient",
    "identifier" : {
      "system" : "http://fhir.de/sid/gkv/kvid-10",
      "value" : "A123456781"
    },
    "display" : "Maria Muster"
  },
  "date" : "2025-07-31",
  "participant" : [{
    "role" : {
      "coding" : [{
        "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-participant-role-cs",
        "code" : "leistungserbringer"
      }]
    },
    "actor" : {
      "reference" : "Organization/KfoMehrkosten4Behandler"
    }
  }],
  "issuer" : {
    "reference" : "Organization/KfoMehrkosten4Behandler"
  },
  "lineItem" : [{
    "sequence" : 1,
    "chargeItemReference" : {
      "reference" : "ChargeItem/KfoMehrkosten4-P1"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : 686.8,
        "currency" : "EUR"
      }
    }]
  },
  {
    "sequence" : 2,
    "chargeItemReference" : {
      "reference" : "ChargeItem/KfoMehrkosten4-P2"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : 393.68,
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
      "value" : 1080.48,
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
      "value" : -550.22,
      "currency" : "EUR"
    }
  }],
  "totalNet" : {
    "value" : 530.26,
    "currency" : "EUR"
  },
  "totalGross" : {
    "value" : 530.26,
    "currency" : "EUR"
  },
  "paymentTerms" : "Bitte zahlen Sie 530,26 EUR unter Angabe der Rechnungsnummer 325349020031.",
  "_paymentTerms" : {
    "extension" : [{
      "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-zahlungsziel",
      "valueDate" : "2025-08-30"
    }]
  }
}

```
