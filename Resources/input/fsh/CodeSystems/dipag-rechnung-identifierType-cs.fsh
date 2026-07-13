CodeSystem: DiPagRechnungIdentifierTypeCS
Id: dipag-rechnung-identifier-type-cs
Title: "Digitale Patientenrechnung Rechnung Identifier Type CS"
Description: "CodeSystem für die verschiedenen Identifier-Typen der Digitalen Patientenrechnung (Rechnungsnummer, Antragsreferenz, Anhangsidentifikator, USt-ID-Nr)"
* insert Meta(1.0.8)
* ^date = "2026-07-08"
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* #invoice "Rechnungsnummer"
* #antragsreferenz "Antragsreferenz"
* #anhang "Anhangsidentifikator"
* #ustid "Umsatzsteuer-ID Nummer (USt-ID-Nr)" "Hinweis: Es gibt keinen passenden offiziellen Type-Code für die Umsatzsteuer-ID Nummer (USt-ID-Nr). Daher wurde dieser Code mit einem allgemeinen Namen versehen. Es ist zu beachten, dass der System-Teil des Identifier bei Verwendung dieses Codes nicht befüllt werden soll, da es kein offizielles FHIR-NamingSystem für die USt-ID gibt.
Hier kann es in Zukunft zu Anpassungen kommen."