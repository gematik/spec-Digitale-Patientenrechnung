---
expand: 2
topic: AF_TBD_R12
---

## {{page-title}}

Die nachfolgende Interaktion ist relevant für den FD als Server, sowie für das RE-PS als Client.

Der FD stellt eine Liste von Kostenträger-Organisationen bereit, die am direkten Rechnungsversand teilnehmen. Die Pflege dieser Liste (Anbindung neuer Kostenträger, Zuordnung der Telematik-ID zu den unterstützten Workflowtypen) erfolgt über einen Konfigurationsprozess des FD-Betreibers und ist nicht Teil dieses Leitfadens.

### Abfrage der Organisationen

|||
|-|-|
|HTTP-Methode|GET|
|Endpunkt|/Organization|

Die Abfrage erfolgt ohne Suchparameter. Der FD MUSS die vollständige Liste der konfigurierten Organisationen als [FHIR-SearchSet-Bundle](https://www.hl7.org/fhir/r4/bundle.html#searchset) zurückliefern.

|API-Zustand|HTTP-Status-Code|
|-|-|
|Erfolgsfall|`200 - OK`|
|Suchparameter in HTTP-Anfrage enthalten|`400 - Bad Request`|
|Kein valides Access-Token wird mitgesendet|`401 - Unauthorized`|
|Autorisierter Benutzer verfügt über keine ausreichende Berechtigung die Interaktion auszuführen|`403 - Forbidden`|
|Andere HTTP-Methode wird verwendet|`405 - Method Not Allowed`|

### Beispiele

```
HTTP GET [fachdienst-endpunkt]/Organization
```

Antwort des Endpunktes im Erfolgsfall:

```
HTTP 200 OK
```
mit Body:

<tabs>
    <tab title="Organization">      
        {{render:Resources/fsh-generated/resources/Bundle-OrganisationenBundle.json}}
    </tab>
    <tab title="XML">      
        {{xml:Resources/fsh-generated/resources/Bundle-OrganisationenBundle.json}}
    </tab>
    <tab title="JSON">
        {{json:Resources/fsh-generated/resources/Bundle-OrganisationenBundle.json}}
    </tab>
    <tab title="Link">
        {{link:Resources/fsh-generated/resources/Bundle-OrganisationenBundle.json}}
    </tab>
</tabs>

Es MUSS durch den FD sichergestellt werden, dass die zurückgegebenen Organization-Ressourcen eine stabile id besitzen. Diese id wird für den Aufruf der `$invoice-submit`-Operation verwendet (vgl. {{pagelink:AF_TBD_R13}}).

Die zurückgegebene Organization-Ressource MUSS valide gegen das Profil `DiPagOrganisationRechnungsempfaenger` sein.

An jeder Organisation ist über die Extension `workflowtyp` angegeben, welche Workflowtypen sie für den Rechnungsversand unterstützt. Das RE-PS wählt beim Versand einen dieser Workflowtypen aus und übergibt ihn im Parameter `workflow` der `$invoice-submit`-Operation (vgl. {{pagelink:AF_TBD_R13}}). Die Beschreibung der einzelnen Workflowtypen ist im CodeSystem `DiPagWorkflowtypCS` hinterlegt.

<fql output="table" headers="true">
from
	StructureDefinition
where
	url = 'https://gematik.de/fhir/dipag/StructureDefinition/dipag-organisation-rechnungsempfaenger'
select
	Canonical: url, Status: status, Version: version, Basis: baseDefinition
</fql>

<br>

{{tree:https://gematik.de/fhir/dipag/StructureDefinition/dipag-organisation-rechnungsempfaenger, buttons}}

<br>

Folgende Implementierungshinweise sind zu beachten:

<fql output="table" headers="false">
from StructureDefinition where url = 'https://gematik.de/fhir/dipag/StructureDefinition/dipag-organisation-rechnungsempfaenger' for differential.element where comment.exists() select path, comment
</fql>

----
