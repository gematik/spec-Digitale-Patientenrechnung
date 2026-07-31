# KfoMehrkosten2 Rechnungsposition 1 – GOZ 2110A Minibracket (04.08.25) - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **KfoMehrkosten2 Rechnungsposition 1 – GOZ 2110A Minibracket (04.08.25)**

## Beispiel ChargeItem: KfoMehrkosten2 Rechnungsposition 1 – GOZ 2110A Minibracket (04.08.25)

Profile: [Digitale Patientenrechnung Rechnungsposition](StructureDefinition-dipag-rechnungsposition.md)

**Digitale Patientenrechnung Typ der Rechnungsposition Extension**: [Digitale Patientenrechnung Typ der Rechnungsposition CodeSystem: GOZ](CodeSystem-dipag-chargeitem-type-cs.md#dipag-chargeitem-type-cs-GOZ) (Leistung nach Gebührenordnung GOZ)

> **Digitale Patientenrechnung Angaben bei Gebührenordnungen bei einer Rechnungsposition****Value**: 2.9
> **url**[Faktor](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Faktor)

**Digitale Patientenrechnung Rechnungsposition Zusatz Extension**: [Digitale Patientenrechnung Rechnungsposition Zusatz CodeSystem: A](CodeSystem-dipag-rechnungsposition-zusatz-cs.md#dipag-rechnungsposition-zusatz-cs-A) (analoge Leistung)

**status**: Billable

**code**: Präparieren einer Kavität und Restauration mit plastischem Füllungsmaterial einschließlich Unterfüllung, Anlegen einer Matrize oder Benutzen anderer Hilfsmittel zur Formung der Füllung, mehr als dreiflächig

**subject**: [Patient/KfoMehrkosten2Patient](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/KfoMehrkosten2Patient)

**occurrence**: 2025-08-04

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Organization/KfoMehrkosten2Behandler](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Organization/KfoMehrkosten2Behandler) |

**quantity**: 2 {#} (Details: UCUM code{#} = '{#}')

**reason**: Minibracket gemäß § 6 Abs. 1 der GOZ entsprechend GOZ 2110, Incl. Materialkosten Damonbracket



## Resource Content

```json
{
  "resourceType" : "ChargeItem",
  "id" : "KfoMehrkosten2-P1",
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
        "valueDecimal" : 2.9
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
      "code" : "2110",
      "display" : "Präparieren einer Kavität und Restauration mit plastischem Füllungsmaterial einschließlich Unterfüllung, Anlegen einer Matrize oder Benutzen anderer Hilfsmittel zur Formung der Füllung, mehr als dreiflächig"
    }]
  },
  "subject" : {
    "reference" : "Patient/KfoMehrkosten2Patient"
  },
  "occurrenceDateTime" : "2025-08-04",
  "performer" : [{
    "actor" : {
      "reference" : "Organization/KfoMehrkosten2Behandler"
    }
  }],
  "quantity" : {
    "value" : 2,
    "unit" : "{#}",
    "system" : "http://unitsofmeasure.org",
    "code" : "{#}"
  },
  "reason" : [{
    "text" : "Minibracket gemäß § 6 Abs. 1 der GOZ entsprechend GOZ 2110, Incl. Materialkosten Damonbracket"
  }]
}

```
