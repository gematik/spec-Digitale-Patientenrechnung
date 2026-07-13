# Digitale Patientenrechnung DocumentReference Markierung - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung DocumentReference Markierung**

## Extension: Digitale Patientenrechnung DocumentReference Markierung 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/StructureDefinition/dipag-documentreference-markierung | *Version*:1.0.8 |
| Active Stand: 2026-07-08 | *Maschinenlesbarer Name*:DiPagDocumentReferenceMarkierung |

In dieser Extension wird eine Markierung eines Dokumentes abgebildet (z. B. 'Eingereicht', 'Bezahlt' oder 'Archiviert'), inklusive Zeitpunkt, optionalem Freitext sowie ggf. Art der Archivierung und Kostenträger-Referenz.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Digitale Patientenrechnung Dokumentenmetadaten Eingang](StructureDefinition-dipag-dokumentenmetadaten-eingang.md) and [Digitale Patientenrechnung Dokumentenmetadaten Intern](StructureDefinition-dipag-dokumentenmetadaten-intern.md)
* Examples for this Extension: [Bundle/BulkRetrieveExampleOutput](Bundle-BulkRetrieveExampleOutput.md), [DocumentReference/BeispielDocumentReferenceRechnungRetrieve](DocumentReference-BeispielDocumentReferenceRechnungRetrieve.md), [Parameters/BeispielParameterProcessFlagOutput](Parameters-BeispielParameterProcessFlagOutput.md) and [Parameters/BeispielParameterRetrieveOutput](Parameters-BeispielParameterRetrieveOutput.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.gematik.dipag|current/StructureDefinition/StructureDefinition-dipag-documentreference-markierung.json)

### Formale Ansichten des Extension-Inhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [AlleAll](#tabs-all) 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Terminology Bindings (Differential)

#### Constraints

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Complex Extension: In dieser Extension wird eine Markierung eines Dokumentes abgebildet (z. B. 'Eingereicht', 'Bezahlt' oder 'Archiviert'), inklusive Zeitpunkt, optionalem Freitext sowie ggf. Art der Archivierung und Kostenträger-Referenz.

 **Differential-AnsichtDifferential View** 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Terminology Bindings (Differential)

#### Constraints

 **Snapshot-Ansicht** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Complex Extension: In dieser Extension wird eine Markierung eines Dokumentes abgebildet (z. B. 'Eingereicht', 'Bezahlt' oder 'Archiviert'), inklusive Zeitpunkt, optionalem Freitext sowie ggf. Art der Archivierung und Kostenträger-Referenz.

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-dipag-documentreference-markierung.csv), [Excel](../StructureDefinition-dipag-documentreference-markierung.xlsx), [Schematron](../StructureDefinition-dipag-documentreference-markierung.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "dipag-documentreference-markierung",
  "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-documentreference-markierung",
  "version" : "1.0.8",
  "name" : "DiPagDocumentReferenceMarkierung",
  "title" : "Digitale Patientenrechnung DocumentReference Markierung",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-08",
  "publisher" : "gematik GmbH",
  "contact" : [{
    "name" : "gematik GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.gematik.de"
    }]
  }],
  "description" : "In dieser Extension wird eine Markierung eines Dokumentes abgebildet (z. B. 'Eingereicht', 'Bezahlt' oder 'Archiviert'), inklusive Zeitpunkt, optionalem Freitext sowie ggf. Art der Archivierung und Kostenträger-Referenz.",
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
    "expression" : "DocumentReference.meta"
  },
  {
    "type" : "element",
    "expression" : "Parameters.parameter.value[x]"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "constraint" : [{
        "key" : "DiPagDocumentReferenceMarkierung-1",
        "severity" : "error",
        "human" : "Details zur Art der Archivierung können nur angegeben werden wenn die Markierung vom Typ 'Archiviert' ist",
        "expression" : "extension.where(url = 'artDerArchivierung').value.exists() implies extension.where(url = 'markierung').value.ofType(Coding).where(code = 'archiviert').exists()",
        "source" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-documentreference-markierung"
      },
      {
        "key" : "DiPagDocumentReferenceMarkierung-3",
        "severity" : "error",
        "human" : "Details zu Status mit Kostenträger-Referenz können nur angegeben werden wenn die Markierung vom Typ 'eingereicht-frontend', eingereicht-post, 'geteilt' oder 'abgerufen' ist",
        "expression" : "extension.where(url = 'kostentraeger').value.exists() implies (extension.where(url = 'markierung').value.ofType(Coding).where(code = 'eingereicht-frontend').exists() or extension.where(url = 'markierung').value.ofType(Coding).where(code = 'eingereicht-post').exists() or extension.where(url = 'markierung').value.ofType(Coding).where(code = 'geteilt').exists() or extension.where(url = 'markierung').value.ofType(Coding).where(code = 'abgerufen').exists())",
        "source" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-documentreference-markierung"
      }]
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 1
    },
    {
      "id" : "Extension.extension:markierung",
      "path" : "Extension.extension",
      "sliceName" : "markierung",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:markierung.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:markierung.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "markierung"
    },
    {
      "id" : "Extension.extension:markierung.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://gematik.de/fhir/dipag/ValueSet/dipag-rechnung-markierung-vs"
      }
    },
    {
      "id" : "Extension.extension:zeitpunkt",
      "path" : "Extension.extension",
      "sliceName" : "zeitpunkt",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:zeitpunkt.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:zeitpunkt.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "zeitpunkt"
    },
    {
      "id" : "Extension.extension:zeitpunkt.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Extension.extension:details",
      "path" : "Extension.extension",
      "sliceName" : "details",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:details.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:details.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "details"
    },
    {
      "id" : "Extension.extension:details.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 1024
    },
    {
      "id" : "Extension.extension:artDerArchivierung",
      "path" : "Extension.extension",
      "sliceName" : "artDerArchivierung",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:artDerArchivierung.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:artDerArchivierung.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "artDerArchivierung"
    },
    {
      "id" : "Extension.extension:artDerArchivierung.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://gematik.de/fhir/dipag/ValueSet/dipag-dokument-artderarchivierung-vs"
      }
    },
    {
      "id" : "Extension.extension:kostentraeger",
      "path" : "Extension.extension",
      "sliceName" : "kostentraeger",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:kostentraeger.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:kostentraeger.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "kostentraeger"
    },
    {
      "id" : "Extension.extension:kostentraeger.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "Extension.extension:kostentraeger.value[x].display",
      "path" : "Extension.extension.value[x].display",
      "maxLength" : 1024
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-documentreference-markierung"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
