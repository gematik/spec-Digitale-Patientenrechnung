dipag-wegegeld-reiseentschaedigungExtension: DiPagWegegeldReiseentschaedigung
Id: dipag-wegegeld-reiseentschaedigung
Title: "Digitale Patientenrechnung Wegegeld/Reiseentschädigung Extension"
Context: ChargeItem
* extension contains
  Wegegeld ..1 and
  Reiseentschaedigung ..1
* extension[Wegegeld]
  * extension contains
    Entfernung ..1 and
    Nacht ..1
  * extension[Entfernung]
    * value[x] only Quantity
    * valueQuantity
      * unit = "km"
      * code = #km
      * system = "http://unitsofmeasure.org"
  * extension[Nacht]
    * value[x] only boolean
* extension[Reiseentschaedigung]
  * extension contains
    Abwesenheit ..1 and
    Entfernung ..1 and
    Uebernachtung ..1 and
    Verkehrsmittel ..1
  * extension[Abwesenheit]
    * value[x] only Quantity
    * valueQuantity
      * unit = "h"
      * code = #h
      * system = "http://unitsofmeasure.org"
  * extension[Entfernung]
    * value[x] only Quantity
    * valueQuantity
      * unit = "km"
      * code = #km
      * system = "http://unitsofmeasure.org"
  * extension[Uebernachtung]
    * value[x] only Money
    * valueMoney.currency = #EUR
  * extension[Verkehrsmittel]
    * value[x] only Coding
    * valueCoding from DiPagVerkehrsmittel (required)