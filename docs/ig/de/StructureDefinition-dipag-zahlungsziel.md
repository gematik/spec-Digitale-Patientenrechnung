# Digitale Patientenrechnung Zahlungsziel - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Zahlungsziel**

## Extension: Digitale Patientenrechnung Zahlungsziel 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/StructureDefinition/dipag-zahlungsziel | *Version*:1.0.8 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagZahlungsziel |

In dieser Extension wird das Zahlungsziel (Datum) einer Rechnung abgebildet.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Digitale Patientenrechnung Dokumentenmetadaten Intern](StructureDefinition-dipag-dokumentenmetadaten-intern.md) and [Digitale Patientenrechnung Rechnung](StructureDefinition-dipag-rechnung.md)
* Examples for this Extension: [Bundle/BulkRetrieveExampleOutput](Bundle-BulkRetrieveExampleOutput.md), [Bundle/BundleExample](Bundle-BundleExample.md), [Bundle/ExampleR5Bundle](Bundle-ExampleR5Bundle.md), [Bundle/MusterrechnungBundle](Bundle-MusterrechnungBundle.md)... Show 9 more, [DocumentReference/BeispielDocumentReferenceRechnungRetrieve](DocumentReference-BeispielDocumentReferenceRechnungRetrieve.md), [DocumentReference/ExampleR5DocumentReference](DocumentReference-ExampleR5DocumentReference.md), [Invoice/KfoMehrkosten1Rechnung](Invoice-KfoMehrkosten1Rechnung.md), [Invoice/KfoMehrkosten2Rechnung](Invoice-KfoMehrkosten2Rechnung.md), [Invoice/KfoMehrkosten3Rechnung](Invoice-KfoMehrkosten3Rechnung.md), [Invoice/KfoMehrkosten4Rechnung](Invoice-KfoMehrkosten4Rechnung.md), [Invoice/a0b1c2d3-e4f5-6a7b-8c9d-0e1f2a3b4c5d](Invoice-a0b1c2d3-e4f5-6a7b-8c9d-0e1f2a3b4c5d.md), [Invoice/c3d4e5f6-4b5c-6d7e-1f2a-3b4c5d6e7f8a](Invoice-c3d4e5f6-4b5c-6d7e-1f2a-3b4c5d6e7f8a.md) and [Parameters/BeispielParameterRetrieveOutput](Parameters-BeispielParameterRetrieveOutput.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.gematik.dipag|current/StructureDefinition/StructureDefinition-dipag-zahlungsziel.json)

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

Simple Extension with the type date: In dieser Extension wird das Zahlungsziel (Datum) einer Rechnung abgebildet.

 **Differential-AnsichtDifferential View** 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Snapshot-Ansicht** 

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple Extension with the type date: In dieser Extension wird das Zahlungsziel (Datum) einer Rechnung abgebildet.

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-dipag-zahlungsziel.csv), [Excel](../StructureDefinition-dipag-zahlungsziel.xlsx), [Schematron](../StructureDefinition-dipag-zahlungsziel.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "dipag-zahlungsziel",
  "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-zahlungsziel",
  "version" : "1.0.8",
  "name" : "DiPagZahlungsziel",
  "title" : "Digitale Patientenrechnung Zahlungsziel",
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
  "description" : "In dieser Extension wird das Zahlungsziel (Datum) einer Rechnung abgebildet.",
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
    "expression" : "Invoice.paymentTerms"
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
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-zahlungsziel"
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
