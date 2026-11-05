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
* extension[zahlungszieldatum].valueDate = "2024-02-10"
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
* identifier[Token]
  * system = "https://gematik.de/fhir/sid/dipag-token"
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
    * contentType = #application/fhir+json
    * url = "[FD-endpunkt]/Binary/id-des-strukturierten-Rechnungsinhalts"
// Beim Abruf durch Kostenträger (R11) werden keine Anhänge unter context.related angegeben
* context.related[patient] = Reference(BeispielPatient3-FD)
* context.related[patient].type = "Patient"

// Abruf durch den Rechnungsempfänger (R6): Rechnungsdokument inkl. Verweis auf Anhänge
Instance: BeispielParameterRetrieveOutputR6
InstanceOf: Parameters
* parameter[+]
  * name = "dokument"
  * resource = BeispielDocumentReferenceRechnungRetrieveR6
* parameter[+]
  * name = "dokument.pdf"
  * resource = BeispielBinarySubmitOutput3-FD

Instance: BeispielDocumentReferenceRechnungRetrieveR6
InstanceOf: DiPagDokumentenmetadatenIntern
* extension[rechnungsdatum].valueDateTime = "2024-01-10"
* extension[zahlungszieldatum].valueDate = "2024-02-10"
* extension[gesamtbetrag].valueMoney
  * value = 120.00
  * currency = #EUR
* meta
  * tag[dipag-rechnungsstatus] = DiPagARechnungsstatusCS#offen "Offen"
  * tag[dipag-workflowtyp] = https://gematik.de/fhir/dipag/CodeSystem/dipag-workflowtyp-cs#patientenrechnung "Patientenrechnung"
* identifier[Token]
  * system = "https://gematik.de/fhir/sid/dipag-token"
  * value = "c3f8e1a74b92d05e6f1a8c3b7d24e9f05a6c1b8d3e7f2a49c0b5d8e1f6a3c72d"
* status = #current
* type = $kdl#AM010106 "Rechnung ambulante/stationäre Behandlung"
* description = "Rechnung Reiseimpfung vom 10.01.2024"
* subject
  * display = "Max Mustermann"
* author
  * identifier
    * system = "https://gematik.de/fhir/sid/telematik-id"
    * value = "987654321"
  * display = "Dr. Hausarzt"
* content[angereicherteRechnung].attachment
  * contentType = #application/pdf
  * url = "[FD-endpunkt]/Binary/id-der-angereicherten-rechnung"
* content[strukturierterRechnungsinhalt].attachment
  * contentType = #application/fhir+json
  * url = "[FD-endpunkt]/Binary/id-des-strukturierten-Rechnungsinhalts"
* context.related[patient] = Reference(BeispielPatient3-FD)
* context.related[patient].type = "Patient"
* context.related[anhaenge] = Reference(ExampleR5DocumentReferenceSonstigesDokument)
* context.related[anhaenge].type = "DocumentReference"
* context.related[anhaenge].identifier.system = "https://gematik.de/fhir/sid/dipag-token"
* context.related[anhaenge].identifier.value = "a1c4f7e2b9d6038c5e1a4b7d0f3c6e9a2d5b8c1e4f70a3d6b9c2e5f8a1d4b7c0"
* context.related[anhaenge].display = "Molekularpathologiebefund vom 31.12.21"
