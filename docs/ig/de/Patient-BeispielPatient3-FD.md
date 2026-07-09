# BeispielPatient3-FD - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **BeispielPatient3-FD**

## Beispiel Patient: BeispielPatient3-FD

Manfred Mustermann Male, DoB Unknown ( http://fhir.de/sid/gkv/kvid-10#NamingSystemKVID#A000000000)

-------

| | |
| :--- | :--- |
| Contact Detail | Musterweg 2, 3. Etage, 98764 Musterhausen, DE |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "BeispielPatient3-FD",
  "identifier" : [{
    "system" : "http://fhir.de/sid/gkv/kvid-10",
    "value" : "A000000000"
  }],
  "name" : [{
    "text" : "Manfred Mustermann"
  }],
  "gender" : "male",
  "address" : [{
    "text" : "Musterweg 2, 3. Etage, 98764 Musterhausen, DE"
  }]
}

```
