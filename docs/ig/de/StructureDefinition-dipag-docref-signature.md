# Digitale Patientenrechnung DocRef Signature - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung DocRef Signature**

## Extension: Digitale Patientenrechnung DocRef Signature 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/StructureDefinition/dipag-docref-signature | *Version*:1.0.8 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagDocRefSignature |

Extension zur Abbildung einer Digitalen Signatur über die Rechnungsrepräsentation, sowie den strukturierten Rechnungsinhalten

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Digitale Patientenrechnung Dokumentenmetadaten Intern](StructureDefinition-dipag-dokumentenmetadaten-intern.md)
* Examples for this Extension: [Bundle/ExampleR5Bundle](Bundle-ExampleR5Bundle.md), [DocumentReference/ExampleR5DocumentReference](DocumentReference-ExampleR5DocumentReference.md) and [DocumentReference/ExampleR5DocumentReferenceSonstigesDokument](DocumentReference-ExampleR5DocumentReferenceSonstigesDokument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.gematik.dipag|current/StructureDefinition/StructureDefinition-dipag-docref-signature.json)

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

Simple Extension with the type Signature: Extension zur Abbildung einer Digitalen Signatur über die Rechnungsrepräsentation, sowie den strukturierten Rechnungsinhalten

 **Differential-AnsichtDifferential View** 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Snapshot-Ansicht** 

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple Extension with the type Signature: Extension zur Abbildung einer Digitalen Signatur über die Rechnungsrepräsentation, sowie den strukturierten Rechnungsinhalten

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-dipag-docref-signature.csv), [Excel](../StructureDefinition-dipag-docref-signature.xlsx), [Schematron](../StructureDefinition-dipag-docref-signature.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "dipag-docref-signature",
  "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-docref-signature",
  "version" : "1.0.8",
  "name" : "DiPagDocRefSignature",
  "title" : "Digitale Patientenrechnung DocRef Signature",
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
  "description" : "Extension zur Abbildung einer Digitalen Signatur über die Rechnungsrepräsentation, sowie den strukturierten Rechnungsinhalten",
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
  },
  {
    "type" : "element",
    "expression" : "DocumentReference.content.attachment"
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
      "fixedUri" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-docref-signature"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Signature"
      }],
      "mustSupport" : true
    }]
  }
}

```
