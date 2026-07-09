# BulkChangeStatusExampleOutput - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **BulkChangeStatusExampleOutput**

## Beispiel Bundle: BulkChangeStatusExampleOutput



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "BulkChangeStatusExampleOutput",
  "type" : "batch-response",
  "entry" : [{
    "fullUrl" : "urn:uuid:c3d4e5f6-3456-7890-cdef-123456789012",
    "resource" : {
      "resourceType" : "Parameters",
      "id" : "BeispielParameterChangeStatusOutput",
      "parameter" : [{
        "name" : "meta",
        "valueMeta" : {
          "versionId" : "1",
          "lastUpdated" : "2024-05-11T13:00:00.123+02:00",
          "tag" : [{
            "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnungsstatus-cs",
            "code" : "erledigt"
          }]
        }
      }]
    },
    "response" : {
      "status" : "200"
    }
  },
  {
    "fullUrl" : "urn:uuid:d4e5f6a7-4567-8901-defa-234567890123",
    "resource" : {
      "resourceType" : "Parameters",
      "id" : "BeispielParameterChangeStatusOutput2",
      "parameter" : [{
        "name" : "meta",
        "valueMeta" : {
          "versionId" : "1",
          "lastUpdated" : "2024-05-11T13:01:00.000+02:00",
          "tag" : [{
            "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnungsstatus-cs",
            "code" : "papierkorb"
          }]
        }
      }]
    },
    "response" : {
      "status" : "200"
    }
  }]
}

```
