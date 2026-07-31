# Digitale Patientenrechnung Audit Event Agent Type - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Audit Event Agent Type**

## ValueSet: Digitale Patientenrechnung Audit Event Agent Type 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/ValueSet/dipag-audit-event-agent-type-vs | *Version*:1.1.0 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagAuditEventAgentTypeVS |

 
ValueSet zur Unterscheidung, ob ein Zugriff durch einen menschlichen Nutzer oder automatisiert durch den Fachdienst erfolgt ist 

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
  "id" : "dipag-audit-event-agent-type-vs",
  "url" : "https://gematik.de/fhir/dipag/ValueSet/dipag-audit-event-agent-type-vs",
  "version" : "1.1.0",
  "name" : "DiPagAuditEventAgentTypeVS",
  "title" : "Digitale Patientenrechnung Audit Event Agent Type",
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
  "description" : "ValueSet zur Unterscheidung, ob ein Zugriff durch einen menschlichen Nutzer oder automatisiert durch den Fachdienst erfolgt ist",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/extra-security-role-type",
      "concept" : [{
        "code" : "humanuser",
        "display" : "human user"
      },
      {
        "code" : "dataprocessor",
        "display" : "data processor"
      }]
    }]
  }
}

```
