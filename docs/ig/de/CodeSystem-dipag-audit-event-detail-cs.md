# Digitale Patientenrechnung Audit Event Detail - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Audit Event Detail**

## CodeSystem: Digitale Patientenrechnung Audit Event Detail 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/CodeSystem/dipag-audit-event-detail-cs | *Version*:1.0.8 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagAuditEventDetailCS |

 
CodeSystem für die Kodierung der Details eines Protokolleintrags im Nutzungsprotokoll, z. B. Änderungen an Rechnungsstatus oder Markierung 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [DiPagAuditEventDetailVS](ValueSet-dipag-audit-event-detail-vs.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dipag-audit-event-detail-cs",
  "url" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-audit-event-detail-cs",
  "version" : "1.0.8",
  "name" : "DiPagAuditEventDetailCS",
  "title" : "Digitale Patientenrechnung Audit Event Detail",
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
  "description" : "CodeSystem für die Kodierung der Details eines Protokolleintrags im Nutzungsprotokoll, z. B. Änderungen an Rechnungsstatus oder Markierung",
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
  "count" : 4,
  "concept" : [{
    "code" : "Allgemein",
    "display" : "Allgemeine Interaktion mit einem Objekt"
  },
  {
    "code" : "Rechnungsversand-Berechtigung",
    "display" : "Rechnungsversand-Berechtigung"
  },
  {
    "code" : "DocumentReference.meta.tag:dipag-rechnungsstatus",
    "display" : "Rechnungsstatus"
  },
  {
    "code" : "DocumentReference.meta.extension:markierung",
    "display" : "Markierung"
  }]
}

```
