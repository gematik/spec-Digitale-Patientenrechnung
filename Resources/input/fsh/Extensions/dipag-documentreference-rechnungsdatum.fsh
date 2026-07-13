Extension: DiPagDocumentReferenceRechnungsdatum
Id: dipag-documentreference-rechnungsdatum
Title: "Digitale Patientenrechnung DocumentReference Rechnungsdatum"
Description: "In dieser Extension wird das Rechnungsdatum an den Dokumentenmetadaten abgebildet. Es wird durch den Fachdienst aus den strukturierten Rechnungsinhalten extrahiert."
Context: DocumentReference
* insert Meta(1.0.7)
* value[x] only dateTime
* value[x] 1..1 MS