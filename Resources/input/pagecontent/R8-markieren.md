# R8: Manuelles Markieren von Rechnungen und Dokumenten

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

Siehe [OperationDefinition $process-flag](OperationDefinition-DiPagOperationProcessFlag.html).

### Beispiele

```
HTTP GET [fachdienst-endpunkt]/DocumentReference/[id]/$process-flag
```

[Parameters-BeispielParameterProcessFlagInput](Parameters-BeispielParameterProcessFlagInput.html)

Antwort des Fachdienstes im Erfolgsfall:

```
HTTP 200 OK
```
mit Body:

[Parameters-BeispielParameterProcessFlagOutput](Parameters-BeispielParameterProcessFlagOutput.html)

### Verarbeitungsschritte im FD

* Falls während eines Aufrufs der FD feststellt, dass das DiPag FdV versucht eine Markierung hinzuzufügen die bereits existiert, so ist diese Markierung zu ignorieren. `HTTP 200 - OK` wird in diesem Fall zurückgegeben.

* Der FD MUSS anhand der übergebenen Parameter die Extension 'DiPagDocumentReferenceMarkierung' auf der DokumentReference erstellen und aktualisieren.

