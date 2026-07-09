# BeispielNutzungsprotokollErase - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **BeispielNutzungsprotokollErase**

## Beispiel AuditEvent: BeispielNutzungsprotokollErase

Profile: [Digitale Patientenrechnung Nutzungsprotokoll](StructureDefinition-dipag-nutzungsprotokoll.md)

**type**: [Audit Event ID: rest](http://terminology.hl7.org/7.2.0/CodeSystem-audit-event-type.html#audit-event-type-rest) (RESTful Operation)

**subtype**: [Digitale Patientenrechnung Operationen: erase](CodeSystem-dipag-operationen-cs.md#dipag-operationen-cs-erase) (Digitale Patientenrechnung_Erase)

**action**: Execute

**recorded**: 2024-06-02 16:45:00+0000

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
| * | DiPag FD Server (Identifier:[Uniform Resource Identifier (URI)](http://terminology.hl7.org/7.2.0/NamingSystem-uri.html)/urn:oid:1.2.276.0.76.4.323) |

> **entity****what**: [Patient/NutzerkontoPatient](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/NutzerkontoPatient)

> **entity****name**: Rechnung Reiseimpfung vom 10.01.2024

### Details

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | Allgemein | Rechnung gelöscht |


> **entity****name**: Originale Rechnung zu Rechnung Reiseimpfung vom 10.01.2024

> **entity****name**: Angereicherte Rechnung zu Rechnung Reiseimpfung vom 10.01.2024

> **entity****name**: Strukturierter Rechnungsinhalt zu Rechnung Reiseimpfung vom 10.01.2024



## Resource Content

```json
{
  "resourceType" : "AuditEvent",
  "id" : "BeispielNutzungsprotokollErase",
  "meta" : {
    "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-nutzungsprotokoll"]
  },
  "type" : {
    "system" : "http://terminology.hl7.org/CodeSystem/audit-event-type",
    "code" : "rest"
  },
  "subtype" : [{
    "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-operationen-cs",
    "code" : "erase"
  }],
  "action" : "E",
  "recorded" : "2024-06-02T16:45:00.000000+00:00",
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
    }
  },
  {
    "name" : "Rechnung Reiseimpfung vom 10.01.2024",
    "detail" : [{
      "type" : "Allgemein",
      "valueString" : "Rechnung gelöscht"
    }]
  },
  {
    "name" : "Originale Rechnung zu Rechnung Reiseimpfung vom 10.01.2024"
  },
  {
    "name" : "Angereicherte Rechnung zu Rechnung Reiseimpfung vom 10.01.2024"
  },
  {
    "name" : "Strukturierter Rechnungsinhalt zu Rechnung Reiseimpfung vom 10.01.2024"
  }]
}

```
