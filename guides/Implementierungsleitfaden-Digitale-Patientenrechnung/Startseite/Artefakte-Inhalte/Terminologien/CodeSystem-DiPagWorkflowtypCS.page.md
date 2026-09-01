---
topic: DiPagWorkflowtypCS
canonical: https://gematik.de/fhir/dipag/CodeSystem/dipag-workflowtyp-cs
---

## {{link}}

<fql output="inline">
from
	CodeSystem
where
	url = %canonical
select
	description
with
  no header
</fql>

### Metadaten

<fql output="transpose" headers="true">
from
	CodeSystem
where
	url = %canonical
select
	Beschreibung: description, CanonicalURL: url, Status: status, Version: version, Herausgeber: publisher
</fql>

### Inhalt

Das CodeSystem ist zweistufig aufgebaut: Die oberste Ebene unterscheidet die Adressierung der Rechnung, darunter hängen die konkreten Workflowtypen.

<tabs>
    <tab title="Darstellung">

#### Adressierung (oberste Ebene)

<fql>
from
	CodeSystem
where
	url = %canonical
for concept
select
	Code: code, Anzeigetext: display, Definition: definition
</fql>

#### Workflowtypen (zweite Ebene)

<fql>
from
	CodeSystem
where
	url = %canonical
for concept.concept
select
	Code: code, Anzeigetext: display, Definition: definition
</fql>

    </tab>
    <tab title="XML">      
        {{xml}}
    </tab>
    <tab title="JSON">
        {{json}}
    </tab>
    <tab title="Link">
        {{link}}
    </tab>
</tabs>
