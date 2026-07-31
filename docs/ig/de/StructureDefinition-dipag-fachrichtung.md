# Digitale Patientenrechnung Extension Fachrichtung - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Extension Fachrichtung**

## Extension: Digitale Patientenrechnung Extension Fachrichtung 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/StructureDefinition/dipag-fachrichtung | *Version*:1.1.0 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagFachrichtung |

In dieser Extension wird die Fachrichtung der Leistungserbringer:in an der Rechnung abgebildet, u. a. zur Steuerung des Abrechnungsworkflows.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Digitale Patientenrechnung Rechnung](StructureDefinition-dipag-rechnung.md)
* Examples for this Extension: [Bundle/BundleExample](Bundle-BundleExample.md), [Bundle/MusterrechnungBundle](Bundle-MusterrechnungBundle.md), [Invoice/KfoMehrkosten1Rechnung](Invoice-KfoMehrkosten1Rechnung.md), [Invoice/KfoMehrkosten2Rechnung](Invoice-KfoMehrkosten2Rechnung.md)... Show 4 more, [Invoice/KfoMehrkosten3Rechnung](Invoice-KfoMehrkosten3Rechnung.md), [Invoice/KfoMehrkosten4Rechnung](Invoice-KfoMehrkosten4Rechnung.md), [Invoice/a0b1c2d3-e4f5-6a7b-8c9d-0e1f2a3b4c5d](Invoice-a0b1c2d3-e4f5-6a7b-8c9d-0e1f2a3b4c5d.md) and [Invoice/c3d4e5f6-4b5c-6d7e-1f2a-3b4c5d6e7f8a](Invoice-c3d4e5f6-4b5c-6d7e-1f2a-3b4c5d6e7f8a.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.gematik.dipag|current/StructureDefinition/StructureDefinition-dipag-fachrichtung.json)

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

Simple Extension with the type Coding: In dieser Extension wird die Fachrichtung der Leistungserbringer:in an der Rechnung abgebildet, u. a. zur Steuerung des Abrechnungsworkflows.

 **Differential-AnsichtDifferential View** 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Terminology Bindings (Differential)

 **Snapshot-Ansicht** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple Extension with the type Coding: In dieser Extension wird die Fachrichtung der Leistungserbringer:in an der Rechnung abgebildet, u. a. zur Steuerung des Abrechnungsworkflows.

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-dipag-fachrichtung.csv), [Excel](../StructureDefinition-dipag-fachrichtung.xlsx), [Schematron](../StructureDefinition-dipag-fachrichtung.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "dipag-fachrichtung",
  "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-fachrichtung",
  "version" : "1.1.0",
  "name" : "DiPagFachrichtung",
  "title" : "Digitale Patientenrechnung Extension Fachrichtung",
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
  "description" : "In dieser Extension wird die Fachrichtung der Leistungserbringer:in an der Rechnung abgebildet, u. a. zur Steuerung des Abrechnungsworkflows.",
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
      "path" : "Extension"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-fachrichtung"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ihe-d.de/ValueSets/IHEXDSpracticeSettingCode"
      }
    }]
  }
}

```
