# Digitale Patientenrechnung BasedOn Extension - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung BasedOn Extension**

## Extension: Digitale Patientenrechnung BasedOn Extension 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/StructureDefinition/DiPagInvoiceBasedOn | *Version*:1.0.8 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagInvoiceBasedOn |

Fügt die Extension basedOn hinzu, die es in R4 bereits für Invoice gab (https://hl7.org/fhir/R4/extension-event-basedon.html) leider im aktuellen Extension Pack aber nicht mehr den Context Invoice hat.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Digitale Patientenrechnung Rechnung](StructureDefinition-dipag-rechnung.md)
* Examples for this Extension: [Bundle/BundleExample](Bundle-BundleExample.md) and [Invoice/c3d4e5f6-4b5c-6d7e-1f2a-3b4c5d6e7f8a](Invoice-c3d4e5f6-4b5c-6d7e-1f2a-3b4c5d6e7f8a.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.gematik.dipag|current/StructureDefinition/StructureDefinition-DiPagInvoiceBasedOn.json)

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

Simple Extension with the type Identifier: Fügt die Extension basedOn hinzu, die es in R4 bereits für Invoice gab (https://hl7.org/fhir/R4/extension-event-basedon.html) leider im aktuellen Extension Pack aber nicht mehr den Context Invoice hat.

 **Differential-AnsichtDifferential View** 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Snapshot-Ansicht** 

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple Extension with the type Identifier: Fügt die Extension basedOn hinzu, die es in R4 bereits für Invoice gab (https://hl7.org/fhir/R4/extension-event-basedon.html) leider im aktuellen Extension Pack aber nicht mehr den Context Invoice hat.

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-DiPagInvoiceBasedOn.csv), [Excel](../StructureDefinition-DiPagInvoiceBasedOn.xlsx), [Schematron](../StructureDefinition-DiPagInvoiceBasedOn.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DiPagInvoiceBasedOn",
  "url" : "https://gematik.de/fhir/dipag/StructureDefinition/DiPagInvoiceBasedOn",
  "version" : "1.0.8",
  "name" : "DiPagInvoiceBasedOn",
  "title" : "Digitale Patientenrechnung BasedOn Extension",
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
  "description" : "Fügt die Extension basedOn hinzu, die es in R4 bereits für Invoice gab (https://hl7.org/fhir/R4/extension-event-basedon.html) leider im aktuellen Extension Pack aber nicht mehr den Context Invoice hat.",
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
      "fixedUri" : "https://gematik.de/fhir/dipag/StructureDefinition/DiPagInvoiceBasedOn"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Identifier"
      }]
    }]
  }
}

```
