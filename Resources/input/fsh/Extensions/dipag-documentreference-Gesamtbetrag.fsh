Extension: DiPagDocumentReferenceGesamtbetrag
Id: dipag-documentreference-gesamtbetrag
Title: "Digitale Patientenrechnung DocumentReference Gesamtbetrag"
Description: "In dieser Extension wird der Gesamtbetrag der Rechnung an den Dokumentenmetadaten abgebildet. Er wird durch den Fachdienst aus den strukturierten Rechnungsinhalten extrahiert."
Context: DocumentReference
* insert Meta(1.0.7)
* value[x] only Money
* value[x] 1..1 MS