Profile: DiPagPatient
Parent: TIPatient
Id: dipag-patient
* insert Meta
* identifier[KVNR] ^comment = "Die KVNR MUSS vorkommen, wenn eine Person die Rolle des 'Rechnungsempfänger' inne hat."  
* name.family    
  * ^comment = "Der Nachname MUSS in der Rolle einer 'Behandelte Person' vorhanden sein.
  Der Nachname SOLL in der Rolle eines 'Rechnungsempfänger' vorhanden sein.
  Die Extensions zur strukurierten Erfassung KÖNNEN vorhanden sein."    
* name.given
  * ^comment = "Der Vorname MUSS in der Rolle einer 'Behandelte Person' vorhanden sein.
  Der Vorname SOLL in der Rolle eines 'Rechnungsempfänger' vorhanden sein."  
* address MS
* address ^slicing.discriminator.type = #pattern
* address ^slicing.discriminator.path = "$this"
* address ^slicing.rules = #open
* address contains
    Strassenanschrift 0..* MS and
    Postfach 0..* MS
* address[Strassenanschrift] only $adresse-de
  * ^short = "Strassenanschrift"
  * ^comment = "Die Strassenanschrift SOLL vorhanden sein."
  * ^patternAddress.type = #both
  * type MS
  * line MS
    * ^short = "Straße und Hausnummer"
    * ^comment = "Straße und Hausnummer SOLLEN angegeben werden, die Extensions zur strukurierten Erfassung KÖNNEN vorhanden sein."
    * extension[Strasse] 0..1 MS
      * ^comment = "Die Extension zur strukurierten Erfassung der Straße KANN vorhanden sein."
    * extension[Hausnummer] 0..1 MS
      * ^comment = "Die Extension zur strukurierten Erfassung der Hausnummer KANN vorhanden sein."
    * extension[Adresszusatz] 0..1 MS
      * ^comment = "Die Extension zur strukurierten Erfassung des Adresszusatz KANN vorhanden sein."
    * extension[Postfach] 0..0
  * city MS
    * ^short = "Ort"
    * ^comment = "Der Ort SOLL vorhanden sein."
  * postalCode MS
    * ^short = "Postleitzahl"
    * ^comment = "Die Postleitzahl SOLL vorhanden sein."
  * country MS
    * ^short = "Länderkennzeichen"
    * ^comment = "Das Länderkennzeichen KANN vorhanden sein."
* address[Postfach] only $adresse-de
  * obeys address-cnt-2or3-char
  * ^short = "Postfach"
  * ^comment = "Das Postfach SOLL vorhanden sein."
  * ^patternAddress.type = #postal
  * type MS
  * line MS
    * ^short = "Postfach-Angabe"
    * ^comment = "Die Postfach-Angabe SOLL angegeben werden, die Extensions zur strukurierten Erfassung KANN vorhanden sein."
    * extension[Strasse] 0..0 
    * extension[Hausnummer] 0..0 
    * extension[Adresszusatz] 0..0 
    * extension[Postfach] 0..1 MS
      * ^comment = "Die Extension zur strukurierten Erfassung des Postfach KANN vorhanden sein."
  * city MS
    * ^short = "Ort"
    * ^comment = "Der Ort SOLL vorhanden sein."
  * postalCode MS
    * ^short = "Postleitzahl"
    * ^comment = "Die Postleitzahl SOLL vorhanden sein."
  * country MS
    * ^short = "Länderkennzeichen"
    * ^comment = "Das Länderkennzeichen KANN vorhanden sein."