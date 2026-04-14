RuleSet: BemaGozPosition
* subject.reference = "Patient/BemaGozPatient"
* performer.actor.reference = "Organization/BemaGozBehandler"

RuleSet: GozCoding(code, display)
* code.coding[GOZ]
  * system = "http://fhir.de/CodeSystem/bäk/gzä"
  * code = {code}
  * display = {display}

RuleSet: BemaCoding(code, display)
* code.coding[+]
  * system = "http://fhir.de/CodeSystem/bäk/bema" //TODO System für BEMA nur Platzhalter -> gerade noch offen lassen, Peter fragt an bei der KZBV
  * code = {code}
  * display = {display}

RuleSet: BemaGozPositionExtensions(faktor)
* extension[Rechnungspositionstyp].valueCoding = https://gematik.de/fhir/dipag/CodeSystem/dipag-chargeitem-type-cs#GOZ
* extension[GebuehrenordnungAngaben] //TODO Wo erkenne ich die Punktzahl von BEMA? -> Aus dem Katalog
  * extension[Faktor]
    * extension[Value].valueDecimal = {faktor}
* extension[Zusatz].valueCoding = https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnungsposition-zusatz-cs#A //TODO Wo lese ich das aus der Rechnung raus? -> Peter klärt es

RuleSet: BemaPositionExtensions(punktzahl)
* extension[Rechnungspositionstyp].valueCoding = https://gematik.de/fhir/dipag/CodeSystem/dipag-chargeitem-type-cs#BEMA
* extension[GebuehrenordnungAngaben].extension[Punktzahl].valueDecimal = {punktzahl}

RuleSet: Anzahl(value)
* quantity
  * value = {value}
  * unit = "{#}"
  * code = #{#} "Anzahl"

RuleSet: lineItem(num, value)
* lineItem[+]
  * sequence = {num}
  * chargeItemReference = Reference(BemaGozRechnung-P{num})
  * priceComponent[BruttoBetrag] //TODO Den Steuer Teil kann ich nicht aus der Rechnung lesen. Ist der nicht relevant bei GOZ?
    * amount insert Amount({value})

RuleSet: Amount(value)
* currency = #EUR
* value = {value}