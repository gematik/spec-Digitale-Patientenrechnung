---
expand: 2
topic: AF_10136-Bulk
---

## {{page-title}}

Die nachfolgende Interaktion ist relevant für den FD als Server, sowie für das RE-PS als Client. Anwendungsfall AF_10136 MUSS durch den FD über die spezifizierte API umgesetzt werden. Die Vorgaben aus "Tabelle 15: Use Case Rechnung mit Dokumenten validieren und versenden" des Feature-Dokumentes MÜSSEN eingehalten werden durch den FD.

|||
|-|-|
|HTTP-Methode|POST|
|Endpunkt|/ (Root-Endpunkt)|

Für die Ausführung der Operation gelten die gleichen Vorgaben wie aus {{pagelink:AF_10136}}. Die Operation `$submit` kann für innerhalb eines Batch-Bundles mehrfach, auch für unterschiedliche Dokumente aufgerufen werden. Es gelten die entsprechenden Vorgaben aus der [FHIR-Kernspezifikation](https://www.hl7.org/fhir/r4/http.html#transaction).

### Asynchrone Verarbeitung

Diese Interaktion ist aufgrund potenziell großer Datenmengen asynchron vom FD auszuführen. 
Dies MUSS der Client mittels eines ``Prefer: respond-async``-Headers nach [RFC7240](https://tools.ietf.org/html/rfc7240#section-4.1) dem FD signalisieren.

|API-Zustand|HTTP-Status-Code|
|-|-|
|Erfolgsfall|`202 - Accepted`|
|Weitere Parameter in HTTP-Anfrage enthalten|`400 - Bad Request`|
|Syntax für Parameter ist nicht korrekt oder Kardinalitäten werden nicht eingehalten|`400 - Bad Request`|
|Kein valides Access-Token wird mitgesendet|`401 - Unauthorized`|
|Autorisierter Benutzer verfügt über keine ausreichende Berechtigung die Interaktion auszuführen|`403 - Forbidden`|
|Andere HTTP-Methode wird verwendet|`405 - Method Not Allowed`|

In einem ``Location``-Header MUSS der FD dem RE-PS eine absolute URL mitteilen unter welcher das RE-PS per Polling prüfen kann, ob die Interaktion abgeschlossen wurde und entsprechende Rückgabewerte seitens der ``$retrieve``-Operation vorliegen. Der Aufbau der ``Location``-URL MUSS aus kryptografisch zufälligen Teilen bestehen, sodass der Aufbau nicht deterministisch ermittelt oder erraten werden kann. Der Server SOLLTE RE-PS-Clients mit einem HTTP-Status-Code ``429 Too Many Requests`` abweisen, falls nach dem Ermessen des FDs die ``Location``-URL zu häufig geprüft wird. Der FD SOLLTE einen [Retry-After](https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/Retry-After)-Header entsprechend den Vorgaben aus der [FHIR-Kernspezifikation](https://www.hl7.org/fhir/R4/async.html#3.1.6.4) verwenden.

Nach der Verarbeitung des ``batch``-Bundles MUSS der FD das ``batch-response``-Bundle unter der ``Location``-URL bereitstellen, welches die Ergebnisse entsprechnd der Verarbeitung der einzelnen Dokumente nach AF_10271 enthält. Es ist zu beachten, dass der FD die Autorisierung für jedes Dokument gemäß den Vorgaben zu AF_10271 individuell prüfen MUSS. Der FD MUSS sicherstellen, dass das ``batch-response``-Bundle nur einem validen Access-Token abgerufen werden kann.

### Beispiel

```
HTTP POST [fachdienst-endpunkt]/
```

<tabs>
    <tab title="Parameter-Input">      
        {{render:Resources/fsh-generated/resources/Bundle-BulkSubmitExample.json}}
    </tab>
    <tab title="XML">      
        {{xml:Resources/fsh-generated/resources/Bundle-BulkSubmitExample.json}}
    </tab>
    <tab title="JSON">
        {{json:Resources/fsh-generated/resources/Bundle-BulkSubmitExample.json}}
    </tab>
    <tab title="Link">
        {{link:Resources/fsh-generated/resources/Bundle-BulkSubmitExample.json}}
    </tab>
</tabs>

Antwort des Fachdienstes nach der Verarbeitung des ``batch``-Bundles:

```
HTTP 200 OK
```
mit Body:

<tabs>
    <tab title="Parameter-Input">      
        {{render:Resources/fsh-generated/resources/Bundle-BulkSubmitExampleOutput.json}}
    </tab>
    <tab title="XML">      
        {{xml:Resources/fsh-generated/resources/Bundle-BulkSubmitExampleOutput.json}}
    </tab>
    <tab title="JSON">
        {{json:Resources/fsh-generated/resources/Bundle-BulkSubmitExampleOutput.json}}
    </tab>
    <tab title="Link">
        {{link:Resources/fsh-generated/resources/Bundle-BulkSubmitExampleOutput.json}}
    </tab>
</tabs>

----