# Digitale Patientenrechnung Rechnungsdokument - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Rechnungsdokument**

## Ressourcenprofil: Digitale Patientenrechnung Rechnungsdokument 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsdokument | *Version*:1.0.8 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagRechnungsdokument |

 
Dieses Profil bildet die Binärdaten eines Dokumentes der Digitalen Patientenrechnung ab: das PDF der Rechnung bzw. eines Anhangs oder die strukturierten Rechnungsinhalte, jeweils als base64-kodierte Daten. 

**Usages:**

* CapabilityStatements using this Profile: [CapabilityStatement Fachdienst E-Rechnung](CapabilityStatement-DiPagCapabilityStatementFD.md)
* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.gematik.dipag|current/StructureDefinition/StructureDefinition-dipag-rechnungsdokument.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Must-Support Comments](#tabs-isik) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Binary](http://hl7.org/fhir/R4/binary.html) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

| | | |
| :--- | :--- | :--- |
| Binary.contentType | MIME-Type des Dokumentes |  |
| Binary.data | Binär-Daten | PDF oder strukturierter Rechnungsinhalt als base64-kodierter String. |

Diese Struktur ist abgeleitet von [Binary](http://hl7.org/fhir/R4/binary.html) 

** Summary **

Mandatory: 1 element
 Must-Support: 2 elements

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [Binary](http://hl7.org/fhir/R4/binary.html) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Binary](http://hl7.org/fhir/R4/binary.html) 

** Summary **

Mandatory: 1 element
 Must-Support: 2 elements

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-dipag-rechnungsdokument.csv), [Excel](../StructureDefinition-dipag-rechnungsdokument.xlsx), [Schematron](../StructureDefinition-dipag-rechnungsdokument.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "dipag-rechnungsdokument",
  "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsdokument",
  "version" : "1.0.8",
  "name" : "DiPagRechnungsdokument",
  "title" : "Digitale Patientenrechnung Rechnungsdokument",
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
  "description" : "Dieses Profil bildet die Binärdaten eines Dokumentes der Digitalen Patientenrechnung ab: das PDF der Rechnung bzw. eines Anhangs oder die strukturierten Rechnungsinhalte, jeweils als base64-kodierte Daten.",
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
  "kind" : "resource",
  "abstract" : false,
  "type" : "Binary",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Binary",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Binary",
      "path" : "Binary"
    },
    {
      "id" : "Binary.contentType",
      "path" : "Binary.contentType",
      "short" : "MIME-Type des Dokumentes",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://gematik.de/fhir/dipag/ValueSet/dipag-restricted-mime-types-in-binary-vs"
      }
    },
    {
      "id" : "Binary.data",
      "path" : "Binary.data",
      "short" : "Binär-Daten",
      "comment" : "PDF oder strukturierter Rechnungsinhalt als base64-kodierter String.",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
