Profile: DiPagRechnungsBundle
Parent: Bundle
Id: dipag-rechnungsbundle
Title: "Digitale Patientenrechnung - Rechnungsinhalte Bundle"
Description: "Dieses Profil stellt das collection-Bundle dar, mit welchem die strukturierten Rechnungsinhalte zusammengefasst und als base64-kodiertes Binary in der DocumentReference referenziert werden."
* type 1.. MS
* type = #collection
* timestamp MS
* entry MS
* entry.resource MS //TODO Profile plus Beschreibung, dass nicht mehr Ressourcen drin sein dürfen, als in der Invoice referenziert sind.