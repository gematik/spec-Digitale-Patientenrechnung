Profile: DiPagDokumentenmetadatenEingang
Title: "Digitale Patientenrechnung Dokumentenmetadaten Eingang"
Parent: DocumentReference
Id: dipag-dokumentenmetadaten-eingang
* insert Meta
* obeys SignaturVerpflichtendRechnung
* obeys RechnungOderAnhang
* extension MS
* extension contains 
  DiPagDocRefSignature named docRef-signature 0..1 MS
* meta.tag MS
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* status MS
* status = #current
  * ^comment = "Versionierung von Dokumenten ist nicht unterstützt. Nur jeweils die aktuelle Version des Dokumentes wird akzeptiert."
* identifier 1.. MS
  * ^comment = "Eindeutiger Identifikator vergeben durch das RE-PS (z.B. Interne Dokumentennummer). Das System MUSS eindeutig pro Leistungserbringer:in vergeben werden."
  * system 1.. MS
  * value 1.. MS
* type 1.. MS
  * ^comment = "Kodierung des Dokumentes als 'Rechnung', sowie darüber hinausgehende Klassifizierung per KDL"
* type.coding 1.. 
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* type.coding contains DokumentenKlassifizierung 0..1 MS and Rechnungstyp 0..1 MS
* type.coding[DokumentenKlassifizierung] from DiPagSonstigesDokumentTypeVS (required)
  * ^patternCoding.system = "http://dvmd.de/fhir/CodeSystem/kdl"
  * system 1.. MS
  * code 1.. MS
  * display 1.. MS
* type.coding[Rechnungstyp] 
  * ^patternCoding.system = "http://dvmd.de/fhir/CodeSystem/kdl"
  * ^patternCoding.code = #AM010106
* description 1..1 MS
  * ^comment = "Menschenlesbarer Titel des Dokumentes, der dem Versicherten in der UI angezeigt wird. Der Titel kann manuell erfasst oder vom Dateinamen/Metadaten abgeleitet werden. z.B. &quot;Laborbefund vom 28.9.2023&quot;."
* subject 1.. MS
  * ^comment = "Vollständiger Name der behandelten Person. Siehe Informationsmodell 'Rechnung' des Feature-Dokuments Digitale Patientenrechnung."
  * display 1..1 MS
* content 1.. MS
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "format"
  * ^slicing.rules = #open
* content contains originaleRechnung 0..1 MS and strukturierterRechnungsinhalt 0..1 MS and anhang 0..1 MS
* content.attachment.url
  * ^comment = "Der FD muss die Base64-kodierten Daten aus attachment.data extrahieren und in eine Binary-Ressource auslagern."
* content[originaleRechnung]
  * format MS
  * format = https://gematik.de/fhir/dipag/CodeSystem/dipag-attachment-format-cs#originaleRechnung
  * attachment 1..1 MS
    * contentType 1.. MS
    * contentType = #application/pdf
      * ^comment = "Zum Zeitpunkt der Veröffentlichung werden nur PDF-Dokumente als Rechnung seitens der Leistungserbringer:in unterstützt."
    * data 1.. MS
      * ^comment = "Base64-kodiertes PDF. Dieses Feld muss durch die Applikation der Leistungserbringer:in gefüllt werden."
    * url 0..0
* content[strukturierterRechnungsinhalt]
  * format MS
  * format = https://gematik.de/fhir/dipag/CodeSystem/dipag-attachment-format-cs#rechnungsinhalt
  * attachment 1..1 MS
    * contentType from DiPagRestrictedMimeTypesVS (required)
    * contentType 1.. MS
      * ^comment = "Strukturierte Rechnungsinhalte können seitens der Leistungserbringer:in sowohl als JSON als auch XML übergeben werden."
    * data 1.. MS
      * ^comment = "Base64-kodierte Repräsentation der Rechnungsinhalte. Alle Ressourcen sollen in einem collection Bundle zusammengefasst sein, welches durch das Profil [`DiPagRechnungsbundle`](https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsbundle) definiert ist. Dieses Feld muss durch die Applikation der Leistungserbringer:in gefüllt werden."
    * url 0..0
* content[anhang]
  * format MS
  * format = https://gematik.de/fhir/dipag/CodeSystem/dipag-attachment-format-cs#rechnungsanhang
  * attachment 1..1 MS
    * contentType = #application/pdf
    * contentType 1.. MS
      * ^comment = "Zum Zeitpunkt der Veröffentlichung werden nur PDF-Dokumente als Rechnungsanhänge seitens der Leistungserbringer:in unterstützt."
    * data 1.. MS
      * ^comment = "Base64-kodiertes PDF. Dieses Feld muss durch die Applikation der Leistungserbringer:in gefüllt werden."
    * url 0..0


// ------------- Constraints -------------

Invariant: RechnungOderAnhang
Description: "Ein Dokument kann entweder ein Anhang enthalten oder ein Rechnungsdokument inkl. strukturierten Rechnungsinhalten."
Expression: "content.format.where(system = 'https://gematik.de/fhir/dipag/CodeSystem/dipag-attachment-format-cs' and code = 'rechnungsanhang').exists() xor (content.format.where(system = 'https://gematik.de/fhir/dipag/CodeSystem/dipag-attachment-format-cs' and code = 'dipag').exists() and  content.format.where(system = 'https://gematik.de/fhir/dipag/CodeSystem/dipag-attachment-format-cs' and code = 'rechnungsinhalt').exists())"
Severity: #error