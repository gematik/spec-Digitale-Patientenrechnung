Instance: dipag-markierung
InstanceOf: SearchParameter
Usage: #example
Title: "Suchparameter DocumentReference dipag-markierung"
Description: "Ein SearchParameter auf der Ressource DocumentReference, der die Suche nach einer manuellen Markierung ermöglicht."
* url = Canonical(dipag-markierung)
* name = "DiPagMakierung"
* status = #active
* publisher = "gematik GmbH"
* description = "Ein SearchParameter auf der Ressource DocumentReference, der die Suche nach einer manuellen Markierung ermöglicht."
* code = #dipag-markierung
* base = #DocumentReference
* type = #token
* expression = "DocumentReference.extension('https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsstatus').value"