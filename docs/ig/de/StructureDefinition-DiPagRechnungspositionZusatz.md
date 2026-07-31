# Digitale Patientenrechnung Rechnungsposition Zusatz Extension - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Rechnungsposition Zusatz Extension**

## Extension: Digitale Patientenrechnung Rechnungsposition Zusatz Extension 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/StructureDefinition/DiPagRechnungspositionZusatz | *Version*:1.1.0 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagRechnungspositionZusatz |

In dieser Extension wird der Zusatz zu einer Rechnungsposition im Kontext der Digitalen Patientenrechnung abgebildet.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Digitale Patientenrechnung Rechnungsposition](StructureDefinition-dipag-rechnungsposition.md)
* Examples for this Extension: [Bundle/BundleExample](Bundle-BundleExample.md), [ChargeItem/KfoMehrkosten1-P1](ChargeItem-KfoMehrkosten1-P1.md), [ChargeItem/KfoMehrkosten1-P3](ChargeItem-KfoMehrkosten1-P3.md), [ChargeItem/KfoMehrkosten1-P4](ChargeItem-KfoMehrkosten1-P4.md)... Show 12 more, [ChargeItem/KfoMehrkosten1-P6](ChargeItem-KfoMehrkosten1-P6.md), [ChargeItem/KfoMehrkosten1-P8](ChargeItem-KfoMehrkosten1-P8.md), [ChargeItem/KfoMehrkosten1-P9](ChargeItem-KfoMehrkosten1-P9.md), [ChargeItem/KfoMehrkosten2-P1](ChargeItem-KfoMehrkosten2-P1.md), [ChargeItem/KfoMehrkosten2-P3](ChargeItem-KfoMehrkosten2-P3.md), [ChargeItem/KfoMehrkosten2-P5](ChargeItem-KfoMehrkosten2-P5.md), [ChargeItem/KfoMehrkosten2-P6](ChargeItem-KfoMehrkosten2-P6.md), [ChargeItem/KfoMehrkosten2-P8](ChargeItem-KfoMehrkosten2-P8.md), [ChargeItem/KfoMehrkosten4-P1](ChargeItem-KfoMehrkosten4-P1.md), [ChargeItem/KfoMehrkosten4-P2](ChargeItem-KfoMehrkosten4-P2.md), [ChargeItem/a5b6c7d8-6f7a-8b9c-3d4e-5f6a7b8c9d0e](ChargeItem-a5b6c7d8-6f7a-8b9c-3d4e-5f6a7b8c9d0e.md) and [ChargeItem/b6c7d8e9-7a8b-9c0d-4e5f-6a7b8c9d0e1f](ChargeItem-b6c7d8e9-7a8b-9c0d-4e5f-6a7b8c9d0e1f.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.gematik.dipag|current/StructureDefinition/StructureDefinition-DiPagRechnungspositionZusatz.json)

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

Simple Extension with the type Coding: In dieser Extension wird der Zusatz zu einer Rechnungsposition im Kontext der Digitalen Patientenrechnung abgebildet.

 **Differential-AnsichtDifferential View** 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Terminology Bindings (Differential)

 **Snapshot-Ansicht** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple Extension with the type Coding: In dieser Extension wird der Zusatz zu einer Rechnungsposition im Kontext der Digitalen Patientenrechnung abgebildet.

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-DiPagRechnungspositionZusatz.csv), [Excel](../StructureDefinition-DiPagRechnungspositionZusatz.xlsx), [Schematron](../StructureDefinition-DiPagRechnungspositionZusatz.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DiPagRechnungspositionZusatz",
  "url" : "https://gematik.de/fhir/dipag/StructureDefinition/DiPagRechnungspositionZusatz",
  "version" : "1.1.0",
  "name" : "DiPagRechnungspositionZusatz",
  "title" : "Digitale Patientenrechnung Rechnungsposition Zusatz Extension",
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
  "description" : "In dieser Extension wird der Zusatz zu einer Rechnungsposition im Kontext der Digitalen Patientenrechnung abgebildet.",
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
    "expression" : "ChargeItem"
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
      "fixedUri" : "https://gematik.de/fhir/dipag/StructureDefinition/DiPagRechnungspositionZusatz"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://gematik.de/fhir/dipag/ValueSet/dipag-rechnungsposition-zusatz-VS"
      }
    }]
  }
}

```
