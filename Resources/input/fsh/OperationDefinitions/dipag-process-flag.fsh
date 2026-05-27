// ------------- OperationDefinition -------------

Instance: DiPagOperationProcessFlag
InstanceOf: OperationDefinition
Usage: #example
Title: "Digitale Patientenrechnung Operation ProcessFlag"
Description: """Setzt die Markierungen eines Rechnungsdokuments (DocumentReference) nach dem Complete-Replacement-Prinzip: Die übermittelten Markierungen ersetzen vollständig den bisherigen Markierungssatz des Dokuments. Markierungen, die nicht im Request enthalten sind, werden entfernt; Änderungen an bestehenden Markierungen erfolgen durch erneutes Übermitteln mit aktualisierten Werten. Der Request muss daher stets alle weiterhin gültigen Markierungen inklusive ihrer jeweiligen Zusatzinformationen vollständig enthalten.

Ausnahmen: Die Markierungen 'persönlich' und 'abgerufen durch KTR' können über diese Operation weder gesetzt noch entfernt werden und werden ignoriert, falls sie übermittelt werden."""
* url = "https://gematik.de/fhir/dipag/OperationDefinition/ProcessFlag"
* status = #active
* version = "1.0.0-CC"
* experimental = false
* date = "2024-06-20"
* kind = #operation
* name = "DiPagProcessFlag"
* code = #process-flag
* resource = #DocumentReference
* system = false
* type = false
* instance = true
* affectsState = true
* parameter[+]
  * name = #markierung
  * use = #in
  * min = 1
  * max = "*"
  * documentation = "Markierung"
  * type = #Coding
  * part[+]
    * name = #markierung
    * use = #in
    * min = 1
    * max = "1"
    * documentation = "Typ der Markierung"
    * type = #Coding
    * binding
      * valueSet = Canonical(DiPagRechnungMarkierungOperationVS)
      * strength = #required
  * part[+]
    * name = #zeitpunkt
    * use = #in
    * min = 0
    * max = "1"
    * documentation = "Optionaler Zeitpunkt der Markierung"
    * type = #dateTime
  * part[+]
    * name = #details
    * use = #in
    * min = 0
    * max = "1"
    * documentation = "Optionale Details als Freitext zur Markierung"
    * type = #string
  * part[+]
    * name = #gelesen
    * use = #in
    * min = 0
    * max = "1"
    * documentation = "Gelesen-Status falls Markierung vom Typ 'gelesen' ist. Constraint: Darf nur angegeben werden wenn die Markierung vom Typ 'gelesen' ist."
    * type = #boolean
  * part[+]
    * name = #artDerArchivierung
    * use = #in
    * min = 0
    * max = "1"
    * documentation = "Details zur Art der Archivierung falls Markierung vom Typ 'archiviert' ist. Constraint: Darf nur angegeben werden wenn die Markierung vom Typ 'archiviert' ist."
    * type = #Coding
  * part[+]
    * name = #kostentraeger
    * use = #in
    * min = 0
    * max = "1"
    * documentation = "Referenz auf den Kostenträger. Constraint: Darf nur angegeben werden wenn die Markierung vom Typ 'eingereicht-frontend', 'eingereicht-post', 'geteilt' oder 'abgerufen' ist."
    * type = #Reference
* parameter[+]
  * name = #meta
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Vollständiges Meta-Element des Rechnungsdokuments / des Anhangs inkl. Extension (siehe DiPagDocumentReferenceMarkierung) zur Erfassung der Zusatzinformationen der Markierung"
  * type = #Meta
