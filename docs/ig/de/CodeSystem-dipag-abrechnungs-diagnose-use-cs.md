# Digitale Patientenrechnung Abrechnungsdiagnose Use CodeSystem - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Abrechnungsdiagnose Use CodeSystem**

## CodeSystem: Digitale Patientenrechnung Abrechnungsdiagnose Use CodeSystem 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/CodeSystem/dipag-abrechnungs-diagnose-use-cs | *Version*:1.0.8 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagAbrechnungsDiagnoseUseCS |

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [DiPagAbrechnungsDiagnoseUseVS](ValueSet-dipag-abrechnungs-diagnose-use-vs.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dipag-abrechnungs-diagnose-use-cs",
  "url" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-abrechnungs-diagnose-use-cs",
  "version" : "1.0.8",
  "name" : "DiPagAbrechnungsDiagnoseUseCS",
  "title" : "Digitale Patientenrechnung Abrechnungsdiagnose Use CodeSystem",
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
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "content" : "complete",
  "count" : 1,
  "concept" : [{
    "code" : "main-diagnosis",
    "display" : "Hauptdiagnose"
  }]
}

```
