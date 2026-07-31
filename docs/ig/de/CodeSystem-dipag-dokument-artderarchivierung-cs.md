# Digitale Patientenrechnung Dokument ArtDerArchivierung CS - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Dokument ArtDerArchivierung CS**

## CodeSystem: Digitale Patientenrechnung Dokument ArtDerArchivierung CS 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/CodeSystem/dipag-dokument-artderarchivierung-cs | *Version*:1.1.0 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagDokumentArtDerArchivierungCS |

 
CodeSystem für die Angabe der Art der Archivierung eines Dokumentes (ePA oder persönliche Ablage) 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [DiPagDokumentArtDerArchivierungVS](ValueSet-dipag-dokument-artderarchivierung-vs.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dipag-dokument-artderarchivierung-cs",
  "url" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-dokument-artderarchivierung-cs",
  "version" : "1.1.0",
  "name" : "DiPagDokumentArtDerArchivierungCS",
  "title" : "Digitale Patientenrechnung Dokument ArtDerArchivierung CS",
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
  "description" : "CodeSystem für die Angabe der Art der Archivierung eines Dokumentes (ePA oder persönliche Ablage)",
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
    "code" : "epa",
    "display" : "ePA"
  },
  {
    "code" : "persoenlich",
    "display" : "Persönliche Ablage"
  }]
}

```
