# Digitale Patientenrechnung DocumentReference Rechnungsdatum - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung DocumentReference Rechnungsdatum**

## Extension: Digitale Patientenrechnung DocumentReference Rechnungsdatum 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/StructureDefinition/dipag-documentreference-rechnungsdatum | *Version*:1.0.8 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagDocumentReferenceRechnungsdatum |

In dieser Extension wird das Rechnungsdatum an den Dokumentenmetadaten abgebildet. Es wird durch den Fachdienst aus den strukturierten Rechnungsinhalten extrahiert.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Digitale Patientenrechnung Dokumentenmetadaten Intern](StructureDefinition-dipag-dokumentenmetadaten-intern.md)
* Examples for this Extension: [Bundle/BulkRetrieveExampleOutput](Bundle-BulkRetrieveExampleOutput.md), [Bundle/ExampleR5Bundle](Bundle-ExampleR5Bundle.md), [DocumentReference/BeispielDocumentReferenceRechnungRetrieve](DocumentReference-BeispielDocumentReferenceRechnungRetrieve.md), [DocumentReference/ExampleR5DocumentReference](DocumentReference-ExampleR5DocumentReference.md) and [Parameters/BeispielParameterRetrieveOutput](Parameters-BeispielParameterRetrieveOutput.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.gematik.dipag|current/StructureDefinition/StructureDefinition-dipag-documentreference-rechnungsdatum.json)

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

Simple Extension with the type dateTime: In dieser Extension wird das Rechnungsdatum an den Dokumentenmetadaten abgebildet. Es wird durch den Fachdienst aus den strukturierten Rechnungsinhalten extrahiert.

 **Differential-AnsichtDifferential View** 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Snapshot-Ansicht** 

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple Extension with the type dateTime: In dieser Extension wird das Rechnungsdatum an den Dokumentenmetadaten abgebildet. Es wird durch den Fachdienst aus den strukturierten Rechnungsinhalten extrahiert.

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-dipag-documentreference-rechnungsdatum.csv), [Excel](../StructureDefinition-dipag-documentreference-rechnungsdatum.xlsx), [Schematron](../StructureDefinition-dipag-documentreference-rechnungsdatum.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "dipag-documentreference-rechnungsdatum",
  "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-documentreference-rechnungsdatum",
  "version" : "1.0.8",
  "name" : "DiPagDocumentReferenceRechnungsdatum",
  "title" : "Digitale Patientenrechnung DocumentReference Rechnungsdatum",
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
  "description" : "In dieser Extension wird das Rechnungsdatum an den Dokumentenmetadaten abgebildet. Es wird durch den Fachdienst aus den strukturierten Rechnungsinhalten extrahiert.",
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
      "fixedUri" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-documentreference-rechnungsdatum"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    }]
  }
}

```
