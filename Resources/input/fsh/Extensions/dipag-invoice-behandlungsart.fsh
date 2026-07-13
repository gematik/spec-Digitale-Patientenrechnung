Extension: DiPagBehandlungsart
Id: dipag-behandlungsart
Title: "Digitale Patientenrechnung Extension Behandlungsart"
Description: "In dieser Extension wird die Behandlungsart einer Rechnung abgebildet, z. B. ambulant."
Context: Invoice, DocumentReference
* insert Meta(1.0.7)
* value[x] only Coding
* valueCoding from DiPagRechnungBehandlungsartVS