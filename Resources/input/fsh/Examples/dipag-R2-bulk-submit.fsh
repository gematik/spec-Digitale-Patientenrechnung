Instance: BulkSubmitExample
InstanceOf: Bundle
Usage: #example
* type = #batch
* entry[+]
  * fullUrl = "urn:uuid:f67a9208-35f3-44c3-b6f3-24ac56a8e0c8"
  * insert BundleRequest(POST, "https://example.org/fhir/Patient/BeispielPatient3-FD/$invoice-submit")
  * resource = BeispielParameterSubmitInput3-LE
* entry[+]
  * fullUrl = "urn:uuid:34b15f2c-c304-40ca-9e27-0da3cebb91be"
  * insert BundleRequest(POST, "https://example.org/fhir/Patient/BeispielPatient3-FD/$invoice-submit")
  * resource = BeispielParameterSubmitInput3.1-LE

Instance: BeispielParameterSubmitInput3-LE
InstanceOf: Parameters
* parameter[+]
  * name = "rechnung"
  * resource = BeispielDocumentReferenceRechnung3-LE
* parameter[+]
  * name = "anhang"
  * resource = BeispielDocumentReferenceSonstigesDokument3-LE

Instance: BeispielDocumentReferenceRechnung3-LE
InstanceOf: DocumentReference
* status = #current
* type = $kdl#AM010106 "Rechnung ambulante/stationäre Behandlung"
* description = "Rechnung Reiseimpfung vom 10.01.2024"
* subject
  * identifier
    * system = "http://fhir.de/sid/gkv/kvid-10"
    * value = "A000000000"
* content[+]
  * attachment
    * contentType = #application/pdf
    * data = "DIESISTNUREINBEISPIELDIESISTKEINVALIDESPDF00"
* content[+]
  * format = #gematik-dipag
  * attachment
    * contentType = #application/fhir+xml
    * data = "DIESISTNUREINBEISPIELDIESISTKEINVALIDESXML00"
* extension
  * url = "http://example.org/StructureDefinition/signatur"
  * valueSignature
    * type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.1 "Author's Signature"
    * when = 2015-02-07T13:28:17.239+02:00
    * who.display = "Arzt"

Instance: BeispielDocumentReferenceSonstigesDokument3-LE
InstanceOf: DocumentReference
* status = #current
* type = $kdl#PT130102 "Molekularpathologiebefund"
* description = "Molekularpathologiebefund vom 31.12.21"
* subject = Reference(BeispielPatient3-FD)
//* subject.display = "Max Musterkind"
* content[+]
  * attachment
    * contentType = #application/pdf
    * data = "DIESISTNUREINBEISPIELDIESISTKEINVALIDESPDF00"

Instance: BeispielParameterSubmitInput3.1-LE
InstanceOf: Parameters
* parameter[+]
  * name = "rechnung"
  * resource = BeispielDocumentReferenceRechnung3.1-LE
* parameter[+]
  * name = "anhang"
  * resource = BeispielDocumentReferenceSonstigesDokument3.1-LE

Instance: BeispielDocumentReferenceRechnung3.1-LE
InstanceOf: DocumentReference
* status = #current
* type = $kdl#AM010106 "Rechnung ambulante/stationäre Behandlung"
* description = "Rechnung Reiseimpfung vom 10.01.2024"
//Referenz auf Patient hier nicht relevant (kann nicht auflösbarer Link auf Instanz des LE-PVS sein)
//Patientenkontext ergibt sich aus Task.for Referenz, die vom Fachdienst gesetzt wird
//Versichertennummer kann zum Abgleich verwendet werden
* subject
  * identifier
    * system = "http://fhir.de/sid/gkv/kvid-10"
    * value = "A000000000"
* content[+]
  * attachment
    * contentType = #application/pdf
    * data = "DIESISTNUREINBEISPIELDIESISTKEINVALIDESPDF00"
* content[+]
  * format = #gematik-dipag
  * attachment
    * contentType = #application/fhir+xml
    * data = "DIESISTNUREINBEISPIELDIESISTKEINVALIDESXML00"
* extension
  * url = "http://example.org/StructureDefinition/signatur"
  * valueSignature
    * type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.1 "Author's Signature"
    * when = 2015-02-07T13:29:17.239+02:00
    * who.display = "Arzt"

Instance: BeispielDocumentReferenceSonstigesDokument3.1-LE
InstanceOf: DocumentReference
* status = #current
* type = $kdl#PT130102 "Molekularpathologiebefund"
* description = "Molekularpathologiebefund vom 30.12.21"
* subject = Reference(BeispielPatient3-FD)
//* subject.display = "Max Musterkind"
* content[+]
  * attachment
    * contentType = #application/pdf
    * data = "DIESISTNUREINBEISPIELDIESISTKEINVALIDESPDF00"

Instance: BeispielPatient3-FD
InstanceOf: Patient
Usage: #example
* name
  * text = "Manfred Mustermann"
* gender = #male
* identifier
  * system = "http://fhir.de/sid/gkv/kvid-10"
  * value = "A000000000"
* address
  * text = "Musterweg 2, 3. Etage, 98764 Musterhausen, DE"



//BulkResponse

Instance: BulkSubmitExampleOutput
InstanceOf: Bundle
Usage: #example
* type = #batch-response
* entry[+]
  * fullUrl = "https://example.org/fhir/Parameters/BeispielParameterSubmitOutput3-FD"
  * resource = BeispielParameterSubmitOutput3-FD
* entry[+]
  * fullUrl = "https://example.org/fhir/Parameters/BeispielParameterSubmitOutput3.1-FD"
  * resource = BeispielParameterSubmitOutput3.1-FD

Instance: BeispielParameterSubmitOutput3.1-FD
InstanceOf: Parameters
* parameter[+]
  * name = "token"
  * part[+]
    * name = "id"
    * valueId = "dc835efd80d831b95b1db9d2cca371eeb9063393155e3a573c8a9c7a803f6abe"
  * part[+]
    * name = "docRef"
    * valueIdentifier
      * system = "https://example.org/fhir/sid/invoice-id"
      * value = "12345"
* parameter[+]
  * name = "warnungen"
  * resource = BeispielOperationOutcomeRechnung3.1-FD

Instance: BeispielOperationOutcomeRechnung3.1-FD
InstanceOf: OperationOutcome
* issue[+]
  * severity = #warning
  * code = #invalid
  * details
    * text = "Menschenlesbare Beschreibung der Warnung hier..."
  * diagnostics = "Originaler technischer Validierungsfehler hier..."
* issue[+]
  * severity = #warning
  * code = #invalid
  * details
    * text = "Weiterer Fehler..."
  * diagnostics = "Originaler technischer Validierungsfehler hier..."

Instance: BeispielDocumentReferenceRechnung3.1-FD
InstanceOf: DocumentReference
//FD fügt Token hinzu
* identifier
  * system = "https://gematik.de/fhir/sid/dipag-token"
  * value = "123-456-987"
* status = #current
* type = $kdl#AM010106 "Rechnung ambulante/stationäre Behandlung"
* description = "Rechnung Reiseimpfung vom 10.01.2024"
* subject
  * identifier
    * system = "http://fhir.de/sid/gkv/kvid-10"
    * value = "A000000000"
* content[+]
  * attachment
    * contentType = #application/pdf
    //data wird in Binary separiert
    * url = "[FD-endpunkt]/Binary/pdf-mit-token-barcode"
* content[+]
  * format = #gematik-dipag
  * attachment
    * contentType = #application/fhir+xml
    * url = "[FD-endpunkt]/Binary/invoice"
//signatur wird entfernt, da nach Änderung des PDFs nicht mehr gültig
//Verknüpfung zum Original 
* relatesTo
  * code = #transforms
  * target = Reference (BeispielDocumentReferenceRechnung3-LE)

Instance: BeispielDocumentReferenceSonstigesDokument3.1-FD
InstanceOf: DocumentReference
//FD fügt Token hinzu
* identifier
  * system = "https://gematik.de/fhir/sid/dipag-token"
  * value = "987-654-321"
* status = #current
* type = $kdl#PT130102 "Molekularpathologiebefund"
* description = "Molekularpathologiebefund vom 31.12.21"
* subject = Reference(BeispielPatient3-FD)
//* subject.display = "Max Musterkind"
* content[+]
  * attachment
    * contentType = #application/pdf
    //data wird in Binary separiert
    * url = "[FD-endpunkt]/Binary/patho-mit-token-barcode"
//Verknüpfung zum Original 
* relatesTo
  * code = #transforms
  * target = Reference (BeispielDocumentReferenceSonstigesDokument3-LE)