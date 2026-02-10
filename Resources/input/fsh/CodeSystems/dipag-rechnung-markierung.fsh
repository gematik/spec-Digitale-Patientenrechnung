CodeSystem:  DiPagRechnungMarkierungCS
Id: dipag-rechnung-markierung-cs
Title: "Digitale Patientenrechnung Rechnung Markierung CS"
Description:  "CodeSystem für die Differenzierung von verschiedenen Arten von Markierungen eines Dokumentes"
* insert Meta
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* #eingereicht-frontend "Eingereicht (per Frontend)"
* #eingereicht-post "Eingereicht (per Post)"
* #geteilt "Geteilt"
* #abgerufen "Abgerufen durch Kostenträger"
* #gelesen "Gelesen"
* #bezahlt "Bezahlt"
* #archiviert "Archiviert"
* #persoenlich "Persönlich"

CodeSystem:  DiPagDokumentArtDerArchivierungCS
Id: dipag-dokument-artderarchivierung-cs
Title: "Digitale Patientenrechnung Dokument ArtDerArchivierung CS"
Description:  "CodeSystem für die Differenzierung von verschiedenen Arten von Markierungen eines Dokumentes"
* insert Meta
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* #epa "ePA"
* #persoenlich "Persönliche Ablage"