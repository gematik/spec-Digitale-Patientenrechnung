# KfoMehrkosten4 Rechnungsposition 1 – GOZ 6100 Klebebracket 3,70-fach (23.07.25) - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **KfoMehrkosten4 Rechnungsposition 1 – GOZ 6100 Klebebracket 3,70-fach (23.07.25)**

## Beispiel ChargeItem: KfoMehrkosten4 Rechnungsposition 1 – GOZ 6100 Klebebracket 3,70-fach (23.07.25)

Profile: [Digitale Patientenrechnung Rechnungsposition](StructureDefinition-dipag-rechnungsposition.md)

**Digitale Patientenrechnung Typ der Rechnungsposition Extension**: [Digitale Patientenrechnung Typ der Rechnungsposition CodeSystem: GOZ](CodeSystem-dipag-chargeitem-type-cs.md#dipag-chargeitem-type-cs-GOZ) (Leistung nach Gebührenordnung GOZ)

> **Digitale Patientenrechnung Angaben bei Gebührenordnungen bei einer Rechnungsposition****Value**: 3.7
> **url**[Faktor](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Faktor)

**Digitale Patientenrechnung Rechnungsposition Zusatz Extension**: [Digitale Patientenrechnung Rechnungsposition Zusatz CodeSystem: A](CodeSystem-dipag-rechnungsposition-zusatz-cs.md#dipag-rechnungsposition-zusatz-cs-A) (analoge Leistung)

**status**: Billable

**code**: Eingliederung eines Klebebrackets zur Aufnahme orthodontischer Hilfsmittel

**subject**: [Patient/KfoMehrkosten4Patient](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/KfoMehrkosten4Patient)

**occurrence**: 2025-07-23

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Organization/KfoMehrkosten4Behandler](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Organization/KfoMehrkosten4Behandler) |

**quantity**: 20 {#} (Details: UCUM code{#} = '{#}')



## Resource Content

```json
{
  "resourceType" : "ChargeItem",
  "id" : "KfoMehrkosten4-P1",
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
        "valueDecimal" : 3.7
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
    "reference" : "Patient/KfoMehrkosten4Patient"
  },
  "occurrenceDateTime" : "2025-07-23",
  "performer" : [{
    "actor" : {
      "reference" : "Organization/KfoMehrkosten4Behandler"
    }
  }],
  "quantity" : {
    "value" : 20,
    "unit" : "{#}",
    "system" : "http://unitsofmeasure.org",
    "code" : "{#}"
  }
}

```
