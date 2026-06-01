Instance: BeispielNutzungsprotokoll
InstanceOf: DiPagNutzungsprotokoll
* type = $auditEventType#rest
* subtype = $operationDiPag#invoice-submit
* action = #E
* recorded = "2024-05-29T11:25:54.123456+00:02"
* outcome = #0
* agent.type = $extraSecurityRoleType#humanuser
* agent.who.identifier
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#PRN
  * system = "https://gematik.de/fhir/sid/telematik-id"
  * value = "11223344"
* agent.who.display = "Beispiel Leistungsempfänmger"
* agent.requestor = true
* source.observer
  * display = "FD"
  * identifier
    * system = "urn:ietf:rfc:3986"
    * value = "urn:oid:1.2.276.0.76.4.323"
* entity[Versicherter].what = Reference(Patient/NutzerkontoPatient)
* entity[DocumentReference]
  * what = Reference(BeispielDocumentReferenceRechnungRetrieve)
  * name = "Rechnung Reiseimpfung vom 10.01.2024"
  * detail[+]
    * type = DiPagAuditEventDetailCS#Allgemein
    * valueString = "Rechnung eingereicht"
* entity[Binary][+]
  * what = Reference(Binary/id-der-originalen-rechnung)
  * name = "Originale Rechnung zu Rechnung Reiseimpfung vom 10.01.2024"
* entity[Binary][+]
  * what = Reference(Binary/id-der-angereicherten-rechnung)
  * name = "Angereicherte Rechnung zu Rechnung Reiseimpfung vom 10.01.2024"
* entity[Binary][+]
  * what = Reference(Binary/id-des-strukturierten-Rechnungsinhalts)
  * name = "Strukturierter Rechnungsinhalt zu Rechnung Reiseimpfung vom 10.01.2024"


Instance: BeispielNutzungsprotokollRetrieve
InstanceOf: DiPagNutzungsprotokoll
* type = $auditEventType#rest
* subtype = $operationDiPag#retrieve
* action = #E
* recorded = "2024-05-30T09:15:22.000000+00:00"
* outcome = #0
* agent.type = $extraSecurityRoleType#humanuser
* agent.who.identifier
  * system = "http://fhir.de/sid/gkv/kvid-10"
  * value = "A123456789"
* agent.who.display = "Max Mustermann"
* agent.requestor = true
* source.observer
  * display = "DiPag FD Server"
  * identifier
    * system = "urn:ietf:rfc:3986"
    * value = "urn:oid:1.2.276.0.76.4.323"
* entity[Versicherter].what = Reference(Patient/NutzerkontoPatient)
* entity[DocumentReference]
  * what = Reference(BeispielDocumentReferenceRechnungRetrieve)
  * name = "Rechnung Reiseimpfung vom 10.01.2024"
  * detail[+]
    * type = DiPagAuditEventDetailCS#Allgemein
    * valueString = "Rechnung abgerufen"
* entity[Binary][+]
  * what = Reference(Binary/id-der-originalen-rechnung)
  * name = "Originale Rechnung zu Rechnung Reiseimpfung vom 10.01.2024"
* entity[Binary][+]
  * what = Reference(Binary/id-der-angereicherten-rechnung)
  * name = "Angereicherte Rechnung zu Rechnung Reiseimpfung vom 10.01.2024"
* entity[Binary][+]
  * what = Reference(Binary/id-des-strukturierten-Rechnungsinhalts)
  * name = "Strukturierter Rechnungsinhalt zu Rechnung Reiseimpfung vom 10.01.2024"


Instance: BeispielNutzungsprotokollChangeStatus
InstanceOf: DiPagNutzungsprotokoll
* type = $auditEventType#rest
* subtype = $operationDiPag#change-status
* action = #E
* recorded = "2024-05-31T14:30:00.000000+00:00"
* outcome = #0
* agent.type = $extraSecurityRoleType#humanuser
* agent.who.identifier
  * system = "http://fhir.de/sid/gkv/kvid-10"
  * value = "A123456789"
* agent.who.display = "Max Mustermann"
* agent.requestor = true
* source.observer
  * display = "DiPag FD Server"
  * identifier
    * system = "urn:ietf:rfc:3986"
    * value = "urn:oid:1.2.276.0.76.4.323"
* entity[Versicherter].what = Reference(Patient/NutzerkontoPatient)
* entity[DocumentReference]
  * what = Reference(BeispielDocumentReferenceRechnungRetrieve)
  * name = "Rechnung Reiseimpfung vom 10.01.2024"
  * detail[+]
    * type = DiPagAuditEventDetailCS#DocumentReference.meta.tag:dipag-rechnungsstatus
    * valueString = "Rechnungsstatus geändert auf 'Bezahlt'"


Instance: BeispielNutzungsprotokollProcessFlag
InstanceOf: DiPagNutzungsprotokoll
* type = $auditEventType#rest
* subtype = $operationDiPag#process-flag
* action = #E
* recorded = "2024-06-01T10:00:00.000000+00:00"
* outcome = #0
* agent.type = $extraSecurityRoleType#humanuser
* agent.who.identifier
  * system = "http://fhir.de/sid/gkv/kvid-10"
  * value = "A123456789"
* agent.who.display = "Max Mustermann"
* agent.requestor = true
* source.observer
  * display = "DiPag FD Server"
  * identifier
    * system = "urn:ietf:rfc:3986"
    * value = "urn:oid:1.2.276.0.76.4.323"
* entity[Versicherter].what = Reference(Patient/NutzerkontoPatient)
* entity[DocumentReference]
  * what = Reference(BeispielDocumentReferenceRechnungRetrieve)
  * name = "Rechnung Reiseimpfung vom 10.01.2024"
  * detail[+]
    * type = DiPagAuditEventDetailCS#DocumentReference.meta.extension:markierung
    * valueString = "Markierung 'Persönlich' gesetzt"


Instance: BeispielNutzungsprotokollErase
InstanceOf: DiPagNutzungsprotokoll
* type = $auditEventType#rest
* subtype = $operationDiPag#erase
* action = #E
* recorded = "2024-06-02T16:45:00.000000+00:00"
* outcome = #0
* agent.type = $extraSecurityRoleType#humanuser
* agent.who.identifier
  * system = "http://fhir.de/sid/gkv/kvid-10"
  * value = "A123456789"
* agent.who.display = "Max Mustermann"
* agent.requestor = true
* source.observer
  * display = "DiPag FD Server"
  * identifier
    * system = "urn:ietf:rfc:3986"
    * value = "urn:oid:1.2.276.0.76.4.323"
* entity[Versicherter].what = Reference(Patient/NutzerkontoPatient)
* entity[DocumentReference]
  * name = "Rechnung Reiseimpfung vom 10.01.2024"
  * detail[+]
    * type = DiPagAuditEventDetailCS#Allgemein
    * valueString = "Rechnung gelöscht"
* entity[Binary][+]
  * name = "Originale Rechnung zu Rechnung Reiseimpfung vom 10.01.2024"
* entity[Binary][+]
  * name = "Angereicherte Rechnung zu Rechnung Reiseimpfung vom 10.01.2024"
* entity[Binary][+]
  * name = "Strukturierter Rechnungsinhalt zu Rechnung Reiseimpfung vom 10.01.2024"


Instance: BeispielNutzungsprotokollEinreichenFrontend
InstanceOf: DiPagNutzungsprotokoll
* type = $auditEventType#rest
* subtype = $operationDiPag#process-flag
* action = #E
* recorded = "2024-06-03T08:20:00.000000+00:00"
* outcome = #0
* agent.type = $extraSecurityRoleType#humanuser
* agent.who.identifier
  * system = "http://fhir.de/sid/gkv/kvid-10"
  * value = "A123456789"
* agent.who.display = "Max Mustermann"
* agent.requestor = true
* source.observer
  * display = "DiPag FD Server"
  * identifier
    * system = "urn:ietf:rfc:3986"
    * value = "urn:oid:1.2.276.0.76.4.323"
* entity[Versicherter].what = Reference(Patient/NutzerkontoPatient)
* entity[DocumentReference]
  * what = Reference(BeispielDocumentReferenceRechnungRetrieve)
  * name = "Rechnung Reiseimpfung vom 10.01.2024"
  * detail[+]
    * type = DiPagAuditEventDetailCS#DocumentReference.meta.extension:markierung
    * valueString = "Die Rechnung wurde über das Frontend eingereicht."


Instance: BeispielNutzungsprotokollAutomatischPapierkorb
InstanceOf: DiPagNutzungsprotokoll
* type = http://dicom.nema.org/resources/ontology/DCM#110100
* subtype = $operationDiPag#change-status
* action = #E
* recorded = "2024-12-31T00:00:00.000000+00:00"
* outcome = #0
* agent.type = $extraSecurityRoleType#dataprocessor
* agent.who.display = "Automatisch durch Anwendung"
* agent.requestor = true
* source.observer
  * display = "DiPag FD Server"
  * identifier
    * system = "urn:ietf:rfc:3986"
    * value = "urn:oid:1.2.276.0.76.4.323"
* entity[Versicherter].what = Reference(Patient/NutzerkontoPatient)
* entity[DocumentReference]
  * what = Reference(BeispielDocumentReferenceRechnungRetrieve)
  * name = "Rechnung Reiseimpfung vom 10.01.2024"
  * detail[+]
    * type = DiPagAuditEventDetailCS#DocumentReference.meta.tag:dipag-rechnungsstatus
    * valueString = "Die Rechnung wurde in den Papierkorb verschoben."


Instance: BeispielNutzungsprotokollAutomatischLoeschen
InstanceOf: DiPagNutzungsprotokoll
* type = http://dicom.nema.org/resources/ontology/DCM#110100
* subtype = $restful-interaction#delete
* action = #D
* recorded = "2025-01-31T00:00:00.000000+00:00"
* outcome = #0
* agent.type = $extraSecurityRoleType#dataprocessor
* agent.who.display = "Automatisch durch Anwendung"
* agent.requestor = true
* source.observer
  * display = "DiPag FD Server"
  * identifier
    * system = "urn:ietf:rfc:3986"
    * value = "urn:oid:1.2.276.0.76.4.323"
* entity[Versicherter].what = Reference(Patient/NutzerkontoPatient)
* entity[DocumentReference]
  * name = "Rechnung Reiseimpfung vom 10.01.2024"
  * detail[+]
    * type = DiPagAuditEventDetailCS#Allgemein
    * valueString = "Die Rechnung wurde gelöscht."
* entity[Binary][+]
  * name = "Originale Rechnung zu Rechnung Reiseimpfung vom 10.01.2024"
* entity[Binary][+]
  * name = "Angereicherte Rechnung zu Rechnung Reiseimpfung vom 10.01.2024"
* entity[Binary][+]
  * name = "Strukturierter Rechnungsinhalt zu Rechnung Reiseimpfung vom 10.01.2024"


Instance: BeispielNutzungsprotokollAutomatischMarkierung
InstanceOf: DiPagNutzungsprotokoll
* type = http://dicom.nema.org/resources/ontology/DCM#110100
* subtype = $restful-interaction#update
* action = #U
* recorded = "2024-06-10T03:00:00.000000+00:00"
* outcome = #0
* agent.type = $extraSecurityRoleType#dataprocessor
* agent.who.display = "Automatisch durch Anwendung"
* agent.requestor = true
* source.observer
  * display = "DiPag FD Server"
  * identifier
    * system = "urn:ietf:rfc:3986"
    * value = "urn:oid:1.2.276.0.76.4.323"
* entity[Versicherter].what = Reference(Patient/NutzerkontoPatient)
* entity[DocumentReference]
  * what = Reference(BeispielDocumentReferenceRechnungRetrieve)
  * name = "Rechnung Reiseimpfung vom 10.01.2024"
  * detail[+]
    * type = DiPagAuditEventDetailCS#DocumentReference.meta.extension:markierung
    * valueString = "Die Rechnung wurde automatisch als 'Abgerufen durch KTR' markiert."


Instance: BeispielNutzungsprotokollBerechtigungAnlegen
InstanceOf: DiPagNutzungsprotokoll
* type = $auditEventType#rest
* subtype = $restful-interaction#create
* action = #C
* recorded = "2024-05-20T09:00:00.000000+00:00"
* outcome = #0
* agent.type = $extraSecurityRoleType#humanuser
* agent.who.identifier
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#PRN
  * system = "https://gematik.de/fhir/sid/telematik-id"
  * value = "11223344"
* agent.who.display = "Zahnarztpraxis Müller"
* agent.requestor = true
* source.observer
  * display = "DiPag FD Server"
  * identifier
    * system = "urn:ietf:rfc:3986"
    * value = "urn:oid:1.2.276.0.76.4.323"
* entity[Versicherter]
  * what = Reference(Patient/NutzerkontoPatient)
  * detail[+]
    * type = DiPagAuditEventDetailCS#Rechnungsversand-Berechtigung
    * valueString = "Die Rechnungsversand-Berechtigung für Zahnarztpraxis Müller wurde angelegt."


Instance: BeispielNutzungsprotokollBerechtigungBestaetigen
InstanceOf: DiPagNutzungsprotokoll
* type = $auditEventType#rest
* subtype = $restful-interaction#update
* action = #U
* recorded = "2024-05-21T10:30:00.000000+00:00"
* outcome = #0
* agent.type = $extraSecurityRoleType#humanuser
* agent.who.identifier
  * system = "http://fhir.de/sid/gkv/kvid-10"
  * value = "A123456789"
* agent.who.display = "Max Mustermann"
* agent.requestor = true
* source.observer
  * display = "DiPag FD Server"
  * identifier
    * system = "urn:ietf:rfc:3986"
    * value = "urn:oid:1.2.276.0.76.4.323"
* entity[Versicherter]
  * what = Reference(Patient/NutzerkontoPatient)
  * detail[+]
    * type = DiPagAuditEventDetailCS#Rechnungsversand-Berechtigung
    * valueString = "Die Berechtigungsregel zum Rechnungsversand für Zahnarztpraxis Müller wurde durch den Rechnungsempfänger bestätigt."


Instance: BeispielNutzungsprotokollBerechtigungAbfragen
InstanceOf: DiPagNutzungsprotokoll
* type = $auditEventType#rest
* subtype = $restful-interaction#read
* action = #R
* recorded = "2024-05-22T08:15:00.000000+00:00"
* outcome = #0
* agent.type = $extraSecurityRoleType#humanuser
* agent.who.identifier
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#PRN
  * system = "https://gematik.de/fhir/sid/telematik-id"
  * value = "11223344"
* agent.who.display = "Zahnarztpraxis Müller"
* agent.requestor = true
* source.observer
  * display = "DiPag FD Server"
  * identifier
    * system = "urn:ietf:rfc:3986"
    * value = "urn:oid:1.2.276.0.76.4.323"
* entity[Versicherter]
  * what = Reference(Patient/NutzerkontoPatient)
  * detail[+]
    * type = DiPagAuditEventDetailCS#Allgemein
    * valueString = "Die Berechtigung zum Rechnungsversand wurde abgefragt."


Instance: BeispielNutzungsprotokollNutzerkontoEinrichten
InstanceOf: DiPagNutzungsprotokoll
* type = $auditEventType#rest
* subtype = $restful-interaction#create
* action = #C
* recorded = "2024-01-15T10:00:00.000000+00:00"
* outcome = #0
* agent.type = $extraSecurityRoleType#humanuser
* agent.who.identifier
  * system = "http://fhir.de/sid/gkv/kvid-10"
  * value = "A123456789"
* agent.who.display = "Max Mustermann"
* agent.requestor = true
* source.observer
  * display = "DiPag FD Server"
  * identifier
    * system = "urn:ietf:rfc:3986"
    * value = "urn:oid:1.2.276.0.76.4.323"
* entity[Versicherter]
  * what = Reference(Patient/NutzerkontoPatient)
  * detail[+]
    * type = DiPagAuditEventDetailCS#Allgemein
    * valueString = "Ein Nutzerkonto wurde eingerichtet."


Instance: BeispielNutzungsprotokollResultBundle
InstanceOf: Bundle
* type = #searchset
* total = 7
* link[+].relation = "self"
* link[=].url = "https://example.com/fhir/AuditEvent?agent-display=Max%20Mustermann"
* entry[+].fullUrl = "https://example.com/fhir/AuditEvent/BeispielNutzungsprotokollNutzerkontoEinrichten"
* entry[=].resource = BeispielNutzungsprotokollNutzerkontoEinrichten
* entry[=].search.mode = #match
* entry[+].fullUrl = "https://example.com/fhir/AuditEvent/BeispielNutzungsprotokollRetrieve"
* entry[=].resource = BeispielNutzungsprotokollRetrieve
* entry[=].search.mode = #match
* entry[+].fullUrl = "https://example.com/fhir/AuditEvent/BeispielNutzungsprotokollChangeStatus"
* entry[=].resource = BeispielNutzungsprotokollChangeStatus
* entry[=].search.mode = #match
* entry[+].fullUrl = "https://example.com/fhir/AuditEvent/BeispielNutzungsprotokollProcessFlag"
* entry[=].resource = BeispielNutzungsprotokollProcessFlag
* entry[=].search.mode = #match
* entry[+].fullUrl = "https://example.com/fhir/AuditEvent/BeispielNutzungsprotokollEinreichenFrontend"
* entry[=].resource = BeispielNutzungsprotokollEinreichenFrontend
* entry[=].search.mode = #match
* entry[+].fullUrl = "https://example.com/fhir/AuditEvent/BeispielNutzungsprotokollBerechtigungBestaetigen"
* entry[=].resource = BeispielNutzungsprotokollBerechtigungBestaetigen
* entry[=].search.mode = #match
* entry[+].fullUrl = "https://example.com/fhir/AuditEvent/BeispielNutzungsprotokollErase"
* entry[=].resource = BeispielNutzungsprotokollErase
* entry[=].search.mode = #match