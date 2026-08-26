---
topic: DiPagDokumentenmetadaten-Profil
canonical: https://gematik.de/fhir/dipag/StructureDefinition/dipag-dokumentenmetadaten-eingang-patient
---
## {{link}}

<fql output="inline">
from
	StructureDefinition
where
	url = %canonical
select
	description
with
  no header
</fql>

Das Profil leitet vom Basisprofil `DiPagDokumentenmetadatenEingangBase` ab, welches die kontextübergreifenden Festlegungen enthält. Die Variante für die Einreichung an Kostenträger-Organisationen ist `DiPagDokumentenmetadatenEingangOrganisation`. Bis Version 1.1.1 trug das Profil die Canonical-URL `https://gematik.de/fhir/dipag/StructureDefinition/dipag-dokumentenmetadaten-eingang`.

### Metadaten

<fql output="transpose" headers="true">
from
	StructureDefinition
where
	url = %canonical
select
	Canonical: url, Status: status, Version: version, Basis: baseDefinition
</fql>

### Inhalt

<tabs>
  <tab title="Darstellung">{{tree, buttons}}</tab>
  <tab title="XML">{{xml}}</tab>
  <tab title="JSON">{{json}}</tab>
  <tab title="Link">{{link}}</tab>
</tabs>

### Constraints/Invarianten
<fql headers="true">
from 
    StructureDefinition 
where 
    url = %canonical 
for 
    differential.element.constraint 
select Name: key, Schweregrad: severity, Beschreibung: human, Ausdruck: expression
</fql>

### Terminology-Bindings
<fql headers="true">
from 
    StructureDefinition
where 
    url = %canonical
   
for 
    differential.element
    where 
        binding.exists()
    select
        Element: id, Staerke: binding.strength, ValueSet: binding.valueSet
</fql>

<!--### Mappings

<fql>
      from StructureDefinition
      where url = %canonical
      for differential.element 
      select
        'Ziel: DocumentReference': id,
        join mapping.where(identity = 'CompositionDocumentReferenceMapping')
          { 'Quelle: Document-Bundle': map, Hinweis: comment } 
</fql>-->
