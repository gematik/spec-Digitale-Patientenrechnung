# Digitale Patientenrechnung Restricted Mime Types in Binary - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Restricted Mime Types in Binary**

## ValueSet: Digitale Patientenrechnung Restricted Mime Types in Binary 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/ValueSet/dipag-restricted-mime-types-in-binary-vs | *Version*:1.1.0 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagRestrictedMimeTypesInBinaryVS |

 
ValueSet der zulässigen MIME-Types für Dokumente der Digitalen Patientenrechnung (PDF und FHIR-JSON) 

 **References** 

* [Digitale Patientenrechnung Dokumentenmetadaten Intern](StructureDefinition-dipag-dokumentenmetadaten-intern.md)
* [Digitale Patientenrechnung Rechnungsdokument](StructureDefinition-dipag-rechnungsdokument.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "dipag-restricted-mime-types-in-binary-vs",
  "url" : "https://gematik.de/fhir/dipag/ValueSet/dipag-restricted-mime-types-in-binary-vs",
  "version" : "1.1.0",
  "name" : "DiPagRestrictedMimeTypesInBinaryVS",
  "title" : "Digitale Patientenrechnung Restricted Mime Types in Binary",
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
  "description" : "ValueSet der zulässigen MIME-Types für Dokumente der Digitalen Patientenrechnung (PDF und FHIR-JSON)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "urn:ietf:bcp:13",
      "concept" : [{
        "code" : "application/fhir+json"
      },
      {
        "code" : "application/pdf"
      }]
    }]
  }
}

```
