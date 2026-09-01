// ============================================================================
// KFO-Mehrkosten Q3/2025 – Büdingen Dent
// Basierend auf: Material\KFO Mehrkostenberechnungen.pdf (Seite 2)
// Rechnungsdatum: 07.10.2025, Betrag: 297,53 EUR
// ============================================================================

// ============================================================================
// RULESET
// ============================================================================
RuleSet: KfoMehrkosten2Position
* subject.reference = "Patient/KfoMehrkosten2Patient"
* performer.actor.reference = "Organization/KfoMehrkosten2Behandler"

RuleSet: lineItemKfo2(num, value)
* lineItem[+]
  * sequence = {num}
  * chargeItemReference = Reference(KfoMehrkosten2-P{num})
  * priceComponent[BruttoBetrag] //TODO Den Steueranteil ist nicht aus der Rechnung lesbar; bei GOZ nicht relevant?
    * amount insert Amount({value})

// ============================================================================
// RECHNUNG
// ============================================================================
Instance: KfoMehrkosten2Rechnung
InstanceOf: DiPagRechnung
Usage: #example
Title: "KFO-Mehrkosten Rechnung Q3/2025 – Büdingen Dent"
* extension[Behandlungsart].valueCoding = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB
* extension[Fachrichtung].valueCoding = http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen#MZKH
* identifier[Rechnungsnummer]
  * system = "http://example.org/rechnungsnummer"
  * value = "UNK123456" //TODO Rechnungsnummer ist auf der Rechnung geschwärzt
//TODO Abschlagsnummer ist auf der Rechnung geschwärzt; ggf. als weiteren identifier abbilden
* type.coding[AusrichtungDerRechnung] = https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-abrechnungsart-cs#GOZ
* type.coding[Rechnungsart] = https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnungsart-cs#TEIL //TODO Rechnungsart nicht eindeutig aus der Rechnung lesbar; Abschlagsnummer deutet möglicherweise auf Abschlagsrechnung hin
* subject.reference = "Patient/KfoMehrkosten2Patient"
* recipient
  * reference = "Patient/KfoMehrkosten2Patient"
  * identifier.value = "A123456780" //TODO KV-Nummer / Versicherungsnummer ist geschwärzt
  * display = "Maria Muster" //TODO Patientenname ist geschwärzt
* date = "2025-10-07"
* participant[Leistungserbringer].actor.reference = "Organization/KfoMehrkosten2Behandler"
* issuer.reference = "Organization/KfoMehrkosten2Behandler"
* insert lineItemKfo2(1, 104.06)
* insert lineItemKfo2(2, -40.76)
* insert lineItemKfo2(3, 196.84)
* insert lineItemKfo2(4, -72.47)
* insert lineItemKfo2(5, 23.28)
* insert lineItemKfo2(6, 104.06)
* insert lineItemKfo2(7, -40.76)
* insert lineItemKfo2(8, 23.28)
* totalPriceComponent[SummeRechnungspositionen]
  * amount insert Amount(451.52)
* totalPriceComponent[Abzug]
  * code = https://gematik.de/fhir/dipag/CodeSystem/dipag-total-price-component-type-cs#VorleistungKst
  * amount insert Amount(-153.99)
* totalNet insert Amount(297.53) //TODO Keine Steuerangaben auf der Rechnung (GOZ = steuerfrei); totalNet = totalGross
* totalGross insert Amount(297.53)
* paymentTerms = "Bitte zahlen Sie 297,53 EUR mit dem Verwendungszweck 293495/039760 bis spätestens 06.11.2025 an:
Empfänger: Büdingen Dent
IBAN: DE90 5165 0079 0120 0008 37
BIC: HELADEF1FRI
Bank: Sparkasse Oberhessen"
* paymentTerms.extension[Zahlungsziel].valueDate = "2025-11-06"

// ============================================================================
// RECHNUNGSPOSITIONEN – Sitzung 04.08.2025
// ============================================================================

Instance: KfoMehrkosten2-P1
InstanceOf: DiPagRechnungsposition
Usage: #example
Title: "KfoMehrkosten2 Rechnungsposition 1 – GOZ 2110A Minibracket (04.08.25)"
* insert BemaGozPositionExtensions(2.900)
//TODO Analogberechnung gemäß § 6 Abs. 1 GOZ – ggf. anderen Rechnungspositionstyp oder Zusatzcode verwenden
* insert GozCoding(#2110, [["Präparieren einer Kavität und Restauration mit plastischem Füllungsmaterial einschließlich Unterfüllung, Anlegen einer Matrize oder Benutzen anderer Hilfsmittel zur Formung der Füllung, mehr als dreiflächig"]])
//TODO Klären ob Code #2110A oder #2110 korrekt ist; "A" steht für Analogberechnung nach § 6 Abs. 1 GOZ
* insert KfoMehrkosten2Position
* occurrenceDateTime = "2025-08-04"
* insert Anzahl(2)
* reason.text = "Minibracket gemäß § 6 Abs. 1 der GOZ entsprechend GOZ 2110, Incl. Materialkosten Damonbracket"

Instance: KfoMehrkosten2-P2
InstanceOf: DiPagRechnungsposition
Usage: #example
Title: "KfoMehrkosten2 Rechnungsposition 2 – BEMA 126A Abzug zu P1 (04.08.25)"
* insert BemaPositionExtensions(18)
* insert BemaCoding(#126a, [["Eingliedern eines Brackets oder eines Attachments einschließlich Material- und Laborkosten"]])
* insert KfoMehrkosten2Position
* occurrenceDateTime = "2025-08-04"
* insert Anzahl(2)

Instance: KfoMehrkosten2-P3
InstanceOf: DiPagRechnungsposition
Usage: #example
Title: "KfoMehrkosten2 Rechnungsposition 3 – GOZ 6150A Superelastischer Bogen (04.08.25)"
* insert BemaGozPositionExtensions(3.500)
* insert GozCoding(#6150, [["Eingliederung eines ungeteilten Bogens, alle Zahngruppen umfassend, je Kiefer"]])
* insert KfoMehrkosten2Position
* occurrenceDateTime = "2025-08-04"
* insert Anzahl(2)
* bodysite.extension[ZahnRegion].valueString = "OK, UK"
* reason.text = "überdurchschnittlich höherer Mehraufwand beim Einliglieren des Bogens durch unterschiedliche Slothöhen der Brackets bei Kippung und Drehung, Eng- Fehlstände von Zähnen"

Instance: KfoMehrkosten2-P4
InstanceOf: DiPagRechnungsposition
Usage: #example
Title: "KfoMehrkosten2 Rechnungsposition 4 – BEMA 128A Abzug zu P3 (04.08.25)"
* insert BemaPositionExtensions(32)
* insert BemaCoding(#128a, [["Eingliederung eines konfektionierten Vollbogens aus Edelstahl einschließlich Material- und Laborkosten"]])
* insert KfoMehrkosten2Position
* occurrenceDateTime = "2025-08-04"
* insert Anzahl(2)

Instance: KfoMehrkosten2-P5
InstanceOf: DiPagRechnungsposition
Usage: #example
Title: "KfoMehrkosten2 Rechnungsposition 5 – GOZ 2000 Fissurenversiegelung (04.08.25)"
* insert BemaGozPositionExtensions(2.300)
* insert GozCoding(#2000, [["Versiegelung von kariesfreien Zahnfissuren mit aushärtenden Kunststoffen, auch Glattflächenversiegelung, je Zahn"]])
* insert KfoMehrkosten2Position
* occurrenceDateTime = "2025-08-04"
* insert Anzahl(2)

// ============================================================================
// RECHNUNGSPOSITIONEN – Sitzung 24.09.2025
// ============================================================================

Instance: KfoMehrkosten2-P6
InstanceOf: DiPagRechnungsposition
Usage: #example
Title: "KfoMehrkosten2 Rechnungsposition 6 – GOZ 2110A Minibracket (24.09.25)"
* insert BemaGozPositionExtensions(2.900)
* insert GozCoding(#2110, [["Präparieren einer Kavität und Restauration mit plastischem Füllungsmaterial einschließlich Unterfüllung, Anlegen einer Matrize oder Benutzen anderer Hilfsmittel zur Formung der Füllung, mehr als dreiflächig"]])
* insert KfoMehrkosten2Position
* occurrenceDateTime = "2025-09-24"
* insert Anzahl(2)
* reason.text = "Incl. Materialkosten Damonbracket"

Instance: KfoMehrkosten2-P7
InstanceOf: DiPagRechnungsposition
Usage: #example
Title: "KfoMehrkosten2 Rechnungsposition 7 – BEMA 126A Abzug zu P6 (24.09.25)"
* insert BemaPositionExtensions(18)
* insert BemaCoding(#126a, [["Eingliedern eines Brackets oder eines Attachments einschließlich Material- und Laborkosten"]])
* insert KfoMehrkosten2Position
* occurrenceDateTime = "2025-09-24"
* insert Anzahl(2)

Instance: KfoMehrkosten2-P8
InstanceOf: DiPagRechnungsposition
Usage: #example
Title: "KfoMehrkosten2 Rechnungsposition 8 – GOZ 2000 Fissurenversiegelung (24.09.25)"
* insert BemaGozPositionExtensions(2.300)
* insert GozCoding(#2000, [["Versiegelung von kariesfreien Zahnfissuren mit aushärtenden Kunststoffen, auch Glattflächenversiegelung, je Zahn"]])
* insert KfoMehrkosten2Position
* occurrenceDateTime = "2025-09-24"
* insert Anzahl(2)
