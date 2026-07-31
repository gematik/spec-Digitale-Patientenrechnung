# Digitale Patientenrechnung Rechnung Markierung CS - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Rechnung Markierung CS**

## CodeSystem: Digitale Patientenrechnung Rechnung Markierung CS 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-markierung-cs | *Version*:1.1.0 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagRechnungMarkierungCS |

 
CodeSystem für die Differenzierung von verschiedenen Arten von Markierungen eines Dokumentes 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [DiPagRechnungMarkierungVS](ValueSet-dipag-rechnung-markierung-vs.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dipag-rechnung-markierung-cs",
  "url" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-markierung-cs",
  "version" : "1.1.0",
  "name" : "DiPagRechnungMarkierungCS",
  "title" : "Digitale Patientenrechnung Rechnung Markierung CS",
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
  "description" : "CodeSystem für die Differenzierung von verschiedenen Arten von Markierungen eines Dokumentes",
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
  "count" : 8,
  "concept" : [{
    "code" : "eingereicht-frontend",
    "display" : "Eingereicht (per Frontend)",
    "definition" : "Bei Einreichung durch Versicherten"
  },
  {
    "code" : "eingereicht-post",
    "display" : "Eingereicht (per Post)",
    "definition" : "Bei Postversand durch Versicherten"
  },
  {
    "code" : "geteilt",
    "display" : "Geteilt",
    "definition" : "Bei Teilen durch den Versicherten"
  },
  {
    "code" : "abgerufen",
    "display" : "Abgerufen durch Kostenträger",
    "definition" : "Bei Abruf eines Dokuments/einer Rechnung durch den Kostenträger, durch den Fachdienst"
  },
  {
    "code" : "gelesen",
    "display" : "Gelesen",
    "definition" : "Beim Einsehen von Rechnungen oder Dokumenten durch den Versicherten im DiPag FdV"
  },
  {
    "code" : "bezahlt",
    "display" : "Bezahlt",
    "definition" : "Bei Zahlung durch den Versicherten"
  },
  {
    "code" : "archiviert",
    "display" : "Archiviert",
    "definition" : "Bei Archivierung durch den Versicherten"
  },
  {
    "code" : "persoenlich",
    "display" : "Persönlich",
    "definition" : "Durch den Rechnungsersteller bei Versenden von Dokumenten, die ausschließlich nur persönlich an den Versicherten gerichtet sind."
  }]
}

```
