Profile: DiPagRechnung
Title: "Digitale Patientenrechnung Rechnung"
Parent: Invoice
Id: dipag-rechnung
* insert Meta
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
  Im Falle einer GOZ Rechnung, KÖNNEN weitere behandelnde Leistungserbringer vorhanden sein."
  * role = DiPagParticipantRoleCS#leistungserbringer
  * actor only Reference(DiPagPerson or DiPagInstitution or Practitioner or Organization)
* participant[Forderungsinhaber]
  * ^short = "Abweichender Forderungsinhaber"
  * ^comment = "Der abweichender Forderungsinhaber SOLL vorhanden sein."
  * role MS
  * role = DiPagParticipantRoleCS#forderungsinhaber
  * actor only Reference(DiPagPerson or DiPagInstitution or Practitioner or Organization)
* note MS
  * ^short = "Hinweise an den Kostenträger"
  * ^comment = "Der Hinweise an den Kostenträger KANN vorhanden sein."

Extension: DiPagZahlungsziel
Id: dipag-zahlungsziel
Title: "Digitale Patientenrechnung Zahlungsziel"
* insert Meta
* value[x] only date