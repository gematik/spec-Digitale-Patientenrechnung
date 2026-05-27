ValueSet:  DiPagRechnungMarkierungVS
Id: dipag-rechnung-markierung-vs
Title: "Digitale Patientenrechnung Rechnung Markierung VS"
Description:  "ValueSet für die Differenzierung von verschiedenen Arten von Markierungen eines Dokumentes"
* insert Meta
* include codes from system DiPagRechnungMarkierungCS

ValueSet:  DiPagRechnungMarkierungOperationVS
Id: dipag-rechnung-markierung-operation-vs
Title: "Digitale Patientenrechnung Rechnung Markierung Operation VS"
Description:  "ValueSet für die Differenzierung von verschiedenen Arten von Markierungen eines Dokumentes, die im Rahmen der Operation 'ProcessFlag' verwendet werden können"
* insert Meta
* DiPagRechnungMarkierungCS#eingereicht-frontend "Eingereicht (per Frontend)"
* DiPagRechnungMarkierungCS#eingereicht-post "Eingereicht (per Post)"
* DiPagRechnungMarkierungCS#geteilt "Geteilt"
* DiPagRechnungMarkierungCS#gelesen "Gelesen"
* DiPagRechnungMarkierungCS#bezahlt "Bezahlt"
* DiPagRechnungMarkierungCS#archiviert "Archiviert"
* DiPagRechnungMarkierungCS#abgerufen "Abgerufen durch Kostenträger"



ValueSet:  DiPagDokumentArtDerArchivierungVS
Id: dipag-dokument-artderarchivierung-vs
Title: "Digitale Patientenrechnung Dokument ArtDerArchivierung VS"
Description:  "ValueSet für die Differenzierung von verschiedenen Arten von Markierungen eines Dokumentes"
* insert Meta
* include codes from system DiPagDokumentArtDerArchivierungCS