# Assistierender Arzt - Dr. Mueller - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Assistierender Arzt - Dr. Mueller**

## Beispiel Practitioner: Assistierender Arzt - Dr. Mueller

Profile: [Digitale Patientenrechnung Person](StructureDefinition-dipag-person.md)

**identifier**: Provider number/1-HBA-Testkarte-883110000123466

**name**: Dr. Anna Mueller(Official)

**telecom**: [+49 30 123457](tel:+4930123457)

**address**: Praxisstraße 10 Berlin 10115 DE 

### Qualifications

| | |
| :--- | :--- |
| - | **Code** |
| * | Zahnmedizin |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "d2e3f4a5-3c4d-5e6f-0a1b-2c3d4e5f6a7b",
  "meta" : {
    "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-person"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "PRN"
      }]
    },
    "system" : "https://gematik.de/fhir/sid/telematik-id",
    "value" : "1-HBA-Testkarte-883110000123466"
  }],
  "name" : [{
    "use" : "official",
    "text" : "Dr. Anna Mueller",
    "family" : "Mueller",
    "given" : ["Anna"],
    "prefix" : ["Dr."],
    "_prefix" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier",
        "valueCode" : "AC"
      }]
    }]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "+49 30 123457"
  }],
  "address" : [{
    "type" : "both",
    "line" : ["Praxisstraße 10"],
    "_line" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
        "valueString" : "Praxisstraße"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
        "valueString" : "10"
      }]
    }],
    "city" : "Berlin",
    "postalCode" : "10115",
    "country" : "DE"
  }],
  "qualification" : [{
    "code" : {
      "coding" : [{
        "system" : "http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen",
        "code" : "MZKH",
        "display" : "Zahnmedizin"
      }]
    }
  }]
}

```
