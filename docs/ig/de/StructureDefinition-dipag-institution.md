# Digitale Patientenrechnung Institution - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Institution**

## Ressourcenprofil: Digitale Patientenrechnung Institution 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/StructureDefinition/dipag-institution | *Version*:1.1.0 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagInstitution |

 
Das Profil DiPagInstitution bildet eine Institution (z. B. Praxis, MVZ oder Krankenhaus) in den Rollen 'Rechnungsersteller' oder 'Abweichender Forderungsinhaber' ab. 

**Usages:**

* Refer to this Profile: [Digitale Patientenrechnung Rechnung](StructureDefinition-dipag-rechnung.md) and [Digitale Patientenrechnung Rechnungsposition](StructureDefinition-dipag-rechnungsposition.md)
* Examples for this Profile: [Praxis Dr. A. Arzt](Organization-3c4d5e6f-7a8b-9c0d-1e2f-3a4b5c6d7e8f.md), [ARZ ZB GmbH](Organization-KfoMehrkosten3Behandler.md), [Zahnarztpraxis Dr. Schulz](Organization-e3f4a5b6-4d5e-6f7a-1b2c-3d4e5f6a7b8c.md) and [Zahnlabor Müller GmbH](Organization-f4a5b6c7-5e6f-7a8b-2c3d-4e5f6a7b8c9d.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.gematik.dipag|current/StructureDefinition/StructureDefinition-dipag-institution.json)

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

Diese Struktur ist abgeleitet von [Organization](http://hl7.org/fhir/R4/organization.html) 

#### Terminology Bindings (Differential)

#### Constraints

#### Terminology Bindings

#### Constraints

| | | |
| :--- | :--- | :--- |
| Organization.address |  |  |
| Organization.address:Postfach | Postfach | Das Postfach SOLL vorhanden sein. |
| Organization.address:Postfach.city | Ort | Der Ort SOLL vorhanden sein. |
| Organization.address:Postfach.country | Länderkennzeichen | Das Länderkennzeichen KANN vorhanden sein. |
| Organization.address:Postfach.line | Postfach-Angabe | Die Postfach-Angabe SOLL angegeben werden, die Extensions zur strukurierten Erfassung KANN vorhanden sein. |
| Organization.address:Postfach.line.extension:Postfach |  | Die Extension zur strukurierten Erfassung des Postfach KANN vorhanden sein. |
| Organization.address:Postfach.postalCode |  | Die Postleitzahl SOLL vorhanden sein. |
| Organization.address:Postfach.type |  |  |
| Organization.address:Strassenanschrift | Strassenanschrift | Die Strassenanschrift SOLL vorhanden sein. |
| Organization.address:Strassenanschrift.city | Ort | Der Ort SOLL vorhanden sein. |
| Organization.address:Strassenanschrift.country | Länderkennzeichen | Das Länderkennzeichen KANN vorhanden sein. |
| Organization.address:Strassenanschrift.line | Straße und Hausnummer | Straße und Hausnummer SOLLEN angegeben werden, die Extensions zur strukurierten Erfassung KÖNNEN vorhanden sein. |
| Organization.address:Strassenanschrift.line.extension:Adresszusatz |  | Die Extension zur strukurierten Erfassung des Adresszusatz KANN vorhanden sein. |
| Organization.address:Strassenanschrift.line.extension:Hausnummer |  | Die Extension zur strukurierten Erfassung der Hausnummer KANN vorhanden sein. |
| Organization.address:Strassenanschrift.line.extension:Strasse |  | Die Extension zur strukurierten Erfassung der Straße KANN vorhanden sein. |
| Organization.address:Strassenanschrift.postalCode |  | Die Postleitzahl SOLL vorhanden sein. |
| Organization.address:Strassenanschrift.type |  |  |
| Organization.identifier |  |  |
| Organization.identifier:BSNR | Betriebsstättennummer | Die Betriebsstättennummer für vertragsärztliche Praxen KANN vorhanden sein. |
| Organization.identifier:BSNR.system | System der BSNR | Das System der BSNR MUSS vorhanden sein. |
| Organization.identifier:BSNR.type |  |  |
| Organization.identifier:BSNR.value | Betriebsstättennummer |  |
| Organization.identifier:IKNR | IK-Nummer | Für alle Institutionen KANN die IK-Nummer vorhanden sein. |
| Organization.identifier:IKNR.system | System der IK-Nummer | Das System der IK-Nummer MUSS vorhanden sein. |
| Organization.identifier:IKNR.type |  |  |
| Organization.identifier:IKNR.value | IK-Nummer |  |
| Organization.identifier:KZVAbrechnungsnummer | Abrechnungsnummer für zahnärztliche Praxen | Die Abrechnungsnummer für zahnärztliche Praxen KANN vorhanden sein. |
| Organization.identifier:KZVAbrechnungsnummer.system | System der Abrechnungsnummer für zahnärztliche Praxen | Das System der Abrechnungsnummer für zahnärztliche Praxen MUSS vorhanden sein, wenn eine Abrechnungsnummer angegeben ist. |
| Organization.identifier:KZVAbrechnungsnummer.type |  |  |
| Organization.identifier:KZVAbrechnungsnummer.value | Abrechnungsnummer für zahnärztliche Praxen |  |
| Organization.identifier:Telematik-ID | Telematik-ID (VZD-Eintrag) | Die Telematik-ID (VZD-Eintrag) SOLL vorhanden sein. |
| Organization.identifier:Telematik-ID.system | System der Telematik-ID | Das System der Telematik-ID MUSS vorhanden sein. |
| Organization.identifier:Telematik-ID.type |  |  |
| Organization.identifier:Telematik-ID.value | Telematik-ID (VZD-Eintrag) |  |
| Organization.identifier:USt-ID-Nr | Umsatzsteuer-Identifikationsnummer | Die Umsatzsteuer-Identifikationsnummer KANN vorhanden sein. Sie KANN vorkommen, wenn eine Institution die Rolle eines 'Abweichender Forderungsinhaber', sowie des 'Rechnungsersteller' inne hat. |
| Organization.identifier:USt-ID-Nr.type |  |  |
| Organization.identifier:USt-ID-Nr.value |  |  |
| Organization.name | Institutionsname | Der Institutionsname SOLL vorhanden sein.Im Namen kann auch eine Inhaberschaftsangabe vorhanden sein, z.B. 'Praxis Dr. Muster' oder 'MVZ Dr. Muster'. |
| Organization.telecom |  |  |
| Organization.telecom:Telefon | Telefon | Die Angabe einer Telefonnummer KANN vorhanden sein. Sie KANN vorkommen, wenn eine Institution die Rolle eines 'Abweichender Forderungsinhaber', sowie des 'Rechnungsersteller' inne hat. |
| Organization.telecom:Telefon.system |  |  |
| Organization.telecom:Telefon.value | Telefonnummer |  |
| Organization.type.coding.code |  |  |
| Organization.type.coding.system |  |  |

Diese Struktur ist abgeleitet von [Organization](http://hl7.org/fhir/R4/organization.html) 

** Summary **

Mandatory: 0 element(9 nested mandatory elements)
 Must-Support: 44 elements
 Fixed: 1 element
 Prohibited: 4 elements

**Structures**

This structure refers to these other structures:

* [Identifier-Profil für die Telematik-ID (http://fhir.de/StructureDefinition/identifier-telematik-id)](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.de/StructureDefinition/identifier-telematik-id)
* [Identifier-Profil für die Abbildung eines Institutionskennzeichens (IKNR) (http://fhir.de/StructureDefinition/identifier-iknr)](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.de/StructureDefinition/identifier-iknr)
* [Identifier-Profil für die Abbildung einer Betriebsstättennummer (http://fhir.de/StructureDefinition/identifier-bsnr)](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.de/StructureDefinition/identifier-bsnr)
* [Identifier-Profil für die Abbildung einer KZVAbrechnungsnummer (http://fhir.de/StructureDefinition/identifier-kzva)](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.de/StructureDefinition/identifier-kzva)
* [Adresse, deutsches Basisprofil (http://fhir.de/StructureDefinition/address-de-basis)](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.de/StructureDefinition/address-de-basis)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Organization.identifier
* The element 1 is sliced based on the value of Organization.telecom
* The element 1 is sliced based on the value of Organization.address

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [Organization](http://hl7.org/fhir/R4/organization.html) 

#### Terminology Bindings (Differential)

#### Constraints

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Organization](http://hl7.org/fhir/R4/organization.html) 

** Summary **

Mandatory: 0 element(9 nested mandatory elements)
 Must-Support: 44 elements
 Fixed: 1 element
 Prohibited: 4 elements

**Structures**

This structure refers to these other structures:

* [Identifier-Profil für die Telematik-ID (http://fhir.de/StructureDefinition/identifier-telematik-id)](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.de/StructureDefinition/identifier-telematik-id)
* [Identifier-Profil für die Abbildung eines Institutionskennzeichens (IKNR) (http://fhir.de/StructureDefinition/identifier-iknr)](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.de/StructureDefinition/identifier-iknr)
* [Identifier-Profil für die Abbildung einer Betriebsstättennummer (http://fhir.de/StructureDefinition/identifier-bsnr)](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.de/StructureDefinition/identifier-bsnr)
* [Identifier-Profil für die Abbildung einer KZVAbrechnungsnummer (http://fhir.de/StructureDefinition/identifier-kzva)](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.de/StructureDefinition/identifier-kzva)
* [Adresse, deutsches Basisprofil (http://fhir.de/StructureDefinition/address-de-basis)](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.de/StructureDefinition/address-de-basis)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Organization.identifier
* The element 1 is sliced based on the value of Organization.telecom
* The element 1 is sliced based on the value of Organization.address

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-dipag-institution.csv), [Excel](../StructureDefinition-dipag-institution.xlsx), [Schematron](../StructureDefinition-dipag-institution.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "dipag-institution",
  "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-institution",
  "version" : "1.1.0",
  "name" : "DiPagInstitution",
  "title" : "Digitale Patientenrechnung Institution",
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
  "description" : "Das Profil DiPagInstitution bildet eine Institution (z. B. Praxis, MVZ oder Krankenhaus) in den Rollen 'Rechnungsersteller' oder 'Abweichender Forderungsinhaber' ab.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Organization",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization",
      "path" : "Organization"
    },
    {
      "id" : "Organization.identifier",
      "path" : "Organization.identifier",
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
      "id" : "Organization.identifier:Telematik-ID",
      "path" : "Organization.identifier",
      "sliceName" : "Telematik-ID",
      "short" : "Telematik-ID (VZD-Eintrag)",
      "comment" : "Die Telematik-ID (VZD-Eintrag) SOLL vorhanden sein.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://fhir.de/StructureDefinition/identifier-telematik-id"]
      }],
      "patternIdentifier" : {
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "PRN"
          }]
        }
      },
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:Telematik-ID.type",
      "path" : "Organization.identifier.type",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:Telematik-ID.system",
      "path" : "Organization.identifier.system",
      "short" : "System der Telematik-ID",
      "comment" : "Das System der Telematik-ID MUSS vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:Telematik-ID.value",
      "path" : "Organization.identifier.value",
      "short" : "Telematik-ID (VZD-Eintrag)",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:IKNR",
      "path" : "Organization.identifier",
      "sliceName" : "IKNR",
      "short" : "IK-Nummer",
      "comment" : "Für alle Institutionen KANN die IK-Nummer vorhanden sein.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://fhir.de/StructureDefinition/identifier-iknr"]
      }],
      "patternIdentifier" : {
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "XX"
          }]
        }
      },
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:IKNR.type",
      "path" : "Organization.identifier.type",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:IKNR.system",
      "path" : "Organization.identifier.system",
      "short" : "System der IK-Nummer",
      "comment" : "Das System der IK-Nummer MUSS vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:IKNR.value",
      "path" : "Organization.identifier.value",
      "short" : "IK-Nummer",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:BSNR",
      "path" : "Organization.identifier",
      "sliceName" : "BSNR",
      "short" : "Betriebsstättennummer",
      "comment" : "Die Betriebsstättennummer für vertragsärztliche Praxen KANN vorhanden sein.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://fhir.de/StructureDefinition/identifier-bsnr"]
      }],
      "patternIdentifier" : {
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "BSNR"
          }]
        }
      },
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:BSNR.type",
      "path" : "Organization.identifier.type",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:BSNR.system",
      "path" : "Organization.identifier.system",
      "short" : "System der BSNR",
      "comment" : "Das System der BSNR MUSS vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:BSNR.value",
      "path" : "Organization.identifier.value",
      "short" : "Betriebsstättennummer",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:KZVAbrechnungsnummer",
      "path" : "Organization.identifier",
      "sliceName" : "KZVAbrechnungsnummer",
      "short" : "Abrechnungsnummer für zahnärztliche Praxen",
      "comment" : "Die Abrechnungsnummer für zahnärztliche Praxen KANN vorhanden sein.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://fhir.de/StructureDefinition/identifier-kzva"]
      }],
      "patternIdentifier" : {
        "type" : {
          "coding" : [{
            "system" : "http://fhir.de/CodeSystem/identifier-type-de-basis",
            "code" : "KZVA"
          }]
        }
      },
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:KZVAbrechnungsnummer.type",
      "path" : "Organization.identifier.type",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:KZVAbrechnungsnummer.system",
      "path" : "Organization.identifier.system",
      "short" : "System der Abrechnungsnummer für zahnärztliche Praxen",
      "comment" : "Das System der Abrechnungsnummer für zahnärztliche Praxen MUSS vorhanden sein, wenn eine Abrechnungsnummer angegeben ist.",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:KZVAbrechnungsnummer.value",
      "path" : "Organization.identifier.value",
      "short" : "Abrechnungsnummer für zahnärztliche Praxen",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:USt-ID-Nr",
      "path" : "Organization.identifier",
      "sliceName" : "USt-ID-Nr",
      "short" : "Umsatzsteuer-Identifikationsnummer",
      "comment" : "Die Umsatzsteuer-Identifikationsnummer KANN vorhanden sein.\n  Sie KANN vorkommen, wenn eine Institution die Rolle eines 'Abweichender Forderungsinhaber', sowie des 'Rechnungsersteller' inne hat.",
      "min" : 0,
      "max" : "1",
      "patternIdentifier" : {
        "type" : {
          "coding" : [{
            "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-identifier-type-cs",
            "code" : "ustid"
          }]
        }
      },
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:USt-ID-Nr.type",
      "path" : "Organization.identifier.type",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:USt-ID-Nr.system",
      "path" : "Organization.identifier.system",
      "comment" : "Es gibt kein FHIR-NamingSystem für die USt.-ID von offizieller Seite. Aus dem Grund ist System nicht mit MS gekennzeichnet und SOLL nicht befüllt sein."
    },
    {
      "id" : "Organization.identifier:USt-ID-Nr.value",
      "path" : "Organization.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.type",
      "path" : "Organization.type",
      "short" : "Fachrichtung",
      "comment" : "Die Fachrichtung SOLL vorhanden sein. Das Element ist wiederholbar.",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ihe-d.de/ValueSets/IHEXDSpracticeSettingCode"
      }
    },
    {
      "id" : "Organization.type.coding.system",
      "path" : "Organization.type.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.type.coding.code",
      "path" : "Organization.type.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.name",
      "path" : "Organization.name",
      "short" : "Institutionsname",
      "comment" : "Der Institutionsname SOLL vorhanden sein.\n  \n  Im Namen kann auch eine Inhaberschaftsangabe vorhanden sein, z.B. 'Praxis Dr. Muster' oder 'MVZ Dr. Muster'.",
      "mustSupport" : true
    },
    {
      "id" : "Organization.telecom",
      "path" : "Organization.telecom",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Organization.telecom:Telefon",
      "path" : "Organization.telecom",
      "sliceName" : "Telefon",
      "short" : "Telefon",
      "comment" : "Die Angabe einer Telefonnummer KANN vorhanden sein.\n  Sie KANN vorkommen, wenn eine Institution die Rolle eines 'Abweichender Forderungsinhaber', sowie des 'Rechnungsersteller' inne hat.",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Organization.telecom:Telefon.system",
      "path" : "Organization.telecom.system",
      "min" : 1,
      "fixedCode" : "phone",
      "mustSupport" : true
    },
    {
      "id" : "Organization.telecom:Telefon.value",
      "path" : "Organization.telecom.value",
      "short" : "Telefonnummer",
      "mustSupport" : true
    },
    {
      "id" : "Organization.address",
      "path" : "Organization.address",
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
      "id" : "Organization.address:Strassenanschrift",
      "path" : "Organization.address",
      "sliceName" : "Strassenanschrift",
      "short" : "Strassenanschrift",
      "comment" : "Die Strassenanschrift SOLL vorhanden sein.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Address",
        "profile" : ["http://fhir.de/StructureDefinition/address-de-basis"]
      }],
      "patternAddress" : {
        "type" : "both"
      },
      "mustSupport" : true
    },
    {
      "id" : "Organization.address:Strassenanschrift.type",
      "path" : "Organization.address.type",
      "mustSupport" : true
    },
    {
      "id" : "Organization.address:Strassenanschrift.line",
      "path" : "Organization.address.line",
      "short" : "Straße und Hausnummer",
      "comment" : "Straße und Hausnummer SOLLEN angegeben werden, die Extensions zur strukurierten Erfassung KÖNNEN vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Organization.address:Strassenanschrift.line.extension:Strasse",
      "path" : "Organization.address.line.extension",
      "sliceName" : "Strasse",
      "comment" : "Die Extension zur strukurierten Erfassung der Straße KANN vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Organization.address:Strassenanschrift.line.extension:Hausnummer",
      "path" : "Organization.address.line.extension",
      "sliceName" : "Hausnummer",
      "comment" : "Die Extension zur strukurierten Erfassung der Hausnummer KANN vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Organization.address:Strassenanschrift.line.extension:Adresszusatz",
      "path" : "Organization.address.line.extension",
      "sliceName" : "Adresszusatz",
      "comment" : "Die Extension zur strukurierten Erfassung des Adresszusatz KANN vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Organization.address:Strassenanschrift.line.extension:Postfach",
      "path" : "Organization.address.line.extension",
      "sliceName" : "Postfach",
      "max" : "0"
    },
    {
      "id" : "Organization.address:Strassenanschrift.city",
      "path" : "Organization.address.city",
      "short" : "Ort",
      "comment" : "Der Ort SOLL vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Organization.address:Strassenanschrift.postalCode",
      "path" : "Organization.address.postalCode",
      "comment" : "Die Postleitzahl SOLL vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Organization.address:Strassenanschrift.country",
      "path" : "Organization.address.country",
      "short" : "Länderkennzeichen",
      "comment" : "Das Länderkennzeichen KANN vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Organization.address:Postfach",
      "path" : "Organization.address",
      "sliceName" : "Postfach",
      "short" : "Postfach",
      "comment" : "Das Postfach SOLL vorhanden sein.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Address",
        "profile" : ["http://fhir.de/StructureDefinition/address-de-basis"]
      }],
      "patternAddress" : {
        "type" : "postal"
      },
      "constraint" : [{
        "key" : "address-cnt-2or3-char",
        "severity" : "warning",
        "human" : "The content of the country element (if present) SHALL be selected EITHER from ValueSet ISO Country Alpha-2 http://hl7.org/fhir/ValueSet/iso3166-1-2 OR MAY be selected from ISO Country Alpha-3 Value Set http://hl7.org/fhir/ValueSet/iso3166-1-3, IF the country is not specified in value Set ISO Country Alpha-2 http://hl7.org/fhir/ValueSet/iso3166-1-2.",
        "expression" : "country.empty() or (country.memberOf('http://hl7.org/fhir/ValueSet/iso3166-1-2') or country.memberOf('http://hl7.org/fhir/ValueSet/iso3166-1-3'))",
        "source" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-institution"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Organization.address:Postfach.type",
      "path" : "Organization.address.type",
      "mustSupport" : true
    },
    {
      "id" : "Organization.address:Postfach.line",
      "path" : "Organization.address.line",
      "short" : "Postfach-Angabe",
      "comment" : "Die Postfach-Angabe SOLL angegeben werden, die Extensions zur strukurierten Erfassung KANN vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Organization.address:Postfach.line.extension:Strasse",
      "path" : "Organization.address.line.extension",
      "sliceName" : "Strasse",
      "max" : "0"
    },
    {
      "id" : "Organization.address:Postfach.line.extension:Hausnummer",
      "path" : "Organization.address.line.extension",
      "sliceName" : "Hausnummer",
      "max" : "0"
    },
    {
      "id" : "Organization.address:Postfach.line.extension:Adresszusatz",
      "path" : "Organization.address.line.extension",
      "sliceName" : "Adresszusatz",
      "max" : "0"
    },
    {
      "id" : "Organization.address:Postfach.line.extension:Postfach",
      "path" : "Organization.address.line.extension",
      "sliceName" : "Postfach",
      "comment" : "Die Extension zur strukurierten Erfassung des Postfach KANN vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Organization.address:Postfach.city",
      "path" : "Organization.address.city",
      "short" : "Ort",
      "comment" : "Der Ort SOLL vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Organization.address:Postfach.postalCode",
      "path" : "Organization.address.postalCode",
      "comment" : "Die Postleitzahl SOLL vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Organization.address:Postfach.country",
      "path" : "Organization.address.country",
      "short" : "Länderkennzeichen",
      "comment" : "Das Länderkennzeichen KANN vorhanden sein.",
      "mustSupport" : true
    }]
  }
}

```
