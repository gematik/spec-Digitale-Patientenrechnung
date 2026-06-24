---
expand: 2
topic: AF_10160
---

## {{page-title}}

| |  |
|---------|---------------------|
| <img src="https://raw.githubusercontent.com/gematik/spec-Digitale-Patientenrechnung/master/Material/piktogramme/Betriebskoordination_Gruen_gematik.svg" alt="gematik logo" width="75"/> | **Feedback erbeten:** Zu dieser Markierungs-Operation wird ausdrücklich um Feedback gebeten. |

Die nachfolgende Interaktion ist relevant für den FD als Server, sowie für das DiPag FdV als Client. Anwendungsfall AF_10160 MUSS durch den FD über die spezifizierte API umgesetzt werden. Die Vorgaben aus "Tabelle 24: Use Case Manuelles Markieren von Rechnungen und Dokumenten" des Feature-Dokumentes MÜSSEN eingehalten werden durch den FD.

|||
|-|-|
|HTTP-Methode|POST|
|Endpunkt|/DocumentReference/[id]/$process-flag|

|API-Zustand|HTTP-Status-Code|
|-|-|
|Erfolgsfall|`200 - OK`|
|Weitere Parameter in HTTP-Anfrage enthalten|`400 - Bad Request`|
|Syntax für Parameter ist nicht korrekt oder Kardinalitäten werden nicht eingehalten|`400 - Bad Request`|
|Kein valides Access-Token wird mitgesendet|`401 - Unauthorized`|
|Autorisierter Benutzer verfügt über keine ausreichende Berechtigung die Interaktion auszuführen|`403 - Forbidden`|
|Fehlende Berechtigung für den Rechnungsempfänger die Dokumentenmarkierung zu verändern|`404 - Not Found`|
|Operation wird auf nicht existierender DocumentReference-Ressource aufgerufen|`404 - Not Found`|
|Andere HTTP-Methode wird verwendet|`405 - Method Not Allowed`|

Die Input- und Output-Parameter werden durch die OperationDefinition `https://gematik.de/fhir/dipag/OperationDefinition/ProcessFlag` beschrieben.

{{render:https://gematik.de/fhir/dipag/OperationDefinition/ProcessFlag}}

### Beispiele

```
HTTP POST [fachdienst-endpunkt]/DocumentReference/[id]/$process-flag
```

<tabs>
    <tab title="Parameter-Input">      
        {{render:Resources/fsh-generated/resources/Parameters-BeispielParameterProcessFlagInput.json}}
    </tab>
    <tab title="XML">      
        {{xml:Resources/fsh-generated/resources/Parameters-BeispielParameterProcessFlagInput.json}}
    </tab>
    <tab title="JSON">
        {{json:Resources/fsh-generated/resources/Parameters-BeispielParameterProcessFlagInput.json}}
    </tab>
    <tab title="Link">
        {{link:Resources/fsh-generated/resources/Parameters-BeispielParameterProcessFlagInput.json}}
    </tab>
</tabs>

Antwort des Fachdienstes im Erfolgsfall:

```
HTTP 200 OK
```
mit Body:

<tabs>
    <tab title="Parameter-Input">      
        {{render:Resources/fsh-generated/resources/Parameters-BeispielParameterProcessFlagOutput.json}}
    </tab>
    <tab title="XML">      
        {{xml:Resources/fsh-generated/resources/Parameters-BeispielParameterProcessFlagOutput.json}}
    </tab>
    <tab title="JSON">
        {{json:Resources/fsh-generated/resources/Parameters-BeispielParameterProcessFlagOutput.json}}
    </tab>
    <tab title="Link">
        {{link:Resources/fsh-generated/resources/Parameters-BeispielParameterProcessFlagOutput.json}}
    </tab>
</tabs>

### Verarbeitungsschritte im FD

* Der FD MUSS anhand der übergebenen Parameter die Extension 'DiPagDocumentReferenceMarkierung' auf der DokumentReference erstellen und aktualisieren.

----