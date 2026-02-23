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
* data = "DIESISTNUREINBEISPIELDIESISTKEINVALIDESPDF00"

Instance: BeispielDocumentReferenceRechnung3-FD
InstanceOf: DocumentReference
Usage: #example
//FD fügt Token hinzu
* identifier
  * system = "https://example.org/fhir/sid/rechnungsids"
  * value = "123-456-789"
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
  * format = #dipag
  * attachment
    * contentType = #application/fhir+xml
    * url = "[FD-endpunkt]/Binary/invoice"
//signatur wird entfernt, da nach Änderung des PDFs nicht mehr gültig
//Verknüpfung zum Original 
* relatesTo
  * code = #transforms
  * target = Reference (BeispielDocumentReferenceRechnung3-LE)

Instance: BeispielDocumentReferenceSonstigesDokument3-FD
InstanceOf: DocumentReference
Usage: #example
//FD fügt Token hinzu
* identifier
  * system = "https://example.org/fhir/sid/anhangids"
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