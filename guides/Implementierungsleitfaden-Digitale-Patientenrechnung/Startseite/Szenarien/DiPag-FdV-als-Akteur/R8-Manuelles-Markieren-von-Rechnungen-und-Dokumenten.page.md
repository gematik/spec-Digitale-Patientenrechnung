---
expand: 2
topic: AF_10160
---

## {{page-title}}

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

* Die Operation folgt dem **Complete-Replacement-Prinzip**: Der übermittelte Markierungssatz ersetzt den bisherigen Markierungssatz des Dokuments vollständig. Markierungen, die nicht im Request enthalten sind, werden entfernt. Der Request MUSS daher stets alle weiterhin gültigen Markierungen inklusive ihrer jeweiligen Zusatzinformationen vollständig enthalten.

* Wird kein `markierung`-Parameter übergeben (leerer Markierungssatz), MUSS der FD alle änderbaren Markierungen des Dokuments entfernen. Da `$process-flag` der einzige Endpunkt zur Pflege der Markierungen ist, wird hierüber auch das vollständige Löschen der Markierungen unterstützt.

* Die Markierungen `persönlich` und `abgerufen durch KTR` können über diese Operation weder gesetzt noch entfernt werden; übermittelte Werte dieser Markierungen werden ignoriert und bleiben von der Ersetzung bzw. Löschung unberührt.

* Der FD MUSS anhand der übergebenen Parameter die Extension `DiPagDocumentReferenceMarkierung` im Meta-Element der DocumentReference entsprechend erstellen, aktualisieren und entfernen.

----