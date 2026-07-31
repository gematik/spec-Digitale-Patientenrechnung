# Digitale Patientenrechnung Person - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Person**

## Ressourcenprofil: Digitale Patientenrechnung Person 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/StructureDefinition/dipag-person | *Version*:1.1.0 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagPerson |

 
Das Profil DiPagPerson wird in für die Rolle 'Behandelnder Leistungserbringer' oder 'Abweichender Forderungsinhaber' verwendet. 

**Usages:**

* Refer to this Profile: [Digitale Patientenrechnung Rechnung](StructureDefinition-dipag-rechnung.md) and [Digitale Patientenrechnung Rechnungsposition](StructureDefinition-dipag-rechnungsposition.md)
* Examples for this Profile: [Practitioner/2b3c4d5e-6f7a-8b9c-0d1e-2f3a4b5c6d7e](Practitioner-2b3c4d5e-6f7a-8b9c-0d1e-2f3a4b5c6d7e.md), [Practitioner/c1d2e3f4-2b3c-4d5e-9f0a-1b2c3d4e5f6a](Practitioner-c1d2e3f4-2b3c-4d5e-9f0a-1b2c3d4e5f6a.md) and [Practitioner/d2e3f4a5-3c4d-5e6f-0a1b-2c3d4e5f6a7b](Practitioner-d2e3f4a5-3c4d-5e6f-0a1b-2c3d4e5f6a7b.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.gematik.dipag|current/StructureDefinition/StructureDefinition-dipag-person.json)

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

Diese Struktur ist abgeleitet von [Practitioner](http://hl7.org/fhir/R4/practitioner.html) 

#### Terminology Bindings (Differential)

#### Constraints

#### Terminology Bindings

#### Constraints

| | | |
| :--- | :--- | :--- |
| Practitioner.address |  |  |
| Practitioner.address:Postfach | Postfach | Das Postfach SOLL vorhanden sein. |
| Practitioner.address:Postfach.city | Ort | Der Ort SOLL vorhanden sein. |
| Practitioner.address:Postfach.country | Länderkennzeichen | Das Länderkennzeichen KANN vorhanden sein. |
| Practitioner.address:Postfach.line | Postfach-Angabe | Die Postfach-Angabe SOLL angegeben werden, die Extensions zur strukurierten Erfassung KANN vorhanden sein. |
| Practitioner.address:Postfach.line.extension:Postfach |  | Die Extension zur strukurierten Erfassung des Postfach KANN vorhanden sein. |
| Practitioner.address:Postfach.postalCode |  | Die Postleitzahl SOLL vorhanden sein. |
| Practitioner.address:Postfach.type |  |  |
| Practitioner.address:Strassenanschrift | Strassenanschrift der Arbeitsadresse | Die Strassenanschrift SOLL vorhanden sein. Es handelt sich hierbei um eine Arbeitsadresse, nicht um eine Privatadresse. |
| Practitioner.address:Strassenanschrift.city | Ort | Der Ort SOLL vorhanden sein. |
| Practitioner.address:Strassenanschrift.country | Länderkennzeichen | Das Länderkennzeichen KANN vorhanden sein. |
| Practitioner.address:Strassenanschrift.line | Straße und Hausnummer | Straße und Hausnummer SOLLEN angegeben werden, die Extensions zur strukurierten Erfassung KÖNNEN vorhanden sein. |
| Practitioner.address:Strassenanschrift.line.extension:Adresszusatz |  | Die Extension zur strukurierten Erfassung des Adresszusatz KANN vorhanden sein. |
| Practitioner.address:Strassenanschrift.line.extension:Hausnummer |  | Die Extension zur strukurierten Erfassung der Hausnummer KANN vorhanden sein. |
| Practitioner.address:Strassenanschrift.line.extension:Strasse |  | Die Extension zur strukurierten Erfassung der Straße KANN vorhanden sein. |
| Practitioner.address:Strassenanschrift.postalCode |  | Die Postleitzahl SOLL vorhanden sein. |
| Practitioner.address:Strassenanschrift.type |  |  |
| Practitioner.identifier |  |  |
| Practitioner.identifier:Telematik-ID | Telematik-ID (VZD-Eintrag) | Die Telematik-ID (VZD-Eintrag) SOLL vorhanden sein. |
| Practitioner.identifier:Telematik-ID.system |  |  |
| Practitioner.identifier:Telematik-ID.type |  |  |
| Practitioner.identifier:Telematik-ID.value | Telematik-ID (VZD-Eintrag) |  |
| Practitioner.identifier:USt-ID-Nr | Umsatzsteuer-Identifikationsnummer | Die Umsatzsteuer-Identifikationsnummer KANN vorhanden sein. Sie KANN vorkommen, wenn eine Institution die Rolle eines 'Abweichender Forderungsinhaber', sowie des 'Rechnungsersteller' inne hat. |
| Practitioner.identifier:USt-ID-Nr.type |  |  |
| Practitioner.identifier:USt-ID-Nr.value |  |  |
| Practitioner.name | Name | Der Name SOLL vorhanden sein. |
| Practitioner.name.family | Nachname | Der Nachname SOLL vorhanden sein, die Extensions zur strukurierten Erfassung KÖNNEN vorhanden sein. |
| Practitioner.name.family.extension:nachname |  | Die Extension zur strukurierten Erfassung des Nachnamen KANN vorhanden sein. |
| Practitioner.name.family.extension:namenszusatz |  | Die Extension zur strukurierten Erfassung des Namenszusatz KANN vorhanden sein. |
| Practitioner.name.family.extension:vorsatzwort |  | Die Extension zur strukurierten Erfassung des Vorsatzwort KANN vorhanden sein. |
| Practitioner.name.given |  | Der Vorname SOLL vorhanden sein. |
| Practitioner.name.prefix | Titel | Der Titel SOLL vorhanden sein, die Extension zur Qualifizierung KANN vorhanden sein. |
| Practitioner.name.prefix.extension:prefix-qualifier |  | Die Extension zur Qualifizierung des Titeks KANN vorhanden sein. |
| Practitioner.name.text | Voller Name inkl. Anrede | Die Anrede SOLLEN vorhanden sein. |
| Practitioner.name.use |  |  |
| Practitioner.qualification.code.coding.code |  |  |
| Practitioner.qualification.code.coding.system |  |  |
| Practitioner.telecom |  |  |
| Practitioner.telecom:Telefon | Telefon | Die Angabe einer Telefonnummer KANN vorhanden sein. Sie KANN vorkommen, wenn eine Person die Rolle eines 'Abweichender Forderungsinhaber' inne hat. |
| Practitioner.telecom:Telefon.system |  |  |
| Practitioner.telecom:Telefon.value | Telefonnummer |  |

Diese Struktur ist abgeleitet von [Practitioner](http://hl7.org/fhir/R4/practitioner.html) 

** Summary **

Mandatory: 0 element(6 nested mandatory elements)
 Must-Support: 41 elements
 Fixed: 1 element
 Prohibited: 4 elements

**Structures**

This structure refers to these other structures:

* [Identifier-Profil für die Telematik-ID (http://fhir.de/StructureDefinition/identifier-telematik-id)](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.de/StructureDefinition/identifier-telematik-id)
* [HumanName, deutsches Basisprofil (http://fhir.de/StructureDefinition/humanname-de-basis)](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.de/StructureDefinition/humanname-de-basis)
* [Adresse, deutsches Basisprofil (http://fhir.de/StructureDefinition/address-de-basis)](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.de/StructureDefinition/address-de-basis)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Practitioner.identifier
* The element 1 is sliced based on the value of Practitioner.telecom
* The element 1 is sliced based on the value of Practitioner.address

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [Practitioner](http://hl7.org/fhir/R4/practitioner.html) 

#### Terminology Bindings (Differential)

#### Constraints

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Practitioner](http://hl7.org/fhir/R4/practitioner.html) 

** Summary **

Mandatory: 0 element(6 nested mandatory elements)
 Must-Support: 41 elements
 Fixed: 1 element
 Prohibited: 4 elements

**Structures**

This structure refers to these other structures:

* [Identifier-Profil für die Telematik-ID (http://fhir.de/StructureDefinition/identifier-telematik-id)](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.de/StructureDefinition/identifier-telematik-id)
* [HumanName, deutsches Basisprofil (http://fhir.de/StructureDefinition/humanname-de-basis)](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.de/StructureDefinition/humanname-de-basis)
* [Adresse, deutsches Basisprofil (http://fhir.de/StructureDefinition/address-de-basis)](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.de/StructureDefinition/address-de-basis)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Practitioner.identifier
* The element 1 is sliced based on the value of Practitioner.telecom
* The element 1 is sliced based on the value of Practitioner.address

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-dipag-person.csv), [Excel](../StructureDefinition-dipag-person.xlsx), [Schematron](../StructureDefinition-dipag-person.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "dipag-person",
  "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-person",
  "version" : "1.1.0",
  "name" : "DiPagPerson",
  "title" : "Digitale Patientenrechnung Person",
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
  "description" : "Das Profil DiPagPerson wird in für die Rolle 'Behandelnder Leistungserbringer' oder 'Abweichender Forderungsinhaber' verwendet.",
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
  "type" : "Practitioner",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Practitioner",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Practitioner",
      "path" : "Practitioner"
    },
    {
      "id" : "Practitioner.identifier",
      "path" : "Practitioner.identifier",
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
      "id" : "Practitioner.identifier:Telematik-ID",
      "path" : "Practitioner.identifier",
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
      "id" : "Practitioner.identifier:Telematik-ID.type",
      "path" : "Practitioner.identifier.type",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:Telematik-ID.system",
      "path" : "Practitioner.identifier.system",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:Telematik-ID.value",
      "path" : "Practitioner.identifier.value",
      "short" : "Telematik-ID (VZD-Eintrag)",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:USt-ID-Nr",
      "path" : "Practitioner.identifier",
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
      "id" : "Practitioner.identifier:USt-ID-Nr.type",
      "path" : "Practitioner.identifier.type",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:USt-ID-Nr.system",
      "path" : "Practitioner.identifier.system",
      "comment" : "Es gibt kein FHIR-NamingSystem für die USt.-ID von offizieller Seite. Aus dem Grund ist System nicht mit MS gekennzeichnet und SOLL nicht befüllt sein."
    },
    {
      "id" : "Practitioner.identifier:USt-ID-Nr.value",
      "path" : "Practitioner.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.name",
      "path" : "Practitioner.name",
      "short" : "Name",
      "comment" : "Der Name SOLL vorhanden sein.",
      "type" : [{
        "code" : "HumanName",
        "profile" : ["http://fhir.de/StructureDefinition/humanname-de-basis"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.name.use",
      "path" : "Practitioner.name.use",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.name.text",
      "path" : "Practitioner.name.text",
      "short" : "Voller Name inkl. Anrede",
      "comment" : "Die Anrede SOLLEN vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.name.family",
      "path" : "Practitioner.name.family",
      "short" : "Nachname",
      "comment" : "Der Nachname SOLL vorhanden sein, die Extensions zur strukurierten Erfassung KÖNNEN vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.name.family.extension:namenszusatz",
      "path" : "Practitioner.name.family.extension",
      "sliceName" : "namenszusatz",
      "comment" : "Die Extension zur strukurierten Erfassung des Namenszusatz KANN vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.name.family.extension:nachname",
      "path" : "Practitioner.name.family.extension",
      "sliceName" : "nachname",
      "comment" : "Die Extension zur strukurierten Erfassung des Nachnamen KANN vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.name.family.extension:vorsatzwort",
      "path" : "Practitioner.name.family.extension",
      "sliceName" : "vorsatzwort",
      "comment" : "Die Extension zur strukurierten Erfassung des Vorsatzwort KANN vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.name.given",
      "path" : "Practitioner.name.given",
      "comment" : "Der Vorname SOLL vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.name.prefix",
      "path" : "Practitioner.name.prefix",
      "short" : "Titel",
      "comment" : "Der Titel SOLL vorhanden sein, die Extension zur Qualifizierung KANN vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.name.prefix.extension:prefix-qualifier",
      "path" : "Practitioner.name.prefix.extension",
      "sliceName" : "prefix-qualifier",
      "comment" : "Die Extension zur Qualifizierung des Titeks KANN vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.telecom",
      "path" : "Practitioner.telecom",
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
      "id" : "Practitioner.telecom:Telefon",
      "path" : "Practitioner.telecom",
      "sliceName" : "Telefon",
      "short" : "Telefon",
      "comment" : "Die Angabe einer Telefonnummer KANN vorhanden sein.\n  Sie KANN vorkommen, wenn eine Person die Rolle eines 'Abweichender Forderungsinhaber' inne hat.",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.telecom:Telefon.system",
      "path" : "Practitioner.telecom.system",
      "min" : 1,
      "fixedCode" : "phone",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.telecom:Telefon.value",
      "path" : "Practitioner.telecom.value",
      "short" : "Telefonnummer",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.address",
      "path" : "Practitioner.address",
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
      "id" : "Practitioner.address:Strassenanschrift",
      "path" : "Practitioner.address",
      "sliceName" : "Strassenanschrift",
      "short" : "Strassenanschrift der Arbeitsadresse",
      "comment" : "Die Strassenanschrift SOLL vorhanden sein. Es handelt sich hierbei um eine Arbeitsadresse, nicht um eine Privatadresse.",
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
      "id" : "Practitioner.address:Strassenanschrift.type",
      "path" : "Practitioner.address.type",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.address:Strassenanschrift.line",
      "path" : "Practitioner.address.line",
      "short" : "Straße und Hausnummer",
      "comment" : "Straße und Hausnummer SOLLEN angegeben werden, die Extensions zur strukurierten Erfassung KÖNNEN vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.address:Strassenanschrift.line.extension:Strasse",
      "path" : "Practitioner.address.line.extension",
      "sliceName" : "Strasse",
      "comment" : "Die Extension zur strukurierten Erfassung der Straße KANN vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.address:Strassenanschrift.line.extension:Hausnummer",
      "path" : "Practitioner.address.line.extension",
      "sliceName" : "Hausnummer",
      "comment" : "Die Extension zur strukurierten Erfassung der Hausnummer KANN vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.address:Strassenanschrift.line.extension:Adresszusatz",
      "path" : "Practitioner.address.line.extension",
      "sliceName" : "Adresszusatz",
      "comment" : "Die Extension zur strukurierten Erfassung des Adresszusatz KANN vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.address:Strassenanschrift.line.extension:Postfach",
      "path" : "Practitioner.address.line.extension",
      "sliceName" : "Postfach",
      "max" : "0"
    },
    {
      "id" : "Practitioner.address:Strassenanschrift.city",
      "path" : "Practitioner.address.city",
      "short" : "Ort",
      "comment" : "Der Ort SOLL vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.address:Strassenanschrift.postalCode",
      "path" : "Practitioner.address.postalCode",
      "comment" : "Die Postleitzahl SOLL vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.address:Strassenanschrift.country",
      "path" : "Practitioner.address.country",
      "short" : "Länderkennzeichen",
      "comment" : "Das Länderkennzeichen KANN vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.address:Postfach",
      "path" : "Practitioner.address",
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
        "source" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-person"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.address:Postfach.type",
      "path" : "Practitioner.address.type",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.address:Postfach.line",
      "path" : "Practitioner.address.line",
      "short" : "Postfach-Angabe",
      "comment" : "Die Postfach-Angabe SOLL angegeben werden, die Extensions zur strukurierten Erfassung KANN vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.address:Postfach.line.extension:Strasse",
      "path" : "Practitioner.address.line.extension",
      "sliceName" : "Strasse",
      "max" : "0"
    },
    {
      "id" : "Practitioner.address:Postfach.line.extension:Hausnummer",
      "path" : "Practitioner.address.line.extension",
      "sliceName" : "Hausnummer",
      "max" : "0"
    },
    {
      "id" : "Practitioner.address:Postfach.line.extension:Adresszusatz",
      "path" : "Practitioner.address.line.extension",
      "sliceName" : "Adresszusatz",
      "max" : "0"
    },
    {
      "id" : "Practitioner.address:Postfach.line.extension:Postfach",
      "path" : "Practitioner.address.line.extension",
      "sliceName" : "Postfach",
      "comment" : "Die Extension zur strukurierten Erfassung des Postfach KANN vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.address:Postfach.city",
      "path" : "Practitioner.address.city",
      "short" : "Ort",
      "comment" : "Der Ort SOLL vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.address:Postfach.postalCode",
      "path" : "Practitioner.address.postalCode",
      "comment" : "Die Postleitzahl SOLL vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.address:Postfach.country",
      "path" : "Practitioner.address.country",
      "short" : "Länderkennzeichen",
      "comment" : "Das Länderkennzeichen KANN vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.qualification.code",
      "path" : "Practitioner.qualification.code",
      "short" : "Fachrichtung",
      "comment" : "Die Fachrichtung SOLL vorhanden sein. Das Element ist wiederholbar.",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ihe-d.de/ValueSets/IHEXDSpracticeSettingCode"
      }
    },
    {
      "id" : "Practitioner.qualification.code.coding.system",
      "path" : "Practitioner.qualification.code.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.qualification.code.coding.code",
      "path" : "Practitioner.qualification.code.coding.code",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
