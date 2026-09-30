# R1: Rechnung mit Dokumenten validieren und versenden - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* **R1: Rechnung mit Dokumenten validieren und versenden**

## R1: Rechnung mit Dokumenten validieren und versenden

# R1: Rechnung mit Dokumenten validieren und versenden

Die nachfolgende Interaktion ist relevant für den FD als Server, sowie für das RE-PS als Client. Anwendungsfall AF_10136 MUSS durch den FD über die spezifizierte API umgesetzt werden. Die Vorgaben aus "Tabelle 15: Use Case Rechnung mit Dokumenten validieren und versenden" des Feature-Dokumentes MÜSSEN eingehalten werden durch den FD.

| | |
| :--- | :--- |
| HTTP-Methode | POST |
| Endpunkt | /Patient/[id-des-ermittelten-Rechnungsempfängers] |

Die Input- und Output-Parameter werden durch die OperationDefinition `https://gematik.de/fhir/dipag/OperationDefinition/Submit` beschrieben. Die ID des Rechnungsempfängers ist zuvor per [R0: Rechnungsempfänger ermitteln](R0-rechnungsempfaenger-ermitteln.md) zu ermitteln.

Siehe [OperationDefinition $invoice-submit](OperationDefinition-DiPagOperationSubmit.md).

| | |
| :--- | :--- |
| Erfolgsfall | `200 - OK` |
| Eine DocumentReferenz mit dem selben Hash existiert bereits | `409 - Conflict`Im OperationOutcome enthalten ist der Zeitpunkt, zu dem die Rechnung schon mal übertragen wurde sowie eine Referenz auf die ursprüngliche Response mit Rechnungstoken. |
| Weitere Parameter in HTTP-Anfrage enthalten | `400 - Bad Request` |
| Syntax für Parameter ist nicht korrekt oder Kardinalitäten werden nicht eingehalten | `400 - Bad Request` |
| Gravierende Fehler treten während der Validierung auf - Modus = 'normal' | `400 - Bad Request` |
| Kein valides Access-Token wird mitgesendet | `401 - Unauthorized` |
| Autorisierter Benutzer verfügt über keine ausreichende Berechtigung die Interaktion auszuführen | `403 - Forbidden` |
| Fehlende Berechtigung für den Leistungserbringer das Postfach zu verwenden | `404 - Not Found`In diesem Fall: OperationOutcome mit Hinweis, dass Einwilligung nicht vorliegt oder Benutzer nicht vorhanden ist |
| Andere HTTP-Methode wird verwendet | `405 - Method Not Allowed` |

### Dokumentenvalidierung

Der FD muss die syntaktischen und semantischen Prüfungen der Rechnung durchführen welche in AF_10136 unter 'Ablauf' beschrieben sind. Bei der Verarbeitung einer Rechnungen mit einer bereits im FD bekannten Signatur MUSS eine Validierungswarnung durch den FD herausgegeben werden. Zudem MÜSSEN die übermittelten Dokumente ein valides PDF/A sein. Andernfalls ist der Request mit `400 - Bad Request` abzulehnen.

### Hash-Bildung und Duplikatserkennung

Das identifizierende Merkmal für die Duplikaterkennung wird in Form eines SHA-256-Werts über das Originale Rechnungs-PDF und die strukturierten Daten gebildet:

1. Der Server MUSS base64 des Original-Rechnungs-PDF decodieren und den SHA-256-Hash für den RAW-PDF-Inhalt bestimmen: Hash A
1. Der Server MUSS base64 des Original-Rechnungs-PDF decodieren und den SHA-256-Hash für den RAW-JSON-Inhalt bestimmen: Hash B
1. Der Server MUSS für den Identity-Hash einen SHA-256-Hash über die Konkatenation aus Hash A und Hash B bilden
1. Der Server speichert den Identity-Hash sowie den Zeitpunkt, zu dem der Hash erzeugt wurde.

Die so erzeugten Hashes können dann auch für die Signatur (s.u.) genutzt werden.

Wird vom RE-System eine `$invoice-submit` Operation ausgeführt, die zum selben Hashwert führt, geht der Fachdienst von einem Duplikat aus und antworten mit einem HTTP `409 - Conflict`. Im OperationOutcome enthalten der Zeitpunkt enhalten, zu dem die Rechnung schon mal übertragen wurde sowie eine Referenz auf die ursprüngliche Response mit Rechnungstoken.

Für Anhänge gibt es keinen Dublettenprüfung: ein einzelner Bericht soll auch an mehrere Rechnungen angehängt werden können.

### Signatur

| | |
| :--- | :--- |
| ![](Betriebskoordination_Gruen_gematik.svg) | **Feedback erbeten:**Die konkrete Ausgestaltung des nachfolgend beschriebenen Signaturkonzepts wird noch offengehalten. Die hier getroffenen Festlegungen sind daher als vorläufig zu verstehen. Die gematik bittet die Hersteller um Rückmeldung zur beschriebenen Umsetzung. |

Die Signatur ist auf drei Ebenen definiert:

**Signatur auf Ebene der Attachments**

Für jedes Element der Rechnung (originale Rechnung, angereicherte Rechnung, strukturierte Rechnungsinhalte, Anhang) MUSS eine individuelle Signatur über den Hash des jeweiligen Elements vorhanden sein. Die Signatur wird über die Extension `DiPagDocRefSignature` direkt am jeweiligen `content.attachment` abgebildet.

**Signatur auf Ebene der DocumentReference**

Bei Rechnungsdokumenten (d.h. `type.coding` enthält KDL-Code `AM010106`) MUSS zusätzlich eine Signatur auf Ebene der DocumentReference vorhanden sein (Invariante `SignaturVerpflichtendRechnung`). Diese Signatur wird über die Extension `docRef-signature` an der DocumentReference abgebildet und umfasst eine Signatur über die originale Rechnung sowie die strukturierten Rechnungsinhalte.

**Signatur innerhalb der PDF/A-Dokumente**

Im angereicherten PDF/A und im PDF/A eines Anhangs muss die Signatur eingebettet werden.

Weitere Details zur Signatur, siehe [gemSpec_DiPag_FD - Abschnitt 6.5 Signatur](https://gemspec.gematik.de/docs/gemSpec/gemSpec_DiPag_FD/gemSpec_DiPag_FD_V1.1.1/#6.5).

### Rechnungsrepräsentation

Die Parameter `rechnung` und `anhang` bestehen jeweils aus mehreren Parts: dem Part `dokument`, welcher die eigentliche DocumentReference enthält, sowie optional dem Part `barcodePosition`. Die DocumentReference-Ressource im Part `dokument` MUSS dem Profil `https://gematik.de/fhir/dipag/StructureDefinition/dipag-dokumentenmetadaten-eingang` entsprechen.

[Profil StructureDefinition-dipag-dokumentenmetadaten-eingang](StructureDefinition-dipag-dokumentenmetadaten-eingang.md)

Implementierungshinweise zu den einzelnen Feldern (Spalte „Kommentar") finden sich auf der oben verlinkten Profilseite.

### Position des Datamatrix-Codes

Der FD bringt auf jedem verarbeiteten Dokument einen Datamatrix-Code (Token-Barcode) an einer Default-Position an. Für jede Rechnung und jeden Anhang KANN diese Position über den Part `barcodePosition` übersteuert werden. Er enthält die Sub-Parts `x` und `y` mit den Zielkoordinaten als `decimal` in `pt` (typografischer Punkt) ausgehend von der unteren, linken Ecke der PDF. Wird `barcodePosition` angegeben, MÜSSEN `x` und `y` gemeinsam übermittelt werden. Ohne `barcodePosition` gilt die Default-Position.

### Beispiele

[DocumentReference-BeispielDocumentReferenceRechnung3-LE](DocumentReference-BeispielDocumentReferenceRechnung3-LE.md)

```
HTTP POST [fachdienst-endpunkt]/Patient/[id-des-ermittelten-Rechnungsempfängers]/$invoice-submit

```

[Parameters-BeispielParameterSubmitInput3-LE](Parameters-BeispielParameterSubmitInput3-LE.md)

Antwort des Fachdienstes im Erfolgsfall:

Rückgabe des Token von Rechnung und Anhang. Bei Verwendung des Parameters "angereichertesPDF" wird die Binary Ressource mit den PDF/A-Dokumenten (inkl. Token-Barcode) als Parameter direkt mit ausgegeben.

```
HTTP 200 OK

```

mit Body:

[Parameters-BeispielParameterSubmitOutput3-FD](Parameters-BeispielParameterSubmitOutput3-FD.md)

### Verarbeitungsschritte im FD

Bei der Entgegennahme der Dokumente MÜSSEN durch den FD die nachfolgenden Schritte durchgeführt werden. Es ist zu beachten, dass dies asynchron durchgeführt werden kann durch den FD. Lediglich MUSS der FD sicherstellen, dass dieser Prozess vor dem Abruf der Dokumente durch das DiPag FdV oder dem RE-PS abgearbeitet wurde.

* `DocumentReference.attachment.data` muss aus der übermittelten DocumentReference herausgelöst werden. Der Inhalt MUSS in einer durch den FD neu angelegten Binary-Ressource gespeichert werden. Die Binary-Ressource MUSS unter `attachment.url` mit einer absoluten URL referenziert werden. `DocumentReference.attachment.data` ist anschließend zu löschen. Dies gilt für alle durch den Client übermittelte Dokumente.
* Die originale Rechnung (`DocumentReference.type = KDL#AM010106`) MUSS angereichert werden mit den strukturierten Rechnungsinhalten. Der FD MUSS die Inhalte strukturiert im FHIR-Format innerhalb eines PDF/A einbetten.
* Das neu erzeugte PDF/A muss als Binary nach den Vorgaben von `DocumentReference.content:angereicherteRechnung` aus dem oben aufgeführten Profil hinterlegt werden.
* Für jedes PDF/A-Dokument MUSS der FD ein Token unter Einhaltung einer ausreichenden Entropie erstellen. Der FD MUSS zusätzlich einen Barcode auf dem Rechnungs- oder Anhangdokument unterbringen welcher das Dokumententoken kodiert enthält. Die Lesbarkeit der Inhalte des Dokumtes darf hierdurch nicht eingeschränkt werden. Die Zugehörigkeit eines Tokens zu einem Dokument MUSS gespeichert werden, um den Abruf eines Dokumentes mit diesem Token zu ermöglichen.
* `DocumentReference.context.related` MUSS durch den FD auf die ID des ermittelten Rechnungsempfängers gesetzt werden.
* `DocumentReference.author.identifier` MUSS durch den FD auf die im Access-Token enthaltene Telematik-ID gesetzt werden. Durch den Client übermittelte Angaben in DocumentReference.author sind zu überschreiben.
* `DocumentReference.extension:rechnungsdatum` und `DocumentReference.extension:gesamtbetrag` MÜSSEN durch den FD beim Empfang der Operation auf Basis der übermittelten Dokumenteninhalte extrahiert und gesetzt werden. Durch den Client übermittelte Angaben in diesen Extensions sind zu überschreiben.
* `DocumentReference.identifier[Rechnungsnummer]` MUSS durch den FD beim Empfang der Operation auf Basis der übermittelten Dokumenteninhalte extrahiert und gesetzt werden. Durch den Client übermittelte Angaben in diesen Extensions sind zu überschreiben.
* `DocumentReference.identifier[AnhangIdentifier]` MUSS durch den FD für Anhänge vom Client gesetzt übernommen werden.
* `DocumentReference.subject` MUSS durch den FD beim Empfang der Operation auf Basis der Patient-Instanz, welche in den strukturierten Rechnungsinhalten als subject der Invoice referenziert wird. Hierbei wird `Patient.name.text` als `subject.display` gesetzt.
* Hinweis: In der FHIR-Repräsentation erfolgt **keine** Differenzierung zwischen dem Datenobjekt für die Rechnungsdokumente und dem Rechnungsworkflow. Der Workflowstatus wird somit innerhalb der DocumentReference abgebildet. `DocumentReference.meta.tag:dipag-rechnungsstatus` MUSS durch den FD auf "Offen" gesetzt werden beim Empfang der Rechnung.

### Hinweise zur Abbildung des Workflow-Objektes (fachliches Datenmodell)

Im fachlichen Datenmodell des Feature-Dokuments Digitale Patientenrechnung ist dargestellt, dass jede Rechnung,sowie jedes ergänzende Dokument mit einem Rechnungsworkflow-Objekt verbunden ist. Dieses Workflow-Objekt bündelt das Rechnungsdokument sowie die Anhänge zusammen und gibt diesen Dokumenten einen gemeinsamen Status. Zur Vereinfachung der Implementierung seitens des FD und des DiPag FDV wird in der FHIR-Repräsentation **kein** weiteres Datenobjekt hierfür verwendet. Hingegen enthält das Profil 'DiPagDokumentenmetadaten' eine Extension 'dipag-rechnungsstatus' für diesen Zweck. Der Status zusammenhängender Dokumente MUSS stets synchron gehalten werden. Diese Extension gilt für das Rechnungsdokument sowie alle Anhänge, die innerhalb einer Submit-Operation im gleichen Kontext übermittelt worden sind wie die Rechnung. Der FD MUSS den Zusammenhang zwischen diesen Dokumenten in der Verarbeitungslogik vorhalten.

### Beispiele

Beispiel: Rechnungsdokument nach Verarbeitung auf Server

[DocumentReference-ExampleR5DocumentReference](DocumentReference-ExampleR5DocumentReference.md)

Beispiel: sonstiges Dokument nach Verarbeitung auf Server

[DocumentReference-ExampleR5DocumentReferenceSonstigesDokument](DocumentReference-ExampleR5DocumentReferenceSonstigesDokument.md)

