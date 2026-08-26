
Instance: ExampleR5DocumentReference
InstanceOf: DiPagDokumentenmetadatenIntern
Title: "Example DiPag Document Reference"
* extension[rechnungsdatum].valueDateTime = "2023-09-28T13:00:00.123+02:00"
* extension[zahlungszieldatum].valueDate = "2023-10-28"
* extension[gesamtbetrag].valueMoney
  * value = 16.20
  * currency = #EUR
* extension[docRef-signature].url = "https://gematik.de/fhir/dipag/StructureDefinition/dipag-docref-signature"
* extension[docRef-signature].valueSignature
  * type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.13
  * when = "2026-02-11T10:00:00+01:00"
  * who
    * identifier
      * system = "urn:ietf:rfc:3986"
      * value = "urn:oid:1.2.276.0.76.4.323"
  * data = "ZXlKaGJHY2lPaUpJVXpJMU5pSXNJbXRwWkNJNkltVjRZVzUwSW4wLi4u"
* author.identifier.value = "987654321"
* meta.tag[0] = https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnungsstatus-cs#offen
* meta.tag[0].display = "Offen"
* status = http://hl7.org/fhir/document-reference-status#current
* identifier[Token].system = "https://gematik.de/fhir/sid/dipag-token"
* identifier[Token].value = "d0ab9ed15c5eb41afde78b16a42e1f84d9b2818c1c48406233ac4e237e85e7f2"
* identifier[Rechnungsnummer].type = DiPagRechnungIdentifierTypeCS#invoice
* identifier[Rechnungsnummer].system = "http://example.com/fhir/identifiers"
* identifier[Rechnungsnummer].value = "123456789"
* type.coding[Rechnungstyp] = http://dvmd.de/fhir/CodeSystem/kdl#AM010106
* type.coding[Rechnungstyp].display = "Rechnung ambulante/stationäre Behandlung"
* description = "Laborbefund vom 28.9.2023"
* subject.display = "Max Mustermann"
* author.identifier.system = "https://gematik.de/fhir/sid/telematik-id"
* author.identifier.value = "987654321"
* author.display = "Dr. Hausarzt"
* content[originaleRechnung].attachment.contentType = #application/pdf
* content[originaleRechnung].attachment.url = "[FD-endpunkt]/Binary/id-der-originalen-Rechnung"
* content[originaleRechnung].attachment.extension[signature].valueSignature
  * type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.13
  * when = "2026-02-11T10:00:00+01:00"
  * who
    * identifier
      * system = "urn:ietf:rfc:3986"
      * value = "urn:oid:1.2.276.0.76.4.323"
  * data = "SGFzaE9yaWdpbmFsUkVjaG51bmdQREZBc2lnbmVkQnlGRDIwMjYwMjEx"
* content[angereicherteRechnung].attachment.contentType = #application/pdf
* content[angereicherteRechnung].attachment.url = "[FD-endpunkt]/Binary/id-des-angereicherten-PDFs"
* content[angereicherteRechnung].attachment.extension[signature].valueSignature
  * type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.13
  * when = "2026-02-11T10:00:00+01:00"
  * who
    * identifier
      * system = "urn:ietf:rfc:3986"
      * value = "urn:oid:1.2.276.0.76.4.323"
  * data = "SGFzaEFuZ2VyZWljaGVydGVzUERGc2lnbmVkQnlGRDIwMjYwMjExQVA="
* content[strukturierterRechnungsinhalt].attachment.contentType = #application/fhir+json
* content[strukturierterRechnungsinhalt].attachment.url = "[FD-endpunkt]/Binary/id-des-strukturierten-Rechnungsinhalts"
* content[strukturierterRechnungsinhalt].attachment.extension[signature].valueSignature
  * type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.13
  * when = "2026-02-11T10:00:00+01:00"
  * who
    * identifier
      * system = "urn:ietf:rfc:3986"
      * value = "urn:oid:1.2.276.0.76.4.323"
  * data = "U3RydWt0dXJpZXJ0ZXJJbmhhbHRTaWduYXR1ckZEMjAyNjAyMTFmamg="
* context.related[patient] = Reference(BeispielPatient3-FD)
* context.related[patient].type = "Patient"
* context.related[anhaenge] = Reference(ExampleR5DocumentReferenceSonstigesDokument)
* context.related[anhaenge].type = "DocumentReference"

Instance: ExampleR5DocumentReferenceSonstigesDokument
InstanceOf: DiPagDokumentenmetadatenIntern
* identifier[Token]
  * system = "https://gematik.de/fhir/sid/dipag-token"
  * value = "a1c4f7e2b9d6038c5e1a4b7d0f3c6e9a2d5b8c1e4f70a3d6b9c2e5f8a1d4b7c0"
* identifier[AnhangIdentifier]
  * type = DiPagRechnungIdentifierTypeCS#anhang
  * system = "https://example.org/fhir/sid/anhangids"
  * value = "987-654-321"
* type.coding[DokumentenKlassifizierung] = $kdl#PT130102 "Molekularpathologiebefund"
* description = "Molekularpathologiebefund vom 31.12.21"
* subject.display = "Max Mustermann"
* content[anhang].attachment
  * contentType = #application/pdf
  * url = "[FD-endpunkt]/Binary/id-des-anhangs"
  * extension[signature].valueSignature
    * type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.13
    * when = "2026-02-11T10:00:00+01:00"
    * who
      * identifier
        * system = "urn:ietf:rfc:3986"
        * value = "urn:oid:1.2.276.0.76.4.323"
    * data = "QW5oYW5nRG9rdW1lbnRTaWduYXR1ckZEMjAyNjAyMTFkbHBxcnN0dXY="
* context.related[patient] = Reference(BeispielPatient3-FD)
* context.related[patient].type = "Patient"




Instance: ExampleR5Bundle
InstanceOf: Bundle
* type = #searchset
* total = 1
* link[+].relation = "self"
* link[=].url = "https://example.com/fhir/DocumentReference?type=AM010106"
* entry[+]
  * fullUrl = "https://example.com/fhir/DocumentReference/ExampleR5DocumentReference"
  * resource = ExampleR5DocumentReference
  * search.mode = #match

// Suche durch eine Kostenträger-Organisation (ITSys-KTR): übermittelte Rechnungen
Instance: ExampleR5KtrDocumentReference
InstanceOf: DiPagDokumentenmetadatenIntern
* extension[rechnungsdatum].valueDateTime = "2024-01-10T09:30:00+01:00"
* extension[zahlungszieldatum].valueDate = "2024-02-10"
* extension[gesamtbetrag].valueMoney
  * value = 84.50
  * currency = #EUR
* meta.tag[dipag-rechnungsstatus] = https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnungsstatus-cs#uebermittelt "Übermittelt"
* status = #current
* identifier[Token]
  * system = "https://gematik.de/fhir/sid/dipag-token"
  * value = "b7e2a95c4f81d30e6a2c9f5b1d84e703a6c2f9e5b1d8470c3a6e2f9b5c1d84e7"
* identifier[Rechnungsnummer]
  * type = DiPagRechnungIdentifierTypeCS#invoice
  * system = "https://example.org/fhir/sid/rechnungsids"
  * value = "123-456-789"
* type.coding[Rechnungstyp] = $kdl#AM010106
* type.coding[Rechnungstyp].display = "Rechnung ambulante/stationäre Behandlung"
* description = "Rechnung Reiseimpfung vom 10.01.2024"
* subject.display = "Max Mustermann"
* author.identifier.system = "https://gematik.de/fhir/sid/telematik-id"
* author.identifier.value = "987654321"
* author.display = "Dr. Hausarzt"
* content[angereicherteRechnung].attachment.contentType = #application/pdf
* content[angereicherteRechnung].attachment.url = "[FD-endpunkt]/Binary/id-des-angereicherten-PDFs"
* content[strukturierterRechnungsinhalt].attachment.contentType = #application/fhir+json
* content[strukturierterRechnungsinhalt].attachment.url = "[FD-endpunkt]/Binary/id-des-strukturierten-Rechnungsinhalts"
* context.related[empfaenger] = Reference(BeispielOrganisationKostentraeger)
* context.related[empfaenger].type = "Organization"

Instance: ExampleR5KtrBundle
InstanceOf: Bundle
* type = #searchset
* total = 1
* link[+].relation = "self"
* link[=].url = "https://example.com/fhir/DocumentReference"
* entry[+]
  * fullUrl = "https://example.com/fhir/DocumentReference/ExampleR5KtrDocumentReference"
  * resource = ExampleR5KtrDocumentReference
  * search.mode = #match