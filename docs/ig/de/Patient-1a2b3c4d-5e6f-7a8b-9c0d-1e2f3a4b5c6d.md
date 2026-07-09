# Musterrechnung - Patient B. Patient - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Musterrechnung - Patient B. Patient**

## Beispiel Patient: Musterrechnung - Patient B. Patient

Profile: [DiPagPatient](StructureDefinition-dipag-patient.md)

B. Patient(official) Male, DoB: 1969-10-10 ( Krankenversichertennummer)

-------

| | |
| :--- | :--- |
| Contact Detail | Patientenweg 30 Musterstadt 12345 DE (home) |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "1a2b3c4d-5e6f-7a8b-9c0d-1e2f3a4b5c6d",
  "meta" : {
    "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-patient"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://fhir.de/CodeSystem/identifier-type-de-basis",
        "code" : "KVZ10"
      }]
    },
    "system" : "http://fhir.de/sid/gkv/kvid-10",
    "value" : "B123456789"
  }],
  "name" : [{
    "use" : "official",
    "text" : "B. Patient",
    "family" : "Patient",
    "given" : ["B."]
  }],
  "gender" : "male",
  "birthDate" : "1969-10-10",
  "address" : [{
    "use" : "home",
    "type" : "both",
    "line" : ["Patientenweg 30"],
    "_line" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
        "valueString" : "Patientenweg"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
        "valueString" : "30"
      }]
    }],
    "city" : "Musterstadt",
    "postalCode" : "12345",
    "country" : "DE"
  }]
}

```
