# Digitale Patientenrechnung Rechnungsposition Behandlungsdatum - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Rechnungsposition Behandlungsdatum**

## Extension: Digitale Patientenrechnung Rechnungsposition Behandlungsdatum 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/StructureDefinition/DiPagRechnungspositionBehandlungsdatum | *Version*:1.1.0 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagRechnungspositionBehandlungsdatum |

In dieser Extension wird das Behandlungsdatum einer Rechnungsposition der Digitalen Patientenrechnung abgebildet.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Digitale Patientenrechnung Rechnungsposition](StructureDefinition-dipag-rechnungsposition.md)
* Examples for this Extension: [Bundle/BundleExample](Bundle-BundleExample.md), [Bundle/MusterrechnungBundle](Bundle-MusterrechnungBundle.md), [ChargeItem/0d1e2f3a-4b5c-6d7e-8f9a-0b1c2d3e4f5a](ChargeItem-0d1e2f3a-4b5c-6d7e-8f9a-0b1c2d3e4f5a.md), [ChargeItem/4d5e6f7a-8b9c-0d1e-2f3a-4b5c6d7e8f9a](ChargeItem-4d5e6f7a-8b9c-0d1e-2f3a-4b5c6d7e8f9a.md)... Show 10 more, [ChargeItem/5e6f7a8b-9c0d-1e2f-3a4b-5c6d7e8f9a0b](ChargeItem-5e6f7a8b-9c0d-1e2f-3a4b-5c6d7e8f9a0b.md), [ChargeItem/6f7a8b9c-0d1e-2f3a-4b5c-6d7e8f9a0b1c](ChargeItem-6f7a8b9c-0d1e-2f3a-4b5c-6d7e8f9a0b1c.md), [ChargeItem/7a8b9c0d-1e2f-3a4b-5c6d-7e8f9a0b1c2d](ChargeItem-7a8b9c0d-1e2f-3a4b-5c6d-7e8f9a0b1c2d.md), [ChargeItem/8b9c0d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e](ChargeItem-8b9c0d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e.md), [ChargeItem/9c0d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f](ChargeItem-9c0d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f.md), [ChargeItem/a5b6c7d8-6f7a-8b9c-3d4e-5f6a7b8c9d0e](ChargeItem-a5b6c7d8-6f7a-8b9c-3d4e-5f6a7b8c9d0e.md), [ChargeItem/b6c7d8e9-7a8b-9c0d-4e5f-6a7b8c9d0e1f](ChargeItem-b6c7d8e9-7a8b-9c0d-4e5f-6a7b8c9d0e1f.md), [ChargeItem/c7d8e9f0-8b9c-0d1e-5f6a-7b8c9d0e1f2a](ChargeItem-c7d8e9f0-8b9c-0d1e-5f6a-7b8c9d0e1f2a.md), [ChargeItem/d8e9f0a1-9c0d-1e2f-6a7b-8c9d0e1f2a3b](ChargeItem-d8e9f0a1-9c0d-1e2f-6a7b-8c9d0e1f2a3b.md) and [ChargeItem/e9f0a1b2-0d1e-2f3a-7b8c-9d0e1f2a3b4c](ChargeItem-e9f0a1b2-0d1e-2f3a-7b8c-9d0e1f2a3b4c.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.gematik.dipag|current/StructureDefinition/StructureDefinition-DiPagRechnungspositionBehandlungsdatum.json)

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

Simple Extension with the type date: In dieser Extension wird das Behandlungsdatum einer Rechnungsposition der Digitalen Patientenrechnung abgebildet.

 **Differential-AnsichtDifferential View** 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Snapshot-Ansicht** 

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple Extension with the type date: In dieser Extension wird das Behandlungsdatum einer Rechnungsposition der Digitalen Patientenrechnung abgebildet.

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-DiPagRechnungspositionBehandlungsdatum.csv), [Excel](../StructureDefinition-DiPagRechnungspositionBehandlungsdatum.xlsx), [Schematron](../StructureDefinition-DiPagRechnungspositionBehandlungsdatum.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DiPagRechnungspositionBehandlungsdatum",
  "url" : "https://gematik.de/fhir/dipag/StructureDefinition/DiPagRechnungspositionBehandlungsdatum",
  "version" : "1.1.0",
  "name" : "DiPagRechnungspositionBehandlungsdatum",
  "title" : "Digitale Patientenrechnung Rechnungsposition Behandlungsdatum",
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
  "description" : "In dieser Extension wird das Behandlungsdatum einer Rechnungsposition der Digitalen Patientenrechnung abgebildet.",
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
      "fixedUri" : "https://gematik.de/fhir/dipag/StructureDefinition/DiPagRechnungspositionBehandlungsdatum"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "date"
      }]
    }]
  }
}

```
