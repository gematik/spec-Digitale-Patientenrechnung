Extension: DiPagDocumentReferenceMarkierung
Id: dipag-documentreference-markierung
Title: "Digitale Patientenrechnung DocumentReference Markierung"
Context: DocumentReference.meta, Parameters.parameter.value[x]
* insert Meta(1.0.8)
* ^date = "2026-07-08"
* extension contains markierung 1..1
* extension contains zeitpunkt 0..1
* extension contains details 0..1
* extension contains artDerArchivierung 0..1
* extension contains kostentraeger 0..1

* extension[markierung].value[x] only Coding
* extension[markierung].value[x] 1..1
* extension[markierung].value[x] from DiPagRechnungMarkierungVS (required)

* extension[zeitpunkt].value[x] only dateTime
* extension[zeitpunkt].value[x] 1..1

* extension[details].value[x] only string
* extension[details].value[x] 1..1
* extension[details].valueString ^maxLength = 1024

* obeys artDerArchivierung
* extension[artDerArchivierung].value[x] only Coding
* extension[artDerArchivierung].value[x] from DiPagDokumentArtDerArchivierungVS (required)

* obeys kostentraeger
* extension[kostentraeger].value[x] only Reference
* extension[kostentraeger].value[x] 1..1
* extension[kostentraeger].valueReference.identifier only IdentifierTelematikId
* extension[kostentraeger].valueReference.display ^maxLength = 1024


Invariant: artDerArchivierung
* key = "DiPagDocumentReferenceMarkierung-1"
* severity = #error
* human = "Details zur Art der Archivierung können nur angegeben werden wenn die Markierung vom Typ 'Archiviert' ist"
* expression = "extension.where(url = 'artDerArchivierung').value.exists() implies extension.where(url = 'markierung').valueCoding.where(code = 'archiviert').exists()"

Invariant: kostentraeger
* key = "DiPagDocumentReferenceMarkierung-3"
* severity = #error
* human = "Details zu Status mit Kostenträger-Referenz können nur angegeben werden wenn die Markierung vom Typ 'eingereicht-frontend', eingereicht-post, 'geteilt' oder 'abgerufen' ist"
* expression = "extension.where(url = 'kostentraeger').value.exists() implies (extension.where(url = 'markierung').valueCoding.where(code = 'eingereicht-frontend').exists() or extension.where(url = 'markierung').valueCoding.where(code = 'eingereicht-post').exists() or extension.where(url = 'markierung').valueCoding.where(code = 'geteilt').exists() or extension.where(url = 'markierung').valueCoding.where(code = 'abgerufen').exists())"