# BulkRetrieveExampleInput - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **BulkRetrieveExampleInput**

## Beispiel Bundle: BulkRetrieveExampleInput



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "BulkRetrieveExampleInput",
  "type" : "batch",
  "entry" : [{
    "resource" : {
      "resourceType" : "Parameters",
      "id" : "BeispielParameterRetrieveInput",
      "parameter" : [{
        "name" : "token",
        "valueString" : "123-456-789"
      },
      {
        "name" : "pdf",
        "valueBoolean" : true
      },
      {
        "name" : "strukturierterRechnungsinhalt",
        "valueBoolean" : false
      },
      {
        "name" : "originaleRechnung",
        "valueBoolean" : false
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "$retrieve"
    }
  },
  {
    "resource" : {
      "resourceType" : "Parameters",
      "id" : "BeispielParameterRetrieveInput2",
      "parameter" : [{
        "name" : "token",
        "valueString" : "123-456-123"
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "$retrieve"
    }
  }]
}

```
