Profile: DiPagOrganisationRechnungsempfaenger
Parent: Organization
Title: "Digitale Patientenrechnung Organisation Rechnungsempfänger"
Id: dipag-organisation-rechnungsempfaenger
Description: "Kostenträger-Organisation, die im Fachdienst als Empfänger für den direkten Rechnungsversand konfiguriert ist. Die Liste der Organisationen wird durch den Fachdienst-Betreiber gepflegt und kann durch das RE-PS abgefragt werden."
* insert Meta(1.2.0-beta)
* ^date = "2026-08-26"
* identifier 1.. MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains
    Telematik-ID 1..1 MS
* identifier[Telematik-ID] only $identifier-telematikId
  * ^patternIdentifier.type = $v2-0203#PRN
  * ^short = "Telematik-ID"
  * ^comment = "Die Telematik-ID MUSS vorhanden sein."
  * type 1.. MS
  * system 1.. MS
    * ^short = "System der Telematik-ID"
  * value 1.. MS
    * ^short = "Telematik-ID"
* name MS
  * ^short = "Name der Organisation"
  * ^comment = "Der Name der Organisation SOLL vorhanden sein."
