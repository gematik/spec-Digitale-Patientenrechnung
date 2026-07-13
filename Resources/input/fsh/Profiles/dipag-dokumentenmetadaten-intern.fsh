// ------------- Profile -------------
Alias: $kdl = http://dvmd.de/fhir/CodeSystem/kdl

Profile: DiPagDokumentenmetadatenIntern
Title: "Digitale Patientenrechnung Dokumentenmetadaten Intern"
Parent: DocumentReference
Id: dipag-dokumentenmetadaten-intern
Description: "Dieses Profil beschreibt die Dokumentenmetadaten, wie sie im Fachdienst gehalten und an abrufende Akteure ausgeliefert werden. Es ergänzt die eingereichten Metadaten u. a. um das Rechnungs-Token, den Rechnungsstatus, Markierungen sowie die aus den strukturierten Rechnungsinhalten extrahierten Angaben (z. B. Rechnungsdatum, Gesamtbetrag, Zahlungsziel)."
* insert Meta(1.0.8)
* ^date = "2026-07-08"
* obeys SignaturVerpflichtendRechnung
* id ^comment = "Die technische DocumentReference-id dient ausschließlich der serverinternen Adressierung. Der Abruf eines Dokuments erfolgt nicht über die id, sondern ausschließlich über das Rechnungs-Token (siehe identifier:Token) via Retrieve-Operation. Das Token darf NICHT aus der id ableitbar sein."
* extension MS
* extension contains 
  DiPagDocRefSignature named docRef-signature 0..1 MS and
  DiPagDocumentReferenceRechnungsdatum named rechnungsdatum 0..1 MS and
  DiPagZahlungsziel named zahlungszieldatum 0..1 MS and
  DiPagDocumentReferenceGesamtbetrag named gesamtbetrag 0..1 MS and
  DiPagDocRefFachrichtung named fachrichtung 0..1 MS and
  DiPagBehandlungsart named behandlungsart 0..1 MS
* extension[rechnungsdatum]
  * ^comment = "Das Rechnungsdatum wird aus den strukturierten Inhalten durch den FD extrahiert. Siehe Informationsmodell 'Rechnung' des Feature-Dokuments Digitale Patientenrechnung"
* extension[zahlungszieldatum]
  * ^comment = "Das Zahlungszieldatum wird aus den strukturierten Inhalten durch den FD extrahiert. Siehe Informationsmodell 'Rechnung' des Feature-Dokuments Digitale Patientenrechnung"
* extension[gesamtbetrag]
  * ^comment = "Der Gesamtbetrag wird aus den strukturierten Inhalten durch den FD extrahiert. Siehe Informationsmodell 'Rechnung' des Feature-Dokuments Digitale Patientenrechnung"
* extension[fachrichtung]
  * ^comment = "Die Fachrichtung wird aus den strukturierten Inhalten durch den FD extrahiert. Siehe Informationsmodell 'Rechnung' des Feature-Dokuments Digitale Patientenrechnung"
* extension[behandlungsart]
  * ^comment = "Die Behandlungsart wird aus den strukturierten Inhalten durch den FD extrahiert. Siehe Informationsmodell 'Rechnung' des Feature-Dokuments Digitale Patientenrechnung"
* extension[docRef-signature]
  * ^comment = "Die Signatur auf Ebene der DocumentReference muss nur beim Typ Rechnung vorhanden sein unnd umfasst eine Signatur über die originale Rechnung und die strukturierten Rechnungsinhalte."
  * insert Signature
* meta.extension MS
* meta.extension contains DiPagDocumentReferenceMarkierung named markierung 0..* MS
* meta.extension[markierung]
  * ^comment = "Vgl. Abschnitt '4.4.2 Markierungen' des Feature-Dokuments Digitale Patientenrechnung"
  * extension[markierung] MS
    * valueCoding MS
  * extension[zeitpunkt] MS
    * valueDateTime MS
  * extension[details] MS
    * valueString MS
      * ^maxLength = 1024
  * extension[artDerArchivierung] MS
    * valueCoding MS
  * extension[kostentraeger] MS
    * valueReference MS
      * identifier MS
      * display MS
        * ^maxLength = 1024
* meta.tag MS
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* meta.tag contains dipag-rechnungsstatus 0..1 MS
  * ^comment = "Metaangaben zur Digitalen Patientenrechnung die sich auf das Rechnungsdokument als Ganzes beziehen und nicht Teil des durch den RE-PS erstellten Dokuments sind."
* meta.tag[dipag-rechnungsstatus] from DiPagRechnungsstatusVS (required)
  * ^comment = "Vgl. Abschnitt 4.4.1 Workflow einer Rechnung des Feature-Dokuments Digitale Patientenrechnung"
  * system 1.. MS
  * code 1.. MS
* status MS
* status = #current
  * ^comment = "Versionierung von Dokumenten ist nicht unterstützt. Nur jeweils die aktuelle Version des Dokumentes wird akzeptiert."
* identifier 1.. MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier
  contains Token 1..1 MS and
  Rechnungsnummer 0..1 MS and
  AnhangIdentifier 0..1 MS
* identifier[Token]
  * ^patternIdentifier.system = "https://gematik.de/fhir/sid/dipag-token"
  * ^short = "Rechnungs-Token (Dokumenttoken)"
  * ^comment = "Eindeutiges, vom Fachdienst vergebenes Token zur Identifikation des Dokuments beim Abruf über die Retrieve-Operation. Das Token wird als eigener Identifier geführt und ist NICHT mit der technischen DocumentReference-id identisch. Das Token MUSS so vergeben werden, dass es NICHT aus der DocumentReference-id abgeleitet werden kann (z.B. kryptographisch zufällig erzeugt)."
  * system 1.. MS
    * ^short = "NamingSystem des Rechnungs-Tokens"
  * system = "https://gematik.de/fhir/sid/dipag-token"
  * value 1.. MS
    * ^short = "Rechnungs-Token (Dokumenttoken)"
* identifier[Rechnungsnummer]
  * ^patternIdentifier.type = DiPagRechnungIdentifierTypeCS#invoice
  * ^short = "Rechnungs-Nr. (der LEI)"
  * ^comment = "Die Rechnungs-Nr. (der LEI) MUSS vorhanden sein."
  * type 1.. MS
  * type = DiPagRechnungIdentifierTypeCS#invoice
  * system 1.. MS
    * ^short = "NamingSystem der Rechnungs-Nr. (der LEI)"
  * value 1.. MS
    * ^short = "Rechnungs-Nr. (der LEI)"
* identifier[AnhangIdentifier]
  * ^patternIdentifier.type = DiPagRechnungIdentifierTypeCS#anhang
  * ^short = "Anhangs-Identifier"
  * ^comment = "Eindeutiger Identifikator für Anhänge vergeben durch das RE-PS (z.B. Interne Dokumentennummer). Bei Anhängen MUSS das System eindeutig pro Leistungserbringer:in vergeben werden."
  * type 1.. MS
  * type = DiPagRechnungIdentifierTypeCS#anhang
  * system 1.. MS
    * ^short = "NamingSystem des Anhangs-Identifier"
  * value 1.. MS
    * ^short = "Anhangs-Identifier"
* type 1.. MS
  * ^comment = "Kodierung des Dokumentes als 'Rechnung', sowie darüber hinausgehende Klassifizierung per KDL"
* type.coding 1.. 
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* type.coding contains DokumentenKlassifizierung 0..1 MS and Rechnungstyp 0..1 MS
* type.coding[DokumentenKlassifizierung] from DiPagSonstigesDokumentTypeVS (required)
  * system 1.. MS
  * code 1.. MS
  * display 1.. MS
    * ^maxLength = 1024
* type.coding[Rechnungstyp]
  * ^patternCoding.system = "http://dvmd.de/fhir/CodeSystem/kdl"
  * ^patternCoding.code = #AM010106
* description 1..1 MS
  * ^comment = "Menschenlesbarer Titel des Dokumentes, der dem Versicherten in der UI angezeigt wird. Der Titel kann manuell erfasst oder vom Dateinamen/Metadaten abgeleitet werden. z.B. &quot;Laborbefund vom 28.9.2023&quot;."
* subject 1.. MS
  * ^comment = "Vollständiger Name der behandelten Person. Siehe Informationsmodell 'Rechnung' des Feature-Dokuments Digitale Patientenrechnung."
  * display 1..1 MS
    * ^maxLength = 1024
* author MS
  * ^comment = "Der Fachdienst verknüpft alle Rechnungsdokumente mit der Telematik-ID des einreichenden Akteurs."
  * identifier 1.. MS
  * identifier only IdentifierTelematikId
  * display 1.. MS
    * ^maxLength = 1024
* content 1.. MS
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "format"
  * ^slicing.rules = #open
* content contains originaleRechnung 0..1 MS and angereicherteRechnung 0..1 MS and strukturierterRechnungsinhalt 0..1 MS and anhang 0..1 MS
* content[originaleRechnung]
  * format MS
  * format = https://gematik.de/fhir/dipag/CodeSystem/dipag-attachment-format-cs#originaleRechnung
  * attachment 1..1 MS
    * extension contains DiPagDocRefSignature named signature 0..1 MS
    * extension[signature]
      * ^comment = "Die Signatur auf Ebene der Attachment muss vorhanden sein und umfasst eine Signatur über den Hash der originalen Rechnung. Die Extension hat keine Mindestkardinalität von 1, da sie in R5 entfernt wird und die Instanz dann immer noch valide sein muss."
      * insert Signature
    * contentType 1.. MS
    * contentType = #application/pdf
      * ^comment = "Zum Zeitpunkt der Veröffentlichung werden nur PDF-Dokumente als Rechnung seitens der Leistungserbringer:in unterstützt."
    * data 0..0
      * ^comment = "Die angereicherte Rechnung wird durch den FD direkt als Binary-Ressource unter attachment.url referenziert."
    * url 1.. MS
* content[angereicherteRechnung]
  * format MS
  * format = https://gematik.de/fhir/dipag/CodeSystem/dipag-attachment-format-cs#angereichertesPDF
  * attachment 1..1 MS
    * extension contains DiPagDocRefSignature named signature 0..1 MS
    * extension[signature]
      * ^comment = "Die Signatur auf Ebene der Attachment muss vorhanden sein und umfasst eine Signatur über den Hash der angereicherten Rechnung.Die Extension hat keine Mindestkardinalität von 1, da sie in R5 entfernt wird und die Instanz dann immer noch valide sein muss."
      * insert Signature
    * contentType 1.. MS
    * contentType = #application/pdf
      * ^comment = "Zum Zeitpunkt der Veröffentlichung werden nur PDF-Dokumente als Rechnung seitens der Leistungserbringer:in unterstützt."
    * data 0..0
      * ^comment = "Die angereicherte Rechnung wird durch den FD direkt als Binary-Ressource unter attachment.url referenziert."
    * url 1.. MS
* content[strukturierterRechnungsinhalt]
  * format MS
  * format = https://gematik.de/fhir/dipag/CodeSystem/dipag-attachment-format-cs#rechnungsinhalt
  * attachment 1..1 MS
    * extension contains DiPagDocRefSignature named signature 0..1 MS
    * extension[signature]
      * ^comment = "Die Signatur auf Ebene der Attachment muss vorhanden sein und umfasst eine Signatur über den Hash der strukturierten Rechnungsinhalte. Die strukturierten Rechnungsinhalte müssen im Format fhir+json vorhanden sein. Die Extension hat keine Mindestkardinalität von 1, da sie in R5 entfernt wird und die Instanz dann immer noch valide sein muss."
      * insert Signature
    * contentType = #application/fhir+json
    * contentType 1.. MS
      * ^comment = "Strukturierte Rechnungsinhalte können seitens der Leistungserbringer:in sowohl als JSON als auch XML übergeben werden."
    * data 0..0
      * ^comment = "Die angereicherte Rechnung wird durch den FD direkt als Binary-Ressource unter attachment.url referenziert."
    * url 1.. MS
* content[anhang]
  * format MS
  * format = https://gematik.de/fhir/dipag/CodeSystem/dipag-attachment-format-cs#rechnungsanhang
  * attachment 1..1 MS
    * extension contains DiPagDocRefSignature named signature 0..1 MS
    * extension[signature]
      * ^comment = "Die Signatur auf Ebene der Attachment muss vorhanden sein und umfasst eine Signatur über den Hash des Anhangs. Die Extension hat keine Mindestkardinalität von 1, da sie in R5 entfernt wird und die Instanz dann immer noch valide sein muss."
      * insert Signature
    * contentType = #application/pdf
    * contentType 1.. MS
      * ^comment = "Zum Zeitpunkt der Veröffentlichung werden nur PDF-Dokumente als Rechnungsanhänge seitens der Leistungserbringer:in unterstützt."
    * data 0..0
      * ^comment = "Die angereicherte Rechnung wird durch den FD direkt als Binary-Ressource unter attachment.url referenziert."
    * url 1.. MS
* context MS
  * related 1.. MS
    * ^comment = "Der Fachdienst verknüpft alle Rechnungsdokumente mit der Rechnungsempfänger:in. Die Slices werden über das Element Reference.type unterschieden und NICHT über die Auflösung der Referenz (resolve()), damit eine einzelne DocumentReference auch ohne Bundle-Kontext (z.B. als Ergebnis der $retrieve-Operation oder der Suche) validierbar bleibt. Der Fachdienst MUSS Reference.type entsprechend dem Zieltyp ('Patient' bzw. 'DocumentReference') setzen."
    * ^slicing.discriminator.type = #pattern
    * ^slicing.discriminator.path = "type"
    *  ^slicing.rules = #open
  * related contains patient 1..1 MS and anhaenge 0..* MS
  * related[patient] only Reference(Patient)
    * type 1.. MS
    * type = "Patient"
  * related[anhaenge] only Reference(DocumentReference)
    * type 1.. MS
    * type = "DocumentReference"

// ------------- ValueSets -------------

ValueSet: DiPagRestrictedMimeTypesInBinaryVS
Id: dipag-restricted-mime-types-in-binary-vs
Title: "Digitale Patientenrechnung Restricted Mime Types in Binary"
Description: "ValueSet der zulässigen MIME-Types für Dokumente der Digitalen Patientenrechnung (PDF und FHIR-JSON)"
* insert Meta(1.0.7)

* include urn:ietf:bcp:13#application/fhir+json
* include urn:ietf:bcp:13#application/pdf

ValueSet: DiPagRechnungsstatusVS
Id: dipag-rechnungsstatus-vs
Title: "Digitale Patientenrechnung Rechnungsstatus"
Description: "ValueSet für den Bearbeitungsstatus eines Rechnungsdokuments (offen, erledigt, papierkorb)"
* insert Meta(1.0.7)
* include codes from system DiPagARechnungsstatusCS

// ------------- CodeSystem -------------

CodeSystem:  DiPagAttachmentFormatCS
Id: dipag-attachment-format-cs
Title: "Digitale Patientenrechnung Attachment Format CS"
Description:  "CodeSystem für die Abbildung von verschiedenen Formatinhalten eines Dokuments"
* insert Meta(1.0.7)
* #originaleRechnung "Das originale PDF der Rechnung"
* #angereichertesPDF "Digitale Patientenrechnungs Dokument mit eingebetteten strukturierten Rechnungsinhalt"
* #rechnungsinhalt "Strukturierter Rechnungsinhalt"
* #rechnungsanhang "Rechnungsanhang"

CodeSystem: DiPagARechnungsstatusCS
Id: dipag-rechnungsstatus-cs
Title: "Digitale Patientenrechnung Rechnungsstatus CS"
Description:  "CodeSystem für die Abbildung der verschiedenen Bearbeitungsstatus eines Rechnungsdokuments"
* insert Meta(1.0.7)
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* #offen "Offen"
* #erledigt "Erledigt"
* #papierkorb "Papierkorb"

// ------------- Extensions -------------

Extension: DiPagDocRefSignature
Id: dipag-docref-signature
Title: "Digitale Patientenrechnung DocRef Signature"
Description: "Extension zur Abbildung einer Digitalen Signatur über die Rechnungsrepräsentation, sowie den strukturierten Rechnungsinhalten"
Context: DocumentReference, DocumentReference.content.attachment
* insert Meta(1.0.7)
* value[x] 1.. MS
* value[x] only Signature

Extension: DiPagDocRefFachrichtung
Id: dipag-docref-fachrichtung
Title: "Digitale Patientenrechnung DocRef Fachrichtung"
Description: "Extension zur Angabe der Fachrichtung zur Steuerung des Abrechungsworkflows"
Context: DocumentReference
* insert Meta(1.0.7)

* value[x] 1.. MS
* value[x] only Coding
* value[x] from http://ihe-d.de/ValueSets/IHEXDSpracticeSettingCode (required)

// ------------- Constraints -------------

Invariant: SignaturVerpflichtendRechnung
Description: "Eine Signature muss vorhanden sein, falls es sich bei der DocumentReference um eine Rechnung handelt. Diese Invariante ist als Warnung eingestuft, weil in R5 zur Ausgabe entfernt wird und diese Ausgabe ohne Validierungsfehler sein soll."
Expression: "type.coding.where(system = 'http://dvmd.de/fhir/CodeSystem/kdl' and code = 'AM010106').exists() and content.format.where(system = 'https://gematik.de/fhir/dipag/CodeSystem/dipag-attachment-format-cs' and code = 'originaleRechnung').exists() and content.format.where(system = 'https://gematik.de/fhir/dipag/CodeSystem/dipag-attachment-format-cs' and code = 'rechnungsinhalt').exists() implies extension.where(url = 'https://gematik.de/fhir/dipag/StructureDefinition/dipag-docref-signature').exists()"
Severity: #warning






