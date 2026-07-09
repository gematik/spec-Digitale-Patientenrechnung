# Digitale Patientenrechnung Teilnehmer Rolle - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Teilnehmer Rolle**

## CodeSystem: Digitale Patientenrechnung Teilnehmer Rolle 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/CodeSystem/dipag-participant-role-cs | *Version*:1.0.8 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagParticipantRoleCS |

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [DiPagParticipantRoleVS](ValueSet-dipag-participant-role-VS.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dipag-participant-role-cs",
  "url" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-participant-role-cs",
  "version" : "1.0.8",
  "name" : "DiPagParticipantRoleCS",
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
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "hierarchyMeaning" : "is-a",
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "leistungserbringer",
    "display" : "Leistungserbringer"
  },
  {
    "code" : "forderungsinhaber",
    "display" : "Forderungsinhaber"
  }]
}

```
