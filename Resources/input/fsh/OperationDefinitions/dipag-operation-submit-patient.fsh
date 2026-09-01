// ------------- OperationDefinition -------------

Instance: DiPagOperationSubmitPatient
InstanceOf: OperationDefinition
Usage: #example
Title: "Digitale Patientenrechnung Operation Invoice-Submit"
Description: "Rechnung einreichen durch die Leistungserbringer:in an eine:n Versicherte:n. Die Operation wird auf dem Patient-Endpunkt aufgerufen. Für den Versand an eine Kostenträger-Organisation siehe die OperationDefinition SubmitOrganisation (gleicher Operation-Code invoice-submit auf dem Organization-Endpunkt)."
* url = "https://gematik.de/fhir/dipag/OperationDefinition/Submit"
* status = #active
* version = "1.3.0-beta"
* experimental = false
* date = "2026-09-01"
* kind = #operation
* name = "DiPagSubmit"
* code = #invoice-submit
* resource = #Patient
* system = false
* type = false
* instance = true
* affectsState = true
* parameter[+]
  * name = #rechnung
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Vollständige Digitale Patientenrechnung mit verschiedenen Attachments: 1) Rechnungs-PDF 2) Strukturierte Daten OHNE Signatur. Besteht aus dem Dokument selbst sowie optional der übersteuernden Position des Datamatrix-Codes (barcodePosition in pt)."
  * part[+]
    * name = #dokument
    * use = #in
    * min = 1
    * max = "1"
    * documentation = "Die Digitale Patientenrechnung als DocumentReference. Extensions, die in der Ressource über die profilierten Extensions hinausgehend vorhanden sind, werden abgelehnt (strikte Validierung)."
    * type = #DocumentReference
    * targetProfile = Canonical(DiPagDokumentenmetadatenEingangPatient)
  * part[+]
    * name = #barcodePosition
    * use = #in
    * min = 0
    * max = "1"
    * documentation = "Optionale Übersteuerung der Position des Datamatrix-Codes auf dem Dokument. Übersteuert die Default-Position des Fachdienstes. Besteht aus den Sub-Parts x und y (jeweils Quantity in der Einheit pt / typografischer Punkt)."
    * part[+]
      * name = #x
      * use = #in
      * min = 1
      * max = "1"
      * documentation = "X-Position des Datamatrix-Codes in pt (typografischer Punkt)."
      * type = #decimal
    * part[+]
      * name = #y
      * use = #in
      * min = 1
      * max = "1"
      * documentation = "Y-Position des Datamatrix-Codes in pt (typografischer Punkt)."
      * type = #decimal
* parameter[+]
  * name = #anhang
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "Weitere Anhänge zur Digitalen Patientenrechnung als PDF. Besteht aus dem Dokument selbst sowie optional der übersteuernden Position des Datamatrix-Codes (barcodePosition in pt)."
  * part[+]
    * name = #dokument
    * use = #in
    * min = 1
    * max = "1"
    * documentation = "Der Anhang als DocumentReference. Extensions, die in der Ressource über die profilierten Extensions hinausgehend vorhanden sind, werden abgelehnt (strikte Validierung)."
    * type = #DocumentReference
    * targetProfile = Canonical(DiPagDokumentenmetadatenEingangPatient)
  * part[+]
    * name = #barcodePosition
    * use = #in
    * min = 0
    * max = "1"
    * documentation = "Optionale Übersteuerung der Position des Datamatrix-Codes auf dem Anhang. Übersteuert die Default-Position des Fachdienstes. Besteht aus den Sub-Parts x und y (jeweils Quantity in der Einheit pt / typografischer Punkt)."
    * part[+]
      * name = #x
      * use = #in
      * min = 1
      * max = "1"
      * documentation = "X-Position des Datamatrix-Codes in pt (typografischer Punkt)."
      * type = #decimal
    * part[+]
      * name = #y
      * use = #in
      * min = 1
      * max = "1"
      * documentation = "Y-Position des Datamatrix-Codes in pt (typografischer Punkt)."
      * type = #decimal
* parameter[+]
  * name = #modus
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Verarbeitungshinweis für die Digitale Patientenrechnung. Default: normal."
  * type = #code
  * binding
    * strength = #required
    * valueSet = "https://gematik.de/fhir/dipag/ValueSet/dipag-rechnung-submit-modus-vs"
* parameter[+]
  * name = #angereichertesPDF
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Indikation ob nur das durch den FD erstellte Dokumententoken zurückgegeben werden soll oder das gesamte PDF inkl. Dokumententoken. Default: false."
  * type = #boolean
* parameter[+]
  * name = #token
  * use = #out
  * min = 0
  * max = "*"
  * documentation = "Token(s) zur eineindeutigen Identifizierung der Rechnungsdokumente/-anhänge (unabhängig von returnTokenPDF). Dieser Parameter ist NUR optional falls modus = 'test'."
  * part[+]
    * name = #id
    * use = #out
    * min = 1
    * max = "1"
    * type = #id
    * documentation = "Randomisiertes Token zur Identifikation eines Dokumentes."
  * part[+]
    * name = #docRef
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "Eindeutiger Identifikatior der Rechnung und Anhänge auf welche sich das Token bezieht."
    * type = #Identifier
  * part[+]
    * name = #angereichertesPDF
    * use = #out
    * min = 0
    * max = "1"
    * documentation = "PDF mit eingebetteten Token und strukturierten Daten, in Abhängigkeit vom angereichertesPDF-Parameter. Vgl. 4.1 Einreichung per Post des Feature-Dokumentes Digitale Patientenrechnung."
    * type = #Binary
* parameter[+]
  * name = #warnungen
  * use = #out
  * min = 0
  * max = "1"
  * documentation = "Warnhinweise und Fehlern zur Validierung der Digitalen Patientenrechnung. Diese MÜSSEN in jedem Verarbeitungsmodus ausgegeben werden."
  * type = #OperationOutcome

// ------------- Terminology -------------

CodeSystem:  DiPagRechnungSubmitModusCS
Id: dipag-rechnung-submit-modus-cs
Title: "Digitale Patientenrechnung Rechnung Submit Modus CS"
Description:  "CodeSystem für die Differenzierung von der Verarbeitungsmodi für $erchnung-submit"
* insert Meta(1.0.7)
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* #test "Test" "Digitale Patientenrechnung wird als Test eingereicht. Der Fachdienst validiert nur die Digitale Patientenrechnung und speichert diese nicht."
* #normal "Normal" "Digitale Patientenrechnung wird durch den Fachdienst gespeichert falls keine gravierenden Validierungsfehler vorhanden sind."

ValueSet:  DiPagRechnungSubmitModusVS
Id: dipag-rechnung-submit-modus-vs
Title: "Digitale Patientenrechnung Rechnung Type VS"
Description:  "ValueSet für die Differenzierung von der Verarbeitungsmodi für $erchnung-submit"
* insert Meta(1.0.7)
* include codes from system https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-submit-modus-cs