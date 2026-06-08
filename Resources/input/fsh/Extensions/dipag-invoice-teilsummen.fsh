Extension: DiPagTeilsumme
Id: DiPagTeilsumme
Title: "Digitale Patientenrechnung Teilsumme"
Context: Invoice.totalPriceComponent
* extension contains
  type ..1 and
  summe ..1 and
  uStProzent ..1 and
  uStBetrag ..1
* extension[type]
  * value[x] only Coding
  * valueCoding from DiPagRechnungspositionTypeVS (required)
* extension[summe]
  * value[x] only Money
  * valueMoney
    * currency = #EUR
* extension[uStProzent]
  * value[x] only decimal
* extension[uStBetrag]
  * value[x] only Money
  * valueMoney
    * currency = #EUR