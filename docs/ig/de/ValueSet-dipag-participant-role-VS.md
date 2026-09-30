# Digitale Patientenrechnung Teilnehmer Rolle - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Teilnehmer Rolle**

## ValueSet: Digitale Patientenrechnung Teilnehmer Rolle 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/ValueSet/dipag-participant-role-VS | *Version*:1.1.0 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagParticipantRoleVS |

 
Diese Codes enthalten Teilnehmer Rollen der Digitalen Patientenrechnung 

 **References** 

* [Digitale Patientenrechnung Rechnung](StructureDefinition-dipag-rechnung.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "dipag-participant-role-VS",
  "url" : "https://gematik.de/fhir/dipag/ValueSet/dipag-participant-role-VS",
  "version" : "1.1.0",
  "name" : "DiPagParticipantRoleVS",
  "title" : "Digitale Patientenrechnung Teilnehmer Rolle",
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
  "description" : "Diese Codes enthalten Teilnehmer Rollen der Digitalen Patientenrechnung",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-participant-role-cs"
    }]
  }
}

```
