// ------------- OperationDefinition -------------

Instance: DiPagOperationErase
InstanceOf: OperationDefinition
Usage: #example
Title: "Digitale Patientenrechnung Operation Erase"
Description: "Permanente Löschung eines Dokumentes"
* url = "https://gematik.de/fhir/dipag/OperationDefinition/Erase"
* status = #active
* version = "1.0.0-CC"
* experimental = false
* date = "2024-06-20"
* kind = #operation
* name = "DiPagErase"
* code = #erase
* resource = #DocumentReference
* system = false
* type = false
* instance = true
* affectsState = true
* documentation = "Gelöscht werden können nur DocumentReference-Ressourcen, die als KDL-type = 'AM010106' (Rechnungsdokument) gekennzeichnet sind. Es werden alle zugehörigen Anhang-Dokument (KDL-type != 'AM010106') mit gelöscht. Es erfolgt eine permanente Löschung der Ressourcen, d.h. die Ressourcen sind nach der Operation nicht mehr auffindbar und es werden keine Historie oder Versionen der Ressourcen angelegt."