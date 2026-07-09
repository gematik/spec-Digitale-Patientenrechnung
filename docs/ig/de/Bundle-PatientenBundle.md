# PatientenBundle - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **PatientenBundle**

## Beispiel Bundle: PatientenBundle



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "PatientenBundle",
  "type" : "searchset",
  "total" : 1,
  "link" : [{
    "relation" : "self",
    "url" : "https://example.com/fhir/Patient?name=Mustermann"
  }],
  "entry" : [{
    "fullUrl" : "https://example.com/fhir/Patient/PatientVater",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "PatientVater",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_PatientVater\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Patient PatientVater</b></p><a name=\"PatientVater\"> </a><a name=\"hcPatientVater\"> </a><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Manfred Mustermann  Male, DoB: 1970-01-01 ( Krankenversichertennummer)</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Record is active\">Active:</td><td colspan=\"3\">true</td></tr></table></div>"
      },
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
    },
    "search" : {
      "mode" : "match"
    }
  }]
}

```
