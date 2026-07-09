# Digitale Patientenrechnung Sonstiges Dokument Type VS - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Sonstiges Dokument Type VS**

## ValueSet: Digitale Patientenrechnung Sonstiges Dokument Type VS 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/ValueSet/dipag-sonstigesdokument-type-vs | *Version*:1.0.8 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagSonstigesDokumentTypeVS |

 
ValueSet zur Klassifizierung von weiteren Dokumenten 

 **References** 

* [Digitale Patientenrechnung Dokumentenmetadaten Eingang](StructureDefinition-dipag-dokumentenmetadaten-eingang.md)
* [Digitale Patientenrechnung Dokumentenmetadaten Intern](StructureDefinition-dipag-dokumentenmetadaten-intern.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "dipag-sonstigesdokument-type-vs",
  "url" : "https://gematik.de/fhir/dipag/ValueSet/dipag-sonstigesdokument-type-vs",
  "version" : "1.0.8",
  "name" : "DiPagSonstigesDokumentTypeVS",
  "title" : "Digitale Patientenrechnung Sonstiges Dokument Type VS",
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
  "description" : "ValueSet zur Klassifizierung von weiteren Dokumenten",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://dvmd.de/fhir/CodeSystem/kdl"
    }],
    "exclude" : [{
      "system" : "http://dvmd.de/fhir/CodeSystem/kdl",
      "concept" : [{
        "code" : "AM010106",
        "display" : "Rechnung ambulante/stationäre Behandlung"
      }]
    }]
  }
}

```
