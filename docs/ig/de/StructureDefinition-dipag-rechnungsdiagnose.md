# Digitale Patientenrechnung Rechnungsdiagnose - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Rechnungsdiagnose**

## Ressourcenprofil: Digitale Patientenrechnung Rechnungsdiagnose 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsdiagnose | *Version*:1.0.8 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagRechnungsdiagnose |

**Usages:**

* Examples for this Profile: [Condition/a1b2c3d4-2f3a-4b5c-9d0e-1f2a3b4c5d6e](Condition-a1b2c3d4-2f3a-4b5c-9d0e-1f2a3b4c5d6e.md) and [Condition/f0a1b2c3-1e2f-3a4b-8c9d-0e1f2a3b4c5d](Condition-f0a1b2c3-1e2f-3a4b-8c9d-0e1f2a3b4c5d.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.gematik.dipag|current/StructureDefinition/StructureDefinition-dipag-rechnungsdiagnose.json)

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

Diese Struktur ist abgeleitet von [Condition](http://hl7.org/fhir/R4/condition.html) 

#### Terminology Bindings

#### Constraints

| | | |
| :--- | :--- | :--- |
| Condition.code |  |  |
| Condition.code.coding |  |  |
| Condition.code.coding:ICD-10-GM | Code und Text nach ICD-10 | Die Codierung nach ICD-10 SOLL vorhanden sein. |
| Condition.code.coding:ICD-10-GM.code | Code nach ICD-10 | Der Code nach ICD-10 SOLL vorhanden sein. |
| Condition.code.coding:ICD-10-GM.display | Text zum ICD-10 Code | Der Text zum ICD-10 Code SOLL vorhanden sein. |
| Condition.code.coding:ICD-10-GM.extension:Seitenlokalisation | Lokalisierung | Die Lokalisierung SOLL vorhanden sein. |
| Condition.code.coding:ICD-10-GM.extension:Seitenlokalisation.value[x] |  |  |
| Condition.code.coding:ICD-10-GM.extension:Seitenlokalisation.value[x].code |  |  |
| Condition.code.coding:ICD-10-GM.extension:Seitenlokalisation.value[x].system |  |  |
| Condition.code.coding:ICD-10-GM.system | System des ICD-10 Code | Das System des ICD-10 Code MUSS vorhanden sein. |
| Condition.onset[x] | Behandlungsdatum (Erstdiagnose) | Das Behandlungsdatum (Erstdiagnose) SOLL vorhanden sein. |
| Condition.subject | Referenz auf die behandelte Person | Die Diagnose SOLL auf eine zugehörige behandelte Person referenzieren. |
| Condition.subject.reference |  |  |

Diese Struktur ist abgeleitet von [Condition](http://hl7.org/fhir/R4/condition.html) 

** Summary **

Mandatory: 1 element
 Must-Support: 13 elements

**Structures**

This structure refers to these other structures:

* [Coding-Profil für ICD-10-GM (http://fhir.de/StructureDefinition/CodingICD10GM)](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.de/StructureDefinition/CodingICD10GM)
* [DiPagPatient (https://gematik.de/fhir/dipag/StructureDefinition/dipag-patient)](StructureDefinition-dipag-patient.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Condition.code.coding

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [Condition](http://hl7.org/fhir/R4/condition.html) 

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Condition](http://hl7.org/fhir/R4/condition.html) 

** Summary **

Mandatory: 1 element
 Must-Support: 13 elements

**Structures**

This structure refers to these other structures:

* [Coding-Profil für ICD-10-GM (http://fhir.de/StructureDefinition/CodingICD10GM)](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.de/StructureDefinition/CodingICD10GM)
* [DiPagPatient (https://gematik.de/fhir/dipag/StructureDefinition/dipag-patient)](StructureDefinition-dipag-patient.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Condition.code.coding

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-dipag-rechnungsdiagnose.csv), [Excel](../StructureDefinition-dipag-rechnungsdiagnose.xlsx), [Schematron](../StructureDefinition-dipag-rechnungsdiagnose.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "dipag-rechnungsdiagnose",
  "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsdiagnose",
  "version" : "1.0.8",
  "name" : "DiPagRechnungsdiagnose",
  "title" : "Digitale Patientenrechnung Rechnungsdiagnose",
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
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
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
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Condition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Condition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Condition",
      "path" : "Condition"
    },
    {
      "id" : "Condition.code",
      "path" : "Condition.code",
      "mustSupport" : true
    },
    {
      "id" : "Condition.code.coding",
      "path" : "Condition.code.coding",
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
      "id" : "Condition.code.coding:ICD-10-GM",
      "path" : "Condition.code.coding",
      "sliceName" : "ICD-10-GM",
      "short" : "Code und Text nach ICD-10",
      "comment" : "Die Codierung nach ICD-10 SOLL vorhanden sein.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding",
        "profile" : ["http://fhir.de/StructureDefinition/CodingICD10GM"]
      }],
      "patternCoding" : {
        "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm"
      },
      "mustSupport" : true
    },
    {
      "id" : "Condition.code.coding:ICD-10-GM.extension:Seitenlokalisation",
      "path" : "Condition.code.coding.extension",
      "sliceName" : "Seitenlokalisation",
      "short" : "Lokalisierung",
      "comment" : "Die Lokalisierung SOLL vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Condition.code.coding:ICD-10-GM.extension:Seitenlokalisation.value[x]",
      "path" : "Condition.code.coding.extension.value[x]",
      "mustSupport" : true
    },
    {
      "id" : "Condition.code.coding:ICD-10-GM.extension:Seitenlokalisation.value[x].system",
      "path" : "Condition.code.coding.extension.value[x].system",
      "mustSupport" : true
    },
    {
      "id" : "Condition.code.coding:ICD-10-GM.extension:Seitenlokalisation.value[x].code",
      "path" : "Condition.code.coding.extension.value[x].code",
      "mustSupport" : true
    },
    {
      "id" : "Condition.code.coding:ICD-10-GM.system",
      "path" : "Condition.code.coding.system",
      "short" : "System des ICD-10 Code",
      "comment" : "Das System des ICD-10 Code MUSS vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Condition.code.coding:ICD-10-GM.code",
      "path" : "Condition.code.coding.code",
      "short" : "Code nach ICD-10",
      "comment" : "Der Code nach ICD-10 SOLL vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Condition.code.coding:ICD-10-GM.display",
      "path" : "Condition.code.coding.display",
      "short" : "Text zum ICD-10 Code",
      "comment" : "Der Text zum ICD-10 Code SOLL vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Condition.subject",
      "path" : "Condition.subject",
      "short" : "Referenz auf die behandelte Person",
      "comment" : "Die Diagnose SOLL auf eine zugehörige behandelte Person referenzieren.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-patient",
        "http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.subject.reference",
      "path" : "Condition.subject.reference",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.onset[x]",
      "path" : "Condition.onset[x]",
      "short" : "Behandlungsdatum (Erstdiagnose)",
      "comment" : "Das Behandlungsdatum (Erstdiagnose) SOLL vorhanden sein.",
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    }]
  }
}

```
