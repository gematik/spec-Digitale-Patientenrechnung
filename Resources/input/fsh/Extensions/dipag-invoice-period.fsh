Extension: InvoicePeriod
Id: InvoicePeriod
Title: "Invoice.period als Backport aus R5"
Description: "Backport des Elements Invoice.period[x] aus FHIR R5 zur Angabe des Behandlungsdatums bzw. -zeitraums einer Rechnung."
Context: Invoice
* insert Meta(1.0.7)
* ^url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Invoice.period[x]"
* value[x] only date or Period
