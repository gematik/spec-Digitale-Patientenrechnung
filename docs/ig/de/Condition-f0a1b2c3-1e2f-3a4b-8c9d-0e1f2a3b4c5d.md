# Diagnose - Karies - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Diagnose - Karies**

## Beispiel Condition: Diagnose - Karies

Profile: [Digitale Patientenrechnung Rechnungsdiagnose](StructureDefinition-dipag-rechnungsdiagnose.md)

**code**: Zahnkaries, nicht näher bezeichnet

**subject**: [Max Mustermann(official) Male, DoB: 1980-05-15 ( Krankenversichertennummer)](Patient-8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c.md)

**onset**: 2024-01-15



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "f0a1b2c3-1e2f-3a4b-8c9d-0e1f2a3b4c5d",
  "meta" : {
    "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsdiagnose"]
  },
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2024",
      "code" : "K02.9",
      "display" : "Zahnkaries, nicht näher bezeichnet"
    }]
  },
  "subject" : {
    "reference" : "Patient/8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c"
  },
  "onsetDateTime" : "2024-01-15"
}

```
