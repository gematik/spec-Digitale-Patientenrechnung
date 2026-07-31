# Suchparameter DocumentReference dipag-markierung - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Suchparameter DocumentReference dipag-markierung**

## SearchParameter: Suchparameter DocumentReference dipag-markierung 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/SearchParameter/dipag-markierung | *Version*:1.1.0 |
| Active Stand: 2026-07-31 | *Maschinenlesbarer Name*:DiPagMakierung |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "dipag-markierung",
  "url" : "https://gematik.de/fhir/dipag/SearchParameter/dipag-markierung",
  "version" : "1.1.0",
  "name" : "DiPagMakierung",
  "status" : "active",
  "date" : "2026-07-31T08:25:00+00:00",
  "publisher" : "gematik GmbH",
  "contact" : [{
    "name" : "gematik GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.gematik.de"
    }]
  }],
  "description" : "Ein SearchParameter auf der Ressource DocumentReference, der die Suche nach einer manuellen Markierung ermöglicht.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "code" : "dipag-markierung",
  "base" : ["DocumentReference"],
  "type" : "token",
  "expression" : "DocumentReference.extension('https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsstatus').value"
}

```
