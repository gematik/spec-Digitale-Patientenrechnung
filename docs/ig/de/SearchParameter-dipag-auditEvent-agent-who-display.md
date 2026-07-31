# Suchparameter AuditEvent.agent.who.display - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Suchparameter AuditEvent.agent.who.display**

## SearchParameter: Suchparameter AuditEvent.agent.who.display 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/SearchParameter/dipag-auditEvent-agent-who-display | *Version*:1.1.0 |
| Active Stand: 2026-07-31 | *Maschinenlesbarer Name*:DiPagAuditEventAgentWhoDisplay |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "dipag-auditEvent-agent-who-display",
  "url" : "https://gematik.de/fhir/dipag/SearchParameter/dipag-auditEvent-agent-who-display",
  "version" : "1.1.0",
  "name" : "DiPagAuditEventAgentWhoDisplay",
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
