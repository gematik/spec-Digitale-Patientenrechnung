# Digitale Patientenrechnung Dokument ArtDerArchivierung VS - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Dokument ArtDerArchivierung VS**

## ValueSet: Digitale Patientenrechnung Dokument ArtDerArchivierung VS 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/ValueSet/dipag-dokument-artderarchivierung-vs | *Version*:1.0.8 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagDokumentArtDerArchivierungVS |

 
ValueSet für die Differenzierung von verschiedenen Arten von Markierungen eines Dokumentes 

 **References** 

* [Digitale Patientenrechnung DocumentReference Markierung](StructureDefinition-dipag-documentreference-markierung.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "dipag-dokument-artderarchivierung-vs",
  "url" : "https://gematik.de/fhir/dipag/ValueSet/dipag-dokument-artderarchivierung-vs",
  "version" : "1.0.8",
  "name" : "DiPagDokumentArtDerArchivierungVS",
  "title" : "Digitale Patientenrechnung Dokument ArtDerArchivierung VS",
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
  "description" : "ValueSet für die Differenzierung von verschiedenen Arten von Markierungen eines Dokumentes",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-dokument-artderarchivierung-cs"
    }]
  }
}

```
