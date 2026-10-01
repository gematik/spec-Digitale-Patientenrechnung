Instance: CapabilityStatementFD
InstanceOf: CapabilityStatement
Usage: #definition
* insert MetaInstance(1.3.0)
* date = "2026-10-01"
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
      * code = #search-type
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
    * type = #Organization
    * insert Expectation (#SHALL)
    * supportedProfile = Canonical(DiPagOrganisationRechnungsempfaenger)
    * interaction[+]
      * insert Expectation (#SHALL)
      * code = #search-type
    * operation[+]
      * insert Expectation (#SHALL)
      * name = "invoice-submit"
      * definition = "https://gematik.de/fhir/dipag/OperationDefinition/SubmitOrganisation"
  * resource[+]
    * type = #DocumentReference
    * insert Expectation (#SHALL)
    * supportedProfile = Canonical(DiPagDokumentenmetadatenIntern)
    * interaction[+]
      * insert Expectation (#SHALL)
      * code = #search-type
    * searchParam[+]
      * insert Expectation (#SHALL)
      * name = "_tag"
      * definition = "http://hl7.org/fhir/SearchParameter/Resource-tag"
      * type = #token
    * searchParam[+]
      * insert Expectation (#SHALL)
      * name = "type"
      * definition = "http://hl7.org/fhir/SearchParameter/clinical-type"
      * type = #token
    * searchParam[+]
      * insert Expectation (#SHALL)
      * name = "dipag-markierung"
      * definition = "https://gematik.de/fhir/dipag/SearchParameter/dipag-markierung"
      * type = #token
    * searchParam[+]
      * insert Expectation (#SHALL)
      * name = "subject-display"
      * definition = "https://gematik.de/fhir/dipag/SearchParameter/dipag-docRef-subject-display"
      * type = #string
    * searchParam[+]
      * insert Expectation (#SHALL)
      * name = "author-display"
      * definition = "https://gematik.de/fhir/dipag/SearchParameter/dipag-docRef-author-display"
      * type = #string
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
      * name = "agent-display"
      * definition = "https://gematik.de/fhir/dipag/SearchParameter/dipag-auditEvent-agent-who-display"
      * type = #string
    * searchParam[+]
      * insert Expectation (#SHALL)
      * name = "date"
      * definition = "http://hl7.org/fhir/SearchParameter/AuditEvent-date"
      * type = #date
  * resource[+]
    * type = #Binary
    * insert Expectation (#SHALL)
    * interaction[+]
      * insert Expectation (#SHALL)
      * code = #read
    * supportedProfile = Canonical(DiPagRechnungsdokument)
  * interaction[+]
    * insert Expectation (#SHALL)
    * code = #batch
    * documentation = """
      Der FD MUSS die Verarbeitung von FHIR-`batch`-Bundles am Root-Endpunkt unterstützen. Innerhalb eines `batch`-Bundles sind ausschließlich die folgenden Interaktionen und Operationen zulässig:

      * `GET Patient?...`: Suche nach Rechnungsempfängern (`search-type` auf `Patient`, AF_10132)
      * `POST Patient/[id]/$invoice-submit`: Einreichung von Rechnungen an Versicherte (AF_10136-Bulk). Die Verarbeitung erfolgt asynchron (`Prefer: respond-async`, `202 - Accepted`).
      * `POST Organization/[id]/$invoice-submit`: Einreichung von Rechnungen an Kostenträger-Organisationen. Die Verarbeitung erfolgt asynchron (`Prefer: respond-async`, `202 - Accepted`).
      * `POST DocumentReference/[id]/$change-status`: Änderung des Bearbeitungsstatus (AF_10245)

      Alle übrigen im CapabilityStatement aufgeführten Interaktionen und Operationen (insbesondere `$retrieve`, `$process-flag` und `$erase`) werden innerhalb eines `batch`-Bundles NICHT unterstützt und MÜSSEN einzeln aufgerufen werden.
      """
