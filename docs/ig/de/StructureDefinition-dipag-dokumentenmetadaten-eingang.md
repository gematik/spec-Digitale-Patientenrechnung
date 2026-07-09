# Digitale Patientenrechnung Dokumentenmetadaten Eingang - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Dokumentenmetadaten Eingang**

## Ressourcenprofil: Digitale Patientenrechnung Dokumentenmetadaten Eingang 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/StructureDefinition/dipag-dokumentenmetadaten-eingang | *Version*:1.0.8 |
| Active Stand: 2026-07-08 | *Maschinenlesbarer Name*:DiPagDokumentenmetadatenEingang |

**Usages:**

* Examples for this Profile: [DocumentReference/BeispielDocumentReferenceRechnung3-FD](DocumentReference-BeispielDocumentReferenceRechnung3-FD.md), [DocumentReference/BeispielDocumentReferenceRechnung3-LE](DocumentReference-BeispielDocumentReferenceRechnung3-LE.md), [DocumentReference/BeispielDocumentReferenceRechnung3.1-FD](DocumentReference-BeispielDocumentReferenceRechnung3.1-FD.md), [DocumentReference/BeispielDocumentReferenceRechnung3.1-LE](DocumentReference-BeispielDocumentReferenceRechnung3.1-LE.md)... Show 4 more, [DocumentReference/BeispielDocumentReferenceSonstigesDokument3-FD](DocumentReference-BeispielDocumentReferenceSonstigesDokument3-FD.md), [DocumentReference/BeispielDocumentReferenceSonstigesDokument3-LE](DocumentReference-BeispielDocumentReferenceSonstigesDokument3-LE.md), [DocumentReference/BeispielDocumentReferenceSonstigesDokument3.1-FD](DocumentReference-BeispielDocumentReferenceSonstigesDokument3.1-FD.md) and [DocumentReference/BeispielDocumentReferenceSonstigesDokument3.1-LE](DocumentReference-BeispielDocumentReferenceSonstigesDokument3.1-LE.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.gematik.dipag|current/StructureDefinition/StructureDefinition-dipag-dokumentenmetadaten-eingang.json)

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

Diese Struktur ist abgeleitet von [DocumentReference](http://hl7.org/fhir/R4/documentreference.html) 

#### Terminology Bindings (Differential)

#### Constraints

#### Terminology Bindings

#### Constraints

| | | |
| :--- | :--- | :--- |
| DocumentReference.content |  |  |
| DocumentReference.content:anhang |  |  |
| DocumentReference.content:anhang.attachment |  |  |
| DocumentReference.content:anhang.attachment.contentType |  | Zum Zeitpunkt der Veröffentlichung werden nur PDF-Dokumente als Rechnungsanhänge seitens der Leistungserbringer:in unterstützt. |
| DocumentReference.content:anhang.attachment.data |  | Base64-kodiertes PDF. Dieses Feld muss durch die Applikation der Leistungserbringer:in gefüllt werden. |
| DocumentReference.content:anhang.format |  |  |
| DocumentReference.content:originaleRechnung |  |  |
| DocumentReference.content:originaleRechnung.attachment |  |  |
| DocumentReference.content:originaleRechnung.attachment.contentType |  | Zum Zeitpunkt der Veröffentlichung werden nur PDF-Dokumente als Rechnung seitens der Leistungserbringer:in unterstützt. |
| DocumentReference.content:originaleRechnung.attachment.data |  | Base64-kodiertes PDF. Dieses Feld muss durch die Applikation der Leistungserbringer:in gefüllt werden. |
| DocumentReference.content:originaleRechnung.format |  |  |
| DocumentReference.content:strukturierterRechnungsinhalt |  | Das base64 kodierte Collection-Bundle mit den strukturierten Rechnungsinhalten darf nicht größer als 512 kB sein. |
| DocumentReference.content:strukturierterRechnungsinhalt.attachment |  |  |
| DocumentReference.content:strukturierterRechnungsinhalt.attachment.contentType |  | Strukturierte Rechnungsinhalte können seitens der Leistungserbringer:in sowohl als JSON als auch XML übergeben werden. |
| DocumentReference.content:strukturierterRechnungsinhalt.attachment.data |  | Base64-kodierte Repräsentation der Rechnungsinhalte. Alle Ressourcen sollen in einem collection Bundle zusammengefasst sein, welches durch das Profil [`DiPagRechnungsbundle`](https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsbundle) definiert ist. Dieses Feld muss durch die Applikation der Leistungserbringer:in gefüllt werden. |
| DocumentReference.content:strukturierterRechnungsinhalt.format |  |  |
| DocumentReference.description |  | Menschenlesbarer Titel des Dokumentes, der dem Versicherten in der UI angezeigt wird. Der Titel kann manuell erfasst oder vom Dateinamen/Metadaten abgeleitet werden. z.B. "Laborbefund vom 28.9.2023". |
| DocumentReference.identifier |  |  |
| DocumentReference.identifier:AnhangIdentifier | Anhangs-Identifier | Eindeutiger Identifikator für Anhänge vergeben durch das RE-PS (z.B. Interne Dokumentennummer). Bei Anhängen MUSS das System eindeutig pro Leistungserbringer:in vergeben werden. |
| DocumentReference.identifier:AnhangIdentifier.system | NamingSystem des Anhangs-Identifier |  |
| DocumentReference.identifier:AnhangIdentifier.type |  |  |
| DocumentReference.identifier:AnhangIdentifier.value | Anhangs-Identifier |  |
| DocumentReference.meta.extension:markierung |  | Beim Submit eines Anhang darf nur die Markierung 'Persönlich' gesetzt werden. Alle anderen Markierungen sind ausschließlich im Fachdienst zu setzen. Ein optionaler Freitext mit Details zur Markierung kann über die Extension 'details' angegeben werden. |
| DocumentReference.meta.extension:markierung.extension:details |  |  |
| DocumentReference.meta.extension:markierung.extension:details.value[x] |  |  |
| DocumentReference.meta.extension:markierung.extension:markierung |  |  |
| DocumentReference.meta.extension:markierung.extension:markierung.value[x] |  |  |
| DocumentReference.status |  | Versionierung von Dokumenten ist nicht unterstützt. Nur jeweils die aktuelle Version des Dokumentes wird akzeptiert. |
| DocumentReference.type |  | Kodierung des Dokumentes als 'Rechnung', sowie darüber hinausgehende Klassifizierung per KDL |
| DocumentReference.type.coding:DokumentenKlassifizierung |  |  |
| DocumentReference.type.coding:DokumentenKlassifizierung.code |  |  |
| DocumentReference.type.coding:DokumentenKlassifizierung.display |  |  |
| DocumentReference.type.coding:DokumentenKlassifizierung.system |  |  |
| DocumentReference.type.coding:Rechnungstyp |  |  |

Diese Struktur ist abgeleitet von [DocumentReference](http://hl7.org/fhir/R4/documentreference.html) 

** Summary **

Mandatory: 3 elements(15 nested mandatory elements)
 Must-Support: 34 elements
 Prohibited: 3 elements

**Extensions**

This structure refers to these extensions:

* [https://gematik.de/fhir/dipag/StructureDefinition/dipag-documentreference-markierung](StructureDefinition-dipag-documentreference-markierung.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of DocumentReference.identifier
* The element 1 is sliced based on the value of DocumentReference.type.coding
* The element 1 is sliced based on the value of DocumentReference.content

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [DocumentReference](http://hl7.org/fhir/R4/documentreference.html) 

#### Terminology Bindings (Differential)

#### Constraints

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [DocumentReference](http://hl7.org/fhir/R4/documentreference.html) 

** Summary **

Mandatory: 3 elements(15 nested mandatory elements)
 Must-Support: 34 elements
 Prohibited: 3 elements

**Extensions**

This structure refers to these extensions:

* [https://gematik.de/fhir/dipag/StructureDefinition/dipag-documentreference-markierung](StructureDefinition-dipag-documentreference-markierung.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of DocumentReference.identifier
* The element 1 is sliced based on the value of DocumentReference.type.coding
* The element 1 is sliced based on the value of DocumentReference.content

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-dipag-dokumentenmetadaten-eingang.csv), [Excel](../StructureDefinition-dipag-dokumentenmetadaten-eingang.xlsx), [Schematron](../StructureDefinition-dipag-dokumentenmetadaten-eingang.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "dipag-dokumentenmetadaten-eingang",
  "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-dokumentenmetadaten-eingang",
  "version" : "1.0.8",
  "name" : "DiPagDokumentenmetadatenEingang",
  "title" : "Digitale Patientenrechnung Dokumentenmetadaten Eingang",
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
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "fhircomposition",
    "uri" : "http://hl7.org/fhir/composition",
    "name" : "FHIR Composition"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "xds",
    "uri" : "http://ihe.net/xds",
    "name" : "XDS metadata equivalent"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DocumentReference",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DocumentReference",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DocumentReference",
      "path" : "DocumentReference",
      "constraint" : [{
        "key" : "RechnungOderAnhang",
        "severity" : "error",
        "human" : "Ein Dokument kann entweder ein Anhang enthalten oder ein Rechnungsdokument inkl. strukturierten Rechnungsinhalten.",
        "expression" : "content.format.where(system = 'https://gematik.de/fhir/dipag/CodeSystem/dipag-attachment-format-cs' and code = 'rechnungsanhang').exists() xor (content.format.where(system = 'https://gematik.de/fhir/dipag/CodeSystem/dipag-attachment-format-cs' and code = 'originaleRechnung').exists() and  content.format.where(system = 'https://gematik.de/fhir/dipag/CodeSystem/dipag-attachment-format-cs' and code = 'rechnungsinhalt').exists())",
        "source" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-dokumentenmetadaten-eingang"
      },
      {
        "key" : "MarkierungNurFuerAnhang",
        "severity" : "error",
        "human" : "Die Markierung darf nur gesetzt sein, wenn das Dokument kein Rechnungsdokument (AM010106) ist.",
        "expression" : "meta.extension.where(url = 'https://gematik.de/fhir/dipag/StructureDefinition/dipag-documentreference-markierung').exists() implies type.coding.where(system = 'http://dvmd.de/fhir/CodeSystem/kdl' and code = 'AM010106').exists().not()",
        "source" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-dokumentenmetadaten-eingang"
      },
      {
        "key" : "AnhangIdentifierPflicht",
        "severity" : "error",
        "human" : "Ein identifier:AnhangIdentifier MUSS angegeben werden, wenn das Dokument kein Rechnungsdokument (AM010106) ist.",
        "expression" : "type.coding.where(system = 'http://dvmd.de/fhir/CodeSystem/kdl' and code = 'AM010106').exists().not() implies identifier.where(type.coding.where(system = 'https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-identifier-type-cs' and code = 'anhang').exists()).exists()",
        "source" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-dokumentenmetadaten-eingang"
      }]
    },
    {
      "id" : "DocumentReference.meta.extension:markierung",
      "path" : "DocumentReference.meta.extension",
      "sliceName" : "markierung",
      "comment" : "Beim Submit eines Anhang darf nur die Markierung 'Persönlich' gesetzt werden. Alle anderen Markierungen sind ausschließlich im Fachdienst zu setzen.\n  Ein optionaler Freitext mit Details zur Markierung kann über die Extension 'details' angegeben werden.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-documentreference-markierung"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.meta.extension:markierung.extension:markierung",
      "path" : "DocumentReference.meta.extension.extension",
      "sliceName" : "markierung",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.meta.extension:markierung.extension:markierung.value[x]",
      "path" : "DocumentReference.meta.extension.extension.value[x]",
      "patternCoding" : {
        "code" : "persoenlich"
      },
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.meta.extension:markierung.extension:details",
      "path" : "DocumentReference.meta.extension.extension",
      "sliceName" : "details",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.meta.extension:markierung.extension:details.value[x]",
      "path" : "DocumentReference.meta.extension.extension.value[x]",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.identifier",
      "path" : "DocumentReference.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.identifier:AnhangIdentifier",
      "path" : "DocumentReference.identifier",
      "sliceName" : "AnhangIdentifier",
      "short" : "Anhangs-Identifier",
      "comment" : "Eindeutiger Identifikator für Anhänge vergeben durch das RE-PS (z.B. Interne Dokumentennummer). Bei Anhängen MUSS das System eindeutig pro Leistungserbringer:in vergeben werden.",
      "min" : 0,
      "max" : "1",
      "patternIdentifier" : {
        "type" : {
          "coding" : [{
            "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-identifier-type-cs",
            "code" : "anhang"
          }]
        }
      },
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.identifier:AnhangIdentifier.type",
      "path" : "DocumentReference.identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-identifier-type-cs",
          "code" : "anhang"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.identifier:AnhangIdentifier.system",
      "path" : "DocumentReference.identifier.system",
      "short" : "NamingSystem des Anhangs-Identifier",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.identifier:AnhangIdentifier.value",
      "path" : "DocumentReference.identifier.value",
      "short" : "Anhangs-Identifier",
      "min" : 1,
      "maxLength" : 200,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.status",
      "path" : "DocumentReference.status",
      "comment" : "Versionierung von Dokumenten ist nicht unterstützt. Nur jeweils die aktuelle Version des Dokumentes wird akzeptiert.",
      "patternCode" : "current",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.type",
      "path" : "DocumentReference.type",
      "comment" : "Kodierung des Dokumentes als 'Rechnung', sowie darüber hinausgehende Klassifizierung per KDL",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.type.coding",
      "path" : "DocumentReference.type.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "DocumentReference.type.coding:DokumentenKlassifizierung",
      "path" : "DocumentReference.type.coding",
      "sliceName" : "DokumentenKlassifizierung",
      "min" : 0,
      "max" : "1",
      "patternCoding" : {
        "system" : "http://dvmd.de/fhir/CodeSystem/kdl"
      },
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://gematik.de/fhir/dipag/ValueSet/dipag-sonstigesdokument-type-vs"
      }
    },
    {
      "id" : "DocumentReference.type.coding:DokumentenKlassifizierung.system",
      "path" : "DocumentReference.type.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.type.coding:DokumentenKlassifizierung.code",
      "path" : "DocumentReference.type.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.type.coding:DokumentenKlassifizierung.display",
      "path" : "DocumentReference.type.coding.display",
      "min" : 1,
      "maxLength" : 1024,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.type.coding:Rechnungstyp",
      "path" : "DocumentReference.type.coding",
      "sliceName" : "Rechnungstyp",
      "min" : 0,
      "max" : "1",
      "patternCoding" : {
        "system" : "http://dvmd.de/fhir/CodeSystem/kdl",
        "code" : "AM010106"
      },
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.description",
      "path" : "DocumentReference.description",
      "comment" : "Menschenlesbarer Titel des Dokumentes, der dem Versicherten in der UI angezeigt wird. Der Titel kann manuell erfasst oder vom Dateinamen/Metadaten abgeleitet werden. z.B. &quot;Laborbefund vom 28.9.2023&quot;.",
      "min" : 1,
      "maxLength" : 5000,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content",
      "path" : "DocumentReference.content",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "format"
        }],
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.attachment.url",
      "path" : "DocumentReference.content.attachment.url",
      "comment" : "Der FD muss die Base64-kodierten Daten aus attachment.data extrahieren und in eine Binary-Ressource auslagern."
    },
    {
      "id" : "DocumentReference.content:originaleRechnung",
      "path" : "DocumentReference.content",
      "sliceName" : "originaleRechnung",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content:originaleRechnung.attachment",
      "path" : "DocumentReference.content.attachment",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content:originaleRechnung.attachment.contentType",
      "path" : "DocumentReference.content.attachment.contentType",
      "comment" : "Zum Zeitpunkt der Veröffentlichung werden nur PDF-Dokumente als Rechnung seitens der Leistungserbringer:in unterstützt.",
      "min" : 1,
      "patternCode" : "application/pdf",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content:originaleRechnung.attachment.data",
      "path" : "DocumentReference.content.attachment.data",
      "comment" : "Base64-kodiertes PDF. Dieses Feld muss durch die Applikation der Leistungserbringer:in gefüllt werden.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content:originaleRechnung.attachment.url",
      "path" : "DocumentReference.content.attachment.url",
      "max" : "0"
    },
    {
      "id" : "DocumentReference.content:originaleRechnung.format",
      "path" : "DocumentReference.content.format",
      "min" : 1,
      "patternCoding" : {
        "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-attachment-format-cs",
        "code" : "originaleRechnung"
      },
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content:strukturierterRechnungsinhalt",
      "path" : "DocumentReference.content",
      "sliceName" : "strukturierterRechnungsinhalt",
      "comment" : "Das base64 kodierte Collection-Bundle mit den strukturierten Rechnungsinhalten darf nicht größer als 512 kB sein.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content:strukturierterRechnungsinhalt.attachment",
      "path" : "DocumentReference.content.attachment",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content:strukturierterRechnungsinhalt.attachment.contentType",
      "path" : "DocumentReference.content.attachment.contentType",
      "comment" : "Strukturierte Rechnungsinhalte können seitens der Leistungserbringer:in sowohl als JSON als auch XML übergeben werden.",
      "min" : 1,
      "patternCode" : "application/fhir+json",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content:strukturierterRechnungsinhalt.attachment.data",
      "path" : "DocumentReference.content.attachment.data",
      "comment" : "Base64-kodierte Repräsentation der Rechnungsinhalte. Alle Ressourcen sollen in einem collection Bundle zusammengefasst sein, welches durch das Profil [`DiPagRechnungsbundle`](https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsbundle) definiert ist. Dieses Feld muss durch die Applikation der Leistungserbringer:in gefüllt werden.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content:strukturierterRechnungsinhalt.attachment.url",
      "path" : "DocumentReference.content.attachment.url",
      "max" : "0"
    },
    {
      "id" : "DocumentReference.content:strukturierterRechnungsinhalt.format",
      "path" : "DocumentReference.content.format",
      "min" : 1,
      "patternCoding" : {
        "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-attachment-format-cs",
        "code" : "rechnungsinhalt"
      },
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content:anhang",
      "path" : "DocumentReference.content",
      "sliceName" : "anhang",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content:anhang.attachment",
      "path" : "DocumentReference.content.attachment",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content:anhang.attachment.contentType",
      "path" : "DocumentReference.content.attachment.contentType",
      "comment" : "Zum Zeitpunkt der Veröffentlichung werden nur PDF-Dokumente als Rechnungsanhänge seitens der Leistungserbringer:in unterstützt.",
      "min" : 1,
      "patternCode" : "application/pdf",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content:anhang.attachment.data",
      "path" : "DocumentReference.content.attachment.data",
      "comment" : "Base64-kodiertes PDF. Dieses Feld muss durch die Applikation der Leistungserbringer:in gefüllt werden.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content:anhang.attachment.url",
      "path" : "DocumentReference.content.attachment.url",
      "max" : "0"
    },
    {
      "id" : "DocumentReference.content:anhang.format",
      "path" : "DocumentReference.content.format",
      "min" : 1,
      "patternCoding" : {
        "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-attachment-format-cs",
        "code" : "rechnungsanhang"
      },
      "mustSupport" : true
    }]
  }
}

```
