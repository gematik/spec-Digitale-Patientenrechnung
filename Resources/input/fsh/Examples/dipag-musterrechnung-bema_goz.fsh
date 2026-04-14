RuleSet: BemaGozPosition
* subject.reference = "Patient/BemaGozPatient"
* performer.actor.reference = "Organization/BemaGozBehandler"

RuleSet: lineItem(num, value)
* lineItem[+]
  * sequence = {num}
  * chargeItemReference = Reference(BemaGozRechnung-P{num})
  * priceComponent[BruttoBetrag] //TODO Den Steuer Teil kann ich nicht aus der Rechnung lesen. Ist der nicht relevant bei GOZ?
    * amount insert Amount({value})

Instance: BemaGozRechnung
InstanceOf: DiPagRechnung
Usage: #example
Title: "BemaGozRechnung"
/*TODO Folgende Infos bekomme ich nicht unter:
- Unser Zeichen P-46267-UZ-1 -> Peter klärt fragt nach, aber ja, aktuell nicht drin
- Bema Abzüge pro LineItem (Abzgl. BEMA-Gebühr 126a/128a mit einem Betrag von x EUR unter Vorleistungen anderer Kostenträger. Die Summe daraus haben wir abgebildet.)
*/
* extension[Behandlungsart].valueCoding = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB
* extension[Fachrichtung].valueCoding = http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen#MZKH
* identifier[Rechnungsnummer]
  * system = "http://example.org/rechnungsnummer"
  * value = "00122704"
* type.coding[AusrichtungDerRechnung] = https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-abrechnungsart-cs#GOZ
* type.coding[Rechnungsart] = https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnungsart-cs#ABSCHLUSS //TODO Wo lese ich das aus der Rechnung raus? -> Peter klärt das
* subject.reference = "Patient/BemaGozPatient"
* recipient
  * reference = "Patient/BemaGozPatient"
  * identifier.value = "A123456789"
  * display = "Max Muster"
* date = "2024-09-30"
* participant[Leistungserbringer].actor.reference = "Organization/BemaGozBehandler"
* issuer.reference = "Organization/BemaGozBehandler"
* insert lineItem(1, 33.41)
* insert lineItem(2, -18.46)
* insert lineItem(3, 11.64)
* insert lineItem(4, 100.23)
* insert lineItem(5, -55.38)
* insert lineItem(6, 202.48)
* insert lineItem(7, -65.64)
* insert lineItem(8, 34.92)
* insert lineItem(9, 101.24)
* insert lineItem(10, -32.82)
* totalPriceComponent[SummeRechnungspositionen]
  * amount insert Amount(483.92)
* totalPriceComponent[Abzug]
  * code = https://gematik.de/fhir/dipag/CodeSystem/dipag-total-price-component-type-cs#VorleistungKst
  * amount insert Amount(-172.30)
* totalNet insert Amount(311.62) //TODO Was ist mit Steuern? --> Klärt Peter
* totalGross insert Amount(311.62)
* paymentTerms = "Bitte überweisen Sie den Betrag in Höhe von 311,62 EUR unter Angabe der Rechnungsnummer: 00122704 bis spätestens 01.11.2024 auf unser unten angegebens Konto.
IBAN: DE12345678901234567890
BIC: ABCDDEFFXXX
Kontoinhaber: Max Mustermann"
* paymentTerms.extension[Zahlungsziel].valueDate = "2024-11-01"

Instance: BemaGozRechnung-P1
InstanceOf: DiPagRechnungsposition
Usage: #example
Title: "BemaGozRechnung Rechnungsposition 1"
* insert BemaGozPositionExtensions(3.60)
* insert GozCoding(#6100, [["Eingliederung eines Klebebrackets zur Aufnahme orthodontischer Hilfsmittel"]])
* insert BemaGozPosition
* occurrenceDateTime = "2024-07-01"
* insert Anzahl(1)
* reason.text = "BioQuick Brackets - Besondere Schwierigkeit und erhöhter Zeitaufwand wegen hochpräziser Ausrichtung und Anbringung unter besonderer Berücksichtigung der individuellen Zahnanatomie"

Instance: BemaGozRechnung-P2
InstanceOf: DiPagRechnungsposition
Usage: #example
Title: "BemaGozRechnung Rechnungsposition 2 - BEMA Abzug P1"
* insert BemaPositionExtensions(18)
* insert BemaCoding(#126a, [["Eingliedern eines Brackets oder eines Attachments aus Edelstahl oder nickelfreiem Metall einschließlich Material- und Laborkosten"]])
* insert BemaGozPosition
* occurrenceDateTime = "2024-07-01"
* insert Anzahl(1)

Instance: BemaGozRechnung-P3
InstanceOf: DiPagRechnungsposition
Usage: #example
Title: "BemaGozRechnung Rechnungsposition 3"
* insert BemaGozPositionExtensions(2.30)
* insert GozCoding(#2000, [["Versiegelung von kariesfreien Zahnfissuren mit aushärtenden Kunststoffen, auch Glattflächenversiegelung, je Zahn"]])
* insert BemaGozPosition
* occurrenceDateTime = "2024-07-01"
* insert Anzahl(1)
* reason.text = "bei erhöhtem Kariesrisiko während einer Multibracketbehandlung, Bracketumfeldversiegelung"

Instance: BemaGozRechnung-P4
InstanceOf: DiPagRechnungsposition
Usage: #example
Title: "BemaGozRechnung Rechnungsposition 4"
* insert BemaGozPositionExtensions(3.60)
* insert GozCoding(#6100, [["Eingliederung eines Klebebrackets zur Aufnahme orthodontischer Hilfsmittel"]])
* insert BemaGozPosition
* occurrenceDateTime = "2024-08-20"
* insert Anzahl(3)
* bodysite.extension[ZahnRegion].valueString = "27, 37, 47"
* reason.text = "BioQuick Brackets - Besondere Schwierigkeit und erhöhter Zeitaufwand wegen hochpräziser Ausrichtung und Anbringung unter besonderer Berücksichtigung der individuellen Zahnanatomie"

Instance: BemaGozRechnung-P5
InstanceOf: DiPagRechnungsposition
Usage: #example
Title: "BemaGozRechnung Rechnungsposition 5 - BEMA Abzug P4"
* insert BemaPositionExtensions(18)
* insert BemaCoding(#126a, [["Eingliedern eines Brackets oder eines Attachments aus Edelstahl oder nickelfreiem Metall einschließlich Material- und Laborkosten"]])
* insert BemaGozPosition
* occurrenceDateTime = "2024-08-20"
* insert Anzahl(3)

Instance: BemaGozRechnung-P6
InstanceOf: DiPagRechnungsposition
Usage: #example
Title: "BemaGozRechnung Rechnungsposition 6"
* insert BemaGozPositionExtensions(3.60)
* insert GozCoding(#6150, [["Eingliederung eines ungeteilten Bogens, alle Zahngruppen umfassend, je Kiefer"]])
* insert BemaGozPosition
* occurrenceDateTime = "2024-08-20"
* insert Anzahl(2)
* bodysite.extension[ZahnRegion].valueString = "OK, UK"
* reason.text = "superrealistische, thermoaktive Bögen bei selbstligierten Brackets"

Instance: BemaGozRechnung-P7
InstanceOf: DiPagRechnungsposition
Usage: #example
Title: "BemaGozRechnung Rechnungsposition 7 - BEMA Abzug P6"
* insert BemaPositionExtensions(32)
* insert BemaCoding(#128a, [["Eingliederung eines konfektionierten Vollbogens aus Edelstahl einschließlich Material- und Laborkosten"]])
* insert BemaGozPosition
* occurrenceDateTime = "2024-08-20"
* insert Anzahl(2)

Instance: BemaGozRechnung-P8
InstanceOf: DiPagRechnungsposition
Usage: #example
Title: "BemaGozRechnung Rechnungsposition 8"
* insert BemaGozPositionExtensions(2.30)
* insert GozCoding(#2000, [["Versiegelung von kariesfreien Zahnfissuren mit aushärtenden Kunststoffen, auch Glattflächenversiegelung, je Zahn"]])
* insert BemaGozPosition
* occurrenceDateTime = "2024-08-20"
* insert Anzahl(3)
* bodysite.extension[ZahnRegion].valueString = "27, 37, 47"
* reason.text = "bei erhöhtem Kariesrisiko während einer Multibracketbehandlung, Bracketumfeldversiegelung"

Instance: BemaGozRechnung-P9
InstanceOf: DiPagRechnungsposition
Usage: #example
Title: "BemaGozRechnung Rechnungsposition 9"
* insert BemaGozPositionExtensions(3.60)
* insert GozCoding(#6150, [["Eingliederung eines ungeteilten Bogens, alle Zahngruppen umfassend, je Kiefer"]])
* insert BemaGozPosition
* occurrenceDateTime = "2024-09-16"
* insert Anzahl(1)
* reason.text = "superrealistische, thermoaktive Bögen bei selbstligierten Brackets"

Instance: BemaGozRechnung-P10
InstanceOf: DiPagRechnungsposition
Usage: #example
Title: "BemaGozRechnung Rechnungsposition 10 - BEMA Abzug P9"
* insert BemaPositionExtensions(32)
* insert BemaCoding(#128a, [["Eingliederung eines konfektionierten Vollbogens aus Edelstahl einschließlich Material- und Laborkosten"]])
* insert BemaGozPosition
* occurrenceDateTime = "2024-09-16"
* insert Anzahl(2)