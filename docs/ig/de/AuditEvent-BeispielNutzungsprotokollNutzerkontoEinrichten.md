# BeispielNutzungsprotokollNutzerkontoEinrichten - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **BeispielNutzungsprotokollNutzerkontoEinrichten**

## Beispiel AuditEvent: BeispielNutzungsprotokollNutzerkontoEinrichten

Profile: [Digitale Patientenrechnung Nutzungsprotokoll](StructureDefinition-dipag-nutzungsprotokoll.md)

**type**: [Audit Event ID: rest](http://terminology.hl7.org/7.3.0/CodeSystem-audit-event-type.html#audit-event-type-rest) (RESTful Operation)

**subtype**: [FHIR Restful Interactions: create](http://hl7.org/fhir/R4/codesystem-restful-interaction.html#restful-interaction-create) (create)

**action**: Create

**recorded**: 2024-01-15 10:00:00+0000

**outcome**: Success

### Agents

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Type** | **Who** | **Requestor** |
| * | Human User | Max Mustermann (Identifier: NamingSystemKVID/A123456789) | true |

### Sources

| | |
| :--- | :--- |
| - | **Observer** |
| * | DiPag FD Server (Identifier:[Uniform Resource Identifier (URI)](http://terminology.hl7.org/7.3.0/NamingSystem-uri.html)/urn:oid:1.2.276.0.76.4.323) |

> **entity****what**: [Patient/NutzerkontoPatient](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/NutzerkontoPatient)

### Details

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | Allgemein | Ein Nutzerkonto wurde eingerichtet. |




## Resource Content

```json
{
  "resourceType" : "AuditEvent",
  "id" : "BeispielNutzungsprotokollNutzerkontoEinrichten",
  "meta" : {
    "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-nutzungsprotokoll"]
  },
  "type" : {
    "system" : "http://terminology.hl7.org/CodeSystem/audit-event-type",
    "code" : "rest"
  },
  "subtype" : [{
    "system" : "http://hl7.org/fhir/restful-interaction",
    "code" : "create"
  }],
  "action" : "C",
  "recorded" : "2024-01-15T10:00:00.000000+00:00",
  "outcome" : "0",
  "agent" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/extra-security-role-type",
        "code" : "humanuser"
      }]
    },
    "who" : {
      "identifier" : {
        "system" : "http://fhir.de/sid/gkv/kvid-10",
        "value" : "A123456789"
      },
      "display" : "Max Mustermann"
    },
    "requestor" : true
  }],
  "source" : {
    "observer" : {
      "identifier" : {
        "system" : "urn:ietf:rfc:3986",
        "value" : "urn:oid:1.2.276.0.76.4.323"
      },
      "display" : "DiPag FD Server"
    }
  },
  "entity" : [{
    "what" : {
      "reference" : "Patient/NutzerkontoPatient",
      "type" : "Patient"
    },
    "detail" : [{
      "type" : "Allgemein",
      "valueString" : "Ein Nutzerkonto wurde eingerichtet."
    }]
  }]
}

```
