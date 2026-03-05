Instance: dipag-makierung
InstanceOf: SearchParameter
Usage: #example
Title: "Suchparameter DocumentReference dipag-makierung"
Description: "Ein SearchParameter auf der Ressource DocumentReference, der die Suche nach einer manuellen Markierung ermöglicht."
* url = Canonical(dipag-makierung)
* name = "DiPagMakierung"
* status = #active
* publisher = "gematik GmbH"
* description = "Ein SearchParameter auf der Ressource DocumentReference, der die Suche nach einer manuellen Markierung ermöglicht."
* code = #dipag-makierung
* base = #DocumentReference
* type = #token
* expression = "DocumentReference.extension('https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsstatus').value"