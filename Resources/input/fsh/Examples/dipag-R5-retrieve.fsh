
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
* content[originaleRechnung].attachment.contentType = #application/fhir+json
* content[originaleRechnung].attachment.url = "[FD-endpunkt]/Binary/id-der-originalen-Rechnung"
* content[angereicherteRechnung].attachment.contentType = #application/fhir+json
* content[angereicherteRechnung].attachment.url = "[FD-endpunkt]/Binary/id-des-angereicherten-PDFs"
* content[strukturierterRechnungsinhalt].attachment.contentType = #application/fhir+json
* content[strukturierterRechnungsinhalt].attachment.url = "[FD-endpunkt]/Binary/id-des-strukturierten-Rechnungsinhalts"

Instance: ExampleR5Bundle
InstanceOf: Bundle
* type = #searchset
* total = 1
* entry[+]
  * resource = ExampleR5DocumentReference
  * search.mode = #match