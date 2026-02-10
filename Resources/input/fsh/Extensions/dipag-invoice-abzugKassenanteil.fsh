Extension: DiPagAbzugKassenanteil
Id: dipag-abzug-kassenanteil
Title: "Digitale Patientenrechnung Extension Abzug Kassenanteil in Prozent"
Context: Invoice.totalPriceComponent
* insert Meta
* value[x] only Quantity
* valueQuantity
  * unit 1..
  * unit = "%"
  * code 1..
  * code = #%
  * system 1..
  * system = "http://unitsofmeasure.org"