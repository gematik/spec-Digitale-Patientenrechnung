# Suchparameter AuditEvent.agent.who.display - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Suchparameter AuditEvent.agent.who.display**

## SearchParameter: Suchparameter AuditEvent.agent.who.display 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/SearchParameter/dipag-auditEvent-agent-who-display | *Version*:1.0.8 |
| Active Stand: 2026-07-09 | *Maschinenlesbarer Name*:DiPagAuditEventAgentWhoDisplay |

 
Ein SearchParameter auf der Ressource AuditEvent, der die Suche nach dem Text in agent.who.display ermöglicht. Die Länge des Suchstrings ist auf 200 Zeichen begrenzt. 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "dipag-auditEvent-agent-who-display",
  "url" : "https://gematik.de/fhir/dipag/SearchParameter/dipag-auditEvent-agent-who-display",
  "version" : "1.0.8",
  "name" : "DiPagAuditEventAgentWhoDisplay",
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
  "description" : "Ein SearchParameter auf der Ressource AuditEvent, der die Suche nach dem Text in agent.who.display ermöglicht. Die Länge des Suchstrings ist auf 200 Zeichen begrenzt.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "code" : "agent-display",
  "base" : ["AuditEvent"],
  "type" : "string",
  "expression" : "AuditEvent.agent.who.display"
}

```
