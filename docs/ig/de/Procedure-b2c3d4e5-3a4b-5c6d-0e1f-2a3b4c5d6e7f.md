# Prozedur - Zahnimplantat - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Prozedur - Zahnimplantat**

## Beispiel Procedure: Prozedur - Zahnimplantat

Profile: [Digitale Patientenrechnung Rechnungsprozedur](StructureDefinition-dipag-rechnungsprozedur.md)

**status**: Completed

**code**: Implantation alloplastisches Material, Zahn

**subject**: [Max Mustermann(official) Male, DoB: 1980-05-15 ( Krankenversichertennummer)](Patient-8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c.md)

**performed**: 2024-02-20



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "b2c3d4e5-3a4b-5c6d-0e1f-2a3b4c5d6e7f",
  "meta" : {
    "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsprozedur"]
  },
  "status" : "completed",
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/ops",
      "version" : "2024",
      "code" : "5-232.00",
      "display" : "Implantation alloplastisches Material, Zahn"
    }]
  },
  "subject" : {
    "reference" : "Patient/8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c"
  },
  "performedDateTime" : "2024-02-20"
}

```
