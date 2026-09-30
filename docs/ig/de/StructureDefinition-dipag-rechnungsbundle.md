# Digitale Patientenrechnung - Rechnungsinhalte Bundle - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung - Rechnungsinhalte Bundle**

## Ressourcenprofil: Digitale Patientenrechnung - Rechnungsinhalte Bundle 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsbundle | *Version*:1.1.0 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagRechnungsBundle |

 
Dieses Profil stellt das collection-Bundle dar, mit welchem die strukturierten Rechnungsinhalte zusammengefasst und als base64-kodiertes Binary in der DocumentReference referenziert werden. 

**Usages:**

* Examples for this Profile: [Bundle/BundleExample](Bundle-BundleExample.md) and [Bundle/MusterrechnungBundle](Bundle-MusterrechnungBundle.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.gematik.dipag|current/StructureDefinition/StructureDefinition-dipag-rechnungsbundle.json)

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

Diese Struktur ist abgeleitet von [Bundle](http://hl7.org/fhir/R4/bundle.html) 

#### Terminology Bindings

#### Constraints

| | | |
| :--- | :--- | :--- |
| Bundle.entry |  |  |
| Bundle.entry.resource |  |  |
| Bundle.entry:BehandeltePerson |  |  |
| Bundle.entry:Rechnung |  |  |
| Bundle.timestamp |  |  |
| Bundle.type |  |  |

Diese Struktur ist abgeleitet von [Bundle](http://hl7.org/fhir/R4/bundle.html) 

** Summary **

Mandatory: 2 elements
 Must-Support: 6 elements

**Structures**

This structure refers to these other structures:

* [Digitale Patientenrechnung Rechnung (https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnung)](StructureDefinition-dipag-rechnung.md)
* [Digitale Patientenrechnung Patient (https://gematik.de/fhir/dipag/StructureDefinition/dipag-patient)](StructureDefinition-dipag-patient.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Bundle.entry

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [Bundle](http://hl7.org/fhir/R4/bundle.html) 

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Bundle](http://hl7.org/fhir/R4/bundle.html) 

** Summary **

Mandatory: 2 elements
 Must-Support: 6 elements

**Structures**

This structure refers to these other structures:

* [Digitale Patientenrechnung Rechnung (https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnung)](StructureDefinition-dipag-rechnung.md)
* [Digitale Patientenrechnung Patient (https://gematik.de/fhir/dipag/StructureDefinition/dipag-patient)](StructureDefinition-dipag-patient.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Bundle.entry

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-dipag-rechnungsbundle.csv), [Excel](../StructureDefinition-dipag-rechnungsbundle.xlsx), [Schematron](../StructureDefinition-dipag-rechnungsbundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "dipag-rechnungsbundle",
  "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsbundle",
  "version" : "1.1.0",
  "name" : "DiPagRechnungsBundle",
  "title" : "Digitale Patientenrechnung - Rechnungsinhalte Bundle",
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
  "description" : "Dieses Profil stellt das collection-Bundle dar, mit welchem die strukturierten Rechnungsinhalte zusammengefasst und als base64-kodiertes Binary in der DocumentReference referenziert werden.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle"
    },
    {
      "id" : "Bundle.type",
      "path" : "Bundle.type",
      "patternCode" : "collection",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.timestamp",
      "path" : "Bundle.timestamp",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "resource"
        }],
        "rules" : "open"
      },
      "min" : 2,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry.resource",
      "path" : "Bundle.entry.resource",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Rechnung",
      "path" : "Bundle.entry",
      "sliceName" : "Rechnung",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Rechnung.resource",
      "path" : "Bundle.entry.resource",
      "comment" : "Alle aus der Rechnung (Invoice mit Profil DipagRechnung) referenzierten Ressourcen müssen ebenfalls in diesem Bundle enthalten sein, damit die Referenzen aufgelöst werden können.",
      "type" : [{
        "code" : "Invoice",
        "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnung"]
      }]
    },
    {
      "id" : "Bundle.entry:BehandeltePerson",
      "path" : "Bundle.entry",
      "sliceName" : "BehandeltePerson",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:BehandeltePerson.resource",
      "path" : "Bundle.entry.resource",
      "comment" : "Mindestens die behandelte Person, abgebildet durch eine Patient-Instanz, muss in diesem Bundle enthalten sein, da beim submit der Rechnung die Referenz auf die behandelte Person in der Patient-Instanz als subject der DocumentReference gesetzt wird.",
      "type" : [{
        "code" : "Patient",
        "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-patient"]
      }]
    }]
  }
}

```
