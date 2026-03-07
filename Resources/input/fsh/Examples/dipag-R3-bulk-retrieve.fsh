Instance: BulkRetrieveExampleInput
InstanceOf: Bundle
Usage: #example
* type = #batch
* entry[+]
  * insert BundleRequest(POST, "$retrieve")
  * resource = BeispielParameterRetrieveInput
* entry[+]
  * insert BundleRequest(POST, "$retrieve")
  * resource = BeispielParameterRetrieveInput2

Instance: BulkRetrieveExampleOutput
InstanceOf: Bundle
Usage: #example
* type = #batch-response
* entry[+]
  * fullUrl = "urn:uuid:f47ac10b-58cc-4372-a567-0e02b2c3d479"
  * resource = BeispielParameterRetrieveOutput
  * response.status = "200"
* entry[+]
  * fullUrl = "urn:uuid:7f4a8b2e-9c1d-4e5f-a6b8-3c2d9e1f0a7b"
  * resource = BeispielDocumentReferenceRechnungRetrieve2
  * response.status = "200"

Instance: BeispielParameterRetrieveInput2
InstanceOf: Parameters
* parameter[+]
  * name = "token"
  * valueString = "123-456-123"

Instance: BeispielDocumentReferenceRechnungRetrieve2
InstanceOf: DiPagDokumentenmetadatenIntern
Description: "Der Einfachheit halber wurden hier nur die relevanten Felder dargestellt. Die Extensions sind als befüllt anzunehmen."
* identifier
  * system = "https://gematik.de/fhir/sid/dipag-token"
  * value = "123-456-123"
* status = #current
* type = $kdl#AM010106 "Rechnung ambulante/stationäre Behandlung"
* description = "Rechnung Reiseimpfung vom 11.01.2024"
* subject.display = "Erika Mustermann"
* content[originaleRechnung].attachment
  * contentType = #application/pdf
  * url = "[FD-endpunkt]/Binary/id-der-originalen-rechnung2"
* content[strukturierterRechnungsinhalt].attachment
  * contentType = #application/fhir+json
  * url = "[FD-endpunkt]/Binary/id-des-strukturierten-rechnungsinhalts2"
* content[angereicherteRechnung].attachment
  * contentType = #application/pdf
  * url = "[FD-endpunkt]/Binary/id-des-angereicherten-pdfs2"
