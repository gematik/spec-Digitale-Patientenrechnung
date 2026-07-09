# Suchparameter DocumentReference.author.display - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Suchparameter DocumentReference.author.display**

## SearchParameter: Suchparameter DocumentReference.author.display 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/SearchParameter/dipag-docRef-author-display | *Version*:1.0.8 |
| Active Stand: 2026-07-09 | *Maschinenlesbarer Name*:DiPagDocRefAuthorDisplay |

 
Ein SearchParameter auf der Ressource DocumentReference, der die Suche nach dem Text in author.display ermöglicht. Die Länge des Suchstrings ist auf 200 Zeichen begrenzt. 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "dipag-docRef-author-display",
  "url" : "https://gematik.de/fhir/dipag/SearchParameter/dipag-docRef-author-display",
  "version" : "1.0.8",
  "name" : "DiPagDocRefAuthorDisplay",
  "status" : "active",
  "date" : "2026-07-09T12:53:25+00:00",
  "publisher" : "gematik GmbH",
  "contact" : [{
    "name" : "gematik GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.gematik.de"
    }]
  }],
  "description" : "Ein SearchParameter auf der Ressource DocumentReference, der die Suche nach dem Text in author.display ermöglicht. Die Länge des Suchstrings ist auf 200 Zeichen begrenzt.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "code" : "author-display",
  "base" : ["DocumentReference"],
  "type" : "string",
  "expression" : "DocumentReference.author.display"
}

```
