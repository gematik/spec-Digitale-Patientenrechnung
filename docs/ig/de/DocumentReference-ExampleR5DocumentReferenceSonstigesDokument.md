# ExampleR5DocumentReferenceSonstigesDokument - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **ExampleR5DocumentReferenceSonstigesDokument**

## Beispiel DocumentReference: ExampleR5DocumentReferenceSonstigesDokument

Profile: [Digitale Patientenrechnung Dokumentenmetadaten Intern](StructureDefinition-dipag-dokumentenmetadaten-intern.md)

**identifier**: `https://gematik.de/fhir/sid/dipag-token`/a1c4f7e2b9d6038c5e1a4b7d0f3c6e9a2d5b8c1e4f70a3d6b9c2e5f8a1d4b7c0, Anhangsidentifikator/987-654-321

**status**: Current

**type**: Molekularpathologiebefund

**subject**: Max Mustermann

**description**: Molekularpathologiebefund vom 31.12.21

> **content**

### Attachments

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Extension** | **ContentType** | **Url** |
| * |  | application/pdf | [[FD-endpunkt]/Binary/id-des-anhangs](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/[FD-endpunkt]/Binary/id-des-anhangs) |

**format**: [Digitale Patientenrechnung Attachment Format CS: rechnungsanhang](CodeSystem-dipag-attachment-format-cs.md#dipag-attachment-format-cs-rechnungsanhang) (Rechnungsanhang)

### Contexts

| | |
| :--- | :--- |
| - | **Related** |
| * | [Manfred Mustermann Male, DoB Unknown ( http://fhir.de/sid/gkv/kvid-10#NamingSystemKVID#A000000000)](Patient-BeispielPatient3-FD.md) |



## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "ExampleR5DocumentReferenceSonstigesDokument",
  "meta" : {
    "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-dokumentenmetadaten-intern"]
  },
  "identifier" : [{
    "system" : "https://gematik.de/fhir/sid/dipag-token",
    "value" : "a1c4f7e2b9d6038c5e1a4b7d0f3c6e9a2d5b8c1e4f70a3d6b9c2e5f8a1d4b7c0"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-identifier-type-cs",
        "code" : "anhang"
      }]
    },
    "system" : "https://example.org/fhir/sid/anhangids",
    "value" : "987-654-321"
  }],
  "status" : "current",
  "type" : {
    "coding" : [{
      "system" : "http://dvmd.de/fhir/CodeSystem/kdl",
      "code" : "PT130102",
      "display" : "Molekularpathologiebefund"
    }]
  },
  "subject" : {
    "display" : "Max Mustermann"
  },
  "description" : "Molekularpathologiebefund vom 31.12.21",
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
          "data" : "QW5oYW5nRG9rdW1lbnRTaWduYXR1ckZEMjAyNjAyMTFkbHBxcnN0dXY="
        }
      }],
      "contentType" : "application/pdf",
      "url" : "[FD-endpunkt]/Binary/id-des-anhangs"
    },
    "format" : {
      "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-attachment-format-cs",
      "code" : "rechnungsanhang"
    }
  }],
  "context" : {
    "related" : [{
      "reference" : "Patient/BeispielPatient3-FD",
      "type" : "Patient"
    }]
  }
}

```
