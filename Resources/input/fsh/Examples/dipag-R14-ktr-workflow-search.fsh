Instance: BeispielDocumentReferenceRechnungOrganisation-FD
InstanceOf: DiPagDokumentenmetadatenIntern
Usage: #example
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

Instance: KtrWorkflowSearchBundle
InstanceOf: Bundle
* type = #searchset
* total = 1
* link[+].relation = "self"
* link[=].url = "https://example.com/fhir/DocumentReference?_tag=uebermittelt&_count=50"
* entry[+]
  * fullUrl = "https://example.com/fhir/DocumentReference/BeispielDocumentReferenceRechnungOrganisation-FD"
  * resource = BeispielDocumentReferenceRechnungOrganisation-FD
  * search.mode = #match
