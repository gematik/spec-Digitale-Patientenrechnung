// ============================================================================
// KFO-Mehrkosten Q3/2025 – KIG 3-5 Mehrkostenvereinbarung
// Basierend auf: Material\KFO Mehrkostenberechnungen.pdf (Seite 4)
// Rechnungsnummer: 325349020031, Datum: 31.07.2025
// Betrag: 530,26 EUR (GOZ 1.080,48 EUR abzgl. BEMA-Vorleistung 550,22 EUR)
// ============================================================================

// ============================================================================
// RULESET
// ============================================================================
RuleSet: KfoMehrkosten4Position
* subject.reference = "Patient/KfoMehrkosten4Patient"
* performer.actor.reference = "Organization/KfoMehrkosten4Behandler"

RuleSet: lineItemKfo4(num, value)
* lineItem[+]
  * sequence = {num}
  * chargeItemReference = Reference(KfoMehrkosten4-P{num})
  * priceComponent[BruttoBetrag] //TODO Den Steuerteile kann ich nicht aus der Rechnung lesen. Ist der nicht relevant bei GOZ?
    * amount insert Amount({value})

// ============================================================================
// RECHNUNG
// ============================================================================
Instance: KfoMehrkosten4Rechnung
InstanceOf: DiPagRechnung
Usage: #example
Title: "KFO-Mehrkosten Rechnung Q3/2025 – KIG 3-5 Mehrkostenvereinbarung"
/*TODO Diese Rechnung ist ein "Duplikat" (Zweitausfertigung); unklar ob/wie in DiPag abbildbar.
TODO   KIG-Schweregrad (KIG 3-5) und Mehrkostenvereinbarung (§28 Abs. 2 SGB V) sind in DiPag
       aktuell nicht als eigenes Feld vorgesehen; ggf. als Extension oder Freitext abbilden.
TODO   Im Gegensatz zu Beispielen 1&2 sind die BEMA-Abzüge NICHT als Einzelpositionen ausgewiesen,
       sondern nur als kombinierter Abzug "abzgl. Vorleistungen anderer Kostenträger" (550,22 EUR).
       Unklar ob DiPag diese verdichtete Darstellung zulässt oder Einzelpositionen erfordert.
TODO   Begründungen (Bgr) zu den erhöhten Faktoren (>2,3-facher Schwellenwert) sind in der Rechnung
       als nummerierte Fußnoten 1)–5) hinterlegt, deren Texte geschwärzt/nicht sichtbar sind.
*/
* extension[Behandlungszeitraum].valuePeriod
  * start = "2025-07-23"
  * end = "2025-07-23"
* extension[Behandlungsart].valueCoding = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB
* extension[Fachrichtung].valueCoding = http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen#MZKH
* identifier[Rechnungsnummer]
  * system = "http://example.org/rechnungsnummer"
  * value = "325349020031"
* type.coding[AusrichtungDerRechnung] = https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-abrechnungsart-cs#GOZ
* type.coding[Rechnungsart] = https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnungsart-cs#TEIL //TODO Rechnungsart: Quartalsabrechnung Q3/2025; TEIL oder ABSCHLUSS? -> Peter klärt das
* subject.reference = "Patient/KfoMehrkosten4Patient"
* recipient
  * reference = "Patient/KfoMehrkosten4Patient"
  * identifier.value = "A123456781"
  * display = "Maria Muster"
* date = "2025-07-31"
* participant[Leistungserbringer].actor.reference = "Organization/KfoMehrkosten4Behandler"
* issuer.reference = "Organization/KfoMehrkosten4Behandler"
* insert lineItemKfo4(1, 686.80)
* insert lineItemKfo4(2, 393.68)
* totalPriceComponent[SummeRechnungspositionen]
  * amount insert Amount(1080.48)
* totalPriceComponent[Abzug]
  * code = https://gematik.de/fhir/dipag/CodeSystem/dipag-total-price-component-type-cs#VorleistungKst
  * amount insert Amount(-550.22) // Kombinierter BEMA-Abzug; auf der Rechnung als "abzgl. Vorleistungen anderer Kostenträger" ausgewiesen, ohne Aufschlüsselung nach BEMA-Positionen
* totalNet insert Amount(530.26) //TODO Keine Steuerangaben auf der Rechnung (GOZ = steuerfrei); totalNet = totalGross
* totalGross insert Amount(530.26)
* paymentTerms = "Bitte zahlen Sie 530,26 EUR unter Angabe der Rechnungsnummer 325349020031."
* paymentTerms.extension[Zahlungsziel].valueDate = "2025-08-30"

// ============================================================================
// RECHNUNGSPOSITIONEN – Sitzung 23.07.2025
// ============================================================================

Instance: KfoMehrkosten4-P1
InstanceOf: DiPagRechnungsposition
Usage: #example
Title: "KfoMehrkosten4 Rechnungsposition 1 – GOZ 6100 Klebebracket 3,70-fach (23.07.25)"
* insert BemaGozPositionExtensions(3.70) // Faktor 3,70 > Schwellenwert 2,3; Begründung Fußnoten 1) 2) 3)
* insert GozCoding(#6100, [["Eingliederung eines Klebebrackets zur Aufnahme orthodontischer Hilfsmittel"]])
* insert KfoMehrkosten4Position
* occurrenceDateTime = "2025-07-23"
* insert Anzahl(20)

Instance: KfoMehrkosten4-P2
InstanceOf: DiPagRechnungsposition
Usage: #example
Title: "KfoMehrkosten4 Rechnungsposition 2 – GOZ 6150 Ungeteilter Bogen 3,50-fach (23.07.25)"
* insert BemaGozPositionExtensions(3.50) // Faktor 3,50 > Schwellenwert 2,3; Begründung Fußnoten 4) 5)
* insert GozCoding(#6150, [["Eingliederung eines ungeteilten Bogens, alle Zahngruppen umfassend, je Kiefer"]])
* insert KfoMehrkosten4Position
* occurrenceDateTime = "2025-07-23"
* insert Anzahl(4)