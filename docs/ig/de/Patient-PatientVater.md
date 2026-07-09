# PatientVater - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **PatientVater**

## Beispiel Patient: PatientVater

Manfred Mustermann Male, DoB: 1970-01-01 ( Krankenversichertennummer)

-------

| | |
| :--- | :--- |
| Active: | true |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "PatientVater",
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://fhir.de/CodeSystem/identifier-type-de-basis",
        "code" : "KVZ10"
      }]
    },
    "system" : "http://fhir.de/sid/gkv/kvid-10",
    "value" : "A000000000"
  }],
  "active" : true,
  "name" : [{
    "family" : "Mustermann",
    "given" : ["Manfred"]
  }],
  "gender" : "male",
  "birthDate" : "1970-01-01"
}

```
