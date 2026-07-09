# Digitale Patientenrechnung Audit Event Type - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Audit Event Type**

## ValueSet: Digitale Patientenrechnung Audit Event Type 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/ValueSet/dipag-audit-event-type-vs | *Version*:1.0.8 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagAuditEventTypeVS |

 **References** 

* [Digitale Patientenrechnung Nutzungsprotokoll](StructureDefinition-dipag-nutzungsprotokoll.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "dipag-audit-event-type-vs",
  "url" : "https://gematik.de/fhir/dipag/ValueSet/dipag-audit-event-type-vs",
  "version" : "1.0.8",
  "name" : "DiPagAuditEventTypeVS",
  "title" : "Digitale Patientenrechnung Audit Event Type",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-03-26",
  "publisher" : "gematik GmbH",
  "contact" : [{
    "name" : "gematik GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.gematik.de"
    }]
  }],
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://dicom.nema.org/resources/ontology/DCM",
      "concept" : [{
        "code" : "110100",
        "display" : "Application Activity"
      }]
    },
    {
      "system" : "http://terminology.hl7.org/CodeSystem/audit-event-type",
      "concept" : [{
        "code" : "rest",
        "display" : "RESTful Operation"
      }]
    }]
  }
}

```
