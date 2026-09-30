# Digitale Patientenrechnung Rechnung Identifier Type CS - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Rechnung Identifier Type CS**

## CodeSystem: Digitale Patientenrechnung Rechnung Identifier Type CS 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-identifier-type-cs | *Version*:1.1.0 |
| Active Stand: 2026-07-08 | *Maschinenlesbarer Name*:DiPagRechnungIdentifierTypeCS |

 
CodeSystem für die verschiedenen Identifier-Typen der Digitalen Patientenrechnung (Rechnungsnummer, Antragsreferenz, Anhangsidentifikator, USt-ID-Nr) 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dipag-rechnung-identifier-type-cs",
  "url" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-identifier-type-cs",
  "version" : "1.1.0",
  "name" : "DiPagRechnungIdentifierTypeCS",
  "title" : "Digitale Patientenrechnung Rechnung Identifier Type CS",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-08",
  "publisher" : "gematik GmbH",
  "contact" : [{
    "name" : "gematik GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.gematik.de"
    }]
  }],
  "description" : "CodeSystem für die verschiedenen Identifier-Typen der Digitalen Patientenrechnung (Rechnungsnummer, Antragsreferenz, Anhangsidentifikator, USt-ID-Nr)",
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
  "count" : 4,
  "concept" : [{
    "code" : "invoice",
    "display" : "Rechnungsnummer"
  },
  {
    "code" : "antragsreferenz",
    "display" : "Antragsreferenz"
  },
  {
    "code" : "anhang",
    "display" : "Anhangsidentifikator"
  },
  {
    "code" : "ustid",
    "display" : "Umsatzsteuer-ID Nummer (USt-ID-Nr)",
    "definition" : "Hinweis: Es gibt keinen passenden offiziellen Type-Code für die Umsatzsteuer-ID Nummer (USt-ID-Nr). Daher wurde dieser Code mit einem allgemeinen Namen versehen. Es ist zu beachten, dass der System-Teil des Identifier bei Verwendung dieses Codes nicht befüllt werden soll, da es kein offizielles FHIR-NamingSystem für die USt-ID gibt.\nHier kann es in Zukunft zu Anpassungen kommen."
  }]
}

```
