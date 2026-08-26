---
topic: DiPagDokumentenmetadatenEingangOrganisation-MS
canonical: https://gematik.de/fhir/dipag/StructureDefinition/dipag-dokumentenmetadaten-eingang-organisation
---

### Anmerkungen zu Must-Support-Feldern

Die Must-Support-Felder werden durch das Basisprofil `DiPagDokumentenmetadatenEingangBase` festgelegt.

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
