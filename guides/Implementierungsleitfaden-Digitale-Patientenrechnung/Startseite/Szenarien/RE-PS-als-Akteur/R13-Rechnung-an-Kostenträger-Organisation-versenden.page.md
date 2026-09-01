---
expand: 2
topic: AF_TBD_R13
---

## {{page-title}}

Die nachfolgende Interaktion ist relevant für den FD als Server, sowie für das RE-PS als Client.

|||
|-|-|
|HTTP-Methode|POST|
|Endpunkt|/Organization/[id-der-Organisation]/$invoice-submit|

Die Input- und Output-Parameter werden durch die OperationDefinition `https://gematik.de/fhir/dipag/OperationDefinition/SubmitOrganisation` beschrieben. Sie verwendet denselben Operation-Code (`invoice-submit`) wie die Einreichung an Versicherte ({{pagelink:AF_10136}}), wird jedoch auf dem Organization-Endpunkt aufgerufen. Die id der Organisation ist zuvor per {{pagelink:AF_TBD_R12}} zu ermitteln. Es MUSS die technische FHIR-id der Organization-Ressource verwendet werden, nicht die Telematik-ID.

{{render:https://gematik.de/fhir/dipag/OperationDefinition/SubmitOrganisation}}

|API-Zustand|HTTP-Status-Code|
|-|-|
|Erfolgsfall|`200 - OK`|
|Eine DocumentReferenz mit dem selben Hash existiert bereits|`409 - Conflict` Im OperationOutcome enthalten ist der Zeitpunkt, zu dem die Rechnung schon mal übertragen wurde sowie eine Referenz auf die ursprüngliche Response mit Rechnungstoken.|
|Weitere Parameter in HTTP-Anfrage enthalten|`400 - Bad Request`|
|Syntax für Parameter ist nicht korrekt oder Kardinalitäten werden nicht eingehalten|`400 - Bad Request`|
|Gravierende Fehler treten während der Validierung auf - Modus = 'normal'|`400 - Bad Request`|
|Der im Parameter `workflow` gewählte Workflowtyp wird von der Organisation nicht unterstützt|`400 - Bad Request`|
|Kein valides Access-Token wird mitgesendet|`401 - Unauthorized`|
|Autorisierter Benutzer verfügt über keine ausreichende Berechtigung die Interaktion auszuführen|`403 - Forbidden`|
|Organisation ist nicht (mehr) in der Konfiguration des FD enthalten|`404 - Not Found`|
|Andere HTTP-Methode wird verwendet|`405 - Method Not Allowed`|

### Abweichungen gegenüber dem Versand an Versicherte

Es gelten die Festlegungen aus {{pagelink:AF_10136}} (Dokumentenvalidierung, Hash-Bildung und Duplikatserkennung, Signatur, Position des Datamatrix-Codes, Verarbeitungsschritte im FD) mit folgenden Abweichungen:

* Die DocumentReference-Ressource im Part `dokument` MUSS dem Profil `https://gematik.de/fhir/dipag/StructureDefinition/dipag-dokumentenmetadaten-eingang-organisation` entsprechen. Markierungen werden im Kontext der an Organisationen übermittelten Rechnungen nicht unterstützt und sind daher im Profil nicht vorgesehen.

* Über den zusätzlichen Pflicht-Parameter `workflow` wählt das RE-PS den Workflowtyp der Einreichung aus. Es MUSS ein Workflowtyp der Einrichtungsadressierung gewählt werden, den die Ziel-Organisation unterstützt (Extension `workflowtyp` an der Organization-Ressource, vgl. {{pagelink:AF_TBD_R12}}); andernfalls MUSS der FD die Einreichung mit `400 - Bad Request` ablehnen. Die Beschreibung der einzelnen Workflowtypen ist im CodeSystem `DiPagWorkflowtypCS` hinterlegt.

* `DocumentReference.context.related` MUSS durch den FD auf die id der Organization gesetzt werden, an welche die Rechnung übermittelt wurde (`Reference.type = "Organization"`).

* `DocumentReference.meta.tag:dipag-rechnungsstatus` MUSS durch den FD auf "Übermittelt" gesetzt werden beim Empfang der Rechnung. Der Rechnungsworkflow für Organisationen kennt ausschließlich die Statuswerte "Übermittelt" und "Abgerufen"; ein manuelles Ändern des Status ist nicht vorgesehen. Zusätzlich MUSS der FD den im Parameter `workflow` gewählten Workflowtyp als `DocumentReference.meta.tag:dipag-workflowtyp` setzen.

* Nach der Verarbeitung im FD entsprechen die Dokumente dem Profil `https://gematik.de/fhir/dipag/StructureDefinition/dipag-dokumentenmetadaten-intern`. Der Rechnungsempfänger wird dabei über den Slice `context.related:empfaenger` (Referenz auf die Organization) abgebildet; Markierungen sind nicht vorhanden.

### Optional als Bulk

Mehrere Rechnungen können analog zu {{pagelink:AF_10136-Bulk}} als Batch eingereicht werden. In den Request-URLs ist hierbei der Organization-Endpunkt (`/Organization/[id-der-Organisation]/$invoice-submit`) zu verwenden.

<fql output="table" headers="true">
from
	StructureDefinition
where
	url = 'https://gematik.de/fhir/dipag/StructureDefinition/dipag-dokumentenmetadaten-eingang-organisation'
select
	Canonical: url, Status: status, Version: version, Basis: baseDefinition
</fql>

<br>

{{tree:https://gematik.de/fhir/dipag/StructureDefinition/dipag-dokumentenmetadaten-eingang-organisation, buttons}}

### Beispiele

<tabs>
    <tab title="DocumentReference">      
        {{render:Resources/fsh-generated/resources/DocumentReference-BeispielDocumentReferenceRechnungOrganisation-LE.json}}
    </tab>
    <tab title="XML">      
        {{xml:Resources/fsh-generated/resources/DocumentReference-BeispielDocumentReferenceRechnungOrganisation-LE.json}}
    </tab>
    <tab title="JSON">
        {{json:Resources/fsh-generated/resources/DocumentReference-BeispielDocumentReferenceRechnungOrganisation-LE.json}}
    </tab>
    <tab title="Link">
        {{link:Resources/fsh-generated/resources/DocumentReference-BeispielDocumentReferenceRechnungOrganisation-LE.json}}
    </tab>
</tabs>

```
HTTP POST [fachdienst-endpunkt]/Organization/[id-der-Organisation]/$invoice-submit
```

<tabs>
    <tab title="Parameters">      
        {{render:Resources/fsh-generated/resources/Parameters-BeispielParameterSubmitInputOrganisation-LE.json}}
    </tab>
    <tab title="XML">      
        {{xml:Resources/fsh-generated/resources/Parameters-BeispielParameterSubmitInputOrganisation-LE.json}}
    </tab>
    <tab title="JSON">
        {{json:Resources/fsh-generated/resources/Parameters-BeispielParameterSubmitInputOrganisation-LE.json}}
    </tab>
    <tab title="Link">
        {{link:Resources/fsh-generated/resources/Parameters-BeispielParameterSubmitInputOrganisation-LE.json}}
    </tab>
</tabs>

Antwort des Fachdienstes im Erfolgsfall:

```
HTTP 200 OK
```
mit Body:

<tabs>
    <tab title="Parameters">    
        {{render:Resources/fsh-generated/resources/Parameters-BeispielParameterSubmitOutputOrganisation-FD.json}}
    </tab>
    <tab title="XML">      
        {{xml:Resources/fsh-generated/resources/Parameters-BeispielParameterSubmitOutputOrganisation-FD.json}}
    </tab>
    <tab title="JSON">
        {{json:Resources/fsh-generated/resources/Parameters-BeispielParameterSubmitOutputOrganisation-FD.json}}
    </tab>
    <tab title="Link">
        {{link:Resources/fsh-generated/resources/Parameters-BeispielParameterSubmitOutputOrganisation-FD.json}}
    </tab>
</tabs>

----
