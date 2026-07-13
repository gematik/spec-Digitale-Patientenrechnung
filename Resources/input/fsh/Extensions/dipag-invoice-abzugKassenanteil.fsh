Extension: DiPagAbzugKassenanteil
Id: dipag-abzug-kassenanteil
Title: "Digitale Patientenrechnung Extension Abzug Kassenanteil in Prozent"
Description: "In dieser Extension wird der prozentuale Abzug des Kassenanteils an einem Summenbestandteil der Rechnung abgebildet."
Context: Invoice.totalPriceComponent
* insert Meta(1.0.7)
* value[x] only Quantity
* valueQuantity 1..
  * unit 1.. MS
  * unit = "%"
  * code 1.. MS
  * code = #%
  * system 1.. MS
  * system = "http://unitsofmeasure.org"
  * value 1.. MS