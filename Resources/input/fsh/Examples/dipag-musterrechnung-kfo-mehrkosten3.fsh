// ============================================================================
// KFO-GKV-Abrechnung Q3/2024 – ARZ ZB GmbH
// Basierend auf: Material\KFO Mehrkostenberechnungen.pdf (Seite 3)
// Rechnungsnummer: 324349010376, Datum: 28.10.2024
// Gesamtbetrag: 467,77 EUR | Kassenanteil (80%+Sachleistungen): 376,73 EUR | Versichertenanteil (20%): 91,04 EUR
// ============================================================================

// ============================================================================
// RULESET
// ============================================================================
RuleSet: KfoMehrkosten3Position
* subject.reference = "Patient/KfoMehrkosten3Patient"
* performer.actor.reference = "Organization/KfoMehrkosten3Behandler"

RuleSet: lineItemKfo3(num, value)
* lineItem[+]
  * sequence = {num}
  * chargeItemReference = Reference(KfoMehrkosten3-P{num})
  * priceComponent[BruttoBetrag] //TODO Steueranteil nicht relevant (BEMA = steuerfrei)
    * amount insert Amount({value})

RuleSet: lineItemKfo3Lite(num)
* lineItem[+]
  * sequence = {num}
  * chargeItemReference = Reference(KfoMehrkosten3-P{num})

// ============================================================================
// ORGANISATION
// ============================================================================
Instance: KfoMehrkosten3Behandler
InstanceOf: DiPagInstitution
Usage: #example
Title: "KfoMehrkosten3 Behandler – ARZ ZB GmbH"
* name = "ARZ ZB GmbH" //TODO Name aus der Rechnung teilweise sichtbar; Schreibweise bitte prüfen
* identifier[KZVAbrechnungsnummer]
  * type = $identifier-kvnr-type#KZVA
  * system = "http://fhir.de/sid/kzbv/kzvabrechnungsnummer"
  * value = "016637" // Vertragsarzt-Nr. aus der Rechnung
* type.coding
  * system = "http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen"
  * code = #MZKH
  * display = "Zahnmedizin"
* address[Strassenanschrift]
  * type = #both
  * line[0] = "Ditteiizer Straße 1" //TODO Straßenname aus der Rechnung möglicherweise ungenau abgelesen; bitte prüfen
    * extension[Strasse]
      * url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
      * valueString = "Ditteiizer Straße" //TODO s.o.
    * extension[Hausnummer]
      * url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
      * valueString = "1"
  * city = "Grünwald" //TODO Aus der Rechnung abgelesen; bitte prüfen
  * postalCode = "81194" //TODO Aus der Rechnung abgelesen; bitte prüfen
  * country = "DE"

// ============================================================================
// RECHNUNG
// ============================================================================
Instance: KfoMehrkosten3Rechnung
InstanceOf: DiPagRechnung
Usage: #example
Title: "KFO-GKV-Abrechnung Q3/2024 – ARZ ZB GmbH"
/*TODO Diese Rechnung ist eine reine GKV-Abrechnung (kein GOZ-Mehrkosten-Szenario).
       Der Patient zahlt 20% Versichertenanteil (91,04 EUR), Kasse übernimmt 80% der
       Kostenerstattungsleistungen plus 100% der Sachleistungen (KONS, Kein Versichertenanteil).
       Unklar ob/wie Sachleistungen und Kostenerstattungsleistungen in DiPag trennsauber abzubilden sind.
TODO   KZV-spezifische Felder nicht in DiPag vorgesehen:
       - Quartal: 3/2024, Abschlag: 03 -> Angefragt bei Peter
       - Referenz-Nr. Praxis: I2292-3/2024
       - Kassenart-Nr./Institutionskz.: 113431048000 -> Angefragt bei Peter
       - Behandlungsplan vom: 10.11.2023 -> Angefragt bei Peter
*/
* extension[Behandlungszeitraum].valuePeriod
  * start = "2024-01-09"
* extension[Behandlungsart].valueCoding = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB
* extension[Fachrichtung].valueCoding = http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen#MZKH
* identifier[Rechnungsnummer]
  * system = "http://example.org/rechnungsnummer"
  * value = "324349010376" //TODO Dies ist die KZV-Rechnungsnummer; Referenz-Nr. Praxis I2292-3/2024 ggf. als weiteren identifier abbilden
* type.coding[AusrichtungDerRechnung] = https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-abrechnungsart-cs#BEMA
* type.coding[Rechnungsart] = https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnungsart-cs#TEIL //TODO Rechnungsart: Quartalsabrechnung Q3/2024; TEIL oder ABSCHLUSS? -> Peter klärt das
* subject.reference = "Patient/KfoMehrkosten3Patient"
* recipient
  * reference = "Patient/KfoMehrkosten3Patient"
  * identifier.value = "H0013371209" //TODO Versicherten-Nr. auf der Rechnung teilweise geschwärzt
  * display = "Maria Muster" //TODO Patientenname ist geschwärzt
* date = "2024-10-28"
* participant[Leistungserbringer].actor = Reference(KfoMehrkosten3Behandler)
* issuer = Reference(KfoMehrkosten3Behandler)
* insert lineItemKfo3(1, 12.56)   // BEMA 106 – Sachleistung
* insert lineItemKfo3Lite(2)   //TODO KFO-Einzelbetrag nicht auf Rechnung; berechnet aus 28/84 × 90,71 EUR
* insert lineItemKfo3Lite(3)   //TODO s.o.
* insert lineItemKfo3Lite(4)   //TODO s.o. (gerundet auf 2 Stellen; 28 × 1,0799 = 30,2372)
* insert lineItemKfo3(5, 5.60)    // Labor MAT Abdruckpauschale
* insert lineItemKfo3(6, 14.68)   // Labor 001-0 Modell
* insert lineItemKfo3(7, 7.62)    // Labor 011-1 Modellpaar trimmen
* insert lineItemKfo3(8, 13.30)   // Labor 020-2 Basis für Konstruktionsbiss
* insert lineItemKfo3(9, 142.68)  // Labor 702-0 Basis bi/maxillares Gerät
* insert lineItemKfo3(10, 53.20)  // Labor 710-0 Aufsatz
* insert lineItemKfo3(11, 39.92)  // Labor 732-0 Labialbogen intermaxillar
* insert lineItemKfo3(12, 14.27)  // Labor 734-0 Feder, geschlossen
* insert lineItemKfo3(13, 27.57)  // Labor 740-0 Verbindungselemente/inframaxillar
* insert lineItemKfo3(14, 20.92)  // Labor 711-0 Abschirmelement
* insert lineItemKfo3(15, 24.74)  // Labor 750-0 Einarmiges H-/A-Element
* totalPriceComponent[SummeRechnungspositionen]
  * amount insert Amount(467.77) //TODO Was ist mit den 90,71 EUR KFO-Kosten (kein Versichertenanteil), die auf der Rechnung nur summarisch ausgewiesen sind? 
* totalPriceComponent[Abzug]
  * code = https://gematik.de/fhir/dipag/CodeSystem/dipag-total-price-component-type-cs#VorleistungKst
  * amount insert Amount(-376.73) // Kassenanteil: 100% Sachleistungen (12,56 EUR) + 80% Kostenerstattungsleistungen+Labor (364,17 EUR)
* totalNet insert Amount(91.04) //TODO Keine Steuerangaben (BEMA = steuerfrei); totalNet = totalGross
* totalGross insert Amount(91.04)
* paymentTerms = "Bitte zahlen Sie den Versichertenanteil in Höhe von 91,04 EUR."

// ============================================================================
// RECHNUNGSPOSITIONEN – Sachleistungen (23.09.2024)
// ============================================================================

Instance: KfoMehrkosten3-P1
InstanceOf: DiPagRechnungsposition
Usage: #example
Title: "KfoMehrkosten3 Rechnungsposition 1 – KONS 106 Beseitigen scharfer Zahnkanten (23.09.24)"
* insert BemaPositionExtensions(10)
* insert BemaCoding(#106, [["Beseitigen scharfer Zahnkanten oder störender Prothesenränder oder Ähnliches, je Sitzung"]])
* insert KfoMehrkosten3Position
* occurrenceDateTime = "2024-09-23"
* insert Anzahl(1)
* bodysite.extension[ZahnRegion].valueString = "34" //TODO "Region 34" auf der Rechnung = Zahn 34 (FDI)? Oder KZV-Bezirks-/Regionscode?

// ============================================================================
// RECHNUNGSPOSITIONEN – KFO Kostenerstattungsleistungen (29.07.2024)
// ============================================================================
//TODO KFO-Positionen werden auf der Rechnung nur summarisch abgerechnet:
//     84 KFO-Gesamtpunkte × EUR 1,0799 (KFO-Punktwert) = 90,71 EUR.
//     Einzelbeträge pro Position (je 28 Punkte = 30,24/30,23 EUR) sind nicht auf der Rechnung ausgewiesen.
//     EDV-Nummern: OK119d = 324, UK119d = 334, 120d = 344?

Instance: KfoMehrkosten3-P2
InstanceOf: DiPagRechnungsposition
Usage: #example
Title: "KfoMehrkosten3 Rechnungsposition 2 – BEMA 119d Umformung OK besonders schwierig (29.07.24)"
* insert BemaPositionExtensions(336)
* insert BemaCoding(#119d, [["Maßnahmen zur Umformung eines Kiefers einschließlich Retention - besonders schwierig durchführbarer Art"]])
* insert KfoMehrkosten3Position
* occurrenceDateTime = "2024-07-29"
* bodysite.extension[ZahnRegion].valueString = "OK"
* insert Anzahl(1)

Instance: KfoMehrkosten3-P3
InstanceOf: DiPagRechnungsposition
Usage: #example
Title: "KfoMehrkosten3 Rechnungsposition 3 – BEMA 119d Umformung UK besonders schwierig (29.07.24)"
* insert BemaPositionExtensions(336)
* insert BemaCoding(#119d, [["Maßnahmen zur Umformung eines Kiefers einschließlich Retention - besonders schwierig durchführbarer Art"]])
* insert KfoMehrkosten3Position
* occurrenceDateTime = "2024-07-29"
* bodysite.extension[ZahnRegion].valueString = "UK"
* insert Anzahl(1)

Instance: KfoMehrkosten3-P4
InstanceOf: DiPagRechnungsposition
Usage: #example
Title: "KfoMehrkosten3 Rechnungsposition 4 – BEMA 120d Einstellung B/B besonders schwierig (29.07.24)"
* insert BemaPositionExtensions(336)
* insert BemaCoding(#120d, [["Maßnahmen zur Einstellung des Unterkiefers in den Regelbiss in sagittaler oder lateraler Richtung einschließlich Retention - besonders schwierig durchführbarer Art"]])
* insert KfoMehrkosten3Position
* occurrenceDateTime = "2024-07-29"
* insert Anzahl(1)

// ============================================================================
// RECHNUNGSPOSITIONEN – Laborkosten (29.07.2024)
// ============================================================================
//TODO Laborkosten verwenden BEL-II-Codes (Bewertungsmaßstab für zahntechnische Leistungen).
//     Aktuell kein BEL-II-Codesystem in DiPag definiert

Instance: KfoMehrkosten3-P5
InstanceOf: DiPagRechnungsposition
Usage: #example
Title: "KfoMehrkosten3 Rechnungsposition 5 – Labor MAT Abdruckpauschale (29.07.24)"
* extension[Rechnungspositionstyp].valueCoding = https://gematik.de/fhir/dipag/CodeSystem/dipag-chargeitem-type-cs#EigenlaborleistungMaterial //TODO Korrekten Typ für BEL-II-Laborkosten klären
* code.text = "MAT - Abdruckpauschale"
* insert KfoMehrkosten3Position
* occurrenceDateTime = "2024-07-29"
* insert Anzahl(2)

// ============================================================================
// RECHNUNGSPOSITIONEN – Laborkosten (16.09.2024)
// ============================================================================

Instance: KfoMehrkosten3-P6
InstanceOf: DiPagRechnungsposition
Usage: #example
Title: "KfoMehrkosten3 Rechnungsposition 6 – Labor 001-0 Modell (16.09.24)"
* extension[Rechnungspositionstyp].valueCoding = https://gematik.de/fhir/dipag/CodeSystem/dipag-chargeitem-type-cs#EigenlaborleistungMaterial
* code.text = "001-0 - Modell"
* insert KfoMehrkosten3Position
* occurrenceDateTime = "2024-09-16"
* insert Anzahl(2)

Instance: KfoMehrkosten3-P7
InstanceOf: DiPagRechnungsposition
Usage: #example
Title: "KfoMehrkosten3 Rechnungsposition 7 – Labor 011-1 Modellpaar trimmen (16.09.24)"
* extension[Rechnungspositionstyp].valueCoding = https://gematik.de/fhir/dipag/CodeSystem/dipag-chargeitem-type-cs#EigenlaborleistungMaterial
* code.text = "011-1 - Modellpaar trimmen"
* insert KfoMehrkosten3Position
* occurrenceDateTime = "2024-09-16"
* insert Anzahl(1)

Instance: KfoMehrkosten3-P8
InstanceOf: DiPagRechnungsposition
Usage: #example
Title: "KfoMehrkosten3 Rechnungsposition 8 – Labor 020-2 Basis für Konstruktionsbiss (16.09.24)"
* extension[Rechnungspositionstyp].valueCoding = https://gematik.de/fhir/dipag/CodeSystem/dipag-chargeitem-type-cs#EigenlaborleistungMaterial
* code.text = "020-2 - Basis für Konstruktionsbiss"
* insert KfoMehrkosten3Position
* occurrenceDateTime = "2024-09-16"
* insert Anzahl(1)

Instance: KfoMehrkosten3-P9
InstanceOf: DiPagRechnungsposition
Usage: #example
Title: "KfoMehrkosten3 Rechnungsposition 9 – Labor 702-0 Basis bi/maxillares Gerät (16.09.24)"
* extension[Rechnungspositionstyp].valueCoding = https://gematik.de/fhir/dipag/CodeSystem/dipag-chargeitem-type-cs#EigenlaborleistungMaterial
* code.text = "702-0 - Basis bi/maxillares Gerät"
* insert KfoMehrkosten3Position
* occurrenceDateTime = "2024-09-16"
* insert Anzahl(1)

Instance: KfoMehrkosten3-P10
InstanceOf: DiPagRechnungsposition
Usage: #example
Title: "KfoMehrkosten3 Rechnungsposition 10 – Labor 710-0 Aufsatz (16.09.24)"
* extension[Rechnungspositionstyp].valueCoding = https://gematik.de/fhir/dipag/CodeSystem/dipag-chargeitem-type-cs#EigenlaborleistungMaterial
* code.text = "710-0 - Aufsatz"
* insert KfoMehrkosten3Position
* occurrenceDateTime = "2024-09-16"
* insert Anzahl(4)

Instance: KfoMehrkosten3-P11
InstanceOf: DiPagRechnungsposition
Usage: #example
Title: "KfoMehrkosten3 Rechnungsposition 11 – Labor 732-0 Labialbogen intermaxillar (16.09.24)"
* extension[Rechnungspositionstyp].valueCoding = https://gematik.de/fhir/dipag/CodeSystem/dipag-chargeitem-type-cs#EigenlaborleistungMaterial
* code.text = "732-0 - Labialbogen intermaxillar"
* insert KfoMehrkosten3Position
* occurrenceDateTime = "2024-09-16"
* insert Anzahl(1)

Instance: KfoMehrkosten3-P12
InstanceOf: DiPagRechnungsposition
Usage: #example
Title: "KfoMehrkosten3 Rechnungsposition 12 – Labor 734-0 Feder, geschlossen (16.09.24)"
* extension[Rechnungspositionstyp].valueCoding = https://gematik.de/fhir/dipag/CodeSystem/dipag-chargeitem-type-cs#EigenlaborleistungMaterial
* code.text = "734-0 - Feder, geschlossen"
* insert KfoMehrkosten3Position
* occurrenceDateTime = "2024-09-16"
* insert Anzahl(1)

Instance: KfoMehrkosten3-P13
InstanceOf: DiPagRechnungsposition
Usage: #example
Title: "KfoMehrkosten3 Rechnungsposition 13 – Labor 740-0 Verbindungselemente/inframaxillar (16.09.24)"
* extension[Rechnungspositionstyp].valueCoding = https://gematik.de/fhir/dipag/CodeSystem/dipag-chargeitem-type-cs#EigenlaborleistungMaterial
* code.text = "740-0 - Verbindungselemente/inframaxillar"
* insert KfoMehrkosten3Position
* occurrenceDateTime = "2024-09-16"
* insert Anzahl(1)

Instance: KfoMehrkosten3-P14
InstanceOf: DiPagRechnungsposition
Usage: #example
Title: "KfoMehrkosten3 Rechnungsposition 14 – Labor 711-0 Abschirmelement (16.09.24)"
* extension[Rechnungspositionstyp].valueCoding = https://gematik.de/fhir/dipag/CodeSystem/dipag-chargeitem-type-cs#EigenlaborleistungMaterial
* code.text = "711-0 - Abschirmelement"
* insert KfoMehrkosten3Position
* occurrenceDateTime = "2024-09-16"
* insert Anzahl(1)

Instance: KfoMehrkosten3-P15
InstanceOf: DiPagRechnungsposition
Usage: #example
Title: "KfoMehrkosten3 Rechnungsposition 15 – Labor 750-0 Einarmiges H-/A-Element (16.09.24)"
* extension[Rechnungspositionstyp].valueCoding = https://gematik.de/fhir/dipag/CodeSystem/dipag-chargeitem-type-cs#EigenlaborleistungMaterial
* code.text = "750-0 - Einarmiges H-/A-Element"
* insert KfoMehrkosten3Position
* occurrenceDateTime = "2024-09-16"
* insert Anzahl(2)
