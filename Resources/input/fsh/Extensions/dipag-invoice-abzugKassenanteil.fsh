Extension: DiPagAbzugKassenanteil
Id: dipag-abzug-kassenanteil
Title: "Digitale Patientenrechnung Extension Abzug Kassenanteil in Prozent"
Context: Invoice.totalPriceComponent
* insert Meta
* value[x] only Quantity
* valueQuantity 1..
  * unit 1.. MS
  * unit = "%"
  * code 1.. MS
  * code = #%
  * system 1.. MS
  * system = "http://unitsofmeasure.org"
  * value 1.. MS