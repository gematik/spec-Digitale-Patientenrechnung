# KfoMehrkosten3 Behandler – ARZ ZB GmbH - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **KfoMehrkosten3 Behandler – ARZ ZB GmbH**

## Beispiel Organization: KfoMehrkosten3 Behandler – ARZ ZB GmbH

Profile: [Digitale Patientenrechnung Institution](StructureDefinition-dipag-institution.md)

**identifier**: KZVAbrechnungsnummer/016637

**type**: Zahnmedizin

**name**: ARZ ZB GmbH

**address**: Ditteiizer Straße 1 Grünwald 81194 DE 



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "KfoMehrkosten3Behandler",
  "meta" : {
    "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-institution"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://fhir.de/CodeSystem/identifier-type-de-basis",
        "code" : "KZVA"
      }]
    },
    "system" : "http://fhir.de/sid/kzbv/kzvabrechnungsnummer",
    "value" : "016637"
  }],
  "type" : [{
    "coding" : [{
      "system" : "http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen",
      "code" : "MZKH",
      "display" : "Zahnmedizin"
    }]
  }],
  "name" : "ARZ ZB GmbH",
  "address" : [{
    "type" : "both",
    "line" : ["Ditteiizer Straße 1"],
    "_line" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
        "valueString" : "Ditteiizer Straße"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
        "valueString" : "1"
      }]
    }],
    "city" : "Grünwald",
    "postalCode" : "81194",
    "country" : "DE"
  }]
}

```
