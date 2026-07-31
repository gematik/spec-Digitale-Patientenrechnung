# KFO-Mehrkosten Rechnung Q3/2025 – Büdingen Dent - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **KFO-Mehrkosten Rechnung Q3/2025 – Büdingen Dent**

## Beispiel Invoice: KFO-Mehrkosten Rechnung Q3/2025 – Büdingen Dent

Profile: [Digitale Patientenrechnung Rechnung](StructureDefinition-dipag-rechnung.md)

**Digitale Patientenrechnung Extension Behandlungsart**: [ActCode: AMB](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (ambulatory)

**Digitale Patientenrechnung Extension Fachrichtung**: [Aerztliche Fachrichtungen: MZKH](https://simplifier.net/resolve?scope=de.ihe-d.terminology@3.0.1&canonical=http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen#AerztlicheFachrichtungen-MZKH) (Zahnmedizin)

**identifier**: Rechnungsnummer/UNK123456

**status**: issued

**type**: Gebührenordnung für Zahnärzte

**subject**: [Patient/KfoMehrkosten2Patient](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/KfoMehrkosten2Patient)

**recipient**: [Maria Muster](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/KfoMehrkosten2Patient)

**date**: 2025-10-07

### Participants

| | | |
| :--- | :--- | :--- |
| - | **Role** | **Actor** |
| * | Leistungserbringer | [Organization/KfoMehrkosten2Behandler](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Organization/KfoMehrkosten2Behandler) |

**issuer**: [Organization/KfoMehrkosten2Behandler](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Organization/KfoMehrkosten2Behandler)

> **lineItem****sequence**: 1**chargeItem**: [ChargeItem Präparieren einer Kavität und Restauration mit plastischem Füllungsmaterial einschließlich Unterfüllung, Anlegen einer Matrize oder Benutzen anderer Hilfsmittel zur Formung der Füllung, mehr als dreiflächig](ChargeItem-KfoMehrkosten2-P1.md)
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 104.06 | Euro |



> **lineItem****sequence**: 2**chargeItem**: [ChargeItem Eingliedern eines Brackets oder eines Attachments einschließlich Material- und Laborkosten](ChargeItem-KfoMehrkosten2-P2.md)
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | -40.76 | Euro |



> **lineItem****sequence**: 3**chargeItem**: [ChargeItem Eingliederung eines ungeteilten Bogens, alle Zahngruppen umfassend, je Kiefer](ChargeItem-KfoMehrkosten2-P3.md)
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 196.84 | Euro |



> **lineItem****sequence**: 4**chargeItem**: [ChargeItem Eingliederung eines konfektionierten Vollbogens aus Edelstahl einschließlich Material- und Laborkosten](ChargeItem-KfoMehrkosten2-P4.md)
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | -72.47 | Euro |



> **lineItem****sequence**: 5**chargeItem**: [ChargeItem Versiegelung von kariesfreien Zahnfissuren mit aushärtenden Kunststoffen, auch Glattflächenversiegelung, je Zahn](ChargeItem-KfoMehrkosten2-P5.md)
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 23.28 | Euro |



> **lineItem****sequence**: 6**chargeItem**: [ChargeItem Präparieren einer Kavität und Restauration mit plastischem Füllungsmaterial einschließlich Unterfüllung, Anlegen einer Matrize oder Benutzen anderer Hilfsmittel zur Formung der Füllung, mehr als dreiflächig](ChargeItem-KfoMehrkosten2-P6.md)
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 104.06 | Euro |



> **lineItem****sequence**: 7**chargeItem**: [ChargeItem Eingliedern eines Brackets oder eines Attachments einschließlich Material- und Laborkosten](ChargeItem-KfoMehrkosten2-P7.md)
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | -40.76 | Euro |



> **lineItem****sequence**: 8**chargeItem**: [ChargeItem Versiegelung von kariesfreien Zahnfissuren mit aushärtenden Kunststoffen, auch Glattflächenversiegelung, je Zahn](ChargeItem-KfoMehrkosten2-P8.md)
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 23.28 | Euro |



> **totalPriceComponent****type**: base price**code**: Summe aller Rechnungspositionen

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 451.52 | Euro |


> **totalPriceComponent****type**: deduction**code**: Vorleistungen anderer Kostenträger

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | -153.99 | Euro |


### TotalNets

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 297.53 | Euro |

### TotalGrosses

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 297.53 | Euro |

**paymentTerms**: 

Bitte zahlen Sie 297,53 EUR mit dem Verwendungszweck 293495/039760 bis spätestens 06.11.2025 an: Empfänger: Büdingen Dent IBAN: DE90 5165 0079 0120 0008 37 BIC: HELADEF1FRI Bank: Sparkasse Oberhessen



## Resource Content

```json
{
  "resourceType" : "Invoice",
  "id" : "KfoMehrkosten2Rechnung",
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
  }],
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-identifier-type-cs",
        "code" : "invoice"
      }]
    },
    "system" : "http://example.org/rechnungsnummer",
    "value" : "UNK123456"
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
    "reference" : "Patient/KfoMehrkosten2Patient"
  },
  "recipient" : {
    "reference" : "Patient/KfoMehrkosten2Patient",
    "identifier" : {
      "system" : "http://fhir.de/sid/gkv/kvid-10",
      "value" : "A123456780"
    },
    "display" : "Maria Muster"
  },
  "date" : "2025-10-07",
  "participant" : [{
    "role" : {
      "coding" : [{
        "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-participant-role-cs",
        "code" : "leistungserbringer"
      }]
    },
    "actor" : {
      "reference" : "Organization/KfoMehrkosten2Behandler"
    }
  }],
  "issuer" : {
    "reference" : "Organization/KfoMehrkosten2Behandler"
  },
  "lineItem" : [{
    "sequence" : 1,
    "chargeItemReference" : {
      "reference" : "ChargeItem/KfoMehrkosten2-P1"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : 104.06,
        "currency" : "EUR"
      }
    }]
  },
  {
    "sequence" : 2,
    "chargeItemReference" : {
      "reference" : "ChargeItem/KfoMehrkosten2-P2"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : -40.76,
        "currency" : "EUR"
      }
    }]
  },
  {
    "sequence" : 3,
    "chargeItemReference" : {
      "reference" : "ChargeItem/KfoMehrkosten2-P3"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : 196.84,
        "currency" : "EUR"
      }
    }]
  },
  {
    "sequence" : 4,
    "chargeItemReference" : {
      "reference" : "ChargeItem/KfoMehrkosten2-P4"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : -72.47,
        "currency" : "EUR"
      }
    }]
  },
  {
    "sequence" : 5,
    "chargeItemReference" : {
      "reference" : "ChargeItem/KfoMehrkosten2-P5"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : 23.28,
        "currency" : "EUR"
      }
    }]
  },
  {
    "sequence" : 6,
    "chargeItemReference" : {
      "reference" : "ChargeItem/KfoMehrkosten2-P6"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : 104.06,
        "currency" : "EUR"
      }
    }]
  },
  {
    "sequence" : 7,
    "chargeItemReference" : {
      "reference" : "ChargeItem/KfoMehrkosten2-P7"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : -40.76,
        "currency" : "EUR"
      }
    }]
  },
  {
    "sequence" : 8,
    "chargeItemReference" : {
      "reference" : "ChargeItem/KfoMehrkosten2-P8"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : 23.28,
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
      "value" : 451.52,
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
      "value" : -153.99,
      "currency" : "EUR"
    }
  }],
  "totalNet" : {
    "value" : 297.53,
    "currency" : "EUR"
  },
  "totalGross" : {
    "value" : 297.53,
    "currency" : "EUR"
  },
  "paymentTerms" : "Bitte zahlen Sie 297,53 EUR mit dem Verwendungszweck 293495/039760 bis spätestens 06.11.2025 an:\nEmpfänger: Büdingen Dent\nIBAN: DE90 5165 0079 0120 0008 37\nBIC: HELADEF1FRI\nBank: Sparkasse Oberhessen",
  "_paymentTerms" : {
    "extension" : [{
      "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-zahlungsziel",
      "valueDate" : "2025-11-06"
    }]
  }
}

```
