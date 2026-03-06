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
  * fullUrl = "https://example.org/fhir/DocumentReference/BeispielDocumentReferenceRechnungRetrieve"
  * resource = BeispielDocumentReferenceRechnungRetrieve
  * response.status = "200"
* entry[+]
  * fullUrl = "https://example.org/fhir/DocumentReference/BeispielDocumentReferenceRechnungRetrieve2"
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
