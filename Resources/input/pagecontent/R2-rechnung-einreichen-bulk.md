# R2: Rechnung validieren/einreichen (Bulk)

Die nachfolgende Interaktion ist relevant für den FD als Server, sowie für das RE-PS als Client. Anwendungsfall AF_10136 MUSS durch den FD über die spezifizierte API umgesetzt werden. Die Vorgaben aus "Tabelle 15: Use Case Rechnung mit Dokumenten validieren und versenden" des Feature-Dokumentes MÜSSEN eingehalten werden durch den FD.

|||
|-|-|
|HTTP-Methode|POST|
|Endpunkt|/ (Root-Endpunkt)|

Für die Ausführung der Operation gelten die gleichen Vorgaben wie aus [R1: Rechnung versenden](R1-rechnung-versenden.html). Die Operation `$invoice-submit` kann für innerhalb eines Batch-Bundles mehrfach, auch für unterschiedliche Dokumente aufgerufen werden. Es gelten die entsprechenden Vorgaben aus der [FHIR-Kernspezifikation](https://www.hl7.org/fhir/r4/http.html#transaction).

### Asynchrone Verarbeitung

Diese Interaktion ist aufgrund potenziell großer Datenmengen asynchron vom FD auszuführen.
Dies MUSS der Client mittels eines ``Prefer: respond-async``-Headers nach [RFC7240](https://tools.ietf.org/html/rfc7240#section-4.1) dem FD signalisieren.

|API-Zustand|HTTP-Status-Code|
|-|-|
|Erfolgsfall - `batch`-Bundle zur asynchronen Verarbeitung angenommen|`202 - Accepted`|
|Eine DocumentReferenz mit dem selben Hash existiert bereits|`409 - Conflict` Im OperationOutcome enthalten ist der Zeitpunkt, zu dem die Rechnung schon mal übertragen wurde sowie eine Referenz auf die ursprüngliche Response mit Rechnungstoken.|
|Weitere Parameter in HTTP-Anfrage enthalten|`400 - Bad Request`|
|Syntax für Parameter ist nicht korrekt oder Kardinalitäten werden nicht eingehalten|`400 - Bad Request`|
|Gravierende Fehler treten während der Validierung auf - Modus = 'normal'|`400 - Bad Request`|
|Kein valides Access-Token wird mitgesendet|`401 - Unauthorized`|
|Autorisierter Benutzer verfügt über keine ausreichende Berechtigung die Interaktion auszuführen|`403 - Forbidden`|
|Fehlende Berechtigung für den Leistungserbringer das Postfach zu verwenden|`404 - Not Found` In diesem Fall: OperationOutcome mit Hinweis, dass Einwilligung nicht vorliegt oder Benutzer nicht vorhanden ist|
|Andere HTTP-Methode wird verwendet|`405 - Method Not Allowed`|

Der FD MUSS die Annahme des ``batch``-Bundles entsprechend den Vorgaben aus der [FHIR-Kernspezifikation zum asynchronen Request Pattern](https://www.hl7.org/fhir/R4/async.html) mit dem HTTP-Status-Code ``202 - Accepted`` bestätigen. In einem ``Content-Location``-Header MUSS der FD dem RE-PS eine absolute URL mitteilen unter welcher das RE-PS per Polling prüfen kann, ob die Interaktion abgeschlossen wurde und entsprechende Rückgabewerte seitens der ``$invoice-submit``-Operation vorliegen. Der Aufbau der ``Content-Location``-URL MUSS aus kryptografisch zufälligen Teilen bestehen, sodass der Aufbau nicht deterministisch ermittelt oder erraten werden kann. Solange die Verarbeitung andauert, antwortet der FD beim Polling mit ``202 - Accepted``; nach Abschluss der Verarbeitung mit ``200 - OK`` und dem ``batch-response``-Bundle im Body. Der Server SOLLTE RE-PS-Clients mit einem HTTP-Status-Code ``429 Too Many Requests`` abweisen, falls nach dem Ermessen des FDs die ``Content-Location``-URL zu häufig geprüft wird. Der FD SOLLTE einen [Retry-After](https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/Retry-After)-Header entsprechend den Vorgaben aus der [FHIR-Kernspezifikation](https://www.hl7.org/fhir/R4/async.html#3.1.6.4) verwenden.

Nach der Verarbeitung des ``batch``-Bundles MUSS der FD das ``batch-response``-Bundle unter der ``Content-Location``-URL bereitstellen, welches die Ergebnisse entsprechnd der Verarbeitung der einzelnen Dokumente nach AF_10271 enthält. Es ist zu beachten, dass der FD die Autorisierung für jedes Dokument gemäß den Vorgaben zu AF_10271 individuell prüfen MUSS. Der FD MUSS sicherstellen, dass das ``batch-response``-Bundle nur einem validen Access-Token abgerufen werden kann.

Sollte die ``Content-Location``-URL unvorhergesehen nicht durch den RE-PS abfragbar sein (Systemausfall oder andere Fehler), kann das ``batch``-Bundles erneut versendet werden. Bereits beim ersten Versand erfolgreich verarbeitete Daten werden in dem Fall mit `200 - OK` bestätigt und die ursprüngliche Response wird zurückgegeben. Das Handling von Dubletten erfolgt äquivalent zu R1.

### Beispiel

```
HTTP POST [fachdienst-endpunkt]/
```

[Bundle-BulkSubmitExample](Bundle-BulkSubmitExample.html)

Unmittelbare Antwort des Fachdienstes auf die Annahme des ``batch``-Bundles:

```
HTTP 202 Accepted
Content-Location: [fachdienst-endpunkt]/[kryptografisch-zufällige-id]
```

Nach Abschluss der Verarbeitung stellt der FD unter der ``Content-Location``-URL das ``batch-response``-Bundle bereit:

```
HTTP 200 OK
```
mit Body:

[Bundle-BulkSubmitExampleOutput](Bundle-BulkSubmitExampleOutput.html)

