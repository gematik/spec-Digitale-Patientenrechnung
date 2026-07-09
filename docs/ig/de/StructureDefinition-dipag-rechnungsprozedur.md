# Digitale Patientenrechnung Rechnungsprozedur - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Rechnungsprozedur**

## Ressourcenprofil: Digitale Patientenrechnung Rechnungsprozedur 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsprozedur | *Version*:1.0.8 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagRechnungsprozedur |

**Usages:**

* Examples for this Profile: [Procedure/b2c3d4e5-3a4b-5c6d-0e1f-2a3b4c5d6e7f](Procedure-b2c3d4e5-3a4b-5c6d-0e1f-2a3b4c5d6e7f.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.gematik.dipag|current/StructureDefinition/StructureDefinition-dipag-rechnungsprozedur.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Must-Support Comments](#tabs-isik) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Procedure](http://hl7.org/fhir/R4/procedure.html) 

#### Terminology Bindings

#### Constraints

| | | |
| :--- | :--- | :--- |
| Procedure.code |  |  |
| Procedure.code.coding |  |  |
| Procedure.code.coding:OPS | Code und Text nach OPS | Die Codierung nach OPS SOLL vorhanden sein. |
| Procedure.code.coding:OPS.code | Code nach OPS | Der Code nach OPS SOLL vorhanden sein. |
| Procedure.code.coding:OPS.display | Text zum OPS Code | Der Text zum OPS Code SOLL vorhanden sein. |
| Procedure.code.coding:OPS.system | System des OPS Code | Das System des OPS Code MUSS vorhanden sein. |
| Procedure.performed[x] | OPS Behandlungsdatum oder -zeitraum | Entweder das OPS Behandlungsdatum, oder der -zeitraum SOLL vorhanden sein. |
| Procedure.performed[x]:performedDateTime | OPS Behandlungsdatum |  |
| Procedure.performed[x]:performedPeriod | OPS Behandlungszeitraum |  |
| Procedure.status | Status der Prozedur | Der Status der Prozedur MUSS vorhanden sein. |
| Procedure.subject | Referenz auf die behandelte Person | Die Procedure SOLL auf eine zugehörige behandelte Person referenzieren. |
| Procedure.subject.reference |  |  |

Diese Struktur ist abgeleitet von [Procedure](http://hl7.org/fhir/R4/procedure.html) 

** Summary **

Mandatory: 1 element
 Must-Support: 12 elements

**Structures**

This structure refers to these other structures:

* [Coding-Profil für OPS (http://fhir.de/StructureDefinition/CodingOPS)](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.de/StructureDefinition/CodingOPS)
* [DiPagPatient (https://gematik.de/fhir/dipag/StructureDefinition/dipag-patient)](StructureDefinition-dipag-patient.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Procedure.code.coding
* The element 1 is sliced based on the value of Procedure.performed[x]

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [Procedure](http://hl7.org/fhir/R4/procedure.html) 

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Procedure](http://hl7.org/fhir/R4/procedure.html) 

** Summary **

Mandatory: 1 element
 Must-Support: 12 elements

**Structures**

This structure refers to these other structures:

* [Coding-Profil für OPS (http://fhir.de/StructureDefinition/CodingOPS)](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.de/StructureDefinition/CodingOPS)
* [DiPagPatient (https://gematik.de/fhir/dipag/StructureDefinition/dipag-patient)](StructureDefinition-dipag-patient.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Procedure.code.coding
* The element 1 is sliced based on the value of Procedure.performed[x]

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-dipag-rechnungsprozedur.csv), [Excel](../StructureDefinition-dipag-rechnungsprozedur.xlsx), [Schematron](../StructureDefinition-dipag-rechnungsprozedur.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "dipag-rechnungsprozedur",
  "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsprozedur",
  "version" : "1.0.8",
  "name" : "DiPagRechnungsprozedur",
  "title" : "Digitale Patientenrechnung Rechnungsprozedur",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-03-26",
  "publisher" : "gematik GmbH",
  "contact" : [{
    "name" : "gematik GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.gematik.de"
    }]
  }],
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Procedure",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Procedure",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Procedure",
      "path" : "Procedure"
    },
    {
      "id" : "Procedure.status",
      "path" : "Procedure.status",
      "short" : "Status der Prozedur",
      "comment" : "Der Status der Prozedur MUSS vorhanden sein.",
      "patternCode" : "completed",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.code",
      "path" : "Procedure.code",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.code.coding",
      "path" : "Procedure.code.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Procedure.code.coding:OPS",
      "path" : "Procedure.code.coding",
      "sliceName" : "OPS",
      "short" : "Code und Text nach OPS",
      "comment" : "Die Codierung nach OPS SOLL vorhanden sein.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding",
        "profile" : ["http://fhir.de/StructureDefinition/CodingOPS"]
      }],
      "patternCoding" : {
        "system" : "http://fhir.de/CodeSystem/bfarm/ops"
      },
      "mustSupport" : true
    },
    {
      "id" : "Procedure.code.coding:OPS.system",
      "path" : "Procedure.code.coding.system",
      "short" : "System des OPS Code",
      "comment" : "Das System des OPS Code MUSS vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.code.coding:OPS.code",
      "path" : "Procedure.code.coding.code",
      "short" : "Code nach OPS",
      "comment" : "Der Code nach OPS SOLL vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.code.coding:OPS.display",
      "path" : "Procedure.code.coding.display",
      "short" : "Text zum OPS Code",
      "comment" : "Der Text zum OPS Code SOLL vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.subject",
      "path" : "Procedure.subject",
      "short" : "Referenz auf die behandelte Person",
      "comment" : "Die Procedure SOLL auf eine zugehörige behandelte Person referenzieren.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-patient",
        "http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.subject.reference",
      "path" : "Procedure.subject.reference",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Procedure.performed[x]",
      "path" : "Procedure.performed[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "OPS Behandlungsdatum oder -zeitraum",
      "comment" : "Entweder das OPS Behandlungsdatum, oder der -zeitraum SOLL vorhanden sein.",
      "type" : [{
        "code" : "dateTime"
      },
      {
        "code" : "Period"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.performed[x]:performedDateTime",
      "path" : "Procedure.performed[x]",
      "sliceName" : "performedDateTime",
      "short" : "OPS Behandlungsdatum",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.performed[x]:performedPeriod",
      "path" : "Procedure.performed[x]",
      "sliceName" : "performedPeriod",
      "short" : "OPS Behandlungszeitraum",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }],
      "mustSupport" : true
    }]
  }
}

```
