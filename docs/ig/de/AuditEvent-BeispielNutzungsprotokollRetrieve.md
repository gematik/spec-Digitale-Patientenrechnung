# BeispielNutzungsprotokollRetrieve - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **BeispielNutzungsprotokollRetrieve**

## Beispiel AuditEvent: BeispielNutzungsprotokollRetrieve

Profile: [Digitale Patientenrechnung Nutzungsprotokoll](StructureDefinition-dipag-nutzungsprotokoll.md)

**type**: [Audit Event ID: rest](http://terminology.hl7.org/7.3.0/CodeSystem-audit-event-type.html#audit-event-type-rest) (RESTful Operation)

**subtype**: [Digitale Patientenrechnung Operationen: retrieve](CodeSystem-dipag-operationen-cs.md#dipag-operationen-cs-retrieve) (Digitale Patientenrechnung_Retrieve)

**action**: Execute

**recorded**: 2024-05-30 09:15:22+0000

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

> **entity****what**: [DocumentReference: extension = 2024-01-10,2024-02-10,120 EUR,Allgemeinmedizin (Aerztliche Fachrichtungen#ALLG),ambulatory (ActCode#AMB); identifier = https://gematik.de/fhir/sid/dipag-token#123-456-789; status = current; type = Rechnung ambulante/stationäre Behandlung; description = Rechnung Reiseimpfung vom 10.01.2024](DocumentReference-BeispielDocumentReferenceRechnungRetrieve.md)**name**: Rechnung Reiseimpfung vom 10.01.2024

### Details

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | Allgemein | Rechnung abgerufen |


> **entity****what**: [Binary/id-der-originalen-rechnung](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Binary/id-der-originalen-rechnung)**name**: Originale Rechnung zu Rechnung Reiseimpfung vom 10.01.2024

> **entity****what**: [Binary/id-der-angereicherten-rechnung](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Binary/id-der-angereicherten-rechnung)**name**: Angereicherte Rechnung zu Rechnung Reiseimpfung vom 10.01.2024

> **entity****what**: [Binary/id-des-strukturierten-Rechnungsinhalts](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Binary/id-des-strukturierten-Rechnungsinhalts)**name**: Strukturierter Rechnungsinhalt zu Rechnung Reiseimpfung vom 10.01.2024



## Resource Content

```json
{
  "resourceType" : "AuditEvent",
  "id" : "BeispielNutzungsprotokollRetrieve",
  "meta" : {
    "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-nutzungsprotokoll"]
  },
  "type" : {
    "system" : "http://terminology.hl7.org/CodeSystem/audit-event-type",
    "code" : "rest"
  },
  "subtype" : [{
    "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-operationen-cs",
    "code" : "retrieve"
  }],
  "action" : "E",
  "recorded" : "2024-05-30T09:15:22.000000+00:00",
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
      "type" : "Allgemein",
      "valueString" : "Rechnung abgerufen"
    }]
  },
  {
    "what" : {
      "reference" : "Binary/id-der-originalen-rechnung",
      "type" : "Binary"
    },
    "name" : "Originale Rechnung zu Rechnung Reiseimpfung vom 10.01.2024"
  },
  {
    "what" : {
      "reference" : "Binary/id-der-angereicherten-rechnung",
      "type" : "Binary"
    },
    "name" : "Angereicherte Rechnung zu Rechnung Reiseimpfung vom 10.01.2024"
  },
  {
    "what" : {
      "reference" : "Binary/id-des-strukturierten-Rechnungsinhalts",
      "type" : "Binary"
    },
    "name" : "Strukturierter Rechnungsinhalt zu Rechnung Reiseimpfung vom 10.01.2024"
  }]
}

```
