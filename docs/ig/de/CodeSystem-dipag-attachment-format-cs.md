# Digitale Patientenrechnung Attachment Format CS - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Attachment Format CS**

## CodeSystem: Digitale Patientenrechnung Attachment Format CS 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/CodeSystem/dipag-attachment-format-cs | *Version*:1.0.8 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagAttachmentFormatCS |

 
CodeSystem für die Abbildung von verschiedenen Formatinhalten eines Dokuments 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dipag-attachment-format-cs",
  "url" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-attachment-format-cs",
  "version" : "1.0.8",
  "name" : "DiPagAttachmentFormatCS",
  "title" : "Digitale Patientenrechnung Attachment Format CS",
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
  "description" : "CodeSystem für die Abbildung von verschiedenen Formatinhalten eines Dokuments",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "originaleRechnung",
    "display" : "Das originale PDF der Rechnung"
  },
  {
    "code" : "angereichertesPDF",
    "display" : "Digitale Patientenrechnungs Dokument mit eingebetteten strukturierten Rechnungsinhalt"
  },
  {
    "code" : "rechnungsinhalt",
    "display" : "Strukturierter Rechnungsinhalt"
  },
  {
    "code" : "rechnungsanhang",
    "display" : "Rechnungsanhang"
  }]
}

```
