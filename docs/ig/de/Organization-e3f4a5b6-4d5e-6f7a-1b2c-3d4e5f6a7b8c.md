# Zahnarztpraxis Dr. Schulz - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Zahnarztpraxis Dr. Schulz**

## Beispiel Organization: Zahnarztpraxis Dr. Schulz

Profile: [Digitale Patientenrechnung Institution](StructureDefinition-dipag-institution.md)

**identifier**: Provider number/1-SMC-B-Testkarte-883110000123465, Primary physician office number/123456789, KZVAbrechnungsnummer/987654321, Umsatzsteuer-ID Nummer (USt-ID-Nr)/DE123456789

**type**: Zahnmedizin

**name**: Zahnarztpraxis Dr. Schulz

**telecom**: [+49 30 123456](tel:+4930123456)

**address**: Praxisstraße 10 Berlin 10115 DE 



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "e3f4a5b6-4d5e-6f7a-1b2c-3d4e5f6a7b8c",
  "meta" : {
    "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-institution"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "PRN"
      }]
    },
    "system" : "https://gematik.de/fhir/sid/telematik-id",
    "value" : "1-SMC-B-Testkarte-883110000123465"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "BSNR"
      }]
    },
    "system" : "https://fhir.kbv.de/NamingSystem/KBV_NS_Base_BSNR",
    "value" : "123456789"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://fhir.de/CodeSystem/identifier-type-de-basis",
        "code" : "KZVA"
      }]
    },
    "system" : "http://fhir.de/sid/kzbv/kzvabrechnungsnummer",
    "value" : "987654321"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-identifier-type-cs",
        "code" : "ustid"
      }]
    },
    "value" : "DE123456789"
  }],
  "type" : [{
    "coding" : [{
      "system" : "http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen",
      "code" : "MZKH",
      "display" : "Zahnmedizin"
    }]
  }],
  "name" : "Zahnarztpraxis Dr. Schulz",
  "telecom" : [{
    "system" : "phone",
    "value" : "+49 30 123456"
  }],
  "address" : [{
    "type" : "both",
    "line" : ["Praxisstraße 10"],
    "_line" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
        "valueString" : "Praxisstraße"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
        "valueString" : "10"
      }]
    }],
    "city" : "Berlin",
    "postalCode" : "10115",
    "country" : "DE"
  }]
}

```
