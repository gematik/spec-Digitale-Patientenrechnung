# Abrechnungsrelevanz von Diagnosen und Prozeduren - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Abrechnungsrelevanz von Diagnosen und Prozeduren**

## Extension: Abrechnungsrelevanz von Diagnosen und Prozeduren 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/StructureDefinition/DiPagAbrechnungsDiagnoseProzedur | *Version*:1.0.8 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagAbrechnungsDiagnoseProzedur |

Diese Extension erlaubt es einer Invoice Diagnosen oder Prozeduren, incl. Qualifier wie bspw: "Primär-DRG" zuzuordnen. Dies ermöglicht unter anderem das Zuordnen von Haupt- und Nebendiagnosen zu einem Account zum Zweck der DRG Erstellung.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Digitale Patientenrechnung Rechnung](StructureDefinition-dipag-rechnung.md)
* Examples for this Extension: [Bundle/BundleExample](Bundle-BundleExample.md) and [Invoice/c3d4e5f6-4b5c-6d7e-1f2a-3b4c5d6e7f8a](Invoice-c3d4e5f6-4b5c-6d7e-1f2a-3b4c5d6e7f8a.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.gematik.dipag|current/StructureDefinition/StructureDefinition-DiPagAbrechnungsDiagnoseProzedur.json)

### Formale Ansichten des Extension-Inhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [AlleAll](#tabs-all) 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Complex Extension: Diese Extension erlaubt es einer Invoice Diagnosen oder Prozeduren, incl. Qualifier wie bspw: "Primär-DRG" zuzuordnen. Dies ermöglicht unter anderem das Zuordnen von Haupt- und Nebendiagnosen zu einem Account zum Zweck der DRG Erstellung.

 **Differential-AnsichtDifferential View** 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Terminology Bindings (Differential)

 **Snapshot-Ansicht** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Complex Extension: Diese Extension erlaubt es einer Invoice Diagnosen oder Prozeduren, incl. Qualifier wie bspw: "Primär-DRG" zuzuordnen. Dies ermöglicht unter anderem das Zuordnen von Haupt- und Nebendiagnosen zu einem Account zum Zweck der DRG Erstellung.

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-DiPagAbrechnungsDiagnoseProzedur.csv), [Excel](../StructureDefinition-DiPagAbrechnungsDiagnoseProzedur.xlsx), [Schematron](../StructureDefinition-DiPagAbrechnungsDiagnoseProzedur.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DiPagAbrechnungsDiagnoseProzedur",
  "url" : "https://gematik.de/fhir/dipag/StructureDefinition/DiPagAbrechnungsDiagnoseProzedur",
  "version" : "1.0.8",
  "name" : "DiPagAbrechnungsDiagnoseProzedur",
  "title" : "Abrechnungsrelevanz von Diagnosen und Prozeduren",
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
  "description" : "Diese Extension erlaubt es einer Invoice Diagnosen oder Prozeduren, incl. Qualifier wie bspw: \"Primär-DRG\" zuzuordnen. Dies ermöglicht unter anderem das Zuordnen von Haupt- und Nebendiagnosen zu einem Account zum Zweck der DRG Erstellung.",
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
      "short" : "Abrechnungsrelevanz von Diagnosen und Prozeduren"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 1
    },
    {
      "id" : "Extension.extension:Use",
      "path" : "Extension.extension",
      "sliceName" : "Use",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:Use.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:Use.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "Use"
    },
    {
      "id" : "Extension.extension:Use.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://gematik.de/fhir/dipag/ValueSet/dipag-abrechnungs-diagnose-use-vs"
      }
    },
    {
      "id" : "Extension.extension:Referenz",
      "path" : "Extension.extension",
      "sliceName" : "Referenz",
      "min" : 1,
      "max" : "*"
    },
    {
      "id" : "Extension.extension:Referenz.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:Referenz.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "Referenz"
    },
    {
      "id" : "Extension.extension:Referenz.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Condition",
        "http://hl7.org/fhir/StructureDefinition/Procedure"]
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://gematik.de/fhir/dipag/StructureDefinition/DiPagAbrechnungsDiagnoseProzedur"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
