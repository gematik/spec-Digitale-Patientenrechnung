# BeispielNutzungsprotokollEinreichenFrontend - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **BeispielNutzungsprotokollEinreichenFrontend**

## Beispiel AuditEvent: BeispielNutzungsprotokollEinreichenFrontend

Profile: [Digitale Patientenrechnung Nutzungsprotokoll](StructureDefinition-dipag-nutzungsprotokoll.md)

**type**: [Audit Event ID: rest](http://terminology.hl7.org/7.2.0/CodeSystem-audit-event-type.html#audit-event-type-rest) (RESTful Operation)

**subtype**: [Digitale Patientenrechnung Operationen: process-flag](CodeSystem-dipag-operationen-cs.md#dipag-operationen-cs-process-flag) (Digitale Patientenrechnung_ProcessFlag)

**action**: Execute

**recorded**: 2024-06-03 08:20:00+0000

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

> **entity****what**: [DocumentReference: extension = 2024-01-10,2024-02-10,120 EUR,Allgemeinmedizin (Aerztliche Fachrichtungen#ALLG),ambulatory (ActCode#AMB); identifier = https://gematik.de/fhir/sid/dipag-token#123-456-789; status = current; type = Rechnung ambulante/stationäre Behandlung; description = Rechnung Reiseimpfung vom 10.01.2024](DocumentReference-BeispielDocumentReferenceRechnungRetrieve.md)**name**: Rechnung Reiseimpfung vom 10.01.2024

### Details

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | DocumentReference.meta.extension:markierung | Die Rechnung wurde über das Frontend eingereicht. |




## Resource Content

```json
{
  "resourceType" : "AuditEvent",
  "id" : "BeispielNutzungsprotokollEinreichenFrontend",
  "meta" : {
    "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-nutzungsprotokoll"]
  },
  "type" : {
    "system" : "http://terminology.hl7.org/CodeSystem/audit-event-type",
    "code" : "rest"
  },
  "subtype" : [{
    "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-operationen-cs",
    "code" : "process-flag"
  }],
  "action" : "E",
  "recorded" : "2024-06-03T08:20:00.000000+00:00",
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
    "what" : {
      "reference" : "DocumentReference/BeispielDocumentReferenceRechnungRetrieve",
      "type" : "DocumentReference"
    },
    "name" : "Rechnung Reiseimpfung vom 10.01.2024",
    "detail" : [{
      "type" : "DocumentReference.meta.extension:markierung",
      "valueString" : "Die Rechnung wurde über das Frontend eingereicht."
    }]
  }]
}

```
