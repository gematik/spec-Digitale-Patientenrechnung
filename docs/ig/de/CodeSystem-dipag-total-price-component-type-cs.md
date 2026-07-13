# Digitale Patientenrechnung Art der Rechnungssumme - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Art der Rechnungssumme**

## CodeSystem: Digitale Patientenrechnung Art der Rechnungssumme 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/CodeSystem/dipag-total-price-component-type-cs | *Version*:1.0.8 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagTotalPriceComponentTypeCS |

 
CodeSystem für die Arten von Summenbestandteilen einer Rechnung, z. B. Summe der Rechnungspositionen, Minderungen nach §7 GOZ oder Abzüge wie der Festzuschuss der Kasse 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [DiPagTotalPriceComponentDeductionTypeVS](ValueSet-dipag-total-price-component-deduction-type-vs.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dipag-total-price-component-type-cs",
  "url" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-total-price-component-type-cs",
  "version" : "1.0.8",
  "name" : "DiPagTotalPriceComponentTypeCS",
  "title" : "Digitale Patientenrechnung Art der Rechnungssumme",
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
  "description" : "CodeSystem für die Arten von Summenbestandteilen einer Rechnung, z. B. Summe der Rechnungspositionen, Minderungen nach §7 GOZ oder Abzüge wie der Festzuschuss der Kasse",
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
    "code" : "SummeRechnungspositionen",
    "display" : "Summe aller Rechnungspositionen"
  },
  {
    "code" : "Minderung7GOZ",
    "display" : "Minderungen nach §7 GOZ"
  },
  {
    "code" : "Fremdlaborleistungen",
    "display" : "Fremdlaborleistungen"
  },
  {
    "code" : "Abzug",
    "display" : "Übergeordnete Abzug-Kategorie",
    "concept" : [{
      "code" : "FestzuschussKasse",
      "display" : "Festzuschuss Kasse"
    },
    {
      "code" : "VorleistungKst",
      "display" : "Vorleistungen anderer Kostenträger"
    },
    {
      "code" : "KostenBema13AtoD",
      "display" : "Kosten gem. den BEMA-Pos. 13a - d"
    }]
  }]
}

```
