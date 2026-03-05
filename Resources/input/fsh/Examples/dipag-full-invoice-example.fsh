// ============================================================================
// PATIENT
// ============================================================================
Instance: PatientExample
InstanceOf: DiPagPatient
Title: "Beispiel Patient"
Description: "**Hinweis:** Alle Daten in diesem Beispiel sind fiktiv und dienen ausschließlich zu Demonstrations- und Testzwecken.

Ein Beispielpatient für die Rechnung"
Usage: #example
* identifier[KVNR]
  * type = $identifier-kvnr-type#KVZ10
  * system = $kvid
  * value = "K123456789"
  * assigner
    * identifier
      * type = $v2-0203#XX
      * system = $iknr
      * value = "109500969"
* name
  * use = #official
  * text = "Max Mustermann"
  * family = "Mustermann"
  * given = "Max"
* birthDate = "1980-05-15"
* gender = #male
* address[Strassenanschrift]
  * type = #both
  * use = #home
  * line[0] = "Musterstraße 42"
    * extension[Strasse]
      * url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
      * valueString = "Musterstraße"
    * extension[Hausnummer]
      * url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
      * valueString = "42"
  * city = "Berlin"
  * postalCode = "10115"
  * country = "DE"
* address[Postfach]
  * type = #postal
  * line[0] = "Postfach 123456"
    * extension[Postfach]
      * url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-postBox"
      * valueString = "123456"
  * city = "Berlin"
  * postalCode = "10115"
  * country = "DE"

// ============================================================================
// PRACTITIONERS (ÄRZTE/LEISTUNGSERBRINGER)
// ============================================================================
Instance: PractitionerMain
InstanceOf: DiPagPerson
Title: "Hauptbehandler - Dr. Schulz"
Description: "**Hinweis:** Alle Daten in diesem Beispiel sind fiktiv und dienen ausschließlich zu Demonstrations- und Testzwecken.

Hauptbehandelnder Zahnarzt"
Usage: #example
* identifier[Telematik-ID]
  * type = $v2-0203#PRN
  * system = $tmid
  * value = "1-HBA-Testkarte-883110000123465"
* name[0]
  * use = #official
  * text = "Dr. Hans Schulz"
  * family = "Schulz"
  * given[0] = "Hans"
  * prefix[0] = "Dr."
    * extension[prefix-qualifier]
      * url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
      * valueCode = #AC
* telecom[Telefon]
  * system = #phone
  * value = "+49 30 123456"
* address[Strassenanschrift]
  * type = #both
  * line[0] = "Praxisstraße 10"
    * extension[Strasse]
      * url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
      * valueString = "Praxisstraße"
    * extension[Hausnummer]
      * url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
      * valueString = "10"
  * city = "Berlin"
  * postalCode = "10115"
  * country = "DE"
* qualification.code.coding
  * system = "http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen"
  * code = #MZKH
  * display = "Zahnmedizin"

Instance: PractitionerSecondary
InstanceOf: DiPagPerson
Title: "Assistierender Arzt - Dr. Mueller"
Description: "**Hinweis:** Alle Daten in diesem Beispiel sind fiktiv und dienen ausschließlich zu Demonstrations- und Testzwecken.

Assistierender Zahnarzt"
Usage: #example
* identifier[Telematik-ID]
  * type = $v2-0203#PRN
  * system = $tmid
  * value = "1-HBA-Testkarte-883110000123466"
* name[0]
  * use = #official
  * text = "Dr. Anna Mueller"
  * family = "Mueller"
  * given[0] = "Anna"
  * prefix[0] = "Dr."
    * extension[prefix-qualifier]
      * url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
      * valueCode = #AC
* telecom[Telefon]
  * system = #phone
  * value = "+49 30 123457"
* address[Strassenanschrift]
  * type = #both
  * line[0] = "Praxisstraße 10"
    * extension[Strasse]
      * url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
      * valueString = "Praxisstraße"
    * extension[Hausnummer]
      * url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
      * valueString = "10"
  * city = "Berlin"
  * postalCode = "10115"
  * country = "DE"
* qualification.code.coding
  * system = "http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen"
  * code = #MZKH
  * display = "Zahnmedizin"

// ============================================================================
// ORGANIZATIONS
// ============================================================================
Instance: OrganizationIssuer
InstanceOf: DiPagInstitution
Title: "Zahnarztpraxis Dr. Schulz"
Description: "**Hinweis:** Alle Daten in diesem Beispiel sind fiktiv und dienen ausschließlich zu Demonstrations- und Testzwecken.

Die Praxis, die die Rechnung ausstellt"
Usage: #example
* name = "Zahnarztpraxis Dr. Schulz"
* identifier[Telematik-ID]
  * type = $v2-0203#PRN
  * system = $tmid
  * value = "1-SMC-B-Testkarte-883110000123465"
* identifier[BSNR]
  * type = $v2-0203#BSNR
  * system = "https://fhir.kbv.de/NamingSystem/KBV_NS_Base_BSNR"
  * value = "123456789"
* identifier[KZVAbrechnungsnummer]
  * type = $identifier-kvnr-type#KZVA
  * system = "http://fhir.de/sid/kzbv/kzvabrechnungsnummer"
  * value = "987654321"
* identifier[USt-ID-Nr]
  * type = DiPagRechnungIdentifierTypeCS#ustid
  * value = "DE123456789"
* type.coding
  * system = "http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen"
  * code = #MZKH
  * display = "Zahnmedizin"
* address[Strassenanschrift]
  * type = #both
  * line[0] = "Praxisstraße 10"
    * extension[Strasse]
      * url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
      * valueString = "Praxisstraße"
    * extension[Hausnummer]
      * url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
      * valueString = "10"
  * city = "Berlin"
  * postalCode = "10115"
  * country = "DE"
* telecom[Telefon]
  * system = #phone
  * value = "+49 30 123456"

Instance: OrganizationSecondary
InstanceOf: DiPagInstitution
Title: "Zahnlabor Müller"
Description: "**Hinweis:** Alle Daten in diesem Beispiel sind fiktiv und dienen ausschließlich zu Demonstrations- und Testzwecken.

Labor für Zahnersatz und Prothesen"
Usage: #example
* name = "Zahnlabor Müller GmbH"
* identifier[Telematik-ID]
  * type = $v2-0203#PRN
  * system = $tmid
  * value = "1-SMC-B-Testkarte-883110000987654"
* identifier[IKNR]
  * type = $v2-0203#XX
  * system = $iknr
  * value = "109876543"
* type.coding
  * system = "http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen"
  * code = #MZKH
  * display = "Zahnmedizin"
* address[Strassenanschrift]
  * type = #both
  * line[0] = "Laborstraße 5"
    * extension[Strasse]
      * url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
      * valueString = "Laborstraße"
    * extension[Hausnummer]
      * url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
      * valueString = "5"
  * city = "Berlin"
  * postalCode = "10116"
  * country = "DE"
* telecom[Telefon][0]
  * system = #phone
  * value = "+49 30 987654"

// ============================================================================
// CHARGE ITEMS / RECHNUNGSPOSITIONEN
// ============================================================================

// GOÄ Position - Zahnärztliche Leistung mit Wegegeld
Instance: ChargeItemGoea1
InstanceOf: DiPagRechnungsposition
Title: "GOÄ Position 1: Ärztliche Konsultation"
Description: "**Hinweis:** Alle Daten in diesem Beispiel sind fiktiv und dienen ausschließlich zu Demonstrations- und Testzwecken.

Eingehende Konsultation mit Befund nach GOÄ"
Usage: #example
* extension[Rechnungspositionstyp]
  * valueCoding = DiPagRechnungspositionTypeCS#GOÄ
* extension[Zusatz]
  * valueCoding = DiPagRechnungspositionZusatzCS#V "auf Verlangen erbrachte Leistung"
* extension[WegegeldReiseentschaedigung]
  * extension[Wegegeld]
    * extension[Entfernung]
      * valueQuantity
        * value = 15
        * unit = "km"
        * code = #km
        * system = "http://unitsofmeasure.org"
    * extension[Nacht]
      * valueBoolean = false
* extension[GebuehrenordnungAngaben]
  * extension[Einfachsatz]
    * valueMoney
      * value = 10.72
      * currency = #EUR
  * extension[Punktzahl]
    * valueDecimal = 100
  * extension[Faktor]
    * extension[Value]
      * valueDecimal = 2.3
    * extension[FaktorGrund]
      * valueCoding = DiPagRechnungspositionFaktorGruendeCS#AB "Allgemeine Bestimmung"
* extension[Behandlungsdatum]
  * valueDate = "2024-01-15"
* status = #billable
* code
  * coding[GOAE]
    * system = "http://fhir.de/CodeSystem/bäk/goä"
    * code = #1
    * display = "Beratung"
* subject = Reference(PatientExample)
* performer
  * actor = Reference(PractitionerMain)
* occurrencePeriod
  * start = "2024-01-15"
  * end = "2024-01-15"
* reason
  * text = "Beispiel für Begründung bei Beratung mit Faktorerhöhung: Erheblicher zusätzlicher Zeitaufwand aufgrund komplexer Fragestellung und ausführlicher Erläuterung der Behandlungsmöglichkeiten."
* quantity
  * value = 1
  * unit = "Anzahl"
  * code = #{count}
  * system = "http://unitsofmeasure.org"

// GOZ Position - Zahnärztliche Leistung
Instance: ChargeItemGoz
InstanceOf: DiPagRechnungsposition
Title: "GOZ Position: Professionelle Zahnreinigung"
Description: "**Hinweis:** Alle Daten in diesem Beispiel sind fiktiv und dienen ausschließlich zu Demonstrations- und Testzwecken.

Zahnsteinentfernung und Politur nach GOZ"
Usage: #example
* extension[Rechnungspositionstyp]
  * valueCoding = DiPagRechnungspositionTypeCS#GOZ
* extension[Zusatz]
  * valueCoding = DiPagRechnungspositionZusatzCS#V "auf Verlangen erbrachte Leistung"
* extension[GebuehrenordnungAngaben]
  * extension[Einfachsatz]
    * valueMoney
      * value = 60.00
      * currency = #EUR
  * extension[Punktzahl]
    * valueDecimal = 28
  * extension[Faktor]
    * extension[Value]
      * valueDecimal = 2.0
* extension[Behandlungsdatum]
  * valueDate = "2024-02-25"
* status = #billable
* code
  * coding[GOZ]
    * system = "http://fhir.de/CodeSystem/bäk/gzä"
    * code = #1040
    * display = "Professionelle Zahnreinigung"
* subject = Reference(PatientExample)
* performer
  * actor = Reference(PractitionerMain)
* occurrencePeriod
  * start = "2024-02-25"
  * end = "2024-02-25"
* bodysite
  * extension[ZahnRegion]
    * valueString = "11-48"

// Fremdlaborleistung
Instance: ChargeItemLab
InstanceOf: DiPagRechnungsposition
Title: "Laborleistung: Zahnersatz"
Description: "**Hinweis:** Alle Daten in diesem Beispiel sind fiktiv und dienen ausschließlich zu Demonstrations- und Testzwecken.

Anfertigung einer Teilprothese durch Fremdlabor"
Usage: #example
* extension[Rechnungspositionstyp]
  * valueCoding = DiPagRechnungspositionTypeCS#Fremdlaborleistung
* extension[Behandlungsdatum]
  * valueDate = "2024-03-01"
* status = #billable
* code
  * text = "Teilprothese Oberkiefer"
* subject = Reference(PatientExample)
* performer[0]
  * actor = Reference(OrganizationSecondary)
* occurrencePeriod
  * start = "2024-03-01"
  * end = "2024-03-10"
* quantity
  * value = 1
  * unit = "Anzahl"
  * code = #{count}
  * system = "http://unitsofmeasure.org"

// Sachkosten/Auslagen mit Material
Instance: ChargeItemMaterial
InstanceOf: DiPagRechnungsposition
Title: "Sachkosten: Dentalmaterial"
Description: "**Hinweis:** Alle Daten in diesem Beispiel sind fiktiv und dienen ausschließlich zu Demonstrations- und Testzwecken.

Verbrauchsmaterial für Behandlung"
Usage: #example
* extension[Rechnungspositionstyp]
  * valueCoding = DiPagRechnungspositionTypeCS#SachkostenAuslagen
* extension[Behandlungsdatum]
  * valueDate = "2024-02-20"
* status = #billable
* code
  * text = "Dentalmaterial"
* subject = Reference(PatientExample)
* performer[0]
  * actor = Reference(OrganizationIssuer)
* occurrencePeriod
  * start = "2024-02-20"
  * end = "2024-02-20"
* productCodeableConcept
  * text = "Komposit-Füllungsmaterial"
  * coding[PZN]
    * system = "http://fhir.de/CodeSystem/ifa/pzn"
    * code = #12345678
    * display = "Komposit XYZ"
* quantity
  * value = 2
  * unit = "Anzahl"
  * code = #{count}
  * system = "http://unitsofmeasure.org"

// Wegegeld/Reiseentschädigung mit Reiseentschädigung
Instance: ChargeItemReiseentschaedigung
InstanceOf: DiPagRechnungsposition
Title: "Wegegeld/Reiseentschädigung: Hausbesuch"
Description: "**Hinweis:** Alle Daten in diesem Beispiel sind fiktiv und dienen ausschließlich zu Demonstrations- und Testzwecken.

Reiseentschädigung für Hausbesuch über 25 km"
Usage: #example
* extension[Rechnungspositionstyp]
  * valueCoding = DiPagRechnungspositionTypeCS#WegegeldReiseentschaedigung
* extension[WegegeldReiseentschaedigung]
  * extension[Reiseentschaedigung]
    * extension[Abwesenheit]
      * valueQuantity
        * value = 3
        * unit = "h"
        * code = #h
        * system = "http://unitsofmeasure.org"
    * extension[Entfernung]
      * valueQuantity
        * value = 50
        * unit = "km"
        * code = #km
        * system = "http://unitsofmeasure.org"
    * extension[Uebernachtung]
      * valueMoney
        * value = 80.00
        * currency = #EUR
    * extension[Verkehrsmittel]
      * valueCoding
        * system = $sct
        * code = #46160005
        * display = "Motor vehicle"
* extension[Behandlungsdatum]
  * valueDate = "2024-03-05"
* status = #billable
* code
  * text = "Reiseentschädigung für Hausbesuch"
* subject = Reference(PatientExample)
* performer[0]
  * actor = Reference(PractitionerMain)
* occurrencePeriod
  * start = "2024-03-05"
  * end = "2024-03-05"

// ============================================================================
// DIAGNOSES AND PROCEDURES
// ============================================================================
Instance: DiagnoseExample
InstanceOf: DiPagRechnungsdiagnose
Title: "Diagnose - Karies"
Description: "**Hinweis:** Alle Daten in diesem Beispiel sind fiktiv und dienen ausschließlich zu Demonstrations- und Testzwecken.

Zahnkaries als Hauptdiagnose für die Rechnung"
Usage: #example
* code
  * coding[ICD-10-GM]
    * system = $icd10-cs
    * version = "2024"
    * code = #K02.9
    * display = "Zahnkaries, nicht näher bezeichnet"
* subject = Reference(PatientExample)
* onsetDateTime = "2024-01-15"

Instance: DiagnoseExample2
InstanceOf: DiPagRechnungsdiagnose
Title: "Diagnose - Parodontitis"
Description: "**Hinweis:** Alle Daten in diesem Beispiel sind fiktiv und dienen ausschließlich zu Demonstrations- und Testzwecken.

Parodontitis als Nebendiagnose"
Usage: #example
* code
  * coding[ICD-10-GM]
    * system = $icd10-cs
    * version = "2024"
    * code = #K05.3
    * display = "Chronische Parodontitis"
* subject = Reference(PatientExample)
* onsetDateTime = "2024-01-15"

Instance: ProzedurExample
InstanceOf: DiPagRechnungsprozedur
Title: "Prozedur - Zahnimplantat"
Description: "**Hinweis:** Alle Daten in diesem Beispiel sind fiktiv und dienen ausschließlich zu Demonstrations- und Testzwecken.

Zahnimplantat-Einsetzung als Prozedur"
Usage: #example
* status = #completed
* code
  * coding[OPS]
    * system = $ops-cs
    * version = "2024"
    * code = #5-232.00
    * display = "Implantation alloplastisches Material, Zahn"
* subject = Reference(PatientExample)
* performedDateTime = "2024-02-20"

// ============================================================================
// MAIN INVOICE
// ============================================================================
Instance: InvoiceExample
InstanceOf: DiPagRechnung
Title: "Beispielrechnung - Zahnärztliche Behandlung"
Description: "**Hinweis:** Alle Daten in diesem Beispiel sind fiktiv und dienen ausschließlich zu Demonstrations- und Testzwecken.

Komplettes Beispiel einer Digitalen Patientenrechnung mit GOÄ und GOZ"
Usage: #example
* identifier[Rechnungsnummer]
  * type = DiPagRechnungIdentifierTypeCS#invoice
  * system = "https://zahnarzt-schulz.de/fhir/sid/rechnungsnummer"
  * value = "RG-2024-001234"
* status = #issued
* type.coding[AusrichtungDerRechnung]
  * system = "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-abrechnungsart-cs"
  * code = #GOÄ
  * display = "Gebührenordnung für Ärzte"
* type.coding[Rechnungsart]
  * system = "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnungsart-cs"
  * code = #ABSCHLUSS
  * display = "Abschlussrechnung"
* date = "2024-03-15"
* subject = Reference(PatientExample)
* recipient[0] = Reference(PatientExample)
* recipient[0].identifier
  * type = $identifier-kvnr-type#KVZ10
  * system = $kvid
  * value = "K123456789"
* recipient[0].display = "Max Mustermann"
* issuer = Reference(OrganizationIssuer)
* participant[Leistungserbringer]
  * role = DiPagParticipantRoleCS#leistungserbringer
  * actor = Reference(PractitionerSecondary)
* participant[Forderungsinhaber]
  * role = DiPagParticipantRoleCS#forderungsinhaber
  * actor = Reference(OrganizationIssuer)
* note[0]
  * text = "Gemäß §1 Abs. 2 GOÄ werden diese Leistungen nach dieser Gebührenordnung für Ärzte berechnet. Bitte überweisen Sie den Betrag innerhalb von 14 Tagen."
* paymentTerms = "Überweisung auf Konto: IBAN DE89370400440532013000, BIC COBADEFFXXX. Zahlbar bis zum 30.04.2024 ohne Abzug."
  * extension[Zahlungsziel]
    * valueDate = "2024-04-30"
* extension[Behandlungszeitraum]
  * valuePeriod
    * start = "2024-01-15"
    * end = "2024-03-10"
* extension[Behandlungsart]
  * valueCoding
    * system = $EncounterClassDe-cs
    * code = #AMB
    * display = "ambulatory"
* extension[Fachrichtung]
  * valueCoding
    * system = "http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen"
    * code = #MZKH
    * display = "Zahnmedizin"
* extension[AbrechnungsDiagnoseProzedur][+]
  * extension[Use]
    * valueCoding
      * system = "https://gematik.de/fhir/dipag/CodeSystem/dipag-abrechnungs-diagnose-use-CS"
      * code = #main-diagnosis
      * display = "Hauptdiagnose"
  * extension[Referenz][+]
    * valueReference = Reference(DiagnoseExample)
* extension[AbrechnungsDiagnoseProzedur][+]
  * extension[Referenz][+]
    * valueReference = Reference(DiagnoseExample2)
  * extension[Referenz][+]
    * valueReference = Reference(ProzedurExample)
* extension[AbrechnungsDiagnoseProzedurFreitext]
  * valueString = "Behandlung von Karies und Parodontitis mit Implantation"
* extension[Antragsreferenz]
  * valueIdentifier
    * type = DiPagRechnungIdentifierTypeCS#antragsreferenz
    * system = "https://example.org/fhir/sid/kostenplan"
    * value = "HKP-2024-001-123456"
* totalNet
  * value = 1415.70
  * currency = #EUR
* totalGross
  * value = 1648.96
  * currency = #EUR
* totalPriceComponent[SummeRechnungspositionen]
  * type = #base
  * code = DiPagTotalPriceComponentTypeCS#SummeRechnungspositionen "Summe aller Rechnungspositionen"
  * amount
    * value = 1415.70
    * currency = #EUR
* totalPriceComponent[Fremdlaborleistungen]
  * type = #base
  * code = DiPagTotalPriceComponentTypeCS#Fremdlaborleistungen "Fremdlaborleistungen"
  * amount
    * value = 800.00
    * currency = #EUR
* totalPriceComponent[Abzug]
  * type = #deduction
  * code = DiPagTotalPriceComponentTypeCS#FestzuschussKasse "Festzuschuss Kasse"
  * amount
    * value = -250.00
    * currency = #EUR
* lineItem[0]
  * sequence = 1
  * chargeItemReference = Reference(ChargeItemGoea1)
  * priceComponent[BruttoBetrag]
    * type = #base
    * amount
      * value = 29.35
      * currency = #EUR
  * priceComponent[Steuern]
    * type = #tax
    * amount
      * value = 4.69
      * currency = #EUR
* lineItem[+]
  * sequence = 3
  * chargeItemReference = Reference(ChargeItemGoz)
  * priceComponent[BruttoBetrag]
    * type = #base
    * amount
      * value = 142.80
      * currency = #EUR
  * priceComponent[Steuern]
    * type = #tax
    * amount
      * value = 22.80
      * currency = #EUR
* lineItem[+]
  * sequence = 4
  * chargeItemReference = Reference(ChargeItemLab)
  * priceComponent[BruttoBetrag]
    * type = #base
    * amount
      * value = 952.00
      * currency = #EUR
  * priceComponent[Steuern]
    * type = #tax
    * amount
      * value = 152.00
      * currency = #EUR
* lineItem[+]
  * sequence = 5
  * chargeItemReference = Reference(ChargeItemMaterial)
  * priceComponent[BruttoBetrag]
    * type = #base
    * amount
      * value = 53.55
      * currency = #EUR
  * priceComponent[Steuern]
    * type = #tax
    * amount
      * value = 8.55
      * currency = #EUR
* lineItem[+]
  * sequence = 6
  * chargeItemReference = Reference(ChargeItemReiseentschaedigung)
  * priceComponent[BruttoBetrag]
    * type = #base
    * amount
      * value = 238.00
      * currency = #EUR
  * priceComponent[Steuern]
    * type = #tax
    * amount
      * value = 45.22
      * currency = #EUR

// ============================================================================
// BUNDLE - Zusammenfassung aller Ressourcen
// ============================================================================
Instance: BundleExample
InstanceOf: DiPagRechnungsBundle
Title: "Beispiel Bundle - Vollständige Rechnung"
Description: "**Hinweis:** Alle Daten in diesem Beispiel sind fiktiv und dienen ausschließlich zu Demonstrations- und Testzwecken.

Bundle mit allen Ressourcen der digitalen Patientenrechnung"
Usage: #example
* type = #collection
* timestamp = "2024-03-15T14:30:00+01:00"
* entry[0]
  * fullUrl = "https://[FD-endpunkt]/Invoice/InvoiceExample"
  * resource = InvoiceExample
* entry[+]
  * fullUrl = "https://[FD-endpunkt]/Patient/PatientExample"
  * resource = PatientExample
* entry[+]
  * fullUrl = "https://[FD-endpunkt]/Practitioner/PractitionerMain"
  * resource = PractitionerMain
* entry[+]
  * fullUrl = "https://[FD-endpunkt]/Practitioner/PractitionerSecondary"
  * resource = PractitionerSecondary
* entry[+]
  * fullUrl = "https://[FD-endpunkt]/Organization/OrganizationIssuer"
  * resource = OrganizationIssuer
* entry[+]
  * fullUrl = "https://[FD-endpunkt]/Organization/OrganizationSecondary"
  * resource = OrganizationSecondary
* entry[+]
  * fullUrl = "https://[FD-endpunkt]/ChargeItem/ChargeItemGoea1"
  * resource = ChargeItemGoea1
* entry[+]
  * fullUrl = "https://[FD-endpunkt]/ChargeItem/ChargeItemGoz"
  * resource = ChargeItemGoz
* entry[+]
  * fullUrl = "https://[FD-endpunkt]/ChargeItem/ChargeItemLab"
  * resource = ChargeItemLab
* entry[+]
  * fullUrl = "https://[FD-endpunkt]/ChargeItem/ChargeItemMaterial"
  * resource = ChargeItemMaterial
* entry[+]
  * fullUrl = "https://[FD-endpunkt]/ChargeItem/ChargeItemReiseentschaedigung"
  * resource = ChargeItemReiseentschaedigung
* entry[+]
  * fullUrl = "https://[FD-endpunkt]/Condition/DiagnoseExample"
  * resource = DiagnoseExample
* entry[+]
  * fullUrl = "https://[FD-endpunkt]/Condition/DiagnoseExample2"
  * resource = DiagnoseExample2
* entry[+]
  * fullUrl = "https://[FD-endpunkt]/Procedure/ProzedurExample"
  * resource = ProzedurExample
