# Digitale Patientenrechnung Wegegeld/Reiseentschädigung Extension - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Wegegeld/Reiseentschädigung Extension**

## Extension: Digitale Patientenrechnung Wegegeld/Reiseentschädigung Extension 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/StructureDefinition/dipag-wegegeld-reiseentschaedigung | *Version*:1.0.8 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagWegegeldReiseentschaedigung |

In dieser Extension werden Wegegeld (bis 25 km) und Reiseentschädigung (ab 25 km) zu einer Rechnungsposition abgebildet, inklusive Entfernung, Abwesenheit, Übernachtungskosten und Verkehrsmittel.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Digitale Patientenrechnung Rechnungsposition](StructureDefinition-dipag-rechnungsposition.md)
* Examples for this Extension: [Bundle/BundleExample](Bundle-BundleExample.md), [ChargeItem/a5b6c7d8-6f7a-8b9c-3d4e-5f6a7b8c9d0e](ChargeItem-a5b6c7d8-6f7a-8b9c-3d4e-5f6a7b8c9d0e.md) and [ChargeItem/e9f0a1b2-0d1e-2f3a-7b8c-9d0e1f2a3b4c](ChargeItem-e9f0a1b2-0d1e-2f3a-7b8c-9d0e1f2a3b4c.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.gematik.dipag|current/StructureDefinition/StructureDefinition-dipag-wegegeld-reiseentschaedigung.json)

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

Complex Extension: In dieser Extension werden Wegegeld (bis 25 km) und Reiseentschädigung (ab 25 km) zu einer Rechnungsposition abgebildet, inklusive Entfernung, Abwesenheit, Übernachtungskosten und Verkehrsmittel.

 **Differential-AnsichtDifferential View** 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Terminology Bindings (Differential)

 **Snapshot-Ansicht** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Complex Extension: In dieser Extension werden Wegegeld (bis 25 km) und Reiseentschädigung (ab 25 km) zu einer Rechnungsposition abgebildet, inklusive Entfernung, Abwesenheit, Übernachtungskosten und Verkehrsmittel.

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-dipag-wegegeld-reiseentschaedigung.csv), [Excel](../StructureDefinition-dipag-wegegeld-reiseentschaedigung.xlsx), [Schematron](../StructureDefinition-dipag-wegegeld-reiseentschaedigung.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "dipag-wegegeld-reiseentschaedigung",
  "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-wegegeld-reiseentschaedigung",
  "version" : "1.0.8",
  "name" : "DiPagWegegeldReiseentschaedigung",
  "title" : "Digitale Patientenrechnung Wegegeld/Reiseentschädigung Extension",
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
  "description" : "In dieser Extension werden Wegegeld (bis 25 km) und Reiseentschädigung (ab 25 km) zu einer Rechnungsposition abgebildet, inklusive Entfernung, Abwesenheit, Übernachtungskosten und Verkehrsmittel.",
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
      "id" : "Extension.extension:Wegegeld",
      "path" : "Extension.extension",
      "sliceName" : "Wegegeld",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:Wegegeld.extension:Entfernung",
      "path" : "Extension.extension.extension",
      "sliceName" : "Entfernung",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:Wegegeld.extension:Entfernung.extension",
      "path" : "Extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:Wegegeld.extension:Entfernung.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "Entfernung"
    },
    {
      "id" : "Extension.extension:Wegegeld.extension:Entfernung.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Extension.extension:Wegegeld.extension:Entfernung.value[x].unit",
      "path" : "Extension.extension.extension.value[x].unit",
      "patternString" : "km"
    },
    {
      "id" : "Extension.extension:Wegegeld.extension:Entfernung.value[x].system",
      "path" : "Extension.extension.extension.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Extension.extension:Wegegeld.extension:Entfernung.value[x].code",
      "path" : "Extension.extension.extension.value[x].code",
      "patternCode" : "km"
    },
    {
      "id" : "Extension.extension:Wegegeld.extension:Nacht",
      "path" : "Extension.extension.extension",
      "sliceName" : "Nacht",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:Wegegeld.extension:Nacht.extension",
      "path" : "Extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:Wegegeld.extension:Nacht.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "Nacht"
    },
    {
      "id" : "Extension.extension:Wegegeld.extension:Nacht.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Extension.extension:Wegegeld.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "Wegegeld"
    },
    {
      "id" : "Extension.extension:Wegegeld.value[x]",
      "path" : "Extension.extension.value[x]",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:Reiseentschaedigung",
      "path" : "Extension.extension",
      "sliceName" : "Reiseentschaedigung",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:Reiseentschaedigung.extension:Abwesenheit",
      "path" : "Extension.extension.extension",
      "sliceName" : "Abwesenheit",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:Reiseentschaedigung.extension:Abwesenheit.extension",
      "path" : "Extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:Reiseentschaedigung.extension:Abwesenheit.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "Abwesenheit"
    },
    {
      "id" : "Extension.extension:Reiseentschaedigung.extension:Abwesenheit.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Extension.extension:Reiseentschaedigung.extension:Abwesenheit.value[x].unit",
      "path" : "Extension.extension.extension.value[x].unit",
      "patternString" : "h"
    },
    {
      "id" : "Extension.extension:Reiseentschaedigung.extension:Abwesenheit.value[x].system",
      "path" : "Extension.extension.extension.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Extension.extension:Reiseentschaedigung.extension:Abwesenheit.value[x].code",
      "path" : "Extension.extension.extension.value[x].code",
      "patternCode" : "h"
    },
    {
      "id" : "Extension.extension:Reiseentschaedigung.extension:Entfernung",
      "path" : "Extension.extension.extension",
      "sliceName" : "Entfernung",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:Reiseentschaedigung.extension:Entfernung.extension",
      "path" : "Extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:Reiseentschaedigung.extension:Entfernung.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "Entfernung"
    },
    {
      "id" : "Extension.extension:Reiseentschaedigung.extension:Entfernung.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Extension.extension:Reiseentschaedigung.extension:Entfernung.value[x].unit",
      "path" : "Extension.extension.extension.value[x].unit",
      "patternString" : "km"
    },
    {
      "id" : "Extension.extension:Reiseentschaedigung.extension:Entfernung.value[x].system",
      "path" : "Extension.extension.extension.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Extension.extension:Reiseentschaedigung.extension:Entfernung.value[x].code",
      "path" : "Extension.extension.extension.value[x].code",
      "patternCode" : "km"
    },
    {
      "id" : "Extension.extension:Reiseentschaedigung.extension:Uebernachtung",
      "path" : "Extension.extension.extension",
      "sliceName" : "Uebernachtung",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:Reiseentschaedigung.extension:Uebernachtung.extension",
      "path" : "Extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:Reiseentschaedigung.extension:Uebernachtung.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "Uebernachtung"
    },
    {
      "id" : "Extension.extension:Reiseentschaedigung.extension:Uebernachtung.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "type" : [{
        "code" : "Money"
      }]
    },
    {
      "id" : "Extension.extension:Reiseentschaedigung.extension:Uebernachtung.value[x].currency",
      "path" : "Extension.extension.extension.value[x].currency",
      "patternCode" : "EUR"
    },
    {
      "id" : "Extension.extension:Reiseentschaedigung.extension:Verkehrsmittel",
      "path" : "Extension.extension.extension",
      "sliceName" : "Verkehrsmittel",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:Reiseentschaedigung.extension:Verkehrsmittel.extension",
      "path" : "Extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:Reiseentschaedigung.extension:Verkehrsmittel.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "Verkehrsmittel"
    },
    {
      "id" : "Extension.extension:Reiseentschaedigung.extension:Verkehrsmittel.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://gematik.de/fhir/dipag/ValueSet/DiPagVerkehrsmittel"
      }
    },
    {
      "id" : "Extension.extension:Reiseentschaedigung.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "Reiseentschaedigung"
    },
    {
      "id" : "Extension.extension:Reiseentschaedigung.value[x]",
      "path" : "Extension.extension.value[x]",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-wegegeld-reiseentschaedigung"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
