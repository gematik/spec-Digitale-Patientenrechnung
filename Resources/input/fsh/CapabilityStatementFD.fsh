Instance: CapabilityStatementFD
InstanceOf: CapabilityStatement
Usage: #definition
* insert MetaInstance
* url = "https://gematik.de/fhir/dipag/CapabilityStatement/DiPagCapabilityStatementFD"
* name = "CapabilityStatementFD"
* title = "CapabilityStatement Fachdienst E-Rechnnung"
* description = 
  "Dieses CapabilityStatement beschreibt alle Interaktionen, 
  die ein DiPag-konformer Fachdienst unterstützen MUSS bzw. KANN.
"
* jurisdiction = urn:iso:std:iso:3166#DE "Germany"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest
  * mode = #server
  * resource[+]
    * type = #Patient
    * insert Expectation (#SHALL)
    * supportedProfile = Canonical(DiPagPatient)
    * interaction[+]
      * insert Expectation (#SHALL)
      * code = #read
    * interaction[+]
      * insert Expectation (#SHALL)
      * code = #search-type
    * searchParam[+]
      * insert Expectation (#SHALL)
      * name = "_id"
      * definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
      * type = #token
    * searchParam[+]
      * insert Expectation (#SHALL)
      * name = "identifier"
      * definition = "http://hl7.org/fhir/SearchParameter/Patient-identifier"
      * type = #token
    * searchParam[+]
      * insert Expectation (#SHALL)
      * name = "birthdate"
      * definition = "http://hl7.org/fhir/SearchParameter/individual-birthdate"
      * type = #date
    * operation[+]
      * insert Expectation (#SHALL)
      * name = "invoice-submit"
      * definition = "https://gematik.de/fhir/dipag/OperationDefinition/Submit"
  * resource[+]
    * type = #DocumentReference
    * insert Expectation (#SHALL)
    * supportedProfile = Canonical(DiPagRechnungsdokument)
    * interaction[+]
      * insert Expectation (#SHALL)
      * code = #read
    * interaction[+]
      * insert Expectation (#SHALL)
      * code = #search-type
    * searchParam[+]
      * insert Expectation (#SHALL)
      * name = "_id"
      * definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
      * type = #token
    * searchParam[+]
      * insert Expectation (#SHALL)
      * name = "_tag"
      * definition = "http://hl7.org/fhir/SearchParameter/Resource-tag"
      * type = #token
    * searchParam[+]
      * insert Expectation (#SHALL)
      * name = "subject"
      * definition = "http://hl7.org/fhir/SearchParameter/DocumentReference-subject"
      * type = #reference
    * searchParam[+]
      * insert Expectation (#SHALL)
      * name = "author"
      * definition = "http://hl7.org/fhir/SearchParameter/DocumentReference-author"
      * type = #reference
    * searchParam[+]
      * insert Expectation (#SHALL)
      * name = "subject"
      * definition = "http://hl7.org/fhir/SearchParameter/clinical-type"
      * type = #token
    * searchParam[+]
      * insert Expectation (#SHALL)
      * name = "dipag-makierung"
      * definition = "https://gematik.de/fhir/dipag/SearchParameter/dipag-makierung"
      * type = #token
    * operation[+]
      * insert Expectation (#SHALL)
      * name = "retrieve"
      * definition = "https://gematik.de/fhir/dipag/OperationDefinition/Retrieve"
    * operation[+]
      * insert Expectation (#SHALL)
      * name = "change-status"
      * definition = "https://gematik.de/fhir/dipag/OperationDefinition/ChangeStatus"
    * operation[+]
      * insert Expectation (#SHALL)
      * name = "process-flag"
      * definition = "https://gematik.de/fhir/dipag/OperationDefinition/ProcessFlag"
    * operation[+]
      * insert Expectation (#SHALL)
      * name = "erase"
      * definition = "https://gematik.de/fhir/dipag/OperationDefinition/Erase"
  * resource[+]
    * type = #AuditEvent
    * insert Expectation (#SHALL)
    * interaction[+]
      * insert Expectation (#SHALL)
      * code = #read
    * interaction[+]
      * insert Expectation (#SHALL)
      * code = #search-type
    * supportedProfile = Canonical(DiPagNutzungsprotokoll)
    * searchParam[+]
      * insert Expectation (#SHALL)
      * name = "_id"
      * definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
      * type = #token
    * searchParam[+]
      * insert Expectation (#SHALL)
      * name = "agent"
      * definition = "http://hl7.org/fhir/SearchParameter/AuditEvent-agent"
      * type = #reference
    * searchParam[+]
      * insert Expectation (#SHALL)
      * name = "date"
      * definition = "hhttp://hl7.org/fhir/SearchParameter/AuditEvent-date"
      * type = #date