# Digitale Patientenrechnung Extension Behandlungsart - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Extension Behandlungsart**

## Extension: Digitale Patientenrechnung Extension Behandlungsart 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/StructureDefinition/dipag-behandlungsart | *Version*:1.1.0 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagBehandlungsart |

In dieser Extension wird die Behandlungsart einer Rechnung abgebildet, z. B. ambulant.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Digitale Patientenrechnung Dokumentenmetadaten Intern](StructureDefinition-dipag-dokumentenmetadaten-intern.md) and [Digitale Patientenrechnung Rechnung](StructureDefinition-dipag-rechnung.md)
* Examples for this Extension: [Bundle/BulkRetrieveExampleOutput](Bundle-BulkRetrieveExampleOutput.md), [Bundle/BundleExample](Bundle-BundleExample.md), [Bundle/MusterrechnungBundle](Bundle-MusterrechnungBundle.md), [DocumentReference/BeispielDocumentReferenceRechnungRetrieve](DocumentReference-BeispielDocumentReferenceRechnungRetrieve.md)... Show 7 more, [Invoice/KfoMehrkosten1Rechnung](Invoice-KfoMehrkosten1Rechnung.md), [Invoice/KfoMehrkosten2Rechnung](Invoice-KfoMehrkosten2Rechnung.md), [Invoice/KfoMehrkosten3Rechnung](Invoice-KfoMehrkosten3Rechnung.md), [Invoice/KfoMehrkosten4Rechnung](Invoice-KfoMehrkosten4Rechnung.md), [Invoice/a0b1c2d3-e4f5-6a7b-8c9d-0e1f2a3b4c5d](Invoice-a0b1c2d3-e4f5-6a7b-8c9d-0e1f2a3b4c5d.md), [Invoice/c3d4e5f6-4b5c-6d7e-1f2a-3b4c5d6e7f8a](Invoice-c3d4e5f6-4b5c-6d7e-1f2a-3b4c5d6e7f8a.md) and [Parameters/BeispielParameterRetrieveOutput](Parameters-BeispielParameterRetrieveOutput.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.gematik.dipag|current/StructureDefinition/StructureDefinition-dipag-behandlungsart.json)

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

Simple Extension with the type Coding: In dieser Extension wird die Behandlungsart einer Rechnung abgebildet, z. B. ambulant.

 **Differential-AnsichtDifferential View** 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Terminology Bindings (Differential)

 **Snapshot-Ansicht** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple Extension with the type Coding: In dieser Extension wird die Behandlungsart einer Rechnung abgebildet, z. B. ambulant.

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-dipag-behandlungsart.csv), [Excel](../StructureDefinition-dipag-behandlungsart.xlsx), [Schematron](../StructureDefinition-dipag-behandlungsart.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "dipag-behandlungsart",
  "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-behandlungsart",
  "version" : "1.1.0",
  "name" : "DiPagBehandlungsart",
  "title" : "Digitale Patientenrechnung Extension Behandlungsart",
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
  "description" : "In dieser Extension wird die Behandlungsart einer Rechnung abgebildet, z. B. ambulant.",
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
  },
  {
    "type" : "element",
    "expression" : "DocumentReference"
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
      "fixedUri" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-behandlungsart"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://gematik.de/fhir/dipag/ValueSet/dipag-rechnung-behandlungsart-vs"
      }
    }]
  }
}

```
