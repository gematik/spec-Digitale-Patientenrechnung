Extension: DiPagBankverbindung
Id: DiPagBankverbindung
Title: "Digitale Patientenrechnung Bankverbindung Extension - Die Extension wird gerade vom TC FHIR DE erarbeitet und ist nur übergangsweise in diesem Projekt enthalten. Sobald die Extension fertiggestellt ist, wird sie hier referenziert und die Definition aus diesem Projekt entfernt."
Context: Invoice.paymentTerms
* insert Meta
* extension contains
    Kontoinhaber ..1 and
    IBAN ..1 and
    BIC 0..1
* extension[Kontoinhaber].value[x] only string
* extension[Kontoinhaber].value[x] ^maxLength = 200
* extension[IBAN].value[x] only string
* extension[IBAN].value[x] ^maxLength = 22
* extension[BIC].value[x] only string
* extension[BIC].value[x] ^maxLength = 11

Extension: DiPagBankname
Id: DiPagBankname
Title: "Digitale Patientenrechnung Bankname Extension"
Context: Invoice.paymentTerms
* value[x] only string
* value[x] ^maxLength = 200

Extension: DiPagVerwendungszweck
Id: DiPagVerwendungszweck
Title: "Digitale Patientenrechnung Verwendungszweck Extension"
Context: Invoice.paymentTerms
* value[x] only string

Extension: DiPagZahlungsziel
Id: dipag-zahlungsziel
Title: "Digitale Patientenrechnung Zahlungsziel"
* insert Meta
* value[x] only date