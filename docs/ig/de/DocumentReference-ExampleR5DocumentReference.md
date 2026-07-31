# Example DiPag Document Reference - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Example DiPag Document Reference**

## Beispiel DocumentReference: Example DiPag Document Reference

Profile: [Digitale Patientenrechnung Dokumentenmetadaten Intern](StructureDefinition-dipag-dokumentenmetadaten-intern.md)

Tag: [Offen (Details: Digitale Patientenrechnung Rechnungsstatus CS code offen = 'Offen')](CodeSystem-dipag-rechnungsstatus-cs.md)

**Digitale Patientenrechnung DocumentReference Rechnungsdatum**: 2023-09-28 13:00:00+0200

**Digitale Patientenrechnung Zahlungsziel**: 2023-10-28

**Digitale Patientenrechnung DocumentReference Gesamtbetrag**: €16,20 (EUR)

**Digitale Patientenrechnung DocRef Signature**: No display for Signature (type: Review Signature (Signature Type Codes#1.2.840.10065.1.12.1.13); when: 2026-02-11 10:00:00+0100; who: id: OID:1.2.276.0.76.4.323; data: ZXlKaGJHY2lPaUpJVXpJMU5pSXNJbXRwWkNJNkltVjRZVzUwSW4wLi4u)

**identifier**: `https://gematik.de/fhir/sid/dipag-token`/d0ab9ed15c5eb41afde78b16a42e1f84d9b2818c1c48406233ac4e237e85e7f2, Rechnungsnummer/123456789

**status**: Current

**type**: Rechnung ambulante/stationäre Behandlung

**subject**: Max Mustermann

**author**: Dr. Hausarzt (Identifier: `https://gematik.de/fhir/sid/telematik-id`/987654321)

**description**: Laborbefund vom 28.9.2023

> **content**

### Attachments

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Extension** | **ContentType** | **Url** |
| * |  | application/pdf | [[FD-endpunkt]/Binary/id-der-originalen-Rechnung](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/[FD-endpunkt]/Binary/id-der-originalen-Rechnung) |

**format**: [Digitale Patientenrechnung Attachment Format CS: originaleRechnung](CodeSystem-dipag-attachment-format-cs.md#dipag-attachment-format-cs-originaleRechnung) (Das originale PDF der Rechnung)

> **content**

### Attachments

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Extension** | **ContentType** | **Url** |
| * |  | application/pdf | [[FD-endpunkt]/Binary/id-des-angereicherten-PDFs](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/[FD-endpunkt]/Binary/id-des-angereicherten-PDFs) |

**format**: [Digitale Patientenrechnung Attachment Format CS: angereichertesPDF](CodeSystem-dipag-attachment-format-cs.md#dipag-attachment-format-cs-angereichertesPDF) (Digitale Patientenrechnungs Dokument mit eingebetteten strukturierten Rechnungsinhalt)

> **content**

### Attachments

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Extension** | **ContentType** | **Url** |
| * |  | application/fhir+json | [[FD-endpunkt]/Binary/id-des-strukturierten-Rechnungsinhalts](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/[FD-endpunkt]/Binary/id-des-strukturierten-Rechnungsinhalts) |

**format**: [Digitale Patientenrechnung Attachment Format CS: rechnungsinhalt](CodeSystem-dipag-attachment-format-cs.md#dipag-attachment-format-cs-rechnungsinhalt) (Strukturierter Rechnungsinhalt)

> **context****related**: 
* [Manfred Mustermann Male, DoB Unknown ( http://fhir.de/sid/gkv/kvid-10#NamingSystemKVID#A000000000)](Patient-BeispielPatient3-FD.md)
* [DocumentReference: identifier = https://gematik.de/fhir/sid/dipag-token#a1c4f7e2b9d6038c5e1a4b7d0f3c6e9a2d5b8c1e4f70a3d6b9c2e5f8a1d4b7c0,Anhangsidentifikator; status = current; type = Molekularpathologiebefund; description = Molekularpathologiebefund vom 31.12.21](DocumentReference-ExampleR5DocumentReferenceSonstigesDokument.md)



## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "ExampleR5DocumentReference",
  "meta" : {
    "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-dokumentenmetadaten-intern"],
    "tag" : [{
      "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnungsstatus-cs",
      "code" : "offen",
      "display" : "Offen"
    }]
  },
  "extension" : [{
    "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-documentreference-rechnungsdatum",
    "valueDateTime" : "2023-09-28T13:00:00.123+02:00"
  },
  {
    "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-zahlungsziel",
    "valueDate" : "2023-10-28"
  },
  {
    "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-documentreference-gesamtbetrag",
    "valueMoney" : {
      "value" : 16.2,
      "currency" : "EUR"
    }
  },
  {
    "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-docref-signature",
    "valueSignature" : {
      "type" : [{
        "system" : "urn:iso-astm:E1762-95:2013",
        "code" : "1.2.840.10065.1.12.1.13"
      }],
      "when" : "2026-02-11T10:00:00+01:00",
      "who" : {
        "identifier" : {
          "system" : "urn:ietf:rfc:3986",
          "value" : "urn:oid:1.2.276.0.76.4.323"
        }
      },
      "data" : "ZXlKaGJHY2lPaUpJVXpJMU5pSXNJbXRwWkNJNkltVjRZVzUwSW4wLi4u"
    }
  }],
  "identifier" : [{
    "system" : "https://gematik.de/fhir/sid/dipag-token",
    "value" : "d0ab9ed15c5eb41afde78b16a42e1f84d9b2818c1c48406233ac4e237e85e7f2"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-identifier-type-cs",
        "code" : "invoice"
      }]
    },
    "system" : "http://example.com/fhir/identifiers",
    "value" : "123456789"
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
  "author" : [{
    "identifier" : {
      "system" : "https://gematik.de/fhir/sid/telematik-id",
      "value" : "987654321"
    },
    "display" : "Dr. Hausarzt"
  }],
  "description" : "Laborbefund vom 28.9.2023",
  "content" : [{
    "attachment" : {
      "extension" : [{
        "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-docref-signature",
        "valueSignature" : {
          "type" : [{
            "system" : "urn:iso-astm:E1762-95:2013",
            "code" : "1.2.840.10065.1.12.1.13"
          }],
          "when" : "2026-02-11T10:00:00+01:00",
          "who" : {
            "identifier" : {
              "system" : "urn:ietf:rfc:3986",
              "value" : "urn:oid:1.2.276.0.76.4.323"
            }
          },
          "data" : "SGFzaE9yaWdpbmFsUkVjaG51bmdQREZBc2lnbmVkQnlGRDIwMjYwMjEx"
        }
      }],
      "contentType" : "application/pdf",
      "url" : "[FD-endpunkt]/Binary/id-der-originalen-Rechnung"
    },
    "format" : {
      "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-attachment-format-cs",
      "code" : "originaleRechnung"
    }
  },
  {
    "attachment" : {
      "extension" : [{
        "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-docref-signature",
        "valueSignature" : {
          "type" : [{
            "system" : "urn:iso-astm:E1762-95:2013",
            "code" : "1.2.840.10065.1.12.1.13"
          }],
          "when" : "2026-02-11T10:00:00+01:00",
          "who" : {
            "identifier" : {
              "system" : "urn:ietf:rfc:3986",
              "value" : "urn:oid:1.2.276.0.76.4.323"
            }
          },
          "data" : "SGFzaEFuZ2VyZWljaGVydGVzUERGc2lnbmVkQnlGRDIwMjYwMjExQVA="
        }
      }],
      "contentType" : "application/pdf",
      "url" : "[FD-endpunkt]/Binary/id-des-angereicherten-PDFs"
    },
    "format" : {
      "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-attachment-format-cs",
      "code" : "angereichertesPDF"
    }
  },
  {
    "attachment" : {
      "extension" : [{
        "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-docref-signature",
        "valueSignature" : {
          "type" : [{
            "system" : "urn:iso-astm:E1762-95:2013",
            "code" : "1.2.840.10065.1.12.1.13"
          }],
          "when" : "2026-02-11T10:00:00+01:00",
          "who" : {
            "identifier" : {
              "system" : "urn:ietf:rfc:3986",
              "value" : "urn:oid:1.2.276.0.76.4.323"
            }
          },
          "data" : "U3RydWt0dXJpZXJ0ZXJJbmhhbHRTaWduYXR1ckZEMjAyNjAyMTFmamg="
        }
      }],
      "contentType" : "application/fhir+json",
      "url" : "[FD-endpunkt]/Binary/id-des-strukturierten-Rechnungsinhalts"
    },
    "format" : {
      "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-attachment-format-cs",
      "code" : "rechnungsinhalt"
    }
  }],
  "context" : {
    "related" : [{
      "reference" : "Patient/BeispielPatient3-FD",
      "type" : "Patient"
    },
    {
      "reference" : "DocumentReference/ExampleR5DocumentReferenceSonstigesDokument",
      "type" : "DocumentReference"
    }]
  }
}

```
