# R7: Manuelles Ändern des Bearbeitungsstatus von Rechnungen

Die nachfolgende Interaktion ist relevant für den FD als Server, sowie für das DiPag FdV als Client. Anwendungsfall AF_10245 MUSS durch den FD über die spezifizierte API umgesetzt werden. Die Vorgaben aus "Tabelle 22: Use Case Manuelles Ändern des Bearbeitungsstatus von Rechnungen" des Feature-Dokumentes MÜSSEN eingehalten werden durch den FD.

|||
|-|-|
|HTTP-Methode|POST|
|Endpunkt|/DocumentReference/[id]/$change-status|

|API-Zustand|HTTP-Status-Code|
|-|-|
|Erfolgsfall|`200 - OK`|
|Weitere Parameter in HTTP-Anfrage enthalten|`400 - Bad Request`|
|Syntax für Parameter ist nicht korrekt oder Kardinalitäten werden nicht eingehalten|`400 - Bad Request`|
|Kein valides Access-Token wird mitgesendet|`401 - Unauthorized`|
|Autorisierter Benutzer verfügt über keine ausreichende Berechtigung die Interaktion auszuführen|`403 - Forbidden`|
|Fehlende Berechtigung für den Rechnungsempfänger den Dokumentenstatus zu verändern|`404 - Not Found`|
|Operation wird auf nicht existierender DocumentReference-Ressource aufgerufen|`404 - Not Found`|
|Andere HTTP-Methode wird verwendet|`405 - Method Not Allowed`|
|Unerlaubter Statusübergang wird versucht auszuführen|`412 - Precondition Failed`|
|Statusübergang wird auf einer DocumentReference die einen Anhang repräsentiert aufgerufen|`412 - Precondition Failed`|

Die Input- und Output-Parameter werden durch die OperationDefinition `https://gematik.de/fhir/dipag/OperationDefinition/ChangeStatus` beschrieben.

Siehe [OperationDefinition $change-status](OperationDefinition-DiPagOperationChangeStatus.html).

Alle erlaubten Statusübergänge sind in AF_10245 beschrieben.

### Beispiele

```
HTTP GET [fachdienst-endpunkt]/DocumentReference/[id]/$change-status
```

[Parameters-BeispielParameterChangeStatusInput](Parameters-BeispielParameterChangeStatusInput.html)

Antwort des Fachdienstes im Erfolgsfall:

```
HTTP 200 OK
```
mit Body:

[Parameters-BeispielParameterChangeStatusOutput](Parameters-BeispielParameterChangeStatusOutput.html)

### Verarbeitungsschritte im FD

* Falls während eines Aufrufs der FD feststellt, dass das DiPag FdV versucht, den Status des Dokuments in denselben Status zu ändern, in dem es sich bereits befindet, so ist diese Statusänderung zu ignorieren. `HTTP 200 - OK` wird in diesem Fall zurückgegeben.

* Der FD MUSS anhand der übergebenen Parameter den Meta-Tag 'dipag-rechnungsstatus' auf der DokumentReference aktualisieren.

### Bulk Statusänderungen

Mehrere Statusänderungen können in einem einzigen Aufruf als FHIR-`batch`-Bundle gebündelt werden. Die Operation `$change-status` wird dabei für jede DocumentReference als separater `entry` im Bundle aufgerufen.

|||
|-|-|
|HTTP-Methode|POST|
|Endpunkt|/ (Root-Endpunkt)|

|API-Zustand|HTTP-Status-Code|
|-|-|
|Erfolgsfall|`200 - OK`|
|Kein valides Access-Token wird mitgesendet|`401 - Unauthorized`|
|Autorisierter Benutzer verfügt über keine ausreichende Berechtigung die Interaktion auszuführen|`403 - Forbidden`|
|Andere HTTP-Methode wird verwendet|`405 - Method Not Allowed`|

Fehlerfälle auf Ebene der einzelnen Operationen (z.B. `404`, `412`) werden im `batch-response`-Bundle in den jeweiligen `entry.response.status`-Feldern zurückgegeben.

```
HTTP POST [fachdienst-endpunkt]/
```

[Bundle-BulkChangeStatusExampleInput](Bundle-BulkChangeStatusExampleInput.html)

Antwort des Fachdienstes im Erfolgsfall:

```
HTTP 200 OK
```
mit Body:

[Bundle-BulkChangeStatusExampleOutput](Bundle-BulkChangeStatusExampleOutput.html)

