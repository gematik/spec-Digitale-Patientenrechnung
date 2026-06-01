Profile: DiPagNutzungsprotokoll
Parent: AuditEvent
Title: "Digitale Patientenrechnung Nutzungsprotokoll"
Id: dipag-nutzungsprotokoll
* insert Meta
* type MS
  * ^comment = "Angabe ob es sich um eine zu protokollierende Nutzerinteraktion nach Abschnittt '5.5.9 Nutzerprotokolle' des Feature-Dokuments 'Digitale Patientenrechnung' handelt oder um eine durchgeführte REST-API-Interaktion durch den FD."
* type from DiPagAuditEventTypeVS (required)
* subtype 1..1 MS
  * ^comment = "Erlaubt die Kodierung aller REST-API Operationen der Spec-Digitale Patientenrechnung"
* subtype from DiPagAuditEventSubTypeVS (required)
* action MS
  * ^comment = "Angabe ob es sich um eine lesende/schreibende/ausführende Interaktion handelt."
* recorded MS
  * ^comment = "Der Zeitpunkt des Zugriffs ist zu protokollieren. Siehe Abschnittt '4.8.6 Protokolleintrag'des Feature-Dokuments 'Digitale Patientenrechnung'."
* outcome MS
  * ^comment = "Angabe ob die zu protokollierende Interaktion erfolgreich ausgeführt werden konnte."
* agent MS
  * ^comment = "Angaben zum Akteur (Nutzer oder DiPag FD), der den Zugriff durchgeführt hat. Siehe Abschnittt '4.8.6 Protokolleintrag'des Feature-Dokuments 'Digitale Patientenrechnung'."
* agent
  * type 1.. MS
  * type from DiPagAuditEventAgentTypeVS (required)
  * who MS
  * who.identifier ..1 MS
  * who.identifier ^comment = "Der Identifier wird vom Server gesetzt und kann entweder eine KVNR oder Telematik-ID sein. Im Falle einer Applikations-internen Aktivität muss die OID des FdV gesetzt werden."
  * who.display 1.. MS
* source.observer
  * display MS
    * ^comment = "Name des DiPag Fachdienst-Server, auf dem das Event ausgelöst wurde"
  * identifier MS
    * ^comment = "Identifier (OID) des DiPag Fachdienst-Server, auf dem das Event ausgelöst wurde"
* entity MS
  * detail MS
    * ^comment = "Details zum Dokument, z.B. die Art der Interaktion"
    * type MS
    * type from DiPagAuditEventDetailVS (required)
    * valueString MS
      * ^comment = "Freitextliche Angabe zu den Details der Interaktion. Der Freitext soll verständlich und für die Anzeige im Frontend geeignet sein."
* entity ^slicing.discriminator.type = #pattern
* entity ^slicing.discriminator.path = "what.type"
* entity ^slicing.rules = #open
* entity contains Versicherter 1..1 MS
* entity[Versicherter].what
  * ^comment = "Referenz auf das von der zu protokollierenden Interaktion betroffene Benutzerkonto im Fachdienst."
  * type MS
  * type = http://hl7.org/fhir/resource-types#Patient
  * reference MS
* entity contains DocumentReference 0..* MS
* entity[DocumentReference]
  * what
    * ^comment = "Referenz auf alle betroffenen DocumentReference Resourcen"
    * type MS
    * type = http://hl7.org/fhir/resource-types#DocumentReference
    * reference MS
  * name 1.. MS
    * ^comment = "Freitextname des Dokumentes, auf das sich die Referenz bezieht"
* entity contains Binary 0..* MS
* entity[Binary]
  * what
    * ^comment = "Referenz auf alle betroffenen Binary   Resourcen"
    * type MS
    * type = http://hl7.org/fhir/resource-types#Binary
    * reference MS
  * name 1.. MS
    * ^comment = "Freitextname des Dokumenten-Binary, auf das sich die Referenz bezieht"

CodeSystem: DiPagOperationenCS
Id: dipag-operationen-cs
Title: "Digitale Patientenrechnung Operationen"
* insert Meta
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* #invoice-submit "Digitale Patientenrechnung_Submit"
* #retrieve "Digitale Patientenrechnung_Retrieve"
* #change-status "Digitale Patientenrechnung_ChangeStatus"
* #process-flag "Digitale Patientenrechnung_ProcessFlag"
* #erase "Digitale Patientenrechnung_Erase"


ValueSet: DiPagAuditEventSubTypeVS
Id: dipag-audit-event-sub-type-vs
Title: "Digitale Patientenrechnung Audit Event Sub-Type"
* insert Meta
* include codes from system $restful-interaction
* include codes from system DiPagOperationenCS

ValueSet: DiPagAuditEventTypeVS
Id: dipag-audit-event-type-vs
Title: "Digitale Patientenrechnung Audit Event Type"
* insert Meta
* http://dicom.nema.org/resources/ontology/DCM#110100 "Application Activity"
* $auditEventType#rest "RESTful Operation"


ValueSet: DiPagAuditEventAgentTypeVS
Id: dipag-audit-event-agent-type-vs
Title: "Digitale Patientenrechnung Audit Event Agent Type"
* insert Meta
* $extraSecurityRoleType#humanuser "human user"
* $extraSecurityRoleType#dataprocessor "data processor"

CodeSystem: DiPagAuditEventDetailCS
Id: dipag-audit-event-detail-cs
Title: "Digitale Patientenrechnung Audit Event Detail"
* insert Meta
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* #Allgemein "Allgemeine Interaktion mit einem Objekt"
* #Rechnungsversand-Berechtigung "Rechnungsversand-Berechtigung"
* #DocumentReference.meta.tag:dipag-rechnungsstatus "Rechnungsstatus"
* #DocumentReference.meta.extension:markierung "Markierung"


ValueSet: DiPagAuditEventDetailVS
Id: dipag-audit-event-detail-vs
Title: "Digitale Patientenrechnung Audit Event Detail"
* insert Meta
* include codes from system DiPagAuditEventDetailCS