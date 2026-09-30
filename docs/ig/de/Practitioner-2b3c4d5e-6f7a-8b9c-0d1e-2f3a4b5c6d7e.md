# Musterrechnung - Dr. A. Arzt - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Musterrechnung - Dr. A. Arzt**

## Beispiel Practitioner: Musterrechnung - Dr. A. Arzt

Profile: [Digitale Patientenrechnung Person](StructureDefinition-dipag-person.md)

**name**: Dr. A. Arzt(Official)

**address**: Docstrasse 25 Musterstadt 12345 DE 

### Qualifications

| | |
| :--- | :--- |
| - | **Code** |
| * | Innere Medizin |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "2b3c4d5e-6f7a-8b9c-0d1e-2f3a4b5c6d7e",
  "meta" : {
    "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-person"]
  },
  "name" : [{
    "use" : "official",
    "text" : "Dr. A. Arzt",
    "family" : "Arzt",
    "given" : ["A."],
    "prefix" : ["Dr."],
    "_prefix" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier",
        "valueCode" : "AC"
      }]
    }]
  }],
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
  }],
  "qualification" : [{
    "code" : {
      "coding" : [{
        "system" : "http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen",
        "code" : "INNE",
        "display" : "Innere Medizin"
      }]
    }
  }]
}

```
