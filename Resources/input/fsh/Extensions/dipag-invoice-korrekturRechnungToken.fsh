Extension: DiPagTokenStornierteRechnung
Id: DiPagTokenStornierteRechnung
Title: "Digitale Patientenrechnung Token der stornierten Rechnung"
Description: "In dieser Extension wird bei einer Korrekturrechnung das Rechnungs-Token der stornierten bzw. ersetzten Rechnung abgebildet."
Context: Invoice
* insert Meta(1.0.7)
* value[x] only Identifier
* valueIdentifier.system = $token