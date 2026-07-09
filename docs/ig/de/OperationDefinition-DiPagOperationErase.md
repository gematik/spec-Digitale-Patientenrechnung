# Digitale Patientenrechnung Operation Erase - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Operation Erase**

## OperationDefinition: Digitale Patientenrechnung Operation Erase 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/OperationDefinition/Erase | *Version*:1.0.8 |
| Active Stand: 2024-06-20 | *Maschinenlesbarer Name*:DiPagErase |



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "DiPagOperationErase",
  "url" : "https://gematik.de/fhir/dipag/OperationDefinition/Erase",
  "version" : "1.0.8",
  "name" : "DiPagErase",
  "status" : "active",
  "kind" : "operation",
  "experimental" : false,
  "date" : "2024-06-20",
  "publisher" : "gematik GmbH",
  "contact" : [{
    "name" : "gematik GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.gematik.de"
    }]
  }],
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "affectsState" : true,
  "code" : "erase",
  "resource" : ["DocumentReference"],
  "system" : false,
  "type" : false,
  "instance" : true
}

```
