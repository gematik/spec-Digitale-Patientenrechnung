# Digitale Patientenrechnung Operationen - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Operationen**

## CodeSystem: Digitale Patientenrechnung Operationen 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/CodeSystem/dipag-operationen-cs | *Version*:1.0.8 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagOperationenCS |

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [DiPagAuditEventSubTypeVS](ValueSet-dipag-audit-event-sub-type-vs.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dipag-operationen-cs",
  "url" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-operationen-cs",
  "version" : "1.0.8",
  "name" : "DiPagOperationenCS",
  "title" : "Digitale Patientenrechnung Operationen",
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
  "count" : 5,
  "concept" : [{
    "code" : "invoice-submit",
    "display" : "Digitale Patientenrechnung_Submit"
  },
  {
    "code" : "retrieve",
    "display" : "Digitale Patientenrechnung_Retrieve"
  },
  {
    "code" : "change-status",
    "display" : "Digitale Patientenrechnung_ChangeStatus"
  },
  {
    "code" : "process-flag",
    "display" : "Digitale Patientenrechnung_ProcessFlag"
  },
  {
    "code" : "erase",
    "display" : "Digitale Patientenrechnung_Erase"
  }]
}

```
