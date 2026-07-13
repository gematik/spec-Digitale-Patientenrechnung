Profile: DiPagRechnungsdokument
Title: "Digitale Patientenrechnung Rechnungsdokument"
Parent: Binary
Id: dipag-rechnungsdokument
Description: "Dieses Profil bildet die Binärdaten eines Dokumentes der Digitalen Patientenrechnung ab: das PDF der Rechnung bzw. eines Anhangs oder die strukturierten Rechnungsinhalte, jeweils als base64-kodierte Daten."
* insert Meta(1.0.7)
* contentType MS
* contentType from DiPagRestrictedMimeTypesInBinaryVS (required)
  * ^short = "MIME-Type des Dokumentes"
* data 1..1 MS
  * ^short = "Binär-Daten"
  * ^comment = "PDF oder strukturierter Rechnungsinhalt als base64-kodierter String."