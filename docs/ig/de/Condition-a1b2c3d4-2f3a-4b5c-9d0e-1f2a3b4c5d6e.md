# Diagnose - Parodontitis - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Diagnose - Parodontitis**

## Beispiel Condition: Diagnose - Parodontitis

Profile: [Digitale Patientenrechnung Rechnungsdiagnose](StructureDefinition-dipag-rechnungsdiagnose.md)

**code**: Chronische Parodontitis

**subject**: [Max Mustermann(official) Male, DoB: 1980-05-15 ( Krankenversichertennummer)](Patient-8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c.md)

**onset**: 2024-01-15



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "a1b2c3d4-2f3a-4b5c-9d0e-1f2a3b4c5d6e",
  "meta" : {
    "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsdiagnose"]
  },
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2024",
      "code" : "K05.3",
      "display" : "Chronische Parodontitis"
    }]
  },
  "subject" : {
    "reference" : "Patient/8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c"
  },
  "onsetDateTime" : "2024-01-15"
}

```
