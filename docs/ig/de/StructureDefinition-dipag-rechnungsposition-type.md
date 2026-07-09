# Digitale Patientenrechnung Typ der Rechnungsposition Extension - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Typ der Rechnungsposition Extension**

## Extension: Digitale Patientenrechnung Typ der Rechnungsposition Extension 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition-type | *Version*:1.0.8 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagRechnungspositionType |

In dieser Extension wird der Typ einer Rechnungsposition im Kontext der Digitalen Patientenrechnung abgebildet.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Digitale Patientenrechnung Rechnungsposition](StructureDefinition-dipag-rechnungsposition.md)
* Examples for this Extension: [Bundle/BundleExample](Bundle-BundleExample.md), [Bundle/MusterrechnungBundle](Bundle-MusterrechnungBundle.md), [ChargeItem/0d1e2f3a-4b5c-6d7e-8f9a-0b1c2d3e4f5a](ChargeItem-0d1e2f3a-4b5c-6d7e-8f9a-0b1c2d3e4f5a.md), [ChargeItem/4d5e6f7a-8b9c-0d1e-2f3a-4b5c6d7e8f9a](ChargeItem-4d5e6f7a-8b9c-0d1e-2f3a-4b5c6d7e8f9a.md)... Show 45 more, [ChargeItem/5e6f7a8b-9c0d-1e2f-3a4b-5c6d7e8f9a0b](ChargeItem-5e6f7a8b-9c0d-1e2f-3a4b-5c6d7e8f9a0b.md), [ChargeItem/6f7a8b9c-0d1e-2f3a-4b5c-6d7e8f9a0b1c](ChargeItem-6f7a8b9c-0d1e-2f3a-4b5c-6d7e8f9a0b1c.md), [ChargeItem/7a8b9c0d-1e2f-3a4b-5c6d-7e8f9a0b1c2d](ChargeItem-7a8b9c0d-1e2f-3a4b-5c6d-7e8f9a0b1c2d.md), [ChargeItem/8b9c0d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e](ChargeItem-8b9c0d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e.md), [ChargeItem/9c0d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f](ChargeItem-9c0d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f.md), [ChargeItem/KfoMehrkosten1-P1](ChargeItem-KfoMehrkosten1-P1.md), [ChargeItem/KfoMehrkosten1-P10](ChargeItem-KfoMehrkosten1-P10.md), [ChargeItem/KfoMehrkosten1-P2](ChargeItem-KfoMehrkosten1-P2.md), [ChargeItem/KfoMehrkosten1-P3](ChargeItem-KfoMehrkosten1-P3.md), [ChargeItem/KfoMehrkosten1-P4](ChargeItem-KfoMehrkosten1-P4.md), [ChargeItem/KfoMehrkosten1-P5](ChargeItem-KfoMehrkosten1-P5.md), [ChargeItem/KfoMehrkosten1-P6](ChargeItem-KfoMehrkosten1-P6.md), [ChargeItem/KfoMehrkosten1-P7](ChargeItem-KfoMehrkosten1-P7.md), [ChargeItem/KfoMehrkosten1-P8](ChargeItem-KfoMehrkosten1-P8.md), [ChargeItem/KfoMehrkosten1-P9](ChargeItem-KfoMehrkosten1-P9.md), [ChargeItem/KfoMehrkosten2-P1](ChargeItem-KfoMehrkosten2-P1.md), [ChargeItem/KfoMehrkosten2-P2](ChargeItem-KfoMehrkosten2-P2.md), [ChargeItem/KfoMehrkosten2-P3](ChargeItem-KfoMehrkosten2-P3.md), [ChargeItem/KfoMehrkosten2-P4](ChargeItem-KfoMehrkosten2-P4.md), [ChargeItem/KfoMehrkosten2-P5](ChargeItem-KfoMehrkosten2-P5.md), [ChargeItem/KfoMehrkosten2-P6](ChargeItem-KfoMehrkosten2-P6.md), [ChargeItem/KfoMehrkosten2-P7](ChargeItem-KfoMehrkosten2-P7.md), [ChargeItem/KfoMehrkosten2-P8](ChargeItem-KfoMehrkosten2-P8.md), [ChargeItem/KfoMehrkosten3-P1](ChargeItem-KfoMehrkosten3-P1.md), [ChargeItem/KfoMehrkosten3-P10](ChargeItem-KfoMehrkosten3-P10.md), [ChargeItem/KfoMehrkosten3-P11](ChargeItem-KfoMehrkosten3-P11.md), [ChargeItem/KfoMehrkosten3-P12](ChargeItem-KfoMehrkosten3-P12.md), [ChargeItem/KfoMehrkosten3-P13](ChargeItem-KfoMehrkosten3-P13.md), [ChargeItem/KfoMehrkosten3-P14](ChargeItem-KfoMehrkosten3-P14.md), [ChargeItem/KfoMehrkosten3-P15](ChargeItem-KfoMehrkosten3-P15.md), [ChargeItem/KfoMehrkosten3-P2](ChargeItem-KfoMehrkosten3-P2.md), [ChargeItem/KfoMehrkosten3-P3](ChargeItem-KfoMehrkosten3-P3.md), [ChargeItem/KfoMehrkosten3-P4](ChargeItem-KfoMehrkosten3-P4.md), [ChargeItem/KfoMehrkosten3-P5](ChargeItem-KfoMehrkosten3-P5.md), [ChargeItem/KfoMehrkosten3-P6](ChargeItem-KfoMehrkosten3-P6.md), [ChargeItem/KfoMehrkosten3-P7](ChargeItem-KfoMehrkosten3-P7.md), [ChargeItem/KfoMehrkosten3-P8](ChargeItem-KfoMehrkosten3-P8.md), [ChargeItem/KfoMehrkosten3-P9](ChargeItem-KfoMehrkosten3-P9.md), [ChargeItem/KfoMehrkosten4-P1](ChargeItem-KfoMehrkosten4-P1.md), [ChargeItem/KfoMehrkosten4-P2](ChargeItem-KfoMehrkosten4-P2.md), [ChargeItem/a5b6c7d8-6f7a-8b9c-3d4e-5f6a7b8c9d0e](ChargeItem-a5b6c7d8-6f7a-8b9c-3d4e-5f6a7b8c9d0e.md), [ChargeItem/b6c7d8e9-7a8b-9c0d-4e5f-6a7b8c9d0e1f](ChargeItem-b6c7d8e9-7a8b-9c0d-4e5f-6a7b8c9d0e1f.md), [ChargeItem/c7d8e9f0-8b9c-0d1e-5f6a-7b8c9d0e1f2a](ChargeItem-c7d8e9f0-8b9c-0d1e-5f6a-7b8c9d0e1f2a.md), [ChargeItem/d8e9f0a1-9c0d-1e2f-6a7b-8c9d0e1f2a3b](ChargeItem-d8e9f0a1-9c0d-1e2f-6a7b-8c9d0e1f2a3b.md) and [ChargeItem/e9f0a1b2-0d1e-2f3a-7b8c-9d0e1f2a3b4c](ChargeItem-e9f0a1b2-0d1e-2f3a-7b8c-9d0e1f2a3b4c.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.gematik.dipag|current/StructureDefinition/StructureDefinition-dipag-rechnungsposition-type.json)

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

Simple Extension with the type Coding: In dieser Extension wird der Typ einer Rechnungsposition im Kontext der Digitalen Patientenrechnung abgebildet.

 **Differential-AnsichtDifferential View** 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Terminology Bindings (Differential)

 **Snapshot-Ansicht** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple Extension with the type Coding: In dieser Extension wird der Typ einer Rechnungsposition im Kontext der Digitalen Patientenrechnung abgebildet.

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-dipag-rechnungsposition-type.csv), [Excel](../StructureDefinition-dipag-rechnungsposition-type.xlsx), [Schematron](../StructureDefinition-dipag-rechnungsposition-type.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "dipag-rechnungsposition-type",
  "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition-type",
  "version" : "1.0.8",
  "name" : "DiPagRechnungspositionType",
  "title" : "Digitale Patientenrechnung Typ der Rechnungsposition Extension",
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
  "description" : "In dieser Extension wird der Typ einer Rechnungsposition im Kontext der Digitalen Patientenrechnung abgebildet.",
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
      "fixedUri" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition-type"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://gematik.de/fhir/dipag/ValueSet/dipag-chargeitem-type-VS"
      }
    }]
  }
}

```
