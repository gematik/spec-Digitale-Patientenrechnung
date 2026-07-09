# Digitale Patientenrechnung Operation ChangeStatus - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Operation ChangeStatus**

## OperationDefinition: Digitale Patientenrechnung Operation ChangeStatus 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/OperationDefinition/ChangeStatus | *Version*:1.0.8 |
| Active Stand: 2024-06-20 | *Maschinenlesbarer Name*:DiPagChangeStatus |



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "DiPagOperationChangeStatus",
  "url" : "https://gematik.de/fhir/dipag/OperationDefinition/ChangeStatus",
  "version" : "1.0.8",
  "name" : "DiPagChangeStatus",
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
  "code" : "change-status",
  "resource" : ["DocumentReference"],
  "system" : false,
  "type" : false,
  "instance" : true,
  "parameter" : [{
    "name" : "tag",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "Valider Code aus CodeSystem DiPagARechnungsstatus",
    "type" : "code"
  },
  {
    "name" : "meta",
    "use" : "out",
    "min" : 1,
    "max" : "1",
    "documentation" : "Geänderte Meta-Element der geänderten DocumentReference",
    "type" : "Meta"
  }]
}

```
