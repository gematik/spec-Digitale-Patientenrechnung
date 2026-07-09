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

 
Permanente Löschung eines Dokumentes. Gelöscht werden können nur DocumentReference-Ressourcen, die als KDL-type = 'AM010106' (Rechnungsdokument) gekennzeichnet sind. Es werden alle zugehörigen Anhang-Dokument (KDL-type != 'AM010106') mit gelöscht. Es erfolgt eine permanente Löschung der Ressourcen, d.h. die Ressourcen sind nach der Operation nicht mehr auffindbar und es werden keine Historie oder Versionen der Ressourcen angelegt. 



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "Erase",
  "url" : "https://gematik.de/fhir/dipag/OperationDefinition/Erase",
  "version" : "1.0.8",
  "name" : "DiPagErase",
  "title" : "Digitale Patientenrechnung Operation Erase",
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
  "description" : "Permanente Löschung eines Dokumentes. \nGelöscht werden können nur DocumentReference-Ressourcen, die als KDL-type = 'AM010106' (Rechnungsdokument) gekennzeichnet sind. Es werden alle zugehörigen Anhang-Dokument (KDL-type != 'AM010106') mit gelöscht. Es erfolgt eine permanente Löschung der Ressourcen, d.h. die Ressourcen sind nach der Operation nicht mehr auffindbar und es werden keine Historie oder Versionen der Ressourcen angelegt.",
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
