# Digitale Patientenrechnung Rechnungsposition Faktor Gründe CodeSystem - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Rechnungsposition Faktor Gründe CodeSystem**

## CodeSystem: Digitale Patientenrechnung Rechnungsposition Faktor Gründe CodeSystem 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnungsposition-faktor-gruende-cs | *Version*:1.1.0 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagRechnungspositionFaktorGruendeCS |

 
CodeSystem für die Gründe eines abweichenden Steigerungsfaktors einer Rechnungsposition (z. B. Honorarvereinbarung oder Basistarif) 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [DiPagRechnungspositionFaktorGruendeVS](ValueSet-dipag-rechnungsposition-faktor-gruende-auspraegungen-VS.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dipag-rechnungsposition-faktor-gruende-cs",
  "url" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnungsposition-faktor-gruende-cs",
  "version" : "1.1.0",
  "name" : "DiPagRechnungspositionFaktorGruendeCS",
  "title" : "Digitale Patientenrechnung Rechnungsposition Faktor Gründe CodeSystem",
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
  "description" : "CodeSystem für die Gründe eines abweichenden Steigerungsfaktors einer Rechnungsposition (z. B. Honorarvereinbarung oder Basistarif)",
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
  "count" : 5,
  "concept" : [{
    "code" : "HV",
    "display" : "Honorarvereinbarung",
    "definition" : "Die HV ist der Rechnung beizulegen."
  },
  {
    "code" : "BT",
    "display" : "Basistarif"
  },
  {
    "code" : "ST",
    "display" : "Standardtarif"
  },
  {
    "code" : "NT",
    "display" : "Notlagentarif"
  },
  {
    "code" : "AB",
    "display" : "Allgemeine Bestimmung",
    "definition" : "In Begründung AB angeben."
  }]
}

```
