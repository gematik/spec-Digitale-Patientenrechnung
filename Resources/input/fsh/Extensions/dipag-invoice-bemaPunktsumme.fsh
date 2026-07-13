Extension: DiPagBemaPunktsumme
Id: DiPagBemaPunktsumme
Title: "DiPag BEMA Punktsumme"
Description: "In dieser Extension werden die Summe der Punktzahlen und der Punktwert der BEMA-Leistungen einer Rechnung abgebildet."
Context: Invoice
* extension contains
  Punktsumme ..1 and
  Punktwert ..1
* extension[Punktsumme]
  * value[x] only decimal
* extension[Punktwert]
  * value[x] only decimal