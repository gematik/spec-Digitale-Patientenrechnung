# Digitale Patientenrechnung Rechnung Behandlungsart VS - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Rechnung Behandlungsart VS**

## ValueSet: Digitale Patientenrechnung Rechnung Behandlungsart VS 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/ValueSet/dipag-rechnung-behandlungsart-vs | *Version*:1.1.0 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagRechnungBehandlungsartVS |

 
ValueSet zur Klassifizierung von Behandlungsarten 

 **References** 

* [Digitale Patientenrechnung Extension Behandlungsart](StructureDefinition-dipag-behandlungsart.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "dipag-rechnung-behandlungsart-vs",
  "url" : "https://gematik.de/fhir/dipag/ValueSet/dipag-rechnung-behandlungsart-vs",
  "version" : "1.1.0",
  "name" : "DiPagRechnungBehandlungsartVS",
  "title" : "Digitale Patientenrechnung Rechnung Behandlungsart VS",
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
  "description" : "ValueSet zur Klassifizierung von Behandlungsarten",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
      "concept" : [{
        "code" : "AMB"
      }]
    }]
  }
}

```
