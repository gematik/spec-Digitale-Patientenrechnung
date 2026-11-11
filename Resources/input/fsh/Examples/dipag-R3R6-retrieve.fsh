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
  * value = "123-456-789"
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
* context.related[anhaenge] = Reference(BeispielDocumentReferenceAnhangRetrieveR6)
* context.related[anhaenge].type = "DocumentReference"
* context.related[anhaenge].identifier.system = "https://gematik.de/fhir/sid/dipag-token"
* context.related[anhaenge].identifier.value = "e5b9c2f7a1d4086b3e9f2c5a8d1b4e7f0c3a6d9b2e5f8a1c4d7b0e3f6a9c2d5b"
* context.related[anhaenge].display = "Impfausweis (Kopie) zur Reiseimpfung vom 10.01.2024"

// Anhang zur Rechnung BeispielDocumentReferenceRechnungRetrieveR6
Instance: BeispielDocumentReferenceAnhangRetrieveR6
InstanceOf: DiPagDokumentenmetadatenIntern
* identifier[Token]
  * system = "https://gematik.de/fhir/sid/dipag-token"
  * value = "e5b9c2f7a1d4086b3e9f2c5a8d1b4e7f0c3a6d9b2e5f8a1c4d7b0e3f6a9c2d5b"
* identifier[AnhangIdentifier]
  * type = DiPagRechnungIdentifierTypeCS#anhang
  * system = "https://example.org/fhir/sid/anhangids"
  * value = "456-789-123"
* status = #current
* type.coding[DokumentenKlassifizierung] = $kdl#AM160102 "Impfausweis"
* description = "Impfausweis (Kopie) zur Reiseimpfung vom 10.01.2024"
* subject.display = "Max Mustermann"
* content[anhang].attachment
  * contentType = #application/pdf
  * url = "[FD-endpunkt]/Binary/id-des-anhangs-impfausweis"
* context.related[patient] = Reference(BeispielPatient3-FD)
* context.related[patient].type = "Patient"
