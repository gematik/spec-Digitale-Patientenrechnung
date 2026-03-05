// ============================================================================
// Musterrechnung Arztbehandlung
// Basierend auf Material\Musterrechnung_Arztbehandlung.pdf
// ============================================================================

// ============================================================================
// PATIENT
// ============================================================================
Instance: MusterrechnungPatient
InstanceOf: DiPagPatient
Title: "Musterrechnung - Patient B. Patient"
Description: "Patient aus der Musterrechnung Arztbehandlung"
Usage: #example
* identifier[KVNR]
  * type = $identifier-kvnr-type#KVZ10
  * system = $kvid
  * value = "B123456789"
* name
  * use = #official
  * text = "B. Patient"
  * family = "Patient"
  * given = "B."
* birthDate = "1969-10-10"
* gender = #male
* address[Strassenanschrift]
  * type = #both
  * use = #home
  * line[0] = "Patientenweg 30"
    * extension[Strasse]
      * url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
      * valueString = "Patientenweg"
    * extension[Hausnummer]
      * url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
      * valueString = "30"
  * city = "Musterstadt"
  * postalCode = "12345"
  * country = "DE"

// ============================================================================
// PRACTITIONER - BEHANDELNDER ARZT
// ============================================================================
Instance: MusterrechnungArzt
InstanceOf: DiPagPerson
Title: "Musterrechnung - Dr. A. Arzt"
Description: "Behandelnder Arzt aus der Musterrechnung"
Usage: #example
* name[0]
  * use = #official
  * text = "Dr. A. Arzt"
  * family = "Arzt"
  * given[0] = "A."
  * prefix[0] = "Dr."
    * extension[prefix-qualifier]
      * url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
      * valueCode = #AC
* address[Strassenanschrift]
  * type = #both
  * line[0] = "Docstrasse 25"
    * extension[Strasse]
      * url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
      * valueString = "Docstrasse"
    * extension[Hausnummer]
      * url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
      * valueString = "25"
  * city = "Musterstadt"
  * postalCode = "12345"
  * country = "DE"
* qualification.code.coding = http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen#INNE "Innere Medizin"

// ============================================================================
// ORGANIZATION - PRAXIS
// ============================================================================
Instance: MusterrechnungPraxis
InstanceOf: DiPagInstitution
Title: "Musterrechnung - Praxis Dr. A. Arzt"
Description: "Arztpraxis aus der Musterrechnung"
Usage: #example
* name = "Praxis Dr. A. Arzt"
* address[Strassenanschrift]
  * type = #both
  * line[0] = "Docstrasse 25"
    * extension[Strasse]
      * url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
      * valueString = "Docstrasse"
    * extension[Hausnummer]
      * url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
      * valueString = "25"
  * city = "Musterstadt"
  * postalCode = "12345"
  * country = "DE"

// ============================================================================
// RECHNUNGSPOSITIONEN
// ============================================================================

// Position 1: 04.10.18 - GOÄ Nr. 1: Beratung, auch telefonisch
Instance: MusterrechnungPos1
InstanceOf: DiPagRechnungsposition
Title: "Musterrechnung Position 1 - GOÄ Nr. 1 (04.10.18)"
Description: "Beratung, auch telefonisch"
Usage: #example
* extension[Rechnungspositionstyp]
  * valueCoding = DiPagRechnungspositionTypeCS#GOÄ
* extension[GebührenordnungAngaben]
  * extension[Faktor]
    * extension[Value]
      * valueDecimal = 2.3
* extension[Behandlungsdatum]
  * valueDate = "2018-10-04"
* status = #billable
* code
  * coding
    * system = "http://fhir.de/CodeSystem/bäk/goä"
    * code = #1
  * text = "Beratung, auch telefonisch"
* subject = Reference(MusterrechnungPatient)
* performer
  * actor = Reference(MusterrechnungArzt)
* occurrencePeriod
  * start = "2018-10-04"
  * end = "2018-10-04"
* quantity
  * value = 1
  * unit = "Anzahl"
  * code = #{count}
  * system = "http://unitsofmeasure.org"

// Position 2: 04.10.18 - GOÄ Nr. 5: Symptombezogene Untersuchung
Instance: MusterrechnungPos2
InstanceOf: DiPagRechnungsposition
Title: "Musterrechnung Position 2 - GOÄ Nr. 5 (04.10.18)"
Description: "Symptombezogene Untersuchung"
Usage: #example
* extension[Rechnungspositionstyp]
  * valueCoding = DiPagRechnungspositionTypeCS#GOÄ
* extension[GebührenordnungAngaben]
  * extension[Faktor]
    * extension[Value]
      * valueDecimal = 2.3
* extension[Behandlungsdatum]
  * valueDate = "2018-10-04"
* status = #billable
* code
  * coding
    * system = "http://fhir.de/CodeSystem/bäk/goä"
    * code = #5
  * text = "Symptombezogene Untersuchung"
* subject = Reference(MusterrechnungPatient)
* performer
  * actor = Reference(MusterrechnungArzt)
* occurrencePeriod
  * start = "2018-10-04"
  * end = "2018-10-04"
* quantity
  * value = 1
  * unit = "Anzahl"
  * code = #{count}
  * system = "http://unitsofmeasure.org"

// Position 3: 04.10.18 - GOÄ Nr. 70: Arbeitsunfähigkeitsbescheinigung
Instance: MusterrechnungPos3
InstanceOf: DiPagRechnungsposition
Title: "Musterrechnung Position 3 - GOÄ Nr. 70 (04.10.18)"
Description: "Arbeitsunfähigkeitsbescheinigung"
Usage: #example
* extension[Rechnungspositionstyp]
  * valueCoding = DiPagRechnungspositionTypeCS#GOÄ
* extension[GebührenordnungAngaben]
  * extension[Faktor]
    * extension[Value]
      * valueDecimal = 2.3
* extension[Behandlungsdatum]
  * valueDate = "2018-10-04"
* status = #billable
* code
  * coding
    * system = "http://fhir.de/CodeSystem/bäk/goä"
    * code = #70
  * text = "Arbeitsunfähigkeitsbescheinigung"
* subject = Reference(MusterrechnungPatient)
* performer
  * actor = Reference(MusterrechnungArzt)
* occurrencePeriod
  * start = "2018-10-04"
  * end = "2018-10-04"
* quantity
  * value = 1
  * unit = "Anzahl"
  * code = #{count}
  * system = "http://unitsofmeasure.org"

// Position 4: 19.10.18 - GOÄ Nr. 1: Beratung, auch telefonisch
Instance: MusterrechnungPos4
InstanceOf: DiPagRechnungsposition
Title: "Musterrechnung Position 4 - GOÄ Nr. 1 (19.10.18)"
Description: "Beratung, auch telefonisch"
Usage: #example
* extension[Rechnungspositionstyp]
  * valueCoding = DiPagRechnungspositionTypeCS#GOÄ
* extension[GebührenordnungAngaben]
  * extension[Faktor]
    * extension[Value]
      * valueDecimal = 2.3
* extension[Behandlungsdatum]
  * valueDate = "2018-10-19"
* status = #billable
* code
  * coding
    * system = "http://fhir.de/CodeSystem/bäk/goä"
    * code = #1
  * text = "Beratung, auch telefonisch"
* subject = Reference(MusterrechnungPatient)
* performer
  * actor = Reference(MusterrechnungArzt)
* occurrencePeriod
  * start = "2018-10-19"
  * end = "2018-10-19"
* quantity
  * value = 1
  * unit = "Anzahl"
  * code = #{count}
  * system = "http://unitsofmeasure.org"

// Position 5: 19.10.18 - GOÄ Nr. 5: Symptombezogene Untersuchung
Instance: MusterrechnungPos5
InstanceOf: DiPagRechnungsposition
Title: "Musterrechnung Position 5 - GOÄ Nr. 5 (19.10.18)"
Description: "Symptombezogene Untersuchung"
Usage: #example
* extension[Rechnungspositionstyp]
  * valueCoding = DiPagRechnungspositionTypeCS#GOÄ
* extension[GebührenordnungAngaben]
  * extension[Faktor]
    * extension[Value]
      * valueDecimal = 2.3
* extension[Behandlungsdatum]
  * valueDate = "2018-10-19"
* status = #billable
* code
  * coding
    * system = "http://fhir.de/CodeSystem/bäk/goä"
    * code = #5
  * text = "Symptombezogene Untersuchung"
* subject = Reference(MusterrechnungPatient)
* performer
  * actor = Reference(MusterrechnungArzt)
* occurrencePeriod
  * start = "2018-10-19"
  * end = "2018-10-19"
* quantity
  * value = 1
  * unit = "Anzahl"
  * code = #{count}
  * system = "http://unitsofmeasure.org"

// Position 6: 19.10.18 - GOÄ Nr. 3501: Blutsenkung
Instance: MusterrechnungPos6
InstanceOf: DiPagRechnungsposition
Title: "Musterrechnung Position 6 - GOÄ Nr. 3501 (19.10.18)"
Description: "Blutsenkung"
Usage: #example
* extension[Rechnungspositionstyp]
  * valueCoding = DiPagRechnungspositionTypeCS#GOÄ
* extension[GebührenordnungAngaben]
  * extension[Faktor]
    * extension[Value]
      * valueDecimal = 1.15
* extension[Behandlungsdatum]
  * valueDate = "2018-10-19"
* status = #billable
* code
  * coding
    * system = "http://fhir.de/CodeSystem/bäk/goä"
    * code = #3501
  * text = "Blutsenkung"
* subject = Reference(MusterrechnungPatient)
* performer
  * actor = Reference(MusterrechnungArzt)
* occurrencePeriod
  * start = "2018-10-19"
  * end = "2018-10-19"
* quantity
  * value = 1
  * unit = "Anzahl"
  * code = #{count}
  * system = "http://unitsofmeasure.org"

// Position 7: 19.10.18 - GOÄ Nr. 3597.H1: Laktatdehydrogenase (LDH)
Instance: MusterrechnungPos7
InstanceOf: DiPagRechnungsposition
Title: "Musterrechnung Position 7 - GOÄ Nr. 3597.H1 (19.10.18)"
Description: "Laktatdehydrogenase (LDH)"
Usage: #example
* extension[Rechnungspositionstyp]
  * valueCoding = DiPagRechnungspositionTypeCS#GOÄ
* extension[GebührenordnungAngaben]
  * extension[Faktor]
    * extension[Value]
      * valueDecimal = 1.15
* extension[Behandlungsdatum]
  * valueDate = "2018-10-19"
* status = #billable
* code
  * coding
    * system = "http://fhir.de/CodeSystem/bäk/goä"
    * code = #3597.H1
  * text = "Laktatdehydrogenase (LDH)"
* subject = Reference(MusterrechnungPatient)
* performer
  * actor = Reference(MusterrechnungArzt)
* occurrencePeriod
  * start = "2018-10-19"
  * end = "2018-10-19"
* quantity
  * value = 1
  * unit = "Anzahl"
  * code = #{count}
  * system = "http://unitsofmeasure.org"

// ============================================================================
// RECHNUNG
// ============================================================================
Instance: MusterrechnungInvoice
InstanceOf: DiPagRechnung
Title: "Musterrechnung Arztbehandlung"
Description: "Rechnung Nr. 1425 vom 24.10.2018"
Usage: #example
* identifier[Rechnungsnummer]
  * type = DiPagRechnungIdentifierTypeCS#invoice
  * system = "https://praxis-dr-arzt.de/fhir/sid/rechnungsnummer"
  * value = "1425"
* status = #issued
* type.coding[AusrichtungDerRechnung]
  * system = "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-abrechnungsart-cs"
  * code = #GOÄ
  * display = "Gebührenordnung für Ärzte"
* date = "2018-10-24"
* subject = Reference(MusterrechnungPatient)
* recipient[0] = Reference(MusterrechnungPatient)
* recipient[0].identifier
  * type = $identifier-kvnr-type#KVZ10
  * system = $kvid
  * value = "B123456789"
* recipient[0].display = "Herr B. Patient"
* issuer = Reference(MusterrechnungPraxis)
* participant[Leistungserbringer]
  * role = DiPagParticipantRoleCS#leistungserbringer
  * actor = Reference(MusterrechnungArzt)
* participant[Forderungsinhaber]
  * role = DiPagParticipantRoleCS#forderungsinhaber
  * actor = Reference(MusterrechnungPraxis)
* note[0]
  * text = "Berechnet nach der Gebührenordnung für Ärzte / GOÄ (Stand 01.01.2002). Bitte überweisen Sie den Betrag unter Angabe der Rechnungsnummer und des Rechnungsdatums bis zum 14.11.2018 auf das unten angegebene Konto."
* paymentTerms = "Zahlbar bis zum 14.11.2018"
  * extension[Zahlungsziel]
    * valueDate = "2018-11-14"
* extension[Behandlungszeitraum]
  * valuePeriod
    * start = "2018-10-04"
    * end = "2018-10-19"
* extension[Behandlungsart]
  * valueCoding
    * system = $EncounterClassDe-cs
    * code = #AMB
    * display = "ambulatory"
* extension[Fachrichtung]
  * valueCoding
    * system = "http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen"
    * code = #INNA
    * display = "Innere Medizin"
* extension[AbrechnungsDiagnoseProzedurFreitext]
  * valueString = "Grippaler Infekt; Hepatopathie"
* totalNet
  * value = 54.95
  * currency = #EUR
* totalGross
  * value = 54.95
  * currency = #EUR
* lineItem[0]
  * sequence = 1
  * chargeItemReference = Reference(MusterrechnungPos1)
  * priceComponent[BruttoBetrag]
    * type = #base
    * amount
      * value = 10.72
      * currency = #EUR
* lineItem[+]
  * sequence = 2
  * chargeItemReference = Reference(MusterrechnungPos2)
  * priceComponent[BruttoBetrag]
    * type = #base
    * amount
      * value = 10.72
      * currency = #EUR
* lineItem[+]
  * sequence = 3
  * chargeItemReference = Reference(MusterrechnungPos3)
  * priceComponent[BruttoBetrag]
    * type = #base
    * amount
      * value = 5.36
      * currency = #EUR
* lineItem[+]
  * sequence = 4
  * chargeItemReference = Reference(MusterrechnungPos4)
  * priceComponent[BruttoBetrag]
    * type = #base
    * amount
      * value = 10.72
      * currency = #EUR
* lineItem[+]
  * sequence = 5
  * chargeItemReference = Reference(MusterrechnungPos5)
  * priceComponent[BruttoBetrag]
    * type = #base
    * amount
      * value = 10.72
      * currency = #EUR
* lineItem[+]
  * sequence = 6
  * chargeItemReference = Reference(MusterrechnungPos6)
  * priceComponent[BruttoBetrag]
    * type = #base
    * amount
      * value = 4.02
      * currency = #EUR
* lineItem[+]
  * sequence = 7
  * chargeItemReference = Reference(MusterrechnungPos7)
  * priceComponent[BruttoBetrag]
    * type = #base
    * amount
      * value = 2.68
      * currency = #EUR

// ============================================================================
// BUNDLE
// ============================================================================
Instance: MusterrechnungBundle
InstanceOf: DiPagRechnungsBundle
Title: "Musterrechnung Bundle"
Description: "Bundle mit allen Ressourcen der Musterrechnung Arztbehandlung"
Usage: #example
* type = #collection
* timestamp = "2018-10-24T12:00:00+01:00"
* entry[0] //TODO auf uuids umstellen
  * fullUrl = "Invoice/MusterrechnungInvoice"
  * resource = MusterrechnungInvoice
* entry[+]
  * fullUrl = "Patient/MusterrechnungPatient"
  * resource = MusterrechnungPatient
* entry[+]
  * fullUrl = "Practitioner/MusterrechnungArzt"
  * resource = MusterrechnungArzt
* entry[+]
  * fullUrl = "Organization/MusterrechnungPraxis"
  * resource = MusterrechnungPraxis
* entry[+]
  * fullUrl = "ChargeItem/MusterrechnungPos1"
  * resource = MusterrechnungPos1
* entry[+]
  * fullUrl = "ChargeItem/MusterrechnungPos2"
  * resource = MusterrechnungPos2
* entry[+]
  * fullUrl = "ChargeItem/MusterrechnungPos3"
  * resource = MusterrechnungPos3
* entry[+]
  * fullUrl = "ChargeItem/MusterrechnungPos4"
  * resource = MusterrechnungPos4
* entry[+]
  * fullUrl = "ChargeItem/MusterrechnungPos5"
  * resource = MusterrechnungPos5
* entry[+]
  * fullUrl = "ChargeItem/MusterrechnungPos6"
  * resource = MusterrechnungPos6
* entry[+]
  * fullUrl = "ChargeItem/MusterrechnungPos7"
  * resource = MusterrechnungPos7
