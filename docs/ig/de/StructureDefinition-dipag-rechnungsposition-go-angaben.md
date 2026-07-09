# Digitale Patientenrechnung Angaben bei Gebührenordnungen bei einer Rechnungsposition - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Angaben bei Gebührenordnungen bei einer Rechnungsposition**

## Extension: Digitale Patientenrechnung Angaben bei Gebührenordnungen bei einer Rechnungsposition 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition-go-angaben | *Version*:1.0.8 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagRechnungspositionGOAngaben |

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Digitale Patientenrechnung Rechnungsposition](StructureDefinition-dipag-rechnungsposition.md)
* Examples for this Extension: [Bundle/BundleExample](Bundle-BundleExample.md), [Bundle/MusterrechnungBundle](Bundle-MusterrechnungBundle.md), [ChargeItem/0d1e2f3a-4b5c-6d7e-8f9a-0b1c2d3e4f5a](ChargeItem-0d1e2f3a-4b5c-6d7e-8f9a-0b1c2d3e4f5a.md), [ChargeItem/4d5e6f7a-8b9c-0d1e-2f3a-4b5c6d7e8f9a](ChargeItem-4d5e6f7a-8b9c-0d1e-2f3a-4b5c6d7e8f9a.md)... Show 31 more, [ChargeItem/5e6f7a8b-9c0d-1e2f-3a4b-5c6d7e8f9a0b](ChargeItem-5e6f7a8b-9c0d-1e2f-3a4b-5c6d7e8f9a0b.md), [ChargeItem/6f7a8b9c-0d1e-2f3a-4b5c-6d7e8f9a0b1c](ChargeItem-6f7a8b9c-0d1e-2f3a-4b5c-6d7e8f9a0b1c.md), [ChargeItem/7a8b9c0d-1e2f-3a4b-5c6d-7e8f9a0b1c2d](ChargeItem-7a8b9c0d-1e2f-3a4b-5c6d-7e8f9a0b1c2d.md), [ChargeItem/8b9c0d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e](ChargeItem-8b9c0d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e.md), [ChargeItem/9c0d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f](ChargeItem-9c0d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f.md), [ChargeItem/KfoMehrkosten1-P1](ChargeItem-KfoMehrkosten1-P1.md), [ChargeItem/KfoMehrkosten1-P10](ChargeItem-KfoMehrkosten1-P10.md), [ChargeItem/KfoMehrkosten1-P2](ChargeItem-KfoMehrkosten1-P2.md), [ChargeItem/KfoMehrkosten1-P3](ChargeItem-KfoMehrkosten1-P3.md), [ChargeItem/KfoMehrkosten1-P4](ChargeItem-KfoMehrkosten1-P4.md), [ChargeItem/KfoMehrkosten1-P5](ChargeItem-KfoMehrkosten1-P5.md), [ChargeItem/KfoMehrkosten1-P6](ChargeItem-KfoMehrkosten1-P6.md), [ChargeItem/KfoMehrkosten1-P7](ChargeItem-KfoMehrkosten1-P7.md), [ChargeItem/KfoMehrkosten1-P8](ChargeItem-KfoMehrkosten1-P8.md), [ChargeItem/KfoMehrkosten1-P9](ChargeItem-KfoMehrkosten1-P9.md), [ChargeItem/KfoMehrkosten2-P1](ChargeItem-KfoMehrkosten2-P1.md), [ChargeItem/KfoMehrkosten2-P2](ChargeItem-KfoMehrkosten2-P2.md), [ChargeItem/KfoMehrkosten2-P3](ChargeItem-KfoMehrkosten2-P3.md), [ChargeItem/KfoMehrkosten2-P4](ChargeItem-KfoMehrkosten2-P4.md), [ChargeItem/KfoMehrkosten2-P5](ChargeItem-KfoMehrkosten2-P5.md), [ChargeItem/KfoMehrkosten2-P6](ChargeItem-KfoMehrkosten2-P6.md), [ChargeItem/KfoMehrkosten2-P7](ChargeItem-KfoMehrkosten2-P7.md), [ChargeItem/KfoMehrkosten2-P8](ChargeItem-KfoMehrkosten2-P8.md), [ChargeItem/KfoMehrkosten3-P1](ChargeItem-KfoMehrkosten3-P1.md), [ChargeItem/KfoMehrkosten3-P2](ChargeItem-KfoMehrkosten3-P2.md), [ChargeItem/KfoMehrkosten3-P3](ChargeItem-KfoMehrkosten3-P3.md), [ChargeItem/KfoMehrkosten3-P4](ChargeItem-KfoMehrkosten3-P4.md), [ChargeItem/KfoMehrkosten4-P1](ChargeItem-KfoMehrkosten4-P1.md), [ChargeItem/KfoMehrkosten4-P2](ChargeItem-KfoMehrkosten4-P2.md), [ChargeItem/a5b6c7d8-6f7a-8b9c-3d4e-5f6a7b8c9d0e](ChargeItem-a5b6c7d8-6f7a-8b9c-3d4e-5f6a7b8c9d0e.md) and [ChargeItem/b6c7d8e9-7a8b-9c0d-4e5f-6a7b8c9d0e1f](ChargeItem-b6c7d8e9-7a8b-9c0d-4e5f-6a7b8c9d0e1f.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.gematik.dipag|current/StructureDefinition/StructureDefinition-dipag-rechnungsposition-go-angaben.json)

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

Complex Extension: 

 **Differential-AnsichtDifferential View** 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Terminology Bindings (Differential)

 **Snapshot-Ansicht** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Complex Extension: 

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-dipag-rechnungsposition-go-angaben.csv), [Excel](../StructureDefinition-dipag-rechnungsposition-go-angaben.xlsx), [Schematron](../StructureDefinition-dipag-rechnungsposition-go-angaben.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "dipag-rechnungsposition-go-angaben",
  "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition-go-angaben",
  "version" : "1.0.8",
  "name" : "DiPagRechnungspositionGOAngaben",
  "title" : "Digitale Patientenrechnung Angaben bei Gebührenordnungen bei einer Rechnungsposition",
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
      "id" : "Extension.extension:Einfachsatz",
      "path" : "Extension.extension",
      "sliceName" : "Einfachsatz",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:Einfachsatz.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:Einfachsatz.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "Einfachsatz"
    },
    {
      "id" : "Extension.extension:Einfachsatz.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Money"
      }]
    },
    {
      "id" : "Extension.extension:Einfachsatz.value[x].currency",
      "path" : "Extension.extension.value[x].currency",
      "patternCode" : "EUR"
    },
    {
      "id" : "Extension.extension:Punktzahl",
      "path" : "Extension.extension",
      "sliceName" : "Punktzahl",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:Punktzahl.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:Punktzahl.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "Punktzahl"
    },
    {
      "id" : "Extension.extension:Punktzahl.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "Extension.extension:Faktor",
      "path" : "Extension.extension",
      "sliceName" : "Faktor",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:Faktor.extension:Value",
      "path" : "Extension.extension.extension",
      "sliceName" : "Value",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:Faktor.extension:Value.extension",
      "path" : "Extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:Faktor.extension:Value.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "Value"
    },
    {
      "id" : "Extension.extension:Faktor.extension:Value.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "Extension.extension:Faktor.extension:FaktorGrund",
      "path" : "Extension.extension.extension",
      "sliceName" : "FaktorGrund",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:Faktor.extension:FaktorGrund.extension",
      "path" : "Extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:Faktor.extension:FaktorGrund.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "FaktorGrund"
    },
    {
      "id" : "Extension.extension:Faktor.extension:FaktorGrund.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://gematik.de/fhir/dipag/ValueSet/dipag-rechnungsposition-faktor-gruende-auspraegungen-VS"
      }
    },
    {
      "id" : "Extension.extension:Faktor.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "Faktor"
    },
    {
      "id" : "Extension.extension:Faktor.value[x]",
      "path" : "Extension.extension.value[x]",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:FaktorGrund",
      "path" : "Extension.extension",
      "sliceName" : "FaktorGrund",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:FaktorGrund.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "FaktorGrund"
    },
    {
      "id" : "Extension.extension:MinderungP6GOAE",
      "path" : "Extension.extension",
      "sliceName" : "MinderungP6GOAE",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:MinderungP6GOAE.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:MinderungP6GOAE.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "MinderungP6GOAE"
    },
    {
      "id" : "Extension.extension:MinderungP6GOAE.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Extension.extension:MinderungP6GOAE.value[x].unit",
      "path" : "Extension.extension.value[x].unit",
      "patternString" : "%"
    },
    {
      "id" : "Extension.extension:MinderungP6GOAE.value[x].system",
      "path" : "Extension.extension.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Extension.extension:MinderungP6GOAE.value[x].code",
      "path" : "Extension.extension.value[x].code",
      "patternCode" : "%"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition-go-angaben"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
