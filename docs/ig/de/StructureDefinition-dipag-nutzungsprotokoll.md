# Digitale Patientenrechnung Nutzungsprotokoll - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Nutzungsprotokoll**

## Ressourcenprofil: Digitale Patientenrechnung Nutzungsprotokoll 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/StructureDefinition/dipag-nutzungsprotokoll | *Version*:1.0.8 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagNutzungsprotokoll |

 
Dieses Profil bildet einen Eintrag des Nutzungsprotokolls ab, mit dem Zugriffe und Interaktionen auf Rechnungen und Dokumente im Fachdienst protokolliert werden. 

**Usages:**

* Examples for this Profile: [AuditEvent/BeispielNutzungsprotokoll](AuditEvent-BeispielNutzungsprotokoll.md), [AuditEvent/BeispielNutzungsprotokollAutomatischLoeschen](AuditEvent-BeispielNutzungsprotokollAutomatischLoeschen.md), [AuditEvent/BeispielNutzungsprotokollAutomatischMarkierung](AuditEvent-BeispielNutzungsprotokollAutomatischMarkierung.md), [AuditEvent/BeispielNutzungsprotokollAutomatischPapierkorb](AuditEvent-BeispielNutzungsprotokollAutomatischPapierkorb.md)... Show 9 more, [AuditEvent/BeispielNutzungsprotokollBerechtigungAbfragen](AuditEvent-BeispielNutzungsprotokollBerechtigungAbfragen.md), [AuditEvent/BeispielNutzungsprotokollBerechtigungAnlegen](AuditEvent-BeispielNutzungsprotokollBerechtigungAnlegen.md), [AuditEvent/BeispielNutzungsprotokollBerechtigungBestaetigen](AuditEvent-BeispielNutzungsprotokollBerechtigungBestaetigen.md), [AuditEvent/BeispielNutzungsprotokollChangeStatus](AuditEvent-BeispielNutzungsprotokollChangeStatus.md), [AuditEvent/BeispielNutzungsprotokollEinreichenFrontend](AuditEvent-BeispielNutzungsprotokollEinreichenFrontend.md), [AuditEvent/BeispielNutzungsprotokollErase](AuditEvent-BeispielNutzungsprotokollErase.md), [AuditEvent/BeispielNutzungsprotokollNutzerkontoEinrichten](AuditEvent-BeispielNutzungsprotokollNutzerkontoEinrichten.md), [AuditEvent/BeispielNutzungsprotokollProcessFlag](AuditEvent-BeispielNutzungsprotokollProcessFlag.md) and [AuditEvent/BeispielNutzungsprotokollRetrieve](AuditEvent-BeispielNutzungsprotokollRetrieve.md)
* CapabilityStatements using this Profile: [CapabilityStatement Fachdienst E-Rechnung](CapabilityStatement-DiPagCapabilityStatementFD.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.gematik.dipag|current/StructureDefinition/StructureDefinition-dipag-nutzungsprotokoll.json)

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

Diese Struktur ist abgeleitet von [AuditEvent](http://hl7.org/fhir/R4/auditevent.html) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

| | | |
| :--- | :--- | :--- |
| AuditEvent.action |  | Angabe ob es sich um eine lesende/schreibende/ausführende Interaktion handelt. |
| AuditEvent.agent |  | Angaben zum Akteur (Nutzer oder DiPag FD), der den Zugriff durchgeführt hat. Siehe Abschnittt '4.8.6 Protokolleintrag'des Feature-Dokuments 'Digitale Patientenrechnung'. |
| AuditEvent.agent.type |  |  |
| AuditEvent.agent.who |  |  |
| AuditEvent.agent.who.display |  |  |
| AuditEvent.agent.who.identifier |  | Der Identifier wird vom Server gesetzt und kann entweder eine KVNR oder Telematik-ID sein. Im Falle einer Applikations-internen Aktivität muss die OID des FD gesetzt werden. |
| AuditEvent.entity |  |  |
| AuditEvent.entity.detail |  | Details zum Dokument, z.B. die Art der Interaktion |
| AuditEvent.entity.detail.type |  |  |
| AuditEvent.entity.detail.value[x]:valueString |  | Freitextliche Angabe zu den Details der Interaktion. Der Freitext soll verständlich und für die Anzeige im Frontend geeignet sein. |
| AuditEvent.entity:Binary |  |  |
| AuditEvent.entity:Binary.name |  | Freitextname des Dokumenten-Binary, auf das sich die Referenz bezieht |
| AuditEvent.entity:Binary.what.reference |  |  |
| AuditEvent.entity:Binary.what.type |  |  |
| AuditEvent.entity:DocumentReference |  |  |
| AuditEvent.entity:DocumentReference.name |  | Freitextname des Dokumentes, auf das sich die Referenz bezieht |
| AuditEvent.entity:DocumentReference.what.reference |  |  |
| AuditEvent.entity:DocumentReference.what.type |  |  |
| AuditEvent.entity:Versicherter |  |  |
| AuditEvent.entity:Versicherter.what.reference |  |  |
| AuditEvent.entity:Versicherter.what.type |  |  |
| AuditEvent.outcome |  | Angabe ob die zu protokollierende Interaktion erfolgreich ausgeführt werden konnte. |
| AuditEvent.recorded |  | Der Zeitpunkt des Zugriffs ist zu protokollieren. Siehe Abschnittt '4.8.6 Protokolleintrag'des Feature-Dokuments 'Digitale Patientenrechnung'. |
| AuditEvent.source.observer.display |  | Name des DiPag Fachdienst-Server, auf dem das Event ausgelöst wurde |
| AuditEvent.source.observer.identifier |  | Identifier (OID) des DiPag Fachdienst-Server, auf dem das Event ausgelöst wurde |
| AuditEvent.subtype |  | Erlaubt die Kodierung aller REST-API Operationen der Spec-Digitale Patientenrechnung |
| AuditEvent.type |  | Angabe ob es sich um eine zu protokollierende Nutzerinteraktion nach Abschnittt '5.5.9 Nutzerprotokolle' des Feature-Dokuments 'Digitale Patientenrechnung' handelt oder um eine durchgeführte REST-API-Interaktion durch den FD. |

Diese Struktur ist abgeleitet von [AuditEvent](http://hl7.org/fhir/R4/auditevent.html) 

** Summary **

Mandatory: 4 elements(6 nested mandatory elements)
 Must-Support: 27 elements

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of AuditEvent.entity
* The element 1 is sliced based on the value of AuditEvent.entity.detail.value[x]

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [AuditEvent](http://hl7.org/fhir/R4/auditevent.html) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [AuditEvent](http://hl7.org/fhir/R4/auditevent.html) 

** Summary **

Mandatory: 4 elements(6 nested mandatory elements)
 Must-Support: 27 elements

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of AuditEvent.entity
* The element 1 is sliced based on the value of AuditEvent.entity.detail.value[x]

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-dipag-nutzungsprotokoll.csv), [Excel](../StructureDefinition-dipag-nutzungsprotokoll.xlsx), [Schematron](../StructureDefinition-dipag-nutzungsprotokoll.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "dipag-nutzungsprotokoll",
  "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-nutzungsprotokoll",
  "version" : "1.0.8",
  "name" : "DiPagNutzungsprotokoll",
  "title" : "Digitale Patientenrechnung Nutzungsprotokoll",
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
  "description" : "Dieses Profil bildet einen Eintrag des Nutzungsprotokolls ab, mit dem Zugriffe und Interaktionen auf Rechnungen und Dokumente im Fachdienst protokolliert werden.",
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
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "dicom",
    "uri" : "http://nema.org/dicom",
    "name" : "DICOM Tag Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "w3c.prov",
    "uri" : "http://www.w3.org/ns/prov",
    "name" : "W3C PROV"
  },
  {
    "identity" : "fhirprovenance",
    "uri" : "http://hl7.org/fhir/provenance",
    "name" : "FHIR Provenance Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "AuditEvent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/AuditEvent",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "AuditEvent",
      "path" : "AuditEvent"
    },
    {
      "id" : "AuditEvent.type",
      "path" : "AuditEvent.type",
      "comment" : "Angabe ob es sich um eine zu protokollierende Nutzerinteraktion nach Abschnittt '5.5.9 Nutzerprotokolle' des Feature-Dokuments 'Digitale Patientenrechnung' handelt oder um eine durchgeführte REST-API-Interaktion durch den FD.",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://gematik.de/fhir/dipag/ValueSet/dipag-audit-event-type-vs"
      }
    },
    {
      "id" : "AuditEvent.subtype",
      "path" : "AuditEvent.subtype",
      "comment" : "Erlaubt die Kodierung aller REST-API Operationen der Spec-Digitale Patientenrechnung",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://gematik.de/fhir/dipag/ValueSet/dipag-audit-event-sub-type-vs"
      }
    },
    {
      "id" : "AuditEvent.action",
      "path" : "AuditEvent.action",
      "comment" : "Angabe ob es sich um eine lesende/schreibende/ausführende Interaktion handelt.",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.recorded",
      "path" : "AuditEvent.recorded",
      "comment" : "Der Zeitpunkt des Zugriffs ist zu protokollieren. Siehe Abschnittt '4.8.6 Protokolleintrag'des Feature-Dokuments 'Digitale Patientenrechnung'.",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.outcome",
      "path" : "AuditEvent.outcome",
      "comment" : "Angabe ob die zu protokollierende Interaktion erfolgreich ausgeführt werden konnte.",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.agent",
      "path" : "AuditEvent.agent",
      "comment" : "Angaben zum Akteur (Nutzer oder DiPag FD), der den Zugriff durchgeführt hat. Siehe Abschnittt '4.8.6 Protokolleintrag'des Feature-Dokuments 'Digitale Patientenrechnung'.",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.agent.type",
      "path" : "AuditEvent.agent.type",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://gematik.de/fhir/dipag/ValueSet/dipag-audit-event-agent-type-vs"
      }
    },
    {
      "id" : "AuditEvent.agent.who",
      "path" : "AuditEvent.agent.who",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.agent.who.identifier",
      "path" : "AuditEvent.agent.who.identifier",
      "comment" : "Der Identifier wird vom Server gesetzt und kann entweder eine KVNR oder Telematik-ID sein. Im Falle einer Applikations-internen Aktivität muss die OID des FD gesetzt werden.",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.agent.who.display",
      "path" : "AuditEvent.agent.who.display",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.source.observer.identifier",
      "path" : "AuditEvent.source.observer.identifier",
      "comment" : "Identifier (OID) des DiPag Fachdienst-Server, auf dem das Event ausgelöst wurde",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.source.observer.display",
      "path" : "AuditEvent.source.observer.display",
      "comment" : "Name des DiPag Fachdienst-Server, auf dem das Event ausgelöst wurde",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.entity",
      "path" : "AuditEvent.entity",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "what.type"
        }],
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.entity.detail",
      "path" : "AuditEvent.entity.detail",
      "comment" : "Details zum Dokument, z.B. die Art der Interaktion",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.entity.detail.type",
      "path" : "AuditEvent.entity.detail.type",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://gematik.de/fhir/dipag/ValueSet/dipag-audit-event-detail-vs"
      }
    },
    {
      "id" : "AuditEvent.entity.detail.value[x]",
      "path" : "AuditEvent.entity.detail.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "AuditEvent.entity.detail.value[x]:valueString",
      "path" : "AuditEvent.entity.detail.value[x]",
      "sliceName" : "valueString",
      "comment" : "Freitextliche Angabe zu den Details der Interaktion. Der Freitext soll verständlich und für die Anzeige im Frontend geeignet sein.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.entity:Versicherter",
      "path" : "AuditEvent.entity",
      "sliceName" : "Versicherter",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.entity:Versicherter.what",
      "path" : "AuditEvent.entity.what",
      "comment" : "Referenz auf das von der zu protokollierenden Interaktion betroffene Benutzerkonto im Fachdienst."
    },
    {
      "id" : "AuditEvent.entity:Versicherter.what.reference",
      "path" : "AuditEvent.entity.what.reference",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.entity:Versicherter.what.type",
      "path" : "AuditEvent.entity.what.type",
      "min" : 1,
      "patternUri" : "Patient",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.entity:DocumentReference",
      "path" : "AuditEvent.entity",
      "sliceName" : "DocumentReference",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.entity:DocumentReference.what",
      "path" : "AuditEvent.entity.what",
      "comment" : "Referenz auf alle betroffenen DocumentReference Resourcen"
    },
    {
      "id" : "AuditEvent.entity:DocumentReference.what.reference",
      "path" : "AuditEvent.entity.what.reference",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.entity:DocumentReference.what.type",
      "path" : "AuditEvent.entity.what.type",
      "min" : 1,
      "patternUri" : "DocumentReference",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.entity:DocumentReference.name",
      "path" : "AuditEvent.entity.name",
      "comment" : "Freitextname des Dokumentes, auf das sich die Referenz bezieht",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.entity:Binary",
      "path" : "AuditEvent.entity",
      "sliceName" : "Binary",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.entity:Binary.what",
      "path" : "AuditEvent.entity.what",
      "comment" : "Referenz auf alle betroffenen Binary   Resourcen"
    },
    {
      "id" : "AuditEvent.entity:Binary.what.reference",
      "path" : "AuditEvent.entity.what.reference",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.entity:Binary.what.type",
      "path" : "AuditEvent.entity.what.type",
      "min" : 1,
      "patternUri" : "Binary",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.entity:Binary.name",
      "path" : "AuditEvent.entity.name",
      "comment" : "Freitextname des Dokumenten-Binary, auf das sich die Referenz bezieht",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
