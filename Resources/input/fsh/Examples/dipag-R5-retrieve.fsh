
Instance: ExampleR5DocumentReference
InstanceOf: DiPagDokumentenmetadatenIntern
Title: "Example DiPag Document Reference"
* extension[rechnungsdatum].url = "https://gematik.de/fhir/dipag/StructureDefinition/dipag-documentreference-rechnungsdatum"
* extension[rechnungsdatum].valueDateTime = "2023-09-28T13:00:00.123+02:00"
* extension[zahlungszieldatum].url = "https://gematik.de/fhir/dipag/StructureDefinition/dipag-documentreference-zahlungszieldatum"
* extension[zahlungszieldatum].valueDateTime = "2023-10-28T13:00:00.123+02:00"
* extension[gesamtbetrag].url = "https://gematik.de/fhir/dipag/StructureDefinition/dipag-documentreference-gesamtbetrag"
* extension[gesamtbetrag].valueMoney
  * value = 16.20
  * currency = #EUR
* extension[docRef-signature].url = "https://gematik.de/fhir/dipag/StructureDefinition/dipag-docref-signature"
* extension[docRef-signature].valueSignature
  * type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.13
  * when = "2026-02-11T10:00:00+01:00"
  * who
    * identifier
      * system = "https://gematik.de/fhir/sid/telematik-id"
      * value = "987654321"
  * data = "ZXlKaGJHY2lPaUpJVXpJMU5pSXNJbXRwWkNJNkltVjRZVzUwSW4wLi4u"
* author.identifier.value = "987654321"
* meta.tag[0] = https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnungsstatus-cs#offen
* meta.tag[0].display = "Offen"
* status = http://hl7.org/fhir/document-reference-status#current
* identifier.system = "http://example.com/fhir/identifiers"
* identifier.value = "123456789"
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
      * system = "https://gematik.de/fhir/sid/telematik-id"
      * value = "987654321"
  * data = "SGFzaE9yaWdpbmFsUkVjaG51bmdQREZBc2lnbmVkQnlGRDIwMjYwMjEx"
* content[angereicherteRechnung].attachment.contentType = #application/pdf
* content[angereicherteRechnung].attachment.url = "[FD-endpunkt]/Binary/id-des-angereicherten-PDFs"
* content[angereicherteRechnung].attachment.extension[signature].valueSignature
  * type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.13
  * when = "2026-02-11T10:00:00+01:00"
  * who
    * identifier
      * system = "https://gematik.de/fhir/sid/telematik-id"
      * value = "987654321"
  * data = "SGFzaEFuZ2VyZWljaGVydGVzUERGc2lnbmVkQnlGRDIwMjYwMjExQVA="
* content[strukturierterRechnungsinhalt].attachment.contentType = #application/fhir+json
* content[strukturierterRechnungsinhalt].attachment.url = "[FD-endpunkt]/Binary/id-des-strukturierten-Rechnungsinhalts"
* content[strukturierterRechnungsinhalt].attachment.extension[signature].valueSignature
  * type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.13
  * when = "2026-02-11T10:00:00+01:00"
  * who
    * identifier
      * system = "https://gematik.de/fhir/sid/telematik-id"
      * value = "987654321"
  * data = "U3RydWt0dXJpZXJ0ZXJJbmhhbHRTaWduYXR1ckZEMjAyNjAyMTFmamg="
* context.related[patient] = Reference(BeispielPatient3-FD)
* context.related[anhaenge] = Reference(ExampleR5DocumentReferenceSonstigesDokument)

Instance: ExampleR5DocumentReferenceSonstigesDokument
InstanceOf: DiPagDokumentenmetadatenIntern
* identifier
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
        * system = "https://gematik.de/fhir/sid/telematik-id"
        * value = "987654321"
    * data = "QW5oYW5nRG9rdW1lbnRTaWduYXR1ckZEMjAyNjAyMTFkbHBxcnN0dXY="
* context.related[patient] = Reference(BeispielPatient3-FD)




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