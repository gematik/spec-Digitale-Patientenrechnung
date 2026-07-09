# KfoMehrkosten1 Rechnungsposition 4 – GOZ 6100 Klebebracket (20.08.24) - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **KfoMehrkosten1 Rechnungsposition 4 – GOZ 6100 Klebebracket (20.08.24)**

## Beispiel ChargeItem: KfoMehrkosten1 Rechnungsposition 4 – GOZ 6100 Klebebracket (20.08.24)

Profile: [Digitale Patientenrechnung Rechnungsposition](StructureDefinition-dipag-rechnungsposition.md)

**Digitale Patientenrechnung Typ der Rechnungsposition Extension**: [Digitale Patientenrechnung Typ der Rechnungsposition CodeSystem: GOZ](CodeSystem-dipag-chargeitem-type-cs.md#dipag-chargeitem-type-cs-GOZ) (Leistung nach Gebührenordnung GOZ)

> **Digitale Patientenrechnung Angaben bei Gebührenordnungen bei einer Rechnungsposition****Value**: 3.6
> **url**[Faktor](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Faktor)

**Digitale Patientenrechnung Rechnungsposition Zusatz Extension**: [Digitale Patientenrechnung Rechnungsposition Zusatz CodeSystem: A](CodeSystem-dipag-rechnungsposition-zusatz-cs.md#dipag-rechnungsposition-zusatz-cs-A) (analoge Leistung)

**status**: Billable

**code**: Eingliederung eines Klebebrackets zur Aufnahme orthodontischer Hilfsmittel

**subject**: [Patient/KfoMehrkosten1Patient](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/KfoMehrkosten1Patient)

**occurrence**: 2024-08-20

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Organization/KfoMehrkosten1Behandler](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Organization/KfoMehrkosten1Behandler) |

**quantity**: 3 {#} (Details: UCUM code{#} = '{#}')

**bodysite**: 

**reason**: BioQuick Brackets - Besondere Schwierigkeit und erhöhter Zeitaufwand wegen hochpräziser Ausrichtung und Anbringung unter besonderer Berücksichtigung der individuellen Zahnanatomie



## Resource Content

```json
{
  "resourceType" : "ChargeItem",
  "id" : "KfoMehrkosten1-P4",
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
    "extension" : [{
      "extension" : [{
        "url" : "Value",
        "valueDecimal" : 3.6
      }],
      "url" : "Faktor"
    }],
    "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition-go-angaben"
  },
  {
    "url" : "https://gematik.de/fhir/dipag/StructureDefinition/DiPagRechnungspositionZusatz",
    "valueCoding" : {
      "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnungsposition-zusatz-cs",
      "code" : "A"
    }
  }],
  "status" : "billable",
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bäk/gzä",
      "code" : "6100",
      "display" : "Eingliederung eines Klebebrackets zur Aufnahme orthodontischer Hilfsmittel"
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
  },
  "bodysite" : [{
    "extension" : [{
      "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-zahnregion",
      "valueString" : "27, 37, 47"
    }]
  }],
  "reason" : [{
    "text" : "BioQuick Brackets - Besondere Schwierigkeit und erhöhter Zeitaufwand wegen hochpräziser Ausrichtung und Anbringung unter besonderer Berücksichtigung der individuellen Zahnanatomie"
  }]
}

```
