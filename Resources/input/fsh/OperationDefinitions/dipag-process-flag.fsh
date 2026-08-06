// ------------- OperationDefinition -------------

Instance: DiPagOperationProcessFlag
InstanceOf: OperationDefinition
Usage: #example
Title: "Digitale Patientenrechnung Operation ProcessFlag"
Description: """Setzt die Markierungen eines Rechnungsdokuments (DocumentReference) nach dem Complete-Replacement-Prinzip: Die übermittelten Markierungen ersetzen vollständig den bisherigen Markierungssatz des Dokuments. Markierungen, die nicht im Request enthalten sind, werden entfernt; Änderungen an bestehenden Markierungen erfolgen durch erneutes Übermitteln mit aktualisierten Werten. Der Request muss daher stets alle weiterhin gültigen Markierungen inklusive ihrer jeweiligen Zusatzinformationen vollständig enthalten. Wird kein 'markierung'-Parameter übergeben (leerer Markierungssatz), werden alle änderbaren Markierungen des Dokuments entfernt. Da dies der einzige Endpunkt zur Pflege der Markierungen ist, wird hierüber auch das vollständige Löschen der Markierungen unterstützt.

Ausnahmen: Die Markierungen 'persönlich' und 'abgerufen durch KTR' können über diese Operation weder gesetzt noch entfernt werden und werden ignoriert, falls sie übermittelt werden. Sie bleiben sowohl von der Ersetzung als auch von der Löschung unberührt."""
* meta.profile = "https://gematik.de/fhir/ti/StructureDefinition/ti-operationdefinition"
* extension[+]
  * url = $ti-http-method
  * valueCode = #POST
* url = "https://gematik.de/fhir/dipag/OperationDefinition/ProcessFlag"
* status = #active
* version = "1.0.8"
* experimental = false
* date = "2026-07-08"
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
  * min = 0
  * max = "*"
  * documentation = "Eine Markierung des Dokuments. Es gilt das Complete-Replacement-Prinzip; der gesamte übermittelte Markierungssatz ersetzt den bisherigen. Wird der Parameter nicht übergeben (0 Markierungen), werden alle änderbaren Markierungen entfernt (Löschen). Die Markierungen 'persönlich' und 'abgerufen durch KTR' bleiben hiervon ausgenommen."
  * type = #Coding
  * part[+]
    * name = #markierung
    * use = #in
    * min = 1
    * max = "1"
    * documentation = "Typ der Markierung, es können alle Markierungen mitgegeben werden, die Markierungen 'persönlich' und 'abgerufen durch KTR' werden aber wie oben beschrieben ignoriert."
    * type = #Coding
    * binding
      * valueSet = Canonical(DiPagRechnungMarkierungVS)
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
