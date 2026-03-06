Profile: DiPagRechnungsdokument
Title: "Digitale Patientenrechnung Rechnungsdokument"
Parent: Binary
Id: dipag-rechnungsdokument
* insert Meta
* contentType MS
* contentType from DiPagRestrictedMimeTypesInBinaryVS (required)
  * ^short = "MIME-Type des Dokumentes"
* data 1..1 MS
  * ^short = "Binär-Daten"
  * ^comment = "PDF oder strukturierter Rechnungsinhalt als base64-kodierter String."