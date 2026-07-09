# BeispielParameterProcessFlagOutput - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **BeispielParameterProcessFlagOutput**

## Beispiel Parameters: BeispielParameterProcessFlagOutput



## Resource Content

```json
{
  "resourceType" : "Parameters",
  "id" : "BeispielParameterProcessFlagOutput",
  "parameter" : [{
    "name" : "meta",
    "valueMeta" : {
      "extension" : [{
        "extension" : [{
          "url" : "markierung",
          "valueCoding" : {
            "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-markierung-cs",
            "code" : "bezahlt"
          }
        },
        {
          "url" : "zeitpunkt",
          "valueDateTime" : "2024-05-30T13:00:00.123+02:00"
        },
        {
          "url" : "details",
          "valueString" : "Bezahlt mit falschem Betreff"
        }],
        "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-documentreference-markierung"
      },
      {
        "extension" : [{
          "url" : "markierung",
          "valueCoding" : {
            "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-markierung-cs",
            "code" : "gelesen"
          }
        }],
        "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-documentreference-markierung"
      }],
      "versionId" : "2",
      "lastUpdated" : "2024-05-31T13:00:00.123+02:00",
      "tag" : [{
        "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnungsstatus-cs",
        "code" : "erledigt"
      }]
    }
  }]
}

```
