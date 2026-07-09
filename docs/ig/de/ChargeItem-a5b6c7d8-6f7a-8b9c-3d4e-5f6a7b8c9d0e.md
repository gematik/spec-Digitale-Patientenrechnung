# GOÄ Position 1: Ärztliche Konsultation - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **GOÄ Position 1: Ärztliche Konsultation**

## Beispiel ChargeItem: GOÄ Position 1: Ärztliche Konsultation

Profile: [Digitale Patientenrechnung Rechnungsposition](StructureDefinition-dipag-rechnungsposition.md)

**Digitale Patientenrechnung Typ der Rechnungsposition Extension**: [Digitale Patientenrechnung Typ der Rechnungsposition CodeSystem: GOÄ](CodeSystem-dipag-chargeitem-type-cs.md#dipag-chargeitem-type-cs-GO.196) (Leistung nach Gebührenordnung GOÄ)

**Digitale Patientenrechnung Rechnungsposition Zusatz Extension**: [Digitale Patientenrechnung Rechnungsposition Zusatz CodeSystem: V](CodeSystem-dipag-rechnungsposition-zusatz-cs.md#dipag-rechnungsposition-zusatz-cs-V) (auf Verlangen erbrachte Leistung)

> **Digitale Patientenrechnung Wegegeld/Reiseentschädigung Extension****Entfernung**: 15 km (Details: UCUM codekm = 'km')**Nacht**: false
> **url**[Wegegeld](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Wegegeld)

> **Digitale Patientenrechnung Angaben bei Gebührenordnungen bei einer Rechnungsposition**
> **url**[Einfachsatz](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Einfachsatz)
**value**: €10,72 (EUR)
> **url**[Punktzahl](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Punktzahl)
**value**: 100**Value**: 2.3**FaktorGrund**: [Digitale Patientenrechnung Rechnungsposition Faktor Gründe CodeSystem: AB](CodeSystem-dipag-rechnungsposition-faktor-gruende-cs.md#dipag-rechnungsposition-faktor-gruende-cs-AB) (Allgemeine Bestimmung)
> **url**[Faktor](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Faktor)

**Digitale Patientenrechnung Rechnungsposition Behandlungsdatum**: 2024-01-15

**status**: Billable

**code**: Beratung

**subject**: [Max Mustermann(official) Male, DoB: 1980-05-15 ( Krankenversichertennummer)](Patient-8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c.md)

**occurrence**: 2024-01-15 --> 2024-01-15

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Practitioner Dr. Hans Schulz(official)](Practitioner-c1d2e3f4-2b3c-4d5e-9f0a-1b2c3d4e5f6a.md) |

**quantity**: 1 Anzahl (Details: UCUM code{count} = '{count}')

**reason**: Beispiel für Begründung bei Beratung mit Faktorerhöhung: Erheblicher zusätzlicher Zeitaufwand aufgrund komplexer Fragestellung und ausführlicher Erläuterung der Behandlungsmöglichkeiten.



## Resource Content

```json
{
  "resourceType" : "ChargeItem",
  "id" : "a5b6c7d8-6f7a-8b9c-3d4e-5f6a7b8c9d0e",
  "meta" : {
    "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"]
  },
  "extension" : [{
    "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition-type",
    "valueCoding" : {
      "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-chargeitem-type-cs",
      "code" : "GOÄ"
    }
  },
  {
    "url" : "https://gematik.de/fhir/dipag/StructureDefinition/DiPagRechnungspositionZusatz",
    "valueCoding" : {
      "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnungsposition-zusatz-cs",
      "code" : "V",
      "display" : "auf Verlangen erbrachte Leistung"
    }
  },
  {
    "extension" : [{
      "extension" : [{
        "url" : "Entfernung",
        "valueQuantity" : {
          "value" : 15,
          "unit" : "km",
          "system" : "http://unitsofmeasure.org",
          "code" : "km"
        }
      },
      {
        "url" : "Nacht",
        "valueBoolean" : false
      }],
      "url" : "Wegegeld"
    }],
    "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-wegegeld-reiseentschaedigung"
  },
  {
    "extension" : [{
      "url" : "Einfachsatz",
      "valueMoney" : {
        "value" : 10.72,
        "currency" : "EUR"
      }
    },
    {
      "url" : "Punktzahl",
      "valueDecimal" : 100
    },
    {
      "extension" : [{
        "url" : "Value",
        "valueDecimal" : 2.3
      },
      {
        "url" : "FaktorGrund",
        "valueCoding" : {
          "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnungsposition-faktor-gruende-cs",
          "code" : "AB",
          "display" : "Allgemeine Bestimmung"
        }
      }],
      "url" : "Faktor"
    }],
    "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition-go-angaben"
  },
  {
    "url" : "https://gematik.de/fhir/dipag/StructureDefinition/DiPagRechnungspositionBehandlungsdatum",
    "valueDate" : "2024-01-15"
  }],
  "status" : "billable",
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bäk/goä",
      "code" : "1",
      "display" : "Beratung"
    }]
  },
  "subject" : {
    "reference" : "Patient/8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c"
  },
  "occurrencePeriod" : {
    "start" : "2024-01-15",
    "end" : "2024-01-15"
  },
  "performer" : [{
    "actor" : {
      "reference" : "Practitioner/c1d2e3f4-2b3c-4d5e-9f0a-1b2c3d4e5f6a"
    }
  }],
  "quantity" : {
    "value" : 1,
    "unit" : "Anzahl",
    "system" : "http://unitsofmeasure.org",
    "code" : "{count}"
  },
  "reason" : [{
    "text" : "Beispiel für Begründung bei Beratung mit Faktorerhöhung: Erheblicher zusätzlicher Zeitaufwand aufgrund komplexer Fragestellung und ausführlicher Erläuterung der Behandlungsmöglichkeiten."
  }]
}

```
