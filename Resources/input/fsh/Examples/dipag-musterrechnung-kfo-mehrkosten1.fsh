// ============================================================================
// KFO-Mehrkosten Q3/2024
// Basierend auf: Material\KFO Mehrkostenberechnungen.pdf (Seite 1)
// Rechnungsdatum: 30.09.2024, Betrag: 311,62 EUR
// ============================================================================

// ============================================================================
// RULESET
// ============================================================================
RuleSet: KfoMehrkosten1Position
* subject.reference = "Patient/KfoMehrkosten1Patient"
* performer.actor.reference = "Organization/KfoMehrkosten1Behandler"

RuleSet: lineItemKfo1(num, value)
* lineItem[+]
  * sequence = {num}
  * chargeItemReference = Reference(KfoMehrkosten1-P{num})
  * priceComponent[BruttoBetrag] //TODO Den Steuerteile kann ich nicht aus der Rechnung lesen. Ist der nicht relevant bei GOZ?
    * amount insert Amount({value})

// ============================================================================
// RECHNUNG
// ============================================================================
Instance: KfoMehrkosten1Rechnung
InstanceOf: DiPagRechnung
Usage: #example
Title: "KFO-Mehrkosten Rechnung Q3/2024"
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
* subject.reference = "Patient/KfoMehrkosten1Patient"
* recipient
  * reference = "Patient/KfoMehrkosten1Patient"
  * identifier.value = "A123456789"
  * display = "Max Muster"
* date = "2024-09-30"
* participant[Leistungserbringer].actor.reference = "Organization/KfoMehrkosten1Behandler"
* issuer.reference = "Organization/KfoMehrkosten1Behandler"
* insert lineItemKfo1(1, 33.41)
* insert lineItemKfo1(2, -18.46)
* insert lineItemKfo1(3, 11.64)
* insert lineItemKfo1(4, 100.23)
* insert lineItemKfo1(5, -55.38)
* insert lineItemKfo1(6, 202.48)
* insert lineItemKfo1(7, -65.64)
* insert lineItemKfo1(8, 34.92)
* insert lineItemKfo1(9, 101.24)
* insert lineItemKfo1(10, -32.82)
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

// ============================================================================
// RECHNUNGSPOSITIONEN – Sitzung 01.07.2024
// ============================================================================

Instance: KfoMehrkosten1-P1
InstanceOf: DiPagRechnungsposition
Usage: #example
Title: "KfoMehrkosten1 Rechnungsposition 1 – GOZ 6100 Klebebracket (01.07.24)"
* insert BemaGozPositionExtensions(3.60)
* insert GozCoding(#6100, [["Eingliederung eines Klebebrackets zur Aufnahme orthodontischer Hilfsmittel"]])
* insert KfoMehrkosten1Position
* occurrenceDateTime = "2024-07-01"
* insert Anzahl(1)
* reason.text = "BioQuick Brackets - Besondere Schwierigkeit und erhöhter Zeitaufwand wegen hochpräziser Ausrichtung und Anbringung unter besonderer Berücksichtigung der individuellen Zahnanatomie"

Instance: KfoMehrkosten1-P2
InstanceOf: DiPagRechnungsposition
Usage: #example
Title: "KfoMehrkosten1 Rechnungsposition 2 – BEMA 126a Abzug zu P1 (01.07.24)"
* insert BemaPositionExtensions(18)
* insert BemaCoding(#126a, [["Eingliedern eines Brackets oder eines Attachments aus Edelstahl oder nickelfreiem Metall einschließlich Material- und Laborkosten"]])
* insert KfoMehrkosten1Position
* occurrenceDateTime = "2024-07-01"
* insert Anzahl(1)

Instance: KfoMehrkosten1-P3
InstanceOf: DiPagRechnungsposition
Usage: #example
Title: "KfoMehrkosten1 Rechnungsposition 3 – GOZ 2000 Fissurenversiegelung (01.07.24)"
* insert BemaGozPositionExtensions(2.30)
* insert GozCoding(#2000, [["Versiegelung von kariesfreien Zahnfissuren mit aushärtenden Kunststoffen, auch Glattflächenversiegelung, je Zahn"]])
* insert KfoMehrkosten1Position
* occurrenceDateTime = "2024-07-01"
* insert Anzahl(1)
* reason.text = "bei erhöhtem Kariesrisiko während einer Multibracketbehandlung, Bracketumfeldversiegelung"

// ============================================================================
// RECHNUNGSPOSITIONEN – Sitzung 20.08.2024
// ============================================================================

Instance: KfoMehrkosten1-P4
InstanceOf: DiPagRechnungsposition
Usage: #example
Title: "KfoMehrkosten1 Rechnungsposition 4 – GOZ 6100 Klebebracket (20.08.24)"
* insert BemaGozPositionExtensions(3.60)
* insert GozCoding(#6100, [["Eingliederung eines Klebebrackets zur Aufnahme orthodontischer Hilfsmittel"]])
* insert KfoMehrkosten1Position
* occurrenceDateTime = "2024-08-20"
* insert Anzahl(3)
* bodysite.extension[ZahnRegion].valueString = "27, 37, 47"
* reason.text = "BioQuick Brackets - Besondere Schwierigkeit und erhöhter Zeitaufwand wegen hochpräziser Ausrichtung und Anbringung unter besonderer Berücksichtigung der individuellen Zahnanatomie"

Instance: KfoMehrkosten1-P5
InstanceOf: DiPagRechnungsposition
Usage: #example
Title: "KfoMehrkosten1 Rechnungsposition 5 – BEMA 126a Abzug zu P4 (20.08.24)"
* insert BemaPositionExtensions(18)
* insert BemaCoding(#126a, [["Eingliedern eines Brackets oder eines Attachments aus Edelstahl oder nickelfreiem Metall einschließlich Material- und Laborkosten"]])
* insert KfoMehrkosten1Position
* occurrenceDateTime = "2024-08-20"
* insert Anzahl(3)

Instance: KfoMehrkosten1-P6
InstanceOf: DiPagRechnungsposition
Usage: #example
Title: "KfoMehrkosten1 Rechnungsposition 6 – GOZ 6150 Bogen (20.08.24)"
* insert BemaGozPositionExtensions(3.60)
* insert GozCoding(#6150, [["Eingliederung eines ungeteilten Bogens, alle Zahngruppen umfassend, je Kiefer"]])
* insert KfoMehrkosten1Position
* occurrenceDateTime = "2024-08-20"
* insert Anzahl(2)
* bodysite.extension[ZahnRegion].valueString = "OK, UK"
* reason.text = "superrealistische, thermoaktive Bögen bei selbstligierten Brackets"

Instance: KfoMehrkosten1-P7
InstanceOf: DiPagRechnungsposition
Usage: #example
Title: "KfoMehrkosten1 Rechnungsposition 7 – BEMA 128a Abzug zu P6 (20.08.24)"
* insert BemaPositionExtensions(32)
* insert BemaCoding(#128a, [["Eingliederung eines konfektionierten Vollbogens aus Edelstahl einschließlich Material- und Laborkosten"]])
* insert KfoMehrkosten1Position
* occurrenceDateTime = "2024-08-20"
* insert Anzahl(2)

Instance: KfoMehrkosten1-P8
InstanceOf: DiPagRechnungsposition
Usage: #example
Title: "KfoMehrkosten1 Rechnungsposition 8 – GOZ 2000 Fissurenversiegelung (20.08.24)"
* insert BemaGozPositionExtensions(2.30)
* insert GozCoding(#2000, [["Versiegelung von kariesfreien Zahnfissuren mit aushärtenden Kunststoffen, auch Glattflächenversiegelung, je Zahn"]])
* insert KfoMehrkosten1Position
* occurrenceDateTime = "2024-08-20"
* insert Anzahl(3)
* bodysite.extension[ZahnRegion].valueString = "27, 37, 47"
* reason.text = "bei erhöhtem Kariesrisiko während einer Multibracketbehandlung, Bracketumfeldversiegelung"

// ============================================================================
// RECHNUNGSPOSITIONEN – Sitzung 16.09.2024
// ============================================================================

Instance: KfoMehrkosten1-P9
InstanceOf: DiPagRechnungsposition
Usage: #example
Title: "KfoMehrkosten1 Rechnungsposition 9 – GOZ 6150 Bogen (16.09.24)"
* insert BemaGozPositionExtensions(3.60)
* insert GozCoding(#6150, [["Eingliederung eines ungeteilten Bogens, alle Zahngruppen umfassend, je Kiefer"]])
* insert KfoMehrkosten1Position
* occurrenceDateTime = "2024-09-16"
* insert Anzahl(1)
* reason.text = "superrealistische, thermoaktive Bögen bei selbstligierten Brackets"

Instance: KfoMehrkosten1-P10
InstanceOf: DiPagRechnungsposition
Usage: #example
Title: "KfoMehrkosten1 Rechnungsposition 10 – BEMA 128a Abzug zu P9 (16.09.24)"
* insert BemaPositionExtensions(32)
* insert BemaCoding(#128a, [["Eingliederung eines konfektionierten Vollbogens aus Edelstahl einschließlich Material- und Laborkosten"]])
* insert KfoMehrkosten1Position
* occurrenceDateTime = "2024-09-16"
* insert Anzahl(2)
