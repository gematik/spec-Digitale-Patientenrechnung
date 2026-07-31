# Digitale Patientenrechnung Audit Event Sub-Type - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Audit Event Sub-Type**

## ValueSet: Digitale Patientenrechnung Audit Event Sub-Type 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/ValueSet/dipag-audit-event-sub-type-vs | *Version*:1.1.0 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagAuditEventSubTypeVS |

 
ValueSet zur Kodierung der protokollierten Interaktion: RESTful-Interaktionen sowie die Operationen der Digitalen Patientenrechnung 

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
  "id" : "dipag-audit-event-sub-type-vs",
  "url" : "https://gematik.de/fhir/dipag/ValueSet/dipag-audit-event-sub-type-vs",
  "version" : "1.1.0",
  "name" : "DiPagAuditEventSubTypeVS",
  "title" : "Digitale Patientenrechnung Audit Event Sub-Type",
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
  "description" : "ValueSet zur Kodierung der protokollierten Interaktion: RESTful-Interaktionen sowie die Operationen der Digitalen Patientenrechnung",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://hl7.org/fhir/restful-interaction"
    },
    {
      "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-operationen-cs"
    }]
  }
}

```
