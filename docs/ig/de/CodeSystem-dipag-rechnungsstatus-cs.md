# Digitale Patientenrechnung Rechnungsstatus CS - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Rechnungsstatus CS**

## CodeSystem: Digitale Patientenrechnung Rechnungsstatus CS 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnungsstatus-cs | *Version*:1.0.8 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagARechnungsstatusCS |

 
CodeSystem für die Abbildung der verschiedenen Bearbeitungsstatus eines Rechnungsdokuments 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [DiPagRechnungsstatusVS](ValueSet-dipag-rechnungsstatus-vs.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dipag-rechnungsstatus-cs",
  "url" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnungsstatus-cs",
  "version" : "1.0.8",
  "name" : "DiPagARechnungsstatusCS",
  "title" : "Digitale Patientenrechnung Rechnungsstatus CS",
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
  "description" : "CodeSystem für die Abbildung der verschiedenen Bearbeitungsstatus eines Rechnungsdokuments",
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
  "count" : 3,
  "concept" : [{
    "code" : "offen",
    "display" : "Offen"
  },
  {
    "code" : "erledigt",
    "display" : "Erledigt"
  },
  {
    "code" : "papierkorb",
    "display" : "Papierkorb"
  }]
}

```
