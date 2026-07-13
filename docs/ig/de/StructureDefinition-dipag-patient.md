# Digitale Patientenrechnung Patient - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Patient**

## Ressourcenprofil: Digitale Patientenrechnung Patient 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/StructureDefinition/dipag-patient | *Version*:1.0.8 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagPatient |

 
Das Profil DiPagPatient bildet eine versicherte Person in den Rollen 'Behandelte Person' oder 'Rechnungsempfänger' ab. 

**Usages:**

* Use this Profile: [Digitale Patientenrechnung - Rechnungsinhalte Bundle](StructureDefinition-dipag-rechnungsbundle.md)
* Refer to this Profile: [Digitale Patientenrechnung Rechnung](StructureDefinition-dipag-rechnung.md), [Digitale Patientenrechnung Rechnungsdiagnose](StructureDefinition-dipag-rechnungsdiagnose.md), [Digitale Patientenrechnung Rechnungsposition](StructureDefinition-dipag-rechnungsposition.md) and [Digitale Patientenrechnung Rechnungsprozedur](StructureDefinition-dipag-rechnungsprozedur.md)
* Examples for this Profile: [Patient/1a2b3c4d-5e6f-7a8b-9c0d-1e2f3a4b5c6d](Patient-1a2b3c4d-5e6f-7a8b-9c0d-1e2f3a4b5c6d.md) and [Patient/8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c](Patient-8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c.md)
* CapabilityStatements using this Profile: [CapabilityStatement Fachdienst E-Rechnung](CapabilityStatement-DiPagCapabilityStatementFD.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.gematik.dipag|current/StructureDefinition/StructureDefinition-dipag-patient.json)

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

Diese Struktur ist abgeleitet von [Patient](http://hl7.org/fhir/R4/patient.html) 

#### Constraints

#### Terminology Bindings

#### Constraints

| | | |
| :--- | :--- | :--- |
| Patient.address |  |  |
| Patient.address:Postfach | Postfach | Das Postfach SOLL vorhanden sein. |
| Patient.address:Postfach.city | Ort | Der Ort SOLL vorhanden sein. |
| Patient.address:Postfach.country | Länderkennzeichen | Das Länderkennzeichen KANN vorhanden sein. |
| Patient.address:Postfach.line | Postfach-Angabe | Die Postfach-Angabe SOLL angegeben werden, die Extensions zur strukurierten Erfassung KANN vorhanden sein. |
| Patient.address:Postfach.line.extension:Postfach |  | Die Extension zur strukurierten Erfassung des Postfach KANN vorhanden sein. |
| Patient.address:Postfach.postalCode |  | Die Postleitzahl SOLL vorhanden sein. |
| Patient.address:Postfach.type |  |  |
| Patient.address:Strassenanschrift | Strassenanschrift | Die Strassenanschrift SOLL vorhanden sein. |
| Patient.address:Strassenanschrift.city | Ort | Der Ort SOLL vorhanden sein. |
| Patient.address:Strassenanschrift.country | Länderkennzeichen | Das Länderkennzeichen KANN vorhanden sein. |
| Patient.address:Strassenanschrift.line | Straße und Hausnummer | Straße und Hausnummer SOLLEN angegeben werden, die Extensions zur strukurierten Erfassung KÖNNEN vorhanden sein. |
| Patient.address:Strassenanschrift.line.extension:Adresszusatz |  | Die Extension zur strukurierten Erfassung des Adresszusatz KANN vorhanden sein. |
| Patient.address:Strassenanschrift.line.extension:Hausnummer |  | Die Extension zur strukurierten Erfassung der Hausnummer KANN vorhanden sein. |
| Patient.address:Strassenanschrift.line.extension:Strasse |  | Die Extension zur strukurierten Erfassung der Straße KANN vorhanden sein. |
| Patient.address:Strassenanschrift.postalCode |  | Die Postleitzahl SOLL vorhanden sein. |
| Patient.address:Strassenanschrift.type |  |  |
| Patient.birthDate | Geburtsdatum | Das Geburtsdatum SOLL vorhanden sein. |
| Patient.identifier |  |  |
| Patient.identifier:KVNR | KVNR (Krankenversichertennummer) | Die KVNR MUSS vorkommen, wenn eine Person die Rolle des 'Rechnungsempfänger' inne hat. |
| Patient.identifier:KVNR.assigner |  |  |
| Patient.identifier:KVNR.assigner.identifier | IK-Nummer der Krankenkasse | Bei GKV-Versicherten Personen SOLL die IK-Nummer der Krankenkasse angegeben werden. |
| Patient.identifier:KVNR.assigner.identifier.system | System der IK-Nummer | Das System der IK-Nummer MUSS vorhanden sein. |
| Patient.identifier:KVNR.assigner.identifier.type |  |  |
| Patient.identifier:KVNR.assigner.identifier.value | IK-Nummer der Krankenkasse |  |
| Patient.identifier:KVNR.system | System des KVZ10 Code | Das System des KVZ10 Code MUSS vorhanden sein. |
| Patient.identifier:KVNR.type |  |  |
| Patient.identifier:KVNR.value | KVNR (Krankenversichertennummer) |  |
| Patient.name | Name | Der Name SOLL vorhanden sein. |
| Patient.name.family | Nachname | Der Nachname MUSS in der Rolle einer 'Behandelte Person' vorhanden sein. Der Nachname SOLL in der Rolle eines 'Rechnungsempfänger' vorhanden sein. Die Extensions zur strukurierten Erfassung KÖNNEN vorhanden sein. |
| Patient.name.family.extension:nachname |  | Die Extension zur strukurierten Erfassung des Nachnamen KANN vorhanden sein. |
| Patient.name.family.extension:namenszusatz |  | Die Extension zur strukurierten Erfassung des Namenszusatz KANN vorhanden sein. |
| Patient.name.family.extension:vorsatzwort |  | Die Extension zur strukurierten Erfassung des Vorsatzwort KANN vorhanden sein. |
| Patient.name.given |  | Der Vorname MUSS in der Rolle einer 'Behandelte Person' vorhanden sein. Der Vorname SOLL in der Rolle eines 'Rechnungsempfänger' vorhanden sein. |
| Patient.name.prefix | Titel | Der Titel SOLL vorhanden sein, die Extension zur Qualifizierung KANN vorhanden sein. |
| Patient.name.prefix.extension:prefix-qualifier |  | Die Extension zur Qualifizierung des Titeks KANN vorhanden sein. |
| Patient.name.text | Voller Name inkl. Anrede | Die Anrede SOLLEN vorhanden sein. |
| Patient.name.use |  |  |

Diese Struktur ist abgeleitet von [Patient](http://hl7.org/fhir/R4/patient.html) 

** Summary **

Mandatory: 0 element(3 nested mandatory elements)
 Must-Support: 38 elements
 Prohibited: 4 elements

**Structures**

This structure refers to these other structures:

* [Identifier-Profil für die 10-stellige Krankenversichertennummer (http://fhir.de/StructureDefinition/identifier-kvid-10)](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.de/StructureDefinition/identifier-kvid-10)
* [Identifier-Profil für die Abbildung eines Institutionskennzeichens (IKNR) (http://fhir.de/StructureDefinition/identifier-iknr)](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.de/StructureDefinition/identifier-iknr)
* [HumanName, deutsches Basisprofil (http://fhir.de/StructureDefinition/humanname-de-basis)](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.de/StructureDefinition/humanname-de-basis)
* [Adresse, deutsches Basisprofil (http://fhir.de/StructureDefinition/address-de-basis)](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.de/StructureDefinition/address-de-basis)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Patient.identifier
* The element 1 is sliced based on the value of Patient.address

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [Patient](http://hl7.org/fhir/R4/patient.html) 

#### Constraints

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Patient](http://hl7.org/fhir/R4/patient.html) 

** Summary **

Mandatory: 0 element(3 nested mandatory elements)
 Must-Support: 38 elements
 Prohibited: 4 elements

**Structures**

This structure refers to these other structures:

* [Identifier-Profil für die 10-stellige Krankenversichertennummer (http://fhir.de/StructureDefinition/identifier-kvid-10)](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.de/StructureDefinition/identifier-kvid-10)
* [Identifier-Profil für die Abbildung eines Institutionskennzeichens (IKNR) (http://fhir.de/StructureDefinition/identifier-iknr)](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.de/StructureDefinition/identifier-iknr)
* [HumanName, deutsches Basisprofil (http://fhir.de/StructureDefinition/humanname-de-basis)](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.de/StructureDefinition/humanname-de-basis)
* [Adresse, deutsches Basisprofil (http://fhir.de/StructureDefinition/address-de-basis)](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.de/StructureDefinition/address-de-basis)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Patient.identifier
* The element 1 is sliced based on the value of Patient.address

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-dipag-patient.csv), [Excel](../StructureDefinition-dipag-patient.xlsx), [Schematron](../StructureDefinition-dipag-patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "dipag-patient",
  "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-patient",
  "version" : "1.0.8",
  "name" : "DiPagPatient",
  "title" : "Digitale Patientenrechnung Patient",
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
  "description" : "Das Profil DiPagPatient bildet eine versicherte Person in den Rollen 'Behandelte Person' oder 'Rechnungsempfänger' ab.",
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
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient",
      "path" : "Patient"
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
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
      "id" : "Patient.identifier:KVNR",
      "path" : "Patient.identifier",
      "sliceName" : "KVNR",
      "short" : "KVNR (Krankenversichertennummer)",
      "comment" : "Die KVNR MUSS vorkommen, wenn eine Person die Rolle des 'Rechnungsempfänger' inne hat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://fhir.de/StructureDefinition/identifier-kvid-10"]
      }],
      "patternIdentifier" : {
        "type" : {
          "coding" : [{
            "system" : "http://fhir.de/CodeSystem/identifier-type-de-basis",
            "code" : "KVZ10"
          }]
        }
      },
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:KVNR.type",
      "path" : "Patient.identifier.type",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:KVNR.system",
      "path" : "Patient.identifier.system",
      "short" : "System des KVZ10 Code",
      "comment" : "Das System des KVZ10 Code MUSS vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:KVNR.value",
      "path" : "Patient.identifier.value",
      "short" : "KVNR (Krankenversichertennummer)",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:KVNR.assigner",
      "path" : "Patient.identifier.assigner",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:KVNR.assigner.identifier",
      "path" : "Patient.identifier.assigner.identifier",
      "short" : "IK-Nummer der Krankenkasse",
      "comment" : "Bei GKV-Versicherten Personen SOLL die IK-Nummer der Krankenkasse angegeben werden.",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://fhir.de/StructureDefinition/identifier-iknr"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:KVNR.assigner.identifier.type",
      "path" : "Patient.identifier.assigner.identifier.type",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:KVNR.assigner.identifier.system",
      "path" : "Patient.identifier.assigner.identifier.system",
      "short" : "System der IK-Nummer",
      "comment" : "Das System der IK-Nummer MUSS vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:KVNR.assigner.identifier.value",
      "path" : "Patient.identifier.assigner.identifier.value",
      "short" : "IK-Nummer der Krankenkasse",
      "mustSupport" : true
    },
    {
      "id" : "Patient.name",
      "path" : "Patient.name",
      "short" : "Name",
      "comment" : "Der Name SOLL vorhanden sein.",
      "type" : [{
        "code" : "HumanName",
        "profile" : ["http://fhir.de/StructureDefinition/humanname-de-basis"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.name.use",
      "path" : "Patient.name.use",
      "mustSupport" : true
    },
    {
      "id" : "Patient.name.text",
      "path" : "Patient.name.text",
      "short" : "Voller Name inkl. Anrede",
      "comment" : "Die Anrede SOLLEN vorhanden sein.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.name.family",
      "path" : "Patient.name.family",
      "short" : "Nachname",
      "comment" : "Der Nachname MUSS in der Rolle einer 'Behandelte Person' vorhanden sein.\n    Der Nachname SOLL in der Rolle eines 'Rechnungsempfänger' vorhanden sein.\n    Die Extensions zur strukurierten Erfassung KÖNNEN vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Patient.name.family.extension:namenszusatz",
      "path" : "Patient.name.family.extension",
      "sliceName" : "namenszusatz",
      "comment" : "Die Extension zur strukurierten Erfassung des Namenszusatz KANN vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Patient.name.family.extension:nachname",
      "path" : "Patient.name.family.extension",
      "sliceName" : "nachname",
      "comment" : "Die Extension zur strukurierten Erfassung des Nachnamen KANN vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Patient.name.family.extension:vorsatzwort",
      "path" : "Patient.name.family.extension",
      "sliceName" : "vorsatzwort",
      "comment" : "Die Extension zur strukurierten Erfassung des Vorsatzwort KANN vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Patient.name.given",
      "path" : "Patient.name.given",
      "comment" : "Der Vorname MUSS in der Rolle einer 'Behandelte Person' vorhanden sein.\n    Der Vorname SOLL in der Rolle eines 'Rechnungsempfänger' vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Patient.name.prefix",
      "path" : "Patient.name.prefix",
      "short" : "Titel",
      "comment" : "Der Titel SOLL vorhanden sein, die Extension zur Qualifizierung KANN vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Patient.name.prefix.extension:prefix-qualifier",
      "path" : "Patient.name.prefix.extension",
      "sliceName" : "prefix-qualifier",
      "comment" : "Die Extension zur Qualifizierung des Titeks KANN vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Patient.birthDate",
      "path" : "Patient.birthDate",
      "short" : "Geburtsdatum",
      "comment" : "Das Geburtsdatum SOLL vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Patient.address",
      "path" : "Patient.address",
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
      "id" : "Patient.address:Strassenanschrift",
      "path" : "Patient.address",
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
      "id" : "Patient.address:Strassenanschrift.type",
      "path" : "Patient.address.type",
      "mustSupport" : true
    },
    {
      "id" : "Patient.address:Strassenanschrift.line",
      "path" : "Patient.address.line",
      "short" : "Straße und Hausnummer",
      "comment" : "Straße und Hausnummer SOLLEN angegeben werden, die Extensions zur strukurierten Erfassung KÖNNEN vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Patient.address:Strassenanschrift.line.extension:Strasse",
      "path" : "Patient.address.line.extension",
      "sliceName" : "Strasse",
      "comment" : "Die Extension zur strukurierten Erfassung der Straße KANN vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Patient.address:Strassenanschrift.line.extension:Hausnummer",
      "path" : "Patient.address.line.extension",
      "sliceName" : "Hausnummer",
      "comment" : "Die Extension zur strukurierten Erfassung der Hausnummer KANN vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Patient.address:Strassenanschrift.line.extension:Adresszusatz",
      "path" : "Patient.address.line.extension",
      "sliceName" : "Adresszusatz",
      "comment" : "Die Extension zur strukurierten Erfassung des Adresszusatz KANN vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Patient.address:Strassenanschrift.line.extension:Postfach",
      "path" : "Patient.address.line.extension",
      "sliceName" : "Postfach",
      "max" : "0"
    },
    {
      "id" : "Patient.address:Strassenanschrift.city",
      "path" : "Patient.address.city",
      "short" : "Ort",
      "comment" : "Der Ort SOLL vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Patient.address:Strassenanschrift.postalCode",
      "path" : "Patient.address.postalCode",
      "comment" : "Die Postleitzahl SOLL vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Patient.address:Strassenanschrift.country",
      "path" : "Patient.address.country",
      "short" : "Länderkennzeichen",
      "comment" : "Das Länderkennzeichen KANN vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Patient.address:Postfach",
      "path" : "Patient.address",
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
        "source" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-patient"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.address:Postfach.type",
      "path" : "Patient.address.type",
      "mustSupport" : true
    },
    {
      "id" : "Patient.address:Postfach.line",
      "path" : "Patient.address.line",
      "short" : "Postfach-Angabe",
      "comment" : "Die Postfach-Angabe SOLL angegeben werden, die Extensions zur strukurierten Erfassung KANN vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Patient.address:Postfach.line.extension:Strasse",
      "path" : "Patient.address.line.extension",
      "sliceName" : "Strasse",
      "max" : "0"
    },
    {
      "id" : "Patient.address:Postfach.line.extension:Hausnummer",
      "path" : "Patient.address.line.extension",
      "sliceName" : "Hausnummer",
      "max" : "0"
    },
    {
      "id" : "Patient.address:Postfach.line.extension:Adresszusatz",
      "path" : "Patient.address.line.extension",
      "sliceName" : "Adresszusatz",
      "max" : "0"
    },
    {
      "id" : "Patient.address:Postfach.line.extension:Postfach",
      "path" : "Patient.address.line.extension",
      "sliceName" : "Postfach",
      "comment" : "Die Extension zur strukurierten Erfassung des Postfach KANN vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Patient.address:Postfach.city",
      "path" : "Patient.address.city",
      "short" : "Ort",
      "comment" : "Der Ort SOLL vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Patient.address:Postfach.postalCode",
      "path" : "Patient.address.postalCode",
      "comment" : "Die Postleitzahl SOLL vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Patient.address:Postfach.country",
      "path" : "Patient.address.country",
      "short" : "Länderkennzeichen",
      "comment" : "Das Länderkennzeichen KANN vorhanden sein.",
      "mustSupport" : true
    }]
  }
}

```
