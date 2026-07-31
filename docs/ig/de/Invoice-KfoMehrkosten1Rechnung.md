# KFO-Mehrkosten Rechnung Q3/2024 - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **KFO-Mehrkosten Rechnung Q3/2024**

## Beispiel Invoice: KFO-Mehrkosten Rechnung Q3/2024

Profile: [Digitale Patientenrechnung Rechnung](StructureDefinition-dipag-rechnung.md)

**Digitale Patientenrechnung Extension Behandlungsart**: [ActCode: AMB](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (ambulatory)

**Digitale Patientenrechnung Extension Fachrichtung**: [Aerztliche Fachrichtungen: MZKH](https://simplifier.net/resolve?scope=de.ihe-d.terminology@3.0.1&canonical=http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen#AerztlicheFachrichtungen-MZKH) (Zahnmedizin)

**identifier**: Rechnungsnummer/00122704

**status**: issued

**type**: Gebührenordnung für Zahnärzte

**subject**: [Patient/KfoMehrkosten1Patient](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/KfoMehrkosten1Patient)

**recipient**: [Max Muster](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/KfoMehrkosten1Patient)

**date**: 2024-09-30

### Participants

| | | |
| :--- | :--- | :--- |
| - | **Role** | **Actor** |
| * | Leistungserbringer | [Organization/KfoMehrkosten1Behandler](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Organization/KfoMehrkosten1Behandler) |

**issuer**: [Organization/KfoMehrkosten1Behandler](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Organization/KfoMehrkosten1Behandler)

> **lineItem****sequence**: 1**chargeItem**: [ChargeItem Eingliederung eines Klebebrackets zur Aufnahme orthodontischer Hilfsmittel](ChargeItem-KfoMehrkosten1-P1.md)
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 33.41 | Euro |



> **lineItem****sequence**: 2**chargeItem**: [ChargeItem Eingliedern eines Brackets oder eines Attachments aus Edelstahl oder nickelfreiem Metall einschließlich Material- und Laborkosten](ChargeItem-KfoMehrkosten1-P2.md)
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | -18.46 | Euro |



> **lineItem****sequence**: 3**chargeItem**: [ChargeItem Versiegelung von kariesfreien Zahnfissuren mit aushärtenden Kunststoffen, auch Glattflächenversiegelung, je Zahn](ChargeItem-KfoMehrkosten1-P3.md)
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 11.64 | Euro |



> **lineItem****sequence**: 4**chargeItem**: [ChargeItem Eingliederung eines Klebebrackets zur Aufnahme orthodontischer Hilfsmittel](ChargeItem-KfoMehrkosten1-P4.md)
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 100.23 | Euro |



> **lineItem****sequence**: 5**chargeItem**: [ChargeItem Eingliedern eines Brackets oder eines Attachments aus Edelstahl oder nickelfreiem Metall einschließlich Material- und Laborkosten](ChargeItem-KfoMehrkosten1-P5.md)
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | -55.38 | Euro |



> **lineItem****sequence**: 6**chargeItem**: [ChargeItem Eingliederung eines ungeteilten Bogens, alle Zahngruppen umfassend, je Kiefer](ChargeItem-KfoMehrkosten1-P6.md)
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 202.48 | Euro |



> **lineItem****sequence**: 7**chargeItem**: [ChargeItem Eingliederung eines konfektionierten Vollbogens aus Edelstahl einschließlich Material- und Laborkosten](ChargeItem-KfoMehrkosten1-P7.md)
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | -65.64 | Euro |



> **lineItem****sequence**: 8**chargeItem**: [ChargeItem Versiegelung von kariesfreien Zahnfissuren mit aushärtenden Kunststoffen, auch Glattflächenversiegelung, je Zahn](ChargeItem-KfoMehrkosten1-P8.md)
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 34.92 | Euro |



> **lineItem****sequence**: 9**chargeItem**: [ChargeItem Eingliederung eines ungeteilten Bogens, alle Zahngruppen umfassend, je Kiefer](ChargeItem-KfoMehrkosten1-P9.md)
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 101.24 | Euro |



> **lineItem****sequence**: 10**chargeItem**: [ChargeItem Eingliederung eines konfektionierten Vollbogens aus Edelstahl einschließlich Material- und Laborkosten](ChargeItem-KfoMehrkosten1-P10.md)
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | -32.82 | Euro |



> **totalPriceComponent****type**: base price**code**: Summe aller Rechnungspositionen

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 483.92 | Euro |


> **totalPriceComponent****type**: deduction**code**: Vorleistungen anderer Kostenträger

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | -172.3 | Euro |


### TotalNets

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 311.62 | Euro |

### TotalGrosses

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 311.62 | Euro |

**paymentTerms**: 

Bitte überweisen Sie den Betrag in Höhe von 311,62 EUR unter Angabe der Rechnungsnummer: 00122704 bis spätestens 01.11.2024 auf unser unten angegebens Konto. IBAN: DE12345678901234567890 BIC: ABCDDEFFXXX Kontoinhaber: Max Mustermann



## Resource Content

```json
{
  "resourceType" : "Invoice",
  "id" : "KfoMehrkosten1Rechnung",
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
    "value" : "00122704"
  }],
  "status" : "issued",
  "type" : {
    "coding" : [{
      "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-abrechnungsart-cs",
      "code" : "GOZ"
    },
    {
      "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnungsart-cs",
      "code" : "ABSCHLUSS"
    }]
  },
  "subject" : {
    "reference" : "Patient/KfoMehrkosten1Patient"
  },
  "recipient" : {
    "reference" : "Patient/KfoMehrkosten1Patient",
    "identifier" : {
      "system" : "http://fhir.de/sid/gkv/kvid-10",
      "value" : "A123456789"
    },
    "display" : "Max Muster"
  },
  "date" : "2024-09-30",
  "participant" : [{
    "role" : {
      "coding" : [{
        "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-participant-role-cs",
        "code" : "leistungserbringer"
      }]
    },
    "actor" : {
      "reference" : "Organization/KfoMehrkosten1Behandler"
    }
  }],
  "issuer" : {
    "reference" : "Organization/KfoMehrkosten1Behandler"
  },
  "lineItem" : [{
    "sequence" : 1,
    "chargeItemReference" : {
      "reference" : "ChargeItem/KfoMehrkosten1-P1"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : 33.41,
        "currency" : "EUR"
      }
    }]
  },
  {
    "sequence" : 2,
    "chargeItemReference" : {
      "reference" : "ChargeItem/KfoMehrkosten1-P2"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : -18.46,
        "currency" : "EUR"
      }
    }]
  },
  {
    "sequence" : 3,
    "chargeItemReference" : {
      "reference" : "ChargeItem/KfoMehrkosten1-P3"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : 11.64,
        "currency" : "EUR"
      }
    }]
  },
  {
    "sequence" : 4,
    "chargeItemReference" : {
      "reference" : "ChargeItem/KfoMehrkosten1-P4"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : 100.23,
        "currency" : "EUR"
      }
    }]
  },
  {
    "sequence" : 5,
    "chargeItemReference" : {
      "reference" : "ChargeItem/KfoMehrkosten1-P5"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : -55.38,
        "currency" : "EUR"
      }
    }]
  },
  {
    "sequence" : 6,
    "chargeItemReference" : {
      "reference" : "ChargeItem/KfoMehrkosten1-P6"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : 202.48,
        "currency" : "EUR"
      }
    }]
  },
  {
    "sequence" : 7,
    "chargeItemReference" : {
      "reference" : "ChargeItem/KfoMehrkosten1-P7"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : -65.64,
        "currency" : "EUR"
      }
    }]
  },
  {
    "sequence" : 8,
    "chargeItemReference" : {
      "reference" : "ChargeItem/KfoMehrkosten1-P8"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : 34.92,
        "currency" : "EUR"
      }
    }]
  },
  {
    "sequence" : 9,
    "chargeItemReference" : {
      "reference" : "ChargeItem/KfoMehrkosten1-P9"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : 101.24,
        "currency" : "EUR"
      }
    }]
  },
  {
    "sequence" : 10,
    "chargeItemReference" : {
      "reference" : "ChargeItem/KfoMehrkosten1-P10"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : -32.82,
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
      "value" : 483.92,
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
      "value" : -172.3,
      "currency" : "EUR"
    }
  }],
  "totalNet" : {
    "value" : 311.62,
    "currency" : "EUR"
  },
  "totalGross" : {
    "value" : 311.62,
    "currency" : "EUR"
  },
  "paymentTerms" : "Bitte überweisen Sie den Betrag in Höhe von 311,62 EUR unter Angabe der Rechnungsnummer: 00122704 bis spätestens 01.11.2024 auf unser unten angegebens Konto.\nIBAN: DE12345678901234567890\nBIC: ABCDDEFFXXX\nKontoinhaber: Max Mustermann",
  "_paymentTerms" : {
    "extension" : [{
      "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-zahlungsziel",
      "valueDate" : "2024-11-01"
    }]
  }
}

```
