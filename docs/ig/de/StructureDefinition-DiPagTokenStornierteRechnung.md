# Digitale Patientenrechnung Token der stornierten Rechnung - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Token der stornierten Rechnung**

## Extension: Digitale Patientenrechnung Token der stornierten Rechnung 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/StructureDefinition/DiPagTokenStornierteRechnung | *Version*:1.0.8 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagTokenStornierteRechnung |

In dieser Extension wird bei einer Korrekturrechnung das Rechnungs-Token der stornierten bzw. ersetzten Rechnung abgebildet.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Digitale Patientenrechnung Rechnung](StructureDefinition-dipag-rechnung.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.gematik.dipag|current/StructureDefinition/StructureDefinition-DiPagTokenStornierteRechnung.json)

### Formale Ansichten des Extension-Inhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [AlleAll](#tabs-all) 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple Extension with the type Identifier: In dieser Extension wird bei einer Korrekturrechnung das Rechnungs-Token der stornierten bzw. ersetzten Rechnung abgebildet.

 **Differential-AnsichtDifferential View** 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Snapshot-Ansicht** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple Extension with the type Identifier: In dieser Extension wird bei einer Korrekturrechnung das Rechnungs-Token der stornierten bzw. ersetzten Rechnung abgebildet.

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-DiPagTokenStornierteRechnung.csv), [Excel](../StructureDefinition-DiPagTokenStornierteRechnung.xlsx), [Schematron](../StructureDefinition-DiPagTokenStornierteRechnung.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DiPagTokenStornierteRechnung",
  "url" : "https://gematik.de/fhir/dipag/StructureDefinition/DiPagTokenStornierteRechnung",
  "version" : "1.0.8",
  "name" : "DiPagTokenStornierteRechnung",
  "title" : "Digitale Patientenrechnung Token der stornierten Rechnung",
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
  "description" : "In dieser Extension wird bei einer Korrekturrechnung das Rechnungs-Token der stornierten bzw. ersetzten Rechnung abgebildet.",
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
      "fixedUri" : "https://gematik.de/fhir/dipag/StructureDefinition/DiPagTokenStornierteRechnung"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "Extension.value[x].system",
      "path" : "Extension.value[x].system",
      "patternUri" : "https://gematik.de/fhir/sid/dipag-token"
    }]
  }
}

```
