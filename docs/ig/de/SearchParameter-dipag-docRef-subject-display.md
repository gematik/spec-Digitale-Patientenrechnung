# Suchparameter DocumentReference.subject.display - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Suchparameter DocumentReference.subject.display**

## SearchParameter: Suchparameter DocumentReference.subject.display 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/SearchParameter/dipag-docRef-subject-display | *Version*:1.1.0 |
| Active Stand: 2026-07-31 | *Maschinenlesbarer Name*:DiPagDocRefSubjectDisplay |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "dipag-docRef-subject-display",
  "url" : "https://gematik.de/fhir/dipag/SearchParameter/dipag-docRef-subject-display",
  "version" : "1.1.0",
  "name" : "DiPagDocRefSubjectDisplay",
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
  "description" : "Ein SearchParameter auf der Ressource DocumentReference, der die Suche nach dem Text in subject.display ermöglicht. Die Länge des Suchstrings ist auf 200 Zeichen begrenzt.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "code" : "subject-display",
  "base" : ["DocumentReference"],
  "type" : "string",
  "expression" : "DocumentReference.subject.display"
}

```
