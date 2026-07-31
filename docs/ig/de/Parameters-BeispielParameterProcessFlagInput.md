# BeispielParameterProcessFlagInput - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **BeispielParameterProcessFlagInput**

## Beispiel Parameters: BeispielParameterProcessFlagInput



## Resource Content

```json
{
  "resourceType" : "Parameters",
  "id" : "BeispielParameterProcessFlagInput",
  "parameter" : [{
    "name" : "markierung",
    "part" : [{
      "name" : "markierung",
      "valueCoding" : {
        "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-markierung-cs",
        "code" : "bezahlt"
      }
    },
    {
      "name" : "zeitpunkt",
      "valueDateTime" : "2024-05-30T13:00:00.001+02:00"
    },
    {
      "name" : "details",
      "valueString" : "Bezahlt mit falschem Betreff"
    }]
  },
  {
    "name" : "markierung",
    "part" : [{
      "name" : "markierung",
      "valueCoding" : {
        "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-markierung-cs",
        "code" : "gelesen"
      }
    }]
  }]
}

```
