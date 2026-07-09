# BulkChangeStatusExampleInput - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **BulkChangeStatusExampleInput**

## Beispiel Bundle: BulkChangeStatusExampleInput



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "BulkChangeStatusExampleInput",
  "type" : "batch",
  "entry" : [{
    "resource" : {
      "resourceType" : "Parameters",
      "id" : "BeispielParameterChangeStatusInput",
      "parameter" : [{
        "name" : "tag",
        "valueCode" : "erledigt"
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "DocumentReference/a1b2c3d4-1234-5678-abcd-ef1234567890/$change-status"
    }
  },
  {
    "resource" : {
      "resourceType" : "Parameters",
      "id" : "BeispielParameterChangeStatusInput2",
      "parameter" : [{
        "name" : "tag",
        "valueCode" : "papierkorb"
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "DocumentReference/b2c3d4e5-2345-6789-bcde-f12345678901/$change-status"
    }
  }]
}

```
