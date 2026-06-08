CodeSystem:  DiPagRechnungMarkierungCS
Id: dipag-rechnung-markierung-cs
Title: "Digitale Patientenrechnung Rechnung Markierung CS"
Description:  "CodeSystem für die Differenzierung von verschiedenen Arten von Markierungen eines Dokumentes"
* insert Meta
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* #eingereicht-frontend "Eingereicht (per Frontend)" "Bei Einreichung durch Versicherten"
* #eingereicht-post "Eingereicht (per Post)" "Bei Postversand durch Versicherten"
* #geteilt "Geteilt" "Bei Teilen durch den Versicherten"
* #abgerufen "Abgerufen durch Kostenträger" "Bei Abruf eines Dokuments/einer Rechnung durch den Kostenträger, durch den Fachdienst"
* #gelesen "Gelesen" "Beim Einsehen von Rechnungen oder Dokumenten durch den Versicherten im DiPag FdV"
* #bezahlt "Bezahlt" "Bei Zahlung durch den Versicherten"
* #archiviert "Archiviert" "Bei Archivierung durch den Versicherten"
* #persoenlich "Persönlich" "Durch den Rechnungsersteller bei Versenden von Dokumenten, die ausschließlich nur persönlich an den Versicherten gerichtet sind."

CodeSystem:  DiPagDokumentArtDerArchivierungCS
Id: dipag-dokument-artderarchivierung-cs
Title: "Digitale Patientenrechnung Dokument ArtDerArchivierung CS"
Description:  "CodeSystem für die Differenzierung von verschiedenen Arten von Markierungen eines Dokumentes"
* insert Meta
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* #epa "ePA"
* #persoenlich "Persönliche Ablage"