Profile: DiPagRechnungsBundle
Parent: Bundle
Id: dipag-rechnungsbundle
Title: "Digitale Patientenrechnung - Rechnungsinhalte Bundle"
Description: "Dieses Profil stellt das collection-Bundle dar, mit welchem die strukturierten Rechnungsinhalte zusammengefasst und als base64-kodiertes Binary in der DocumentReference referenziert werden."
* insert Meta
* type 1.. MS
* type = #collection
* timestamp MS
* entry MS
* entry.resource MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains Rechnung 1..1 MS
* entry[Rechnung].resource only DiPagRechnung
  * ^comment = "Alle aus der Rechnung (Invoice mit Profil DipagRechnung) referenzierten Ressourcen müssen ebenfalls in diesem Bundle enthalten sein, damit die Referenzen aufgelöst werden können."
* entry contains BehandeltePerson 1.. MS
* entry[BehandeltePerson].resource only DiPagPatient
  * ^comment = "Mindestens die behandelte Person, abgebildet durch eine Patient-Instanz, muss in diesem Bundle enthalten sein, da beim submit der Rechnung die Referenz auf die behandelte Person in der Patient-Instanz als subject der DocumentReference gesetzt wird."