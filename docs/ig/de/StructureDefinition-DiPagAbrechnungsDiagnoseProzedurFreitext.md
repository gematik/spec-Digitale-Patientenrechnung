# Abrechnungsrelevanz von Diagnosen und Prozeduren als Freitext - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Abrechnungsrelevanz von Diagnosen und Prozeduren als Freitext**

## Extension: Abrechnungsrelevanz von Diagnosen und Prozeduren als Freitext 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/StructureDefinition/DiPagAbrechnungsDiagnoseProzedurFreitext | *Version*:1.0.8 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagAbrechnungsDiagnoseProzedurFreitext |

Diese Extension erlaubt die Angabe von abrechnungsrelevanten Diagnosen und Prozeduren als Freitext an einer Invoice.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Digitale Patientenrechnung Rechnung](StructureDefinition-dipag-rechnung.md)
* Examples for this Extension: [Bundle/BundleExample](Bundle-BundleExample.md), [Bundle/MusterrechnungBundle](Bundle-MusterrechnungBundle.md), [Invoice/a0b1c2d3-e4f5-6a7b-8c9d-0e1f2a3b4c5d](Invoice-a0b1c2d3-e4f5-6a7b-8c9d-0e1f2a3b4c5d.md) and [Invoice/c3d4e5f6-4b5c-6d7e-1f2a-3b4c5d6e7f8a](Invoice-c3d4e5f6-4b5c-6d7e-1f2a-3b4c5d6e7f8a.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.gematik.dipag|current/StructureDefinition/StructureDefinition-DiPagAbrechnungsDiagnoseProzedurFreitext.json)

### Formale Ansichten des Extension-Inhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [AlleAll](#tabs-all) 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple Extension with the type string: Diese Extension erlaubt die Angabe von abrechnungsrelevanten Diagnosen und Prozeduren als Freitext an einer Invoice.

 **Differential-AnsichtDifferential View** 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Snapshot-Ansicht** 

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple Extension with the type string: Diese Extension erlaubt die Angabe von abrechnungsrelevanten Diagnosen und Prozeduren als Freitext an einer Invoice.

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-DiPagAbrechnungsDiagnoseProzedurFreitext.csv), [Excel](../StructureDefinition-DiPagAbrechnungsDiagnoseProzedurFreitext.xlsx), [Schematron](../StructureDefinition-DiPagAbrechnungsDiagnoseProzedurFreitext.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DiPagAbrechnungsDiagnoseProzedurFreitext",
  "url" : "https://gematik.de/fhir/dipag/StructureDefinition/DiPagAbrechnungsDiagnoseProzedurFreitext",
  "version" : "1.0.8",
  "name" : "DiPagAbrechnungsDiagnoseProzedurFreitext",
  "title" : "Abrechnungsrelevanz von Diagnosen und Prozeduren als Freitext",
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
  "description" : "Diese Extension erlaubt die Angabe von abrechnungsrelevanten Diagnosen und Prozeduren als Freitext an einer Invoice.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Invoice"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Abrechnungsrelevanz von Diagnosen und Prozeduren als Freitext"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://gematik.de/fhir/dipag/StructureDefinition/DiPagAbrechnungsDiagnoseProzedurFreitext"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
