Extension: DiPagDocumentReferenceMarkierung
Id: dipag-documentreference-markierung
Title: "Digitale Patientenrechnung DocumentReference Markierung"
Context: DocumentReference.meta, Parameters.parameter.value[x]
* insert Meta
* extension contains markierung 1..1
* extension contains zeitpunkt 0..1
* extension contains details 0..1
* extension contains gelesen 0..1
* extension contains artDerArchivierung 0..1
* extension contains kostentraeger 0..1

* extension[markierung].value[x] only Coding
* extension[markierung].value[x] 1..1
* extension[markierung].value[x] from DiPagRechnungMarkierungVS (required)

* extension[zeitpunkt].value[x] only dateTime
* extension[zeitpunkt].value[x] 1..1

* extension[details].value[x] only string
* extension[details].value[x] 1..1

* obeys gelesen
* extension[gelesen].value[x] only boolean
* extension[gelesen].value[x] 1..1

* obeys artDerArchivierung
* extension[artDerArchivierung].value[x] only Coding
* extension[artDerArchivierung].value[x] from DiPagDokumentArtDerArchivierungVS (required)

* obeys kostentraeger
* extension[kostentraeger].value[x] only Reference
* extension[kostentraeger].value[x] 1..1


Invariant: artDerArchivierung
* key = "DiPagDocumentReferenceMarkierung-1"
* severity = #error
* human = "Details zur Art der Archivierung können nur angegeben werden wenn die Markierung vom Typ 'Archiviert' ist"
* expression = "extension.where(url = 'artDerArchivierung').value.exists() implies extension.where(url = 'markierung').valueCoding.where(code = 'archiviert').exists()"

Invariant: gelesen
* key = "DiPagDocumentReferenceMarkierung-2"
* severity = #error
* human = "Details zum Gelesen-Status können nur angegeben werden wenn die Markierung vom Typ 'Gelesen' ist"
* expression = "extension.where(url = 'gelesen').value.exists() implies extension.where(url = 'markierung').valueCoding.where(code = 'gelesen').exists()"

Invariant: kostentraeger
* key = "DiPagDocumentReferenceMarkierung-3"
* severity = #error
* human = "Details zu Status mit Kostenträger-Referenz können nur angegeben werden wenn die Markierung vom Typ 'eingereicht-frontend', eingereicht-post, 'geteilt' oder 'abgerufen' ist"
* expression = "extension.where(url = 'kostentraeger').value.exists() implies (extension.where(url = 'markierung').valueCoding.where(code = 'eingereicht-frontend').exists() or extension.where(url = 'markierung').valueCoding.where(code = 'eingereicht-post').exists() or extension.where(url = 'markierung').valueCoding.where(code = 'geteilt').exists() or extension.where(url = 'markierung').valueCoding.where(code = 'abgerufen').exists())"