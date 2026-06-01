Instance: BeispielNutzungsprotokoll
InstanceOf: DiPagNutzungsprotokoll
* type = $auditEventType#rest
* subtype = $operationDiPag#invoice-submit
* action = #C
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
  * display = "FdV"
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
* action = #R
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
* action = #U
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
* action = #U
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
* action = #D
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


Instance: BeispielNutzungsprotokollResultBundle
InstanceOf: Bundle
* type = #searchset
* total = 5
* link[+].relation = "self"
* link[=].url = "https://example.com/fhir/AuditEvent?agent:text=11223344"
* entry[+].fullUrl = "https://example.com/fhir/AuditEvent/BeispielNutzungsprotokoll"
* entry[=].resource = BeispielNutzungsprotokoll
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
* entry[+].fullUrl = "https://example.com/fhir/AuditEvent/BeispielNutzungsprotokollErase"
* entry[=].resource = BeispielNutzungsprotokollErase
* entry[=].search.mode = #match