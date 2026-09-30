# Digitale Patientenrechnung Abrechnungsdiagnose Use ValueSet - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Abrechnungsdiagnose Use ValueSet**

## ValueSet: Digitale Patientenrechnung Abrechnungsdiagnose Use ValueSet 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/ValueSet/dipag-abrechnungs-diagnose-use-vs | *Version*:1.1.0 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagAbrechnungsDiagnoseUseVS |

 
ValueSet für die Qualifizierung von abrechnungsrelevanten Diagnosen, z. B. als Hauptdiagnose 

 **References** 

* [Abrechnungsrelevanz von Diagnosen und Prozeduren](StructureDefinition-DiPagAbrechnungsDiagnoseProzedur.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "dipag-abrechnungs-diagnose-use-vs",
  "url" : "https://gematik.de/fhir/dipag/ValueSet/dipag-abrechnungs-diagnose-use-vs",
  "version" : "1.1.0",
  "name" : "DiPagAbrechnungsDiagnoseUseVS",
  "title" : "Digitale Patientenrechnung Abrechnungsdiagnose Use ValueSet",
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
  "description" : "ValueSet für die Qualifizierung von abrechnungsrelevanten Diagnosen, z. B. als Hauptdiagnose",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-abrechnungs-diagnose-use-cs"
    }]
  }
}

```
