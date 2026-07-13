# DiPag BEMA Punktsumme - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **DiPag BEMA Punktsumme**

## Extension: DiPag BEMA Punktsumme 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/StructureDefinition/DiPagBemaPunktsumme | *Version*:1.0.8 |
| Draft Stand: 2026-07-13 | *Maschinenlesbarer Name*:DiPagBemaPunktsumme |

In dieser Extension werden die Summe der Punktzahlen und der Punktwert der BEMA-Leistungen einer Rechnung abgebildet.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Digitale Patientenrechnung Rechnung](StructureDefinition-dipag-rechnung.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.gematik.dipag|current/StructureDefinition/StructureDefinition-DiPagBemaPunktsumme.json)

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

Complex Extension: In dieser Extension werden die Summe der Punktzahlen und der Punktwert der BEMA-Leistungen einer Rechnung abgebildet.

 **Differential-AnsichtDifferential View** 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Snapshot-Ansicht** 

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Complex Extension: In dieser Extension werden die Summe der Punktzahlen und der Punktwert der BEMA-Leistungen einer Rechnung abgebildet.

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-DiPagBemaPunktsumme.csv), [Excel](../StructureDefinition-DiPagBemaPunktsumme.xlsx), [Schematron](../StructureDefinition-DiPagBemaPunktsumme.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DiPagBemaPunktsumme",
  "url" : "https://gematik.de/fhir/dipag/StructureDefinition/DiPagBemaPunktsumme",
  "version" : "1.0.8",
  "name" : "DiPagBemaPunktsumme",
  "title" : "DiPag BEMA Punktsumme",
  "status" : "draft",
  "date" : "2026-07-13T08:15:48+00:00",
  "publisher" : "gematik GmbH",
  "contact" : [{
    "name" : "gematik GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.gematik.de"
    }]
  }],
  "description" : "In dieser Extension werden die Summe der Punktzahlen und der Punktwert der BEMA-Leistungen einer Rechnung abgebildet.",
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
      "id" : "Extension.extension:Punktsumme",
      "path" : "Extension.extension",
      "sliceName" : "Punktsumme",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:Punktsumme.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:Punktsumme.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "Punktsumme"
    },
    {
      "id" : "Extension.extension:Punktsumme.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "Extension.extension:Punktwert",
      "path" : "Extension.extension",
      "sliceName" : "Punktwert",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:Punktwert.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:Punktwert.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "Punktwert"
    },
    {
      "id" : "Extension.extension:Punktwert.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://gematik.de/fhir/dipag/StructureDefinition/DiPagBemaPunktsumme"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
