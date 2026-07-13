# Digitale Patientenrechnung Teilsumme - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Teilsumme**

## Extension: Digitale Patientenrechnung Teilsumme 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/StructureDefinition/DiPagTeilsumme | *Version*:1.0.8 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagTeilsumme |

In dieser Extension wird eine Teilsumme der Rechnung je Rechnungspositionstyp abgebildet, inklusive Umsatzsteuersatz und Umsatzsteuerbetrag.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Digitale Patientenrechnung Rechnung](StructureDefinition-dipag-rechnung.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.gematik.dipag|current/StructureDefinition/StructureDefinition-DiPagTeilsumme.json)

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

Complex Extension: In dieser Extension wird eine Teilsumme der Rechnung je Rechnungspositionstyp abgebildet, inklusive Umsatzsteuersatz und Umsatzsteuerbetrag.

 **Differential-AnsichtDifferential View** 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Terminology Bindings (Differential)

 **Snapshot-Ansicht** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Complex Extension: In dieser Extension wird eine Teilsumme der Rechnung je Rechnungspositionstyp abgebildet, inklusive Umsatzsteuersatz und Umsatzsteuerbetrag.

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-DiPagTeilsumme.csv), [Excel](../StructureDefinition-DiPagTeilsumme.xlsx), [Schematron](../StructureDefinition-DiPagTeilsumme.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DiPagTeilsumme",
  "url" : "https://gematik.de/fhir/dipag/StructureDefinition/DiPagTeilsumme",
  "version" : "1.0.8",
  "name" : "DiPagTeilsumme",
  "title" : "Digitale Patientenrechnung Teilsumme",
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
  "description" : "In dieser Extension wird eine Teilsumme der Rechnung je Rechnungspositionstyp abgebildet, inklusive Umsatzsteuersatz und Umsatzsteuerbetrag.",
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
    "expression" : "Invoice.totalPriceComponent"
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
      "id" : "Extension.extension:type",
      "path" : "Extension.extension",
      "sliceName" : "type",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:type.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:type.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "type"
    },
    {
      "id" : "Extension.extension:type.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://gematik.de/fhir/dipag/ValueSet/dipag-chargeitem-type-VS"
      }
    },
    {
      "id" : "Extension.extension:summe",
      "path" : "Extension.extension",
      "sliceName" : "summe",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:summe.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:summe.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "summe"
    },
    {
      "id" : "Extension.extension:summe.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Money"
      }]
    },
    {
      "id" : "Extension.extension:summe.value[x].currency",
      "path" : "Extension.extension.value[x].currency",
      "patternCode" : "EUR"
    },
    {
      "id" : "Extension.extension:uStProzent",
      "path" : "Extension.extension",
      "sliceName" : "uStProzent",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:uStProzent.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:uStProzent.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "uStProzent"
    },
    {
      "id" : "Extension.extension:uStProzent.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "Extension.extension:uStBetrag",
      "path" : "Extension.extension",
      "sliceName" : "uStBetrag",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:uStBetrag.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:uStBetrag.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "uStBetrag"
    },
    {
      "id" : "Extension.extension:uStBetrag.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Money"
      }]
    },
    {
      "id" : "Extension.extension:uStBetrag.value[x].currency",
      "path" : "Extension.extension.value[x].currency",
      "patternCode" : "EUR"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://gematik.de/fhir/dipag/StructureDefinition/DiPagTeilsumme"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
