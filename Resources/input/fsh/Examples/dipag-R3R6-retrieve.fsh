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
InstanceOf: DiPagDokumentenmetadatenIntern
* extension[rechnungsdatum].valueDateTime = "2024-01-10"
* extension[zahlungszieldatum].valueDateTime = "2024-02-10"
* extension[gesamtbetrag].valueMoney
  * value = 120.00
  * currency = #EUR
* extension[fachrichtung].valueCoding
  * system = "http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen"
  * code = #ALLG
  * display = "Allgemeinmedizin"
* extension[behandlungsart].valueCoding
  * system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
  * code = #AMB
* meta
  * tag[+] = DiPagARechnungsstatusCS#offen "Offen"
  * extension[markierung]
    * extension[markierung].valueCoding = DiPagRechnungMarkierungCS#eingereicht-frontend "Eingereicht (per Frontend)"
    * extension[zeitpunkt].valueDateTime = "2024-01-15T10:00:00Z"
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
    * contentType = #application/fhir+json
    * url = "[FD-endpunkt]/Binary/id-der-originalen-rechnung"
* content[+]
  * format = DiPagAttachmentFormatCS#angereichertesPDF
  * attachment
    * contentType = #application/fhir+json
    * url = "[FD-endpunkt]/Binary/id-der-angereicherten-rechnung"
* content[+] 
  * format = DiPagAttachmentFormatCS#rechnungsinhalt
  * attachment
    * contentType = #application/fhir+json
    * url = "[FD-endpunkt]/Binary/id-des-strukturierten-Rechnungsinhalts"