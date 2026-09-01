---
topic: DiPagDokumentenmetadaten-MS
canonical: https://gematik.de/fhir/dipag/StructureDefinition/dipag-dokumentenmetadaten-eingang-patient
---

### Anmerkungen zu Must-Support-Feldern

Die Must-Support-Felder werden überwiegend durch das Basisprofil `DiPagDokumentenmetadatenEingangBase` festgelegt.

<fql>
from
	StructureDefinition
where 
    url = 'https://gematik.de/fhir/dipag/StructureDefinition/dipag-dokumentenmetadaten-eingang-base'
for differential.element
where mustSupport = true
select
	Feldname: id, Kurzbeschreibung: short, Hinweise: comment
</fql>

Ergänzend gelten die folgenden Festlegungen des Profils:

<fql>
from
	StructureDefinition
where 
    url = %canonical
for differential.element
where mustSupport = true
select
	Feldname: id, Kurzbeschreibung: short, Hinweise: comment
</fql>

