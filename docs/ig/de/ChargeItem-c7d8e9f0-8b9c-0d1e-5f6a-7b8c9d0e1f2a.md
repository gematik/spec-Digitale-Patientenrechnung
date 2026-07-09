# Laborleistung: Zahnersatz - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Laborleistung: Zahnersatz**

## Beispiel ChargeItem: Laborleistung: Zahnersatz

Profile: [Digitale Patientenrechnung Rechnungsposition](StructureDefinition-dipag-rechnungsposition.md)

**Digitale Patientenrechnung Typ der Rechnungsposition Extension**: [Digitale Patientenrechnung Typ der Rechnungsposition CodeSystem: Fremdlaborleistung](CodeSystem-dipag-chargeitem-type-cs.md#dipag-chargeitem-type-cs-Fremdlaborleistung) (Fremdlaborleistung)

**Digitale Patientenrechnung Rechnungsposition Behandlungsdatum**: 2024-03-01

**status**: Billable

**code**: Teilprothese Oberkiefer

**subject**: [Max Mustermann(official) Male, DoB: 1980-05-15 ( Krankenversichertennummer)](Patient-8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c.md)

**occurrence**: 2024-03-01 --> 2024-03-10

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Organization Zahnlabor Müller GmbH](Organization-f4a5b6c7-5e6f-7a8b-2c3d-4e5f6a7b8c9d.md) |

**quantity**: 1 Anzahl (Details: UCUM code{count} = '{count}')



## Resource Content

```json
{
  "resourceType" : "ChargeItem",
  "id" : "c7d8e9f0-8b9c-0d1e-5f6a-7b8c9d0e1f2a",
  "meta" : {
    "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"]
  },
  "extension" : [{
    "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition-type",
    "valueCoding" : {
      "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-chargeitem-type-cs",
      "code" : "Fremdlaborleistung"
    }
  },
  {
    "url" : "https://gematik.de/fhir/dipag/StructureDefinition/DiPagRechnungspositionBehandlungsdatum",
    "valueDate" : "2024-03-01"
  }],
  "status" : "billable",
  "code" : {
    "text" : "Teilprothese Oberkiefer"
  },
  "subject" : {
    "reference" : "Patient/8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c"
  },
  "occurrencePeriod" : {
    "start" : "2024-03-01",
    "end" : "2024-03-10"
  },
  "performer" : [{
    "actor" : {
      "reference" : "Organization/f4a5b6c7-5e6f-7a8b-2c3d-4e5f6a7b8c9d"
    }
  }],
  "quantity" : {
    "value" : 1,
    "unit" : "Anzahl",
    "system" : "http://unitsofmeasure.org",
    "code" : "{count}"
  }
}

```
