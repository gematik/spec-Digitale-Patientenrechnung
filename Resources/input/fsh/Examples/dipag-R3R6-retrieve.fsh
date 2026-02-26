Instance: BeispielParameterRetrieveInput
InstanceOf: Parameters
* parameter[+]
  * name = "token"
  * valueString = "123-456-789"
* parameter[+]
  * name = "pdf"
  * valueBoolean = true
* parameter[+]
  * name = "strukturierterRechnungsinhalt"
  * valueBoolean = false
* parameter[+]
  * name = "originaleRechnung"
  * valueBoolean = false

Instance: BeispielParameterRetrieveOutput
InstanceOf: Parameters
* parameter[+]
  * name = "dokument"
  * resource = BeispielDocumentReferenceRechnungRetrieve
* parameter[+]
  * name = "dokument.pdf"
  * resource = BeispielBinarySubmitOutput3-FD
  
Instance: BeispielDocumentReferenceRechnungRetrieve
InstanceOf: DocumentReference
* identifier
  * system = "http://example.org/fhir/sid/rechnungsids"
  * value = "123-456-789"
* status = #current
* type = $kdl#AM010106 "Rechnung ambulante/stationäre Behandlung"
* description = "Rechnung Reiseimpfung vom 10.01.2024"
* subject
  * display = "Max Mustermann"
* content[+]
  * format = DiPagAttachmentFormatCS#originaleRechnung
  * attachment
    * contentType = #application/pdf
    * url = "[FD-endpunkt]/Binary/id-der-originalen-rechnung"
* content[+]
  * format = DiPagAttachmentFormatCS#angereichertesPDF
  * attachment
    * contentType = #application/pdf
    * url = "[FD-endpunkt]/Binary/id-der-angereicherten-rechnung"
* content[+] 
  * format = DiPagAttachmentFormatCS#rechnungsinhalt
  * attachment
    * contentType = #application/pdf
    * url = "[FD-endpunkt]/Binary/id-des-strukturierten-rechnungsinhalts"