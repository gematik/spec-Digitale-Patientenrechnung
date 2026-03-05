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
* parameter[+]
  * name = "angereichertesPDF"
  * valueBoolean = true

Instance: BeispielDocumentReferenceRechnung3-LE
InstanceOf: DiPagDokumentenmetadatenEingang
* identifier
  * system = "https://example.org/fhir/sid/rechnungsids"
  * value = "123-456-789"
* status = #current
* type = $kdl#AM010106 "Rechnung ambulante/stationäre Behandlung"
* description = "Rechnung Reiseimpfung vom 10.01.2024"
* subject.display = "Max Musterkind"
* content[originaleRechnung].attachment
  * insert base64
* content[strukturierterRechnungsinhalt].attachment
  * contentType = #application/fhir+json
  * insert base64

Instance: BeispielDocumentReferenceSonstigesDokument3-LE
InstanceOf: DiPagDokumentenmetadatenEingang
* identifier
  * system = "https://example.org/fhir/sid/anhangids"
  * value = "987-654-321"
* status = #current
* type = $kdl#PT130102 "Molekularpathologiebefund"
* description = "Molekularpathologiebefund vom 31.12.21"
* subject.display = "Max Musterkind"
* content[anhang].attachment
  * insert base64

Instance: BeispielParameterSubmitInput3.1-LE
InstanceOf: Parameters
* parameter[+]
  * name = "rechnung"
  * resource = BeispielDocumentReferenceRechnung3.1-LE
* parameter[+]
  * name = "anhang"
  * resource = BeispielDocumentReferenceSonstigesDokument3.1-LE

Instance: BeispielDocumentReferenceRechnung3.1-LE
InstanceOf: DiPagDokumentenmetadatenEingang
* identifier
  * system = "https://example.org/fhir/sid/rechnungsids"
  * value = "123-456-789"
* status = #current
* type = $kdl#AM010106 "Rechnung ambulante/stationäre Behandlung"
* description = "Rechnung Reiseimpfung vom 10.01.2024"
//Referenz auf Patient hier nicht relevant (kann nicht auflösbarer Link auf Instanz des LE-PVS sein)
//Patientenkontext ergibt sich aus Task.for Referenz, die vom Fachdienst gesetzt wird
//Versichertennummer kann zum Abgleich verwendet werden
* subject.display = "Max Musterkind"
* content[originaleRechnung].attachment
  * insert base64
* content[strukturierterRechnungsinhalt].attachment
  * contentType = #application/fhir+json
  * insert base64

Instance: BeispielDocumentReferenceSonstigesDokument3.1-LE
InstanceOf: DiPagDokumentenmetadatenEingang
* identifier
  * system = "https://example.org/fhir/sid/anhangids"
  * value = "987-654-321"
* status = #current
* type = $kdl#PT130102 "Molekularpathologiebefund"
* description = "Molekularpathologiebefund vom 30.12.21"
* subject.display = "Max Musterkind"
* content[anhang].attachment
  * insert base64

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
  * response.status = "200"
* entry[+]
  * fullUrl = "https://example.org/fhir/Parameters/BeispielParameterSubmitOutput3.1-FD"
  * resource = BeispielParameterSubmitOutput3.1-FD
  * response.status = "200"

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
InstanceOf: DiPagDokumentenmetadatenEingang
* identifier
  * system = "https://example.org/fhir/sid/rechnungsids"
  * value = "123-456-789"
* status = #current
* type = $kdl#AM010106 "Rechnung ambulante/stationäre Behandlung"
* description = "Rechnung Reiseimpfung vom 10.01.2024"
* subject.display = "Max Musterkind"
* content[originaleRechnung].attachment
  * insert base64
* content[strukturierterRechnungsinhalt].attachment
  * contentType = #application/fhir+json
  * insert base64

Instance: BeispielDocumentReferenceSonstigesDokument3.1-FD
InstanceOf: DiPagDokumentenmetadatenEingang
* identifier
  * system = "https://example.org/fhir/sid/anhangids"
  * value = "987-654-321"
* status = #current
* type = $kdl#PT130102 "Molekularpathologiebefund"
* description = "Molekularpathologiebefund vom 31.12.21"
* subject.display = "Max Musterkind"
* content[anhang].attachment
  * insert base64