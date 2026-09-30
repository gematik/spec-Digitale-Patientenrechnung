# Musterrechnung - Praxis Dr. A. Arzt - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Musterrechnung - Praxis Dr. A. Arzt**

## Beispiel Organization: Musterrechnung - Praxis Dr. A. Arzt

Profile: [Digitale Patientenrechnung Institution](StructureDefinition-dipag-institution.md)

**name**: Praxis Dr. A. Arzt

**address**: Docstrasse 25 Musterstadt 12345 DE 



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "3c4d5e6f-7a8b-9c0d-1e2f-3a4b5c6d7e8f",
  "meta" : {
    "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-institution"]
  },
  "name" : "Praxis Dr. A. Arzt",
  "address" : [{
    "type" : "both",
    "line" : ["Docstrasse 25"],
    "_line" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
        "valueString" : "Docstrasse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
        "valueString" : "25"
      }]
    }],
    "city" : "Musterstadt",
    "postalCode" : "12345",
    "country" : "DE"
  }]
}

```
