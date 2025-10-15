Profile: DiPagRechnung
Title: "Digitale Patientenrechnung Rechnung"
Parent: Invoice
Id: dipag-rechnung
* insert Meta
* extension contains 
  http://hl7.org/fhir/5.0/StructureDefinition/extension-Invoice.period[x] named Behandlungszeitraum 0..1 MS and
  DiPagAbrechnungsDiagnoseProzedur named AbrechnungsDiagnoseProzedur 0..* MS and
  DiPagAbrechnungsDiagnoseProzedurFreitext named AbrechnungsDiagnoseProzedurFreitext ..1 MS and
  DiPagBehandlungsart named Behandlungsart 1..1 MS and
  DiPagFachrichtung named Fachrichtung 1..1 MS and
  $extension-replaces named Korrekturrechnung ..1 MS and
  DiPagTokenStornierteRechnung named Korrekturtoken ..1 MS and
  ERGBemaPunktsumme named BemaPunktsumme ..1 MS and
  $extension-basedOn named Antragsreferenz ..1 MS
* extension[AbrechnungsDiagnoseProzedur]
  * ^short = "Diagnose"
  * ^comment = "Im Falle einer GOÄ oder GOÄ-neu Rechnung, SOLLEN Diagnosen und Prozeduren vorhanden sein.
  Im Falle einer GOZ oder BEMA Rechnung werden keine Diagnosen oder Prozedur gefordert."
  * extension[Use].valueCoding MS
    * ^short = "Kennzeichen Hauptdiagnose"
    * ^comment = "Das Kennzeichen Hauptdiagnose SOLL vorhanden sein."
    * code = DiPagAbrechnungsDiagnoseUseCS#main-diagnosis
  * extension[Referenz].valueReference MS
    * ^short = "Zuordnung von Diagnosen oder Prozeduren zur Rechnung"
    * ^comment = "Diagnosen und Prozeduren SOLLEN zur Rechnung zugeordnet sein."
* extension[Behandlungszeitraum]
  * ^short = "Behandlungszeitraum"
  * ^comment = "Entweder ein Behandlungszeitraum, oder ein -datum SOLL vorhanden sein."
  * valuePeriod MS
    * start MS
      * ^short = "Startdatum"
    * end MS
      * ^short = "Enddatum"
  * valueDate MS
    * ^short = "Behandlungsdatum"
* extension[AbrechnungsDiagnoseProzedurFreitext]
  * ^short = "Einleitung (Diagnose und Prozedure als Freitextangabe)"
  * ^comment = "Im Falle einer GOÄ, GOZ oder BEMA Rechnung, SOLLEN Diagnose und Prozedure als Freitextangabe vorhanden sein.
  Im Falle einer GOÄ-neu Rechnung werden keine Diagnosen und Prozeduren als Freitext gefordert."
  * valueString 1.. MS
* extension[Behandlungsart]
  * ^short = "Behandlungsart"
  * ^comment = "Die Behandlungsart MUSS vorhanden sein."
  * valueCoding 1..1 MS
    * system 1.. MS
    * code 1.. MS
* extension[Fachrichtung]
  * ^short = "Fachrichtung"
  * ^comment = "Die Fachrichtung MUSS vorhanden sein.
  Es wird empfohlen für zahnärztliche Rechnungen immer den Wert MZKH (Zahnmedizin) zu nutzen."
  * valueCoding 1..1 MS
    * system 1.. MS
    * code 1.. MS
* extension[Korrekturrechnung]
  * ^short = "Info Korrekturrechnung"
  * ^comment = "Wenn die Instanz dieser Rechnung eine Korrektur einer anderen Rechnung ist, SOLL die ersetzte Rechnung hier referenziert werden."
  * valueCanonical 1..1 MS
  * valueCanonical only Canonical(DiPagRechnung or Invoice)
* extension[Korrekturtoken]
  * ^short = "Info Korrekturtoken"
  * ^comment = "Wenn die Instanz dieser Rechnung eine Korrektur einer anderen Rechnung ist, SOLL das Token der ersetzten Rechnung hier angegeben werden."
  * valueIdentifier MS
    * system 1.. MS
    * value 1.. MS
* extension[BemaPunktsumme]
  * ^comment = "Im Falle einer BEMA Rechnung SOLL die Punktsumme BEMA vorhanden sein.
  Im Falle einer GOÄ, GOÄ-neu oder GOZ Rechnung ist das Element nicht gefordert."
  * extension[Punktsumme] MS
    * ^short = "Summe Punktzahlen der BEMA-Leistungen"
    * ^comment = "Die Summe Punktzahlen der BEMA-Leistungen SOLL vorhanden sein."
    * valueDecimal MS
  * extension[Punktwert] MS
    * ^short = "Punktwert der BEMA-Leistungen"
    * ^comment = "Der Punktwert der BEMA-Leistungen SOLL vorhanden sein."
    * valueDecimal MS
* extension[Antragsreferenz]
  * valueReference MS
  * valueReference.reference 0..0
  * valueReference.display 0..0
  * valueReference.type 0..0
  * valueReference.identifier 1..1 MS
    * ^patternIdentifier.type = DiPagRechnungIdentifierTypeCS#antragsreferenz
    * ^short = "Referenz auf Heil- und Kostenplan, Kostenvoranschlag oder Kostenübernahmeantrag"
    * ^comment = "Die Antragsreferenz SOLL vorhanden sein."
    * type 1.. MS
    * type = DiPagRechnungIdentifierTypeCS#antragsreferenz
    * system 1.. MS
      * ^short = "NamingSystem der Antragsreferenz"
    * value 1.. MS
      * ^short = "Antragsreferenz"
* identifier 1.. MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains
  Rechnungsnummer 1..1 MS and
  Antragsnummer ..1 MS
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
* date 1.. MS
  * ^short = "Rechnungsdatum"
  * ^comment = "Das Rechnungsdatum MUSS vorhanden sein."
* type MS
* type.coding 1.. MS
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* type.coding contains 
  AusrichtungDerRechnung ..1 MS and
  Rechnungsart ..1 MS
* type.coding[AusrichtungDerRechnung] from DiPagRechnungAbrechnungsartVS (required)
  * ^patternCoding.system = Canonical(DiPagRechnungAbrechnungsartCS)
  * ^short = "Abrechnungsart der Rechnung"
  * ^comment = "Die Grundsätzliche Ausrichtung der Rechnung (Abrechnungsart) SOLL vorhanden sein."
  * system 1.. MS
  * code 1.. MS
  * extension contains DiPagZusatzinformationZurAbrechnungsart named Zusatzinformation ..1 MS
  * extension[Zusatzinformation]
    * ^short = "Zusatzinformation zur Abrechnungsart"
    * ^comment = "Die Zusatzinformation zur Abrechnungsart SOLL vorhanden sein, wenn es sich um eine Abrechnung nach §13 Abs. 2 SGB V handelt."
  * extension[Zusatzinformation].valueBoolean MS
* type.coding[Rechnungsart] from DiPagRechnungsartVS (required)
  * ^patternCoding.system = Canonical(DiPagRechnungsartCS)
  * ^short = "Rechnungsart"
  * ^comment = "Die Rechnungsart SOLL vorhanden sein."
  * system 1.. MS
  * code 1.. MS
* subject 1..1 MS
* subject only Reference(DiPagPatient or Patient)
  * reference 1..1 MS
  * ^short = "Behandelte Person"
  * ^comment = "Der Name der behandelten Person SOLL angegeben werden und kann vom Rechnungsempfänger abweichen, z.B. wenn Eltern Rechnungen für ihre Kinder erhalten."
* recipient 1.. MS
  * ^short = "Rechnungsempfänger"
* recipient only Reference(DiPagPatient or Patient)
  * reference 1.. MS
  * identifier 1.. MS
  * identifier only IdentifierKvid10
    * ^comment = "Das System des Leistungserbringers referenziert hier üblicherweise 
    auf die lokale Instanz des Patienten um die Rechnung einer Patientenakte zuzuordnen. 
    Der Fachdienst substitutiert den Link mit der Referenz auf das Postfach des Patienten 
    bei der Extraktion der Invoice aus dem Bundle. Die Angabe der Versichertennummer dient 
    der Plausibilisierung. Die KV-Nummer in der Instanz des Bundles muss daher mit der 
    KV-Nummer übereinstimmen, die im Fachdienst für das Postfach des Rechnungsempfängers hinterlegt ist."
  * display 1.. MS
* status MS
  * ^short = "Status der Rechnung"
  * ^comment = "Der Status MUSS vorhanden sein."
* status = #issued
* issuer 1.. MS
* issuer only Reference(DiPagInstitution or Organization)
  * ^short = "Rechnungsersteller"
  * ^comment = "Der Rechnungsersteller MUSS vorhanden sein."
  * reference 1.. MS 
* participant MS
  * ^short = "weitere behandelnde Leistungserbringer oder abweichender Forderungsinhaber"
* participant.role MS
* participant.role from DiPagParticipantRoleVS (required)
* participant ^slicing.discriminator.type = #pattern
* participant ^slicing.discriminator.path = "role"
* participant ^slicing.rules = #open
* participant contains 
  Leistungserbringer 1..* MS and
  Forderungsinhaber ..1 MS
* participant[Leistungserbringer]
  * ^short = "Weitere behandelnde Leistungserbringer"
  * ^comment = "Im Falle einer GOÄ oder GOÄ-neu Rechnung, SOLLLEN weitere behandelnde Leistungserbringer vorhanden sein.
<<<<<<< HEAD:Resources/input/fsh/Profiles/dipag-rechnung.fsh
  Im Falle einer GOZ Rechnung, KÖNNEN weitere behandelnde Leistungserbringer vorhanden sein."
  * role = DiPagParticipantRoleCS#leistungserbringer
  * actor only Reference(DiPagPerson or DiPagInstitution or Practitioner or Organization)
=======
  Im Falle einer GOZ oder BEMA Rechnung, KÖNNEN weitere behandelnde Leistungserbringer vorhanden sein."
  * role = ERGParticipantRoleCS#leistungserbringer
  * actor only Reference(ERGPerson or ERGInstitution or Practitioner or Organization)
>>>>>>> dfbaf63 (Revert "Removed all BEMA related mentions, extensions and codes"):Resources/input/fsh/Profiles/erg-rechnung.fsh
* participant[Forderungsinhaber]
  * ^short = "Abweichender Forderungsinhaber"
  * ^comment = "Der abweichender Forderungsinhaber SOLL vorhanden sein."
  * role MS
  * role = DiPagParticipantRoleCS#forderungsinhaber
  * actor only Reference(DiPagPerson or DiPagInstitution or Practitioner or Organization)
* note MS
  * ^short = "Hinweise an den Kostenträger"
  * ^comment = "Der Hinweise an den Kostenträger KANN vorhanden sein."
* paymentTerms MS
  * ^short = "Zahlungsdaten Überweisung und weitere Zahlungsmethoden"
  * ^comment = "Die Zahlungsdaten zur Überweisung SOLLEN vorhanden sein.
  Weitere Zahlungsmethoden wie bspw. Paypal, Klarna, Kreditkarte KÖNNEN auch hier angegeben werden.
  Ebenfalls sollte hier der Zahlbetrag in EUR inkl. potenzieller Abzüge durch Anzahlungen, Vorauszahlungen oder Abschlagzahlungen."
* paymentTerms.extension contains DiPagZahlungsziel named Zahlungsziel 1..1 MS
* paymentTerms.extension[Zahlungsziel]
  * ^short = "Zahlungsziel als Datum oder Fristangabe"
  * ^comment = "Das Zahlungsziel SOLL vorhanden sein."
* totalNet 1.. MS
  * ^short = "Rechnungsbetrag (Netto)"
  * ^comment = "Der Rechnungsbetrag in Netto MUSS vorhanden sein."
* totalGross 1.. MS
  * ^short = "Rechnungsbetrag (Brutto)"
  * ^comment = "Der Rechnungsbetrag in Brutto MUSS vorhanden sein."
* totalPriceComponent MS
* totalPriceComponent.extension contains
  DiPagTeilsumme named Teilsumme ..* MS
* totalPriceComponent.extension[Teilsumme]
  * ^short = "Teilsummen in EUR für die Rechnungspositionstyp"
  * ^comment = "Für alle vorkommenden Rechnungspositionstypen SOLL eine Teilsumme vorhanden sein."
  * extension[Type] MS
    * ^short = "Rechnungspositionstyp"
    * valueCoding 1.. MS
  * extension[Summe] MS
    * ^short = "Bruttosumme"
    * valueMoney 1.. MS
      * currency 1.. MS
      * value 1.. MS
  * extension[UStProzent] MS
    * ^short = "Enthaltene Umsatzsteuer in Prozent"
    * valueDecimal MS
  * extension[UStBetrag] MS
    * ^short = "Enthaltene Umsatzsteuer als Betrag"
    * valueMoney 1.. MS
      * currency 1.. MS
      * value 1.. MS
* totalPriceComponent ^slicing.discriminator.type = #pattern
* totalPriceComponent ^slicing.discriminator.path = "code"
* totalPriceComponent ^slicing.rules = #open
* totalPriceComponent contains 
  SummeRechnungspositionen ..1 MS and
  MinderungNachGOZ ..1 MS and
  Fremdlaborleistungen ..1 MS and
  Abzug ..* MS
* totalPriceComponent[SummeRechnungspositionen]
  * ^short = "Summe aller Rechnungspositionen"
  * ^comment = "Die Summe aller Rechnungspositionen SOLL vorhanden sein."
  * type MS
  * type = #base
  * code 1.. MS
  * code = DiPagTotalPriceComponentTypeCS#SummeRechnungspositionen
  * factor 0..0
  * amount ..1 MS
    * ^short = "Wert in EUR"
    * currency 1.. MS
    * currency = #EUR
    * value 1.. MS
* totalPriceComponent[Fremdlaborleistungen]
  * ^short = "Summe aller Fremdlaborleistungen"
  * ^comment = "Die Summe aller Fremdlaborleistungen SOLL vorhanden sein."
  * type MS
  * type = #base
  * code 1.. MS
  * code = DiPagTotalPriceComponentTypeCS#Fremdlaborleistungen
  * factor 0..0
  * amount ..1 MS
    * ^short = "Wert in EUR"
    * currency 1.. MS
    * currency = #EUR
    * value 1.. MS
* totalPriceComponent[MinderungNachGOZ]
  * ^short = "Minderungen nach §7 GOZ"
  * ^comment = "Im Falle einer GOZ Rechnung SOLLEN die Minderungen nach §7 GOZ vorhanden sein.
  Im Falle einer GOÄ, GOÄ-neu oder BEMA Rechnung ist das Element nicht gefordert."
  * type MS
  * type = #deduction
  * code 1.. MS
  * code = DiPagTotalPriceComponentTypeCS#Minderung7GOZ
  * factor 0..0
  * amount ..1 MS
    * ^short = "Wert in EUR"
    * currency 1.. MS
    * currency = #EUR
    * value 1.. MS
* totalPriceComponent[Abzug]
  * ^short = "Abzug"
  * ^comment = "Der Abzug SOLL vorhanden sein."
  * type MS
  * type = #deduction
  * code 1.. MS
  * code from DiPagTotalPriceComponentDeductionTypeVS (required)
    * ^short = "Kategorisierung des Abzugs"
    * ^comment = "Die Kategorisierung des Abzugs SOLL vorhanden sein."
  * factor 0..0
  * amount ..1 MS
    * ^short = "Wert in EUR"
    * currency 1.. MS
    * currency = #EUR
    * value 1.. MS
  * extension contains DiPagAbzugKassenanteil named Kassenanteil ..1 MS
  * extension[Kassenanteil]
    * ^short = "Kassenanteil in Prozent"
    * ^comment = "Im Falle einer BEMA Rechnung SOLL der Kassenanteil in Prozent vorhanden sein.
    Im Falle einer GOZ Rechnung KANN der  Kassenanteil in Prozent vorhanden sein.
    Im Falle einer GOÄ oder GOÄ-neu Rechnung ist das Element nicht gefordert."
    * valueQuantity 1.. MS
      * unit MS
      * value MS
      * system MS
      * code MS
* lineItem MS
  * ^short = "Rechnungspositionen"
* lineItem.sequence 1.. MS
  * ^short = "Reihenfolge der Rechnungsposition"
  * ^comment = "Die Reihenfolge der Rechnungsposition MUSS mit einer Sequenz-Nummer angegeben werden. Die Sequenz muss mit 1 als erste Ziffer beginnen."
* lineItem.chargeItem[x] only Reference
* lineItem.chargeItemReference MS
* lineItem.chargeItemReference only Reference(DiPagRechnungsposition or ChargeItem)
  * ^short = "Referenz auf die Instanz der Rechnungsposition"
  * ^comment = "Die Referenz auf die Instanz der Rechnungsposition MUSS vorhanden sein."
* lineItem.priceComponent	MS
* lineItem.priceComponent ^slicing.discriminator.type = #pattern
* lineItem.priceComponent ^slicing.discriminator.path = "$this"
* lineItem.priceComponent ^slicing.rules = #open
* lineItem.priceComponent contains
  BruttoBetrag ..1 MS and
  Steuern ..1 MS
* lineItem.priceComponent[BruttoBetrag]
  * ^short = "Betrag pro Rechnungsposition"
  * ^comment = "Im Falle einer GOÄ, GOÄ-neu oder GOZ Rechnungsposition, SOLL der Betrag pro Rechnungsposition vorhanden sein.
  Im Falle einer BEMA Rechnungsposition ist das Element nicht gefordert."
  * type MS
  * type = #base
  * factor 0..0
  * amount 1.. MS
* lineItem.priceComponent[Steuern]
  * ^short = "Steuern enthalten im Brutto Betrag"
  * ^comment = "Die enthaltenen Steuern SOLLEN vorhanden sein."
  * type MS
  * type = #tax
  * factor 0..0
  * amount 1.. MS

Extension: DiPagZahlungsziel
Id: dipag-zahlungsziel
Title: "Digitale Patientenrechnung Zahlungsziel"
* insert Meta
* value[x] only date