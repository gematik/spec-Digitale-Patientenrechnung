# BeispielDocumentReferenceRechnungRetrieve2 - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **BeispielDocumentReferenceRechnungRetrieve2**

## Beispiel DocumentReference: BeispielDocumentReferenceRechnungRetrieve2

Profile: [Digitale Patientenrechnung Dokumentenmetadaten Intern](StructureDefinition-dipag-dokumentenmetadaten-intern.md)

**identifier**: `https://gematik.de/fhir/sid/dipag-token`/123-456-123

**status**: Current

**type**: Rechnung ambulante/stationäre Behandlung

**subject**: Erika Mustermann

**description**: Rechnung Reiseimpfung vom 11.01.2024

> **content**

### Attachments

| | | |
| :--- | :--- | :--- |
| - | **ContentType** | **Url** |
| * | application/pdf | [[FD-endpunkt]/Binary/id-der-originalen-rechnung2](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/[FD-endpunkt]/Binary/id-der-originalen-rechnung2) |

**format**: [Digitale Patientenrechnung Attachment Format CS: originaleRechnung](CodeSystem-dipag-attachment-format-cs.md#dipag-attachment-format-cs-originaleRechnung) (Das originale PDF der Rechnung)

> **content**

### Attachments

| | | |
| :--- | :--- | :--- |
| - | **ContentType** | **Url** |
| * | application/fhir+json | [[FD-endpunkt]/Binary/id-des-strukturierten-rechnungsinhalts2](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/[FD-endpunkt]/Binary/id-des-strukturierten-rechnungsinhalts2) |

**format**: [Digitale Patientenrechnung Attachment Format CS: rechnungsinhalt](CodeSystem-dipag-attachment-format-cs.md#dipag-attachment-format-cs-rechnungsinhalt) (Strukturierter Rechnungsinhalt)

> **content**

### Attachments

| | | |
| :--- | :--- | :--- |
| - | **ContentType** | **Url** |
| * | application/pdf | [[FD-endpunkt]/Binary/id-des-angereicherten-pdfs2](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/[FD-endpunkt]/Binary/id-des-angereicherten-pdfs2) |

**format**: [Digitale Patientenrechnung Attachment Format CS: angereichertesPDF](CodeSystem-dipag-attachment-format-cs.md#dipag-attachment-format-cs-angereichertesPDF) (Digitale Patientenrechnungs Dokument mit eingebetteten strukturierten Rechnungsinhalt)



## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "BeispielDocumentReferenceRechnungRetrieve2",
  "meta" : {
    "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-dokumentenmetadaten-intern"]
  },
  "identifier" : [{
    "system" : "https://gematik.de/fhir/sid/dipag-token",
    "value" : "123-456-123"
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
    "display" : "Erika Mustermann"
  },
  "description" : "Rechnung Reiseimpfung vom 11.01.2024",
  "content" : [{
    "attachment" : {
      "contentType" : "application/pdf",
      "url" : "[FD-endpunkt]/Binary/id-der-originalen-rechnung2"
    },
    "format" : {
      "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-attachment-format-cs",
      "code" : "originaleRechnung"
    }
  },
  {
    "attachment" : {
      "contentType" : "application/fhir+json",
      "url" : "[FD-endpunkt]/Binary/id-des-strukturierten-rechnungsinhalts2"
    },
    "format" : {
      "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-attachment-format-cs",
      "code" : "rechnungsinhalt"
    }
  },
  {
    "attachment" : {
      "contentType" : "application/pdf",
      "url" : "[FD-endpunkt]/Binary/id-des-angereicherten-pdfs2"
    },
    "format" : {
      "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-attachment-format-cs",
      "code" : "angereichertesPDF"
    }
  }]
}

```
