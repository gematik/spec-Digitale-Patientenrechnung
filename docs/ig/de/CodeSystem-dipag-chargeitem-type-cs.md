# Digitale Patientenrechnung Typ der Rechnungsposition CodeSystem - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Typ der Rechnungsposition CodeSystem**

## CodeSystem: Digitale Patientenrechnung Typ der Rechnungsposition CodeSystem 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/CodeSystem/dipag-chargeitem-type-cs | *Version*:1.0.8 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagRechnungspositionTypeCS |

 
CodeSystem für die verschiedenen Typen einer Rechnungsposition (z. B. GOÄ-, GOZ- oder BEMA-Leistung, Laborleistung, Sachkosten/Auslagen, Wegegeld/Reiseentschädigung) 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [DiPagRechnungspositionTypeVS](ValueSet-dipag-chargeitem-type-VS.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dipag-chargeitem-type-cs",
  "url" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-chargeitem-type-cs",
  "version" : "1.0.8",
  "name" : "DiPagRechnungspositionTypeCS",
  "title" : "Digitale Patientenrechnung Typ der Rechnungsposition CodeSystem",
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
  "description" : "CodeSystem für die verschiedenen Typen einer Rechnungsposition (z. B. GOÄ-, GOZ- oder BEMA-Leistung, Laborleistung, Sachkosten/Auslagen, Wegegeld/Reiseentschädigung)",
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
  "count" : 7,
  "concept" : [{
    "code" : "GOÄ",
    "display" : "Leistung nach Gebührenordnung GOÄ"
  },
  {
    "code" : "GOZ",
    "display" : "Leistung nach Gebührenordnung GOZ"
  },
  {
    "code" : "BEMA",
    "display" : "BEMA-Leistung"
  },
  {
    "code" : "EigenlaborleistungMaterial",
    "display" : "Eigenlaborleistung/Material"
  },
  {
    "code" : "Fremdlaborleistung",
    "display" : "Fremdlaborleistung"
  },
  {
    "code" : "SachkostenAuslagen",
    "display" : "Sachkosten/Auslagen"
  },
  {
    "code" : "WegegeldReiseentschaedigung",
    "display" : "Wegegeld/Reiseentschädigung"
  }]
}

```
