Instance: BeispielParameterSubmitInputOrganisation-LE
InstanceOf: Parameters
Usage: #example
* parameter[+]
  * name = "rechnung"
  * part[+]
    * name = "dokument"
    * resource = BeispielDocumentReferenceRechnungOrganisation-LE
  * part[+]
    * name = "barcodePosition"
    * part[+]
      * name = "x"
      * valueDecimal = 450
    * part[+]
      * name = "y"
      * valueDecimal = 720
* parameter[+]
  * name = "workflow"
  * valueCode = #demo
* parameter[+]
  * name = "angereichertesPDF"
  * valueBoolean = false

Instance: BeispielParameterSubmitOutputOrganisation-FD
InstanceOf: Parameters
Usage: #example
* parameter[+]
  * name = "token"
  * part[+]
    * name = "id"
    * valueId = "some-token-id"
  * part[+]
    * name = "docRef"
    * valueIdentifier
      * system = "https://example.org/fhir/sid/rechnungsids"
      * value = "123-456-789"

Instance: BeispielDocumentReferenceRechnungOrganisation-LE
InstanceOf: DiPagDokumentenmetadatenEingangOrganisation
Usage: #example
* identifier
  * system = "https://example.org/fhir/sid/rechnungsids"
  * value = "123-456-789"
* status = #current
* type = $kdl#AM010106 "Rechnung ambulante/stationäre Behandlung"
* description = "Rechnung Reiseimpfung vom 10.01.2024"
* subject.display = "Max Mustermann"
* content[originaleRechnung].attachment
  * insert base64
* content[strukturierterRechnungsinhalt].attachment
  * contentType = #application/fhir+json
  * insert base64
