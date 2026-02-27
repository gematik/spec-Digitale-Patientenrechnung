Instance: BeispielParameterSubmitInput3-FD
InstanceOf: Parameters
Usage: #example
* parameter[+]
  * name = "rechnung"
  * resource = BeispielDocumentReferenceRechnung3-FD
* parameter[+]
  * name = "anhang"
  * resource = BeispielDocumentReferenceSonstigesDokument3-FD
* parameter[+]
  * name = "angereichertesPDF"
  * valueBoolean = true

Instance: BeispielParameterSubmitOutput3-FD
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
  * part[+]
    * name = "angereichertesPDF"
    * resource = BeispielBinarySubmitOutput3-FD
* parameter[+]
  * name = "token"
  * part[+]
    * name = "id"
    * valueId = "some-other-token-id"
  * part[+]
    * name = "docRef"
    * valueIdentifier
      * system = "https://example.org/fhir/sid/anhangids"
      * value = "987-654-321"

Instance: BeispielBinarySubmitOutput3-FD
InstanceOf: Binary
Usage: #example
* contentType = #application/pdf
* insert base64

Instance: BeispielDocumentReferenceRechnung3-FD
InstanceOf: DiPagDokumentenmetadatenEingang
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

Instance: BeispielDocumentReferenceSonstigesDokument3-FD
InstanceOf: DiPagDokumentenmetadatenEingang
Usage: #example
* identifier
  * system = "https://example.org/fhir/sid/anhangids"
  * value = "987-654-321"
* status = #current
* type = $kdl#PT130102 "Molekularpathologiebefund"
* description = "Molekularpathologiebefund vom 31.12.21"
* subject.display = "Max Mustermann"
* content[anhang].attachment
  * insert base64