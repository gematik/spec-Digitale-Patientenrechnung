// ------------- Profile -------------

Profile: DiPagDokumentenmetadatenEingangPatient
Title: "Digitale Patientenrechnung Dokumentenmetadaten Eingang Patient"
Parent: DiPagDokumentenmetadatenEingangBase
Id: dipag-dokumentenmetadaten-eingang-patient
Description: "Profil für die Einreichung von Rechnungsdokumenten und Anhängen an Versicherte (Rechnungsempfänger:innen). Ergänzt das Basisprofil um die Markierung 'Persönlich' für Anhänge."
* insert Meta(1.2.0-beta)
* ^date = "2026-08-26"
* obeys MarkierungNurFuerAnhang
* meta.extension contains DiPagDocumentReferenceMarkierung named markierung 0..* MS
* meta.extension[markierung]
  * ^comment = "Beim Submit eines Anhang darf nur die Markierung 'Persönlich' gesetzt werden. Alle anderen Markierungen sind ausschließlich im Fachdienst zu setzen.
  Ein optionaler Freitext mit Details zur Markierung kann über die Extension 'details' angegeben werden."
  * extension[markierung] MS
    * valueCoding MS
    * valueCoding = #persoenlich
  * extension[details] MS
    * valueString MS
      * ^maxLength = 1024

// ------------- Constraints -------------

Invariant: MarkierungNurFuerAnhang
Description: "Die Markierung darf nur gesetzt sein, wenn das Dokument kein Rechnungsdokument (AM010106) ist."
Expression: "meta.extension.where(url = 'https://gematik.de/fhir/dipag/StructureDefinition/dipag-documentreference-markierung').exists() implies type.coding.where(system = 'http://dvmd.de/fhir/CodeSystem/kdl' and code = 'AM010106').exists().not()"
Severity: #error
