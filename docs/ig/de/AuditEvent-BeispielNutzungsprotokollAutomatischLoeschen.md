# BeispielNutzungsprotokollAutomatischLoeschen - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **BeispielNutzungsprotokollAutomatischLoeschen**

## Beispiel AuditEvent: BeispielNutzungsprotokollAutomatischLoeschen

Profile: [Digitale Patientenrechnung Nutzungsprotokoll](StructureDefinition-dipag-nutzungsprotokoll.md)

**type**: [DICOM: 110100](http://hl7.org/fhir/R4/codesystem-dicom-dcim.html#dicom-dcim-110100) (Application Activity)

**subtype**: [FHIR Restful Interactions: delete](http://hl7.org/fhir/R4/codesystem-restful-interaction.html#restful-interaction-delete) (delete)

**action**: Delete

**recorded**: 2025-01-31 00:00:00+0000

**outcome**: Success

### Agents

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Type** | **Who** | **Requestor** |
| * | Data Processor | Automatisch durch Anwendung | true |

### Sources

| | |
| :--- | :--- |
| - | **Observer** |
| * | DiPag FD Server (Identifier:[Uniform Resource Identifier (URI)](http://terminology.hl7.org/7.3.0/NamingSystem-uri.html)/urn:oid:1.2.276.0.76.4.323) |

> **entity****what**: [Patient/NutzerkontoPatient](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/NutzerkontoPatient)

> **entity****name**: Rechnung Reiseimpfung vom 10.01.2024

### Details

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | Allgemein | Die Rechnung wurde gelöscht. |


> **entity****name**: Originale Rechnung zu Rechnung Reiseimpfung vom 10.01.2024

> **entity****name**: Angereicherte Rechnung zu Rechnung Reiseimpfung vom 10.01.2024

> **entity****name**: Strukturierter Rechnungsinhalt zu Rechnung Reiseimpfung vom 10.01.2024



## Resource Content

```json
{
  "resourceType" : "AuditEvent",
  "id" : "BeispielNutzungsprotokollAutomatischLoeschen",
  "meta" : {
    "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-nutzungsprotokoll"]
  },
  "type" : {
    "system" : "http://dicom.nema.org/resources/ontology/DCM",
    "code" : "110100"
  },
  "subtype" : [{
    "system" : "http://hl7.org/fhir/restful-interaction",
    "code" : "delete"
  }],
  "action" : "D",
  "recorded" : "2025-01-31T00:00:00.000000+00:00",
  "outcome" : "0",
  "agent" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/extra-security-role-type",
        "code" : "dataprocessor"
      }]
    },
    "who" : {
      "display" : "Automatisch durch Anwendung"
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
      "valueString" : "Die Rechnung wurde gelöscht."
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
