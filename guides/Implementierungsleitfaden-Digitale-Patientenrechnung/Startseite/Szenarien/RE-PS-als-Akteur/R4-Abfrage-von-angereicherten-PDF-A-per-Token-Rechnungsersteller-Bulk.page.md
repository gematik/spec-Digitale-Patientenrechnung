---
expand: 2
topic: AF_10271-Bulk
---

## {{page-title}}

| |  |
|---------|---------------------|
| <img src="https://raw.githubusercontent.com/gematik/spec-Digitale-Patientenrechnung/master/Material/piktogramme/Betriebskoordination_Gruen_gematik.svg" alt="gematik logo" width="75"/> | **Feedback erbeten:** Diese Bulk-Operation war in einer früheren Version als **asynchrone** Verarbeitung (``Prefer: respond-async``, Bestätigung mit ``202 - Accepted`` und Polling über eine ``Content-Location``-URL) beschrieben. Aktuell wird sie vom FD ausschließlich **synchron** implementiert und ist daher hier auch synchron beschrieben. Die gematik bittet die Clienthersteller um Rückmeldung, ob für diese Schnittstelle eine synchrone oder eine asynchrone Ausgestaltung bevorzugt wird. |

Die nachfolgende Interaktion ist relevant für den FD als Server, sowie für das RE-PS als Client. Anwendungsfall AF_10271 MUSS durch den FD über die spezifizierte API umgesetzt werden. Die Vorgaben aus "Tabelle 17: Use Case Abfrage von angereicherten PDF/A per Token (Rechnungsersteller)" des Feature-Dokumentes MÜSSEN eingehalten werden durch den FD.

|||
|-|-|
|HTTP-Methode|POST|
|Endpunkt|/ (Root-Endpunkt)|

Für die Ausführung der Operation gelten die gleichen Vorgaben wie aus {{pagelink:AF_10136}}. Die Operation `$retrieve` kann für innerhalb eines Batch-Bundles mehrfach, auch für unterschiedliche Dokumente aufgerufen werden. Es gelten die entsprechenden Vorgaben aus der [FHIR-Kernspezifikation](https://www.hl7.org/fhir/r4/http.html#transaction).

### Synchrone Verarbeitung

Diese Interaktion wird vom FD synchron ausgeführt. Der FD verarbeitet das übermittelte ``batch``-Bundle unmittelbar und gibt das ``batch-response``-Bundle direkt im Body der Antwort mit dem HTTP-Status-Code ``200 - OK`` zurück.

|API-Zustand|HTTP-Status-Code|
|-|-|
|Erfolgsfall|`200 - OK`|
|Weitere Parameter in HTTP-Anfrage enthalten|`400 - Bad Request`|
|Syntax für Parameter ist nicht korrekt oder Kardinalitäten werden nicht eingehalten|`400 - Bad Request`|
|Kein valides Access-Token wird mitgesendet|`401 - Unauthorized`|
|Autorisierter Benutzer verfügt über keine ausreichende Berechtigung die Interaktion auszuführen|`403 - Forbidden`|
|Andere HTTP-Methode wird verwendet|`405 - Method Not Allowed`|

Das ``batch-response``-Bundle enthält die Ergebnisse entsprechend der Verarbeitung der einzelnen Dokumente nach AF_10271. Es ist zu beachten, dass der FD die Autorisierung für jedes Dokument gemäß den Vorgaben zu AF_10271 individuell prüfen MUSS.

### Beispiel

```
HTTP POST [fachdienst-endpunkt]/
```

<tabs>
    <tab title="Parameter-Input">      
        {{render:Resources/fsh-generated/resources/Bundle-BulkRetrieveExampleInput.json}}
    </tab>
    <tab title="XML">      
        {{xml:Resources/fsh-generated/resources/Bundle-BulkRetrieveExampleInput.json}}
    </tab>
    <tab title="JSON">
        {{json:Resources/fsh-generated/resources/Bundle-BulkRetrieveExampleInput.json}}
    </tab>
    <tab title="Link">
        {{link:Resources/fsh-generated/resources/Bundle-BulkRetrieveExampleInput.json}}
    </tab>
</tabs>

Antwort des Fachdienstes im Erfolgsfall:

```
HTTP 200 OK
```
mit Body:

<tabs>
    <tab title="Parameter-Input">      
        {{render:Resources/fsh-generated/resources/Bundle-BulkRetrieveExampleOutput.json}}
    </tab>
    <tab title="XML">      
        {{xml:Resources/fsh-generated/resources/Bundle-BulkRetrieveExampleOutput.json}}
    </tab>
    <tab title="JSON">
        {{json:Resources/fsh-generated/resources/Bundle-BulkRetrieveExampleOutput.json}}
    </tab>
    <tab title="Link">
        {{link:Resources/fsh-generated/resources/Bundle-BulkRetrieveExampleOutput.json}}
    </tab>
</tabs>

----
