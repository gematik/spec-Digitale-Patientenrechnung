# Zahnlabor Müller - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Zahnlabor Müller**

## Beispiel Organization: Zahnlabor Müller

Profile: [Digitale Patientenrechnung Institution](StructureDefinition-dipag-institution.md)

**identifier**: Provider number/1-SMC-B-Testkarte-883110000987654, Organisations-ID/109876543

**type**: Zahnmedizin

**name**: Zahnlabor Müller GmbH

**telecom**: [+49 30 987654](tel:+4930987654)

**address**: Laborstraße 5 Berlin 10116 DE 



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "f4a5b6c7-5e6f-7a8b-2c3d-4e5f6a7b8c9d",
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
    "value" : "1-SMC-B-Testkarte-883110000987654"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "XX"
      }]
    },
    "system" : "http://fhir.de/sid/arge-ik/iknr",
    "value" : "109876543"
  }],
  "type" : [{
    "coding" : [{
      "system" : "http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen",
      "code" : "MZKH",
      "display" : "Zahnmedizin"
    }]
  }],
  "name" : "Zahnlabor Müller GmbH",
  "telecom" : [{
    "system" : "phone",
    "value" : "+49 30 987654"
  }],
  "address" : [{
    "type" : "both",
    "line" : ["Laborstraße 5"],
    "_line" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
        "valueString" : "Laborstraße"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
        "valueString" : "5"
      }]
    }],
    "city" : "Berlin",
    "postalCode" : "10116",
    "country" : "DE"
  }]
}

```
