// ------------- OperationDefinition -------------

Instance: DiPagOperationRetrieve
InstanceOf: OperationDefinition
Usage: #example
Title: "Digitale Patientenrechnung Operation Retrieve"
Description: "Abrufen von Digitalen Patientenrechnungen, strukturierten Rechnungsinhalten und Dokumenten"
* status = #active
* version = "1.0.0-CC"
* experimental = false
* date = "2024-06-20"
* url = "https://gematik.de/fhir/dipag/OperationDefinition/Retrieve"
* kind = #operation
* name = "Digitale PatientenrechnungRetrieve"
* code = #retrieve
* resource = #DocumentReference
* system = false
* type = true
* instance = false
* affectsState = false
* parameter[+]
  * name = #token
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Dokumenttoken zur Identifikation des Dokuments, welches abgerufen werden soll. Im Default wird nur die DocumentReference Ressource zurückgegeben. Durch die Angabe weiterer Parameter können zusätzlich das angereicherte PDF (bzw. der Anhang), die strukturierten Rechnungsinhalte und/oder die originale Rechnung mit Signatur zurückgegeben werden."
  * type = #string
* parameter[+]
  * name = #pdf
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Angabe, ob das angereicherte Rechnungsdokument oder der Anhang als PDF im Output enthalten sein soll. Default: false"
  * type = #boolean
* parameter[+]
  * name = #strukturierterRechnungsinhalt
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Angabe, ob die strukturierten Rechnungsinhalte neben dem angereicherten Rechnungsdokument als zusätzliche Binary Ressorce im Output enthalten sein sollen. Hat bei Anhängen keine Funktion. Default: false"
  * type = #boolean
* parameter[+]
  * name = #originaleRechnung
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Angabe ob die originale Rechnung inkl. Signatur neben dem angereicherten Rechnungsdokument als zusätzliche Binary Ressource im Output enthalten sein soll. Hat bei Anhängen keine Funktion. Default: false. 
  Die originale Rechnung ist nur vom FdV an das ITSys-KTR direkt weiterzugeben. Falls das Rechnungsdokument ausgedruckt werden sollte durch immer das angereicherte PDF inkl. Barcode zu verwenden."
  * type = #boolean
* parameter[+]
  * name = #dokument
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "DocumentReference-Ressource zum angefragten Dokumenttoken."
  * type = #DocumentReference
* parameter[+]
  * name = #dokument.pdf
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Binary-Ressource mit dem angereicherten PDF (inkl. Barcode) der Digitalen Patientenrechnung ODER dem angefragten Anhang (abhängig von der Art des angefragten Dokuments)."
  * type = #Binary
* parameter[+]
  * name = #dokument.strukturierteRechnungsinhalte
  * use = #out
  * min = 0
  * max = "1"
  * documentation = "Binary-Ressource mit den strukturierten Rechnungsinhalten der Digitalen Patientenrechnung (abhängig vom strukturierterRechnungsinhalt-Parameter)."
  * type = #Binary
* parameter[+]
  * name = #dokument.originaleRechnung
  * use = #out
  * min = 0
  * max = "1"
  * documentation = "Binary-Ressource mit der originalen Rechnung inkl. Signatur (abhängig vom originaleRechnung-Parameter)."
  * type = #Binary