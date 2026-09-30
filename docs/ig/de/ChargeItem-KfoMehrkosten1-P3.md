# KfoMehrkosten1 Rechnungsposition 3 – GOZ 2000 Fissurenversiegelung (01.07.24) - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **KfoMehrkosten1 Rechnungsposition 3 – GOZ 2000 Fissurenversiegelung (01.07.24)**

## Beispiel ChargeItem: KfoMehrkosten1 Rechnungsposition 3 – GOZ 2000 Fissurenversiegelung (01.07.24)

Profile: [Digitale Patientenrechnung Rechnungsposition](StructureDefinition-dipag-rechnungsposition.md)

**Digitale Patientenrechnung Typ der Rechnungsposition Extension**: [Digitale Patientenrechnung Typ der Rechnungsposition CodeSystem: GOZ](CodeSystem-dipag-chargeitem-type-cs.md#dipag-chargeitem-type-cs-GOZ) (Leistung nach Gebührenordnung GOZ)

> **Digitale Patientenrechnung Angaben bei Gebührenordnungen bei einer Rechnungsposition****Value**: 2.3
> **url**[Faktor](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Faktor)

**Digitale Patientenrechnung Rechnungsposition Zusatz Extension**: [Digitale Patientenrechnung Rechnungsposition Zusatz CodeSystem: A](CodeSystem-dipag-rechnungsposition-zusatz-cs.md#dipag-rechnungsposition-zusatz-cs-A) (analoge Leistung)

**status**: Billable

**code**: Versiegelung von kariesfreien Zahnfissuren mit aushärtenden Kunststoffen, auch Glattflächenversiegelung, je Zahn

**subject**: [Patient/KfoMehrkosten1Patient](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/KfoMehrkosten1Patient)

**occurrence**: 2024-07-01

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Organization/KfoMehrkosten1Behandler](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Organization/KfoMehrkosten1Behandler) |

**quantity**: 1 {#} (Details: UCUM code{#} = '{#}')

**reason**: bei erhöhtem Kariesrisiko während einer Multibracketbehandlung, Bracketumfeldversiegelung



## Resource Content

```json
{
  "resourceType" : "ChargeItem",
  "id" : "KfoMehrkosten1-P3",
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
        "valueDecimal" : 2.3
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
      "code" : "2000",
      "display" : "Versiegelung von kariesfreien Zahnfissuren mit aushärtenden Kunststoffen, auch Glattflächenversiegelung, je Zahn"
    }]
  },
  "subject" : {
    "reference" : "Patient/KfoMehrkosten1Patient"
  },
  "occurrenceDateTime" : "2024-07-01",
  "performer" : [{
    "actor" : {
      "reference" : "Organization/KfoMehrkosten1Behandler"
    }
  }],
  "quantity" : {
    "value" : 1,
    "unit" : "{#}",
    "system" : "http://unitsofmeasure.org",
    "code" : "{#}"
  },
  "reason" : [{
    "text" : "bei erhöhtem Kariesrisiko während einer Multibracketbehandlung, Bracketumfeldversiegelung"
  }]
}

```
