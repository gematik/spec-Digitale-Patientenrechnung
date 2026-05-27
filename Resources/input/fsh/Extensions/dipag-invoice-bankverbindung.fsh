// Diese Extension basiert auf dem DRAFT der HL7 Financial Management Working Group (FM WG)
// für die Standard-Extension 'PaymentTo'. Die HL7 FM WG wird diese Extension im offiziellen
// HL7 Extension Package veröffentlichen. Die Nutzung dieser Extension ist daher ausschließlich
// im Rahmen des PoC vorgesehen und wird sich mit der Fertigstellung der offiziellen
// HL7-Standard-Extension ändern.
Extension: DiPagPaymentTo
Id: DiPagPaymentTo
Title: "DiPag PaymentTo Extension (PoC – basiert auf HL7 FM WG Draft)"
Description: """Diese Extension basiert auf dem **DRAFT** der HL7 Financial Management Working Group (FM WG) für die Standard-Extension *PaymentTo*.

Die Struktur entspricht dem aktuellen Entwurf der FM WG:

- **paymentType**: Art der Zahlungsverbindung (z. B. IBAN, SWIFT, Kontonummer)
- **account**: Kontonummer / IBAN
- **bank**: Name der Bank
- **branch**: Bankleitzahl / BIC
- **reference**: Verwendungszweck (typischerweise die Rechnungsnummer)
- **accountHolderName**: Name des Kontoinhabers (PoC-spezifische Ergänzung, im HL7-Draft noch nicht enthalten)
- **contact**: Kontaktdaten des Zahlungsempfängers
- **notes**: Weitere Hinweise zur Zahlung

**Hinweis zur Nutzung:** Die HL7 FM WG wird diese Extension im offiziellen HL7 Extension Package veröffentlichen. Die Verwendung dieser Extension ist daher **ausschließlich im Rahmen dieses PoC** vorgesehen und wird sich mit der Fertigstellung der offiziellen HL7-Standard-Extension ändern."""
Context: Invoice.paymentTerms
* insert Meta
* extension contains
    paymentType 0..1 and
    account 0..1 and
    bank 0..1 and
    branch 0..1 and
    reference 0..1 and
    accountHolderName 0..1 and
    contact 0..1 and
    notes 0..1
* extension[paymentType]
  * ^short = "Art der Zahlungsverbindung"
  * ^comment = "Gibt die Art der Zahlungsverbindung an, z. B. IBAN, SWIFT, Kontonummer."
  * value[x] only CodeableConcept
* extension[account]
  * ^short = "Kontonummer / IBAN"
  * ^comment = "Die Kontonummer, z. B. die IBAN für SEPA-Überweisungen oder eine andere Kontokennung."
  * value[x] only string
* extension[bank]
  * ^short = "Name der Bank"
  * ^comment = "Der Name der Bank / des Kreditinstituts."
  * value[x] only string
* extension[branch]
  * ^short = "Bankleitzahl / BIC / Routing-Code"
  * ^comment = "Bankleitzahl, BIC (Business Identifier Code) oder ein anderer Routing-Code des Kreditinstituts."
  * value[x] only string
* extension[reference]
  * ^short = "Verwendungszweck / Referenz"
  * ^comment = "Verwendungszweck der Zahlung, typischerweise die Rechnungsnummer."
  * value[x] only string
* extension[accountHolderName]
  * ^short = "Name of the account holder"
  * ^comment = "Name des Kontoinhabers. PoC-spezifische Ergänzung – im aktuellen HL7-FM-WG-Draft noch nicht vorgesehen. Die Abbildung kann sich mit der Veröffentlichung der offiziellen HL7-Standard-Extension ändern."
  * value[x] only string
* extension[contact]
  * ^short = "Kontaktdaten des Zahlungsempfängers"
  * ^comment = "Kontaktdaten des Zahlungsempfängers, z. B. Telefonnummer oder E-Mail."
  * value[x] only ContactPoint
* extension[notes]
  * ^short = "Hinweise zur Zahlung"
  * ^comment = "Weitere Hinweise zur Zahlung in Markdown-Format."
  * value[x] only markdown

Extension: DiPagZahlungsziel
Id: dipag-zahlungsziel
Title: "Digitale Patientenrechnung Zahlungsziel"
Context: Invoice.paymentTerms, DocumentReference
* insert Meta
* value[x] only date
