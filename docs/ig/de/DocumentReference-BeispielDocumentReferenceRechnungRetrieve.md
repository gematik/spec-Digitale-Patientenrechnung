# BeispielDocumentReferenceRechnungRetrieve - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **BeispielDocumentReferenceRechnungRetrieve**

## Beispiel DocumentReference: BeispielDocumentReferenceRechnungRetrieve

Profile: [Digitale Patientenrechnung Dokumentenmetadaten Intern](StructureDefinition-dipag-dokumentenmetadaten-intern.md)

Tag: [Offen (Details: Digitale Patientenrechnung Rechnungsstatus CS code offen = 'Offen')](CodeSystem-dipag-rechnungsstatus-cs.md)

**Digitale Patientenrechnung DocumentReference Rechnungsdatum**: 2024-01-10

**Digitale Patientenrechnung Zahlungsziel**: 2024-02-10

**Digitale Patientenrechnung DocumentReference Gesamtbetrag**: €120,00 (EUR)

**Digitale Patientenrechnung DocRef Fachrichtung**: [Aerztliche Fachrichtungen: ALLG](https://simplifier.net/resolve?scope=de.ihe-d.terminology@3.0.1&canonical=http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen#AerztlicheFachrichtungen-ALLG) (Allgemeinmedizin)

**Digitale Patientenrechnung Extension Behandlungsart**: [ActCode: AMB](http://terminology.hl7.org/7.2.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (ambulatory)

**identifier**: `https://gematik.de/fhir/sid/dipag-token`/123-456-789

**status**: Current

**type**: Rechnung ambulante/stationäre Behandlung

**subject**: Max Mustermann

**description**: Rechnung Reiseimpfung vom 10.01.2024

> **content**

### Attachments

| | | |
| :--- | :--- | :--- |
| - | **ContentType** | **Url** |
| * | application/pdf | [[FD-endpunkt]/Binary/id-der-originalen-rechnung](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/[FD-endpunkt]/Binary/id-der-originalen-rechnung) |

**format**: [Digitale Patientenrechnung Attachment Format CS: originaleRechnung](CodeSystem-dipag-attachment-format-cs.md#dipag-attachment-format-cs-originaleRechnung) (Das originale PDF der Rechnung)

> **content**

### Attachments

| | | |
| :--- | :--- | :--- |
| - | **ContentType** | **Url** |
| * | application/pdf | [[FD-endpunkt]/Binary/id-der-angereicherten-rechnung](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/[FD-endpunkt]/Binary/id-der-angereicherten-rechnung) |

**format**: [Digitale Patientenrechnung Attachment Format CS: angereichertesPDF](CodeSystem-dipag-attachment-format-cs.md#dipag-attachment-format-cs-angereichertesPDF) (Digitale Patientenrechnungs Dokument mit eingebetteten strukturierten Rechnungsinhalt)

> **content**

### Attachments

| | | |
| :--- | :--- | :--- |
| - | **ContentType** | **Url** |
| * | application/fhir+json | [[FD-endpunkt]/Binary/id-des-strukturierten-Rechnungsinhalts](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/[FD-endpunkt]/Binary/id-des-strukturierten-Rechnungsinhalts) |

**format**: [Digitale Patientenrechnung Attachment Format CS: rechnungsinhalt](CodeSystem-dipag-attachment-format-cs.md#dipag-attachment-format-cs-rechnungsinhalt) (Strukturierter Rechnungsinhalt)



## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "BeispielDocumentReferenceRechnungRetrieve",
  "meta" : {
    "extension" : [{
      "extension" : [{
        "url" : "markierung",
        "valueCoding" : {
          "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-markierung-cs",
          "code" : "eingereicht-frontend",
          "display" : "Eingereicht (per Frontend)"
        }
      },
      {
        "url" : "zeitpunkt",
        "valueDateTime" : "2024-01-15T10:00:00Z"
      }],
      "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-documentreference-markierung"
    }],
    "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-dokumentenmetadaten-intern"],
    "tag" : [{
      "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnungsstatus-cs",
      "code" : "offen",
      "display" : "Offen"
    }]
  },
  "extension" : [{
    "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-documentreference-rechnungsdatum",
    "valueDateTime" : "2024-01-10"
  },
  {
    "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-zahlungsziel",
    "valueDate" : "2024-02-10"
  },
  {
    "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-documentreference-gesamtbetrag",
    "valueMoney" : {
      "value" : 120,
      "currency" : "EUR"
    }
  },
  {
    "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-docref-fachrichtung",
    "valueCoding" : {
      "system" : "http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen",
      "code" : "ALLG",
      "display" : "Allgemeinmedizin"
    }
  },
  {
    "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-behandlungsart",
    "valueCoding" : {
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
      "code" : "AMB"
    }
  }],
  "identifier" : [{
    "system" : "https://gematik.de/fhir/sid/dipag-token",
    "value" : "123-456-789"
  }],
  "status" : "current",
  "type" : {
    "coding" : [{
      "system" : "http://dvmd.de/fhir/CodeSystem/kdl",
      "code" : "AM010106",
      "display" : "Rechnung ambulante/stationäre Behandlung"
    }]
  },
  "subject" : {
    "display" : "Max Mustermann"
  },
  "description" : "Rechnung Reiseimpfung vom 10.01.2024",
  "content" : [{
    "attachment" : {
      "contentType" : "application/pdf",
      "url" : "[FD-endpunkt]/Binary/id-der-originalen-rechnung"
    },
    "format" : {
      "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-attachment-format-cs",
      "code" : "originaleRechnung"
    }
  },
  {
    "attachment" : {
      "contentType" : "application/pdf",
      "url" : "[FD-endpunkt]/Binary/id-der-angereicherten-rechnung"
    },
    "format" : {
      "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-attachment-format-cs",
      "code" : "angereichertesPDF"
    }
  },
  {
    "attachment" : {
      "contentType" : "application/fhir+json",
      "url" : "[FD-endpunkt]/Binary/id-des-strukturierten-Rechnungsinhalts"
    },
    "format" : {
      "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-attachment-format-cs",
      "code" : "rechnungsinhalt"
    }
  }]
}

```
