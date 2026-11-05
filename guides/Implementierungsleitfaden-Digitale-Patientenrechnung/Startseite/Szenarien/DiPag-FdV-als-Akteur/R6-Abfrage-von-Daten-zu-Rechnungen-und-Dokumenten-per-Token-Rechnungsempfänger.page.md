---
expand: 2
topic: AF_10262
---

## {{page-title}}

Die nachfolgende Interaktion ist relevant für den FD als Server, sowie für das DiPag FdV als Client. Anwendungsfall AF_10262 MUSS durch den FD über die spezifizierte API umgesetzt werden. Die Vorgaben aus "Tabelle 19: Use Case Abfrage von Daten zu Rechnungen und Dokumenten per Token (Rechnungsempfänger)" des Feature-Dokumentes MÜSSEN eingehalten werden durch den FD.

|||
|-|-|
|HTTP-Methode|POST|
|Endpunkt|/DocumentReference/$retrieve|

Die Input- und Output-Parameter werden durch die OperationDefinition `https://gematik.de/fhir/dipag/OperationDefinition/Retrieve` beschrieben.

{{render:https://gematik.de/fhir/dipag/OperationDefinition/Retrieve}}

|API-Zustand|HTTP-Status-Code|
|-|-|
|Erfolgsfall|`200 - OK`|
|Weitere Parameter in HTTP-Anfrage enthalten|`400 - Bad Request`|
|Syntax für Parameter ist nicht korrekt oder Kardinalitäten werden nicht eingehalten|`400 - Bad Request`|
|Kein valides Access-Token wird mitgesendet|`401 - Unauthorized`|
|Autorisierter Benutzer verfügt über keine ausreichende Berechtigung die Interaktion auszuführen|`403 - Forbidden`|
|Fehlende Berechtigung für den Leistungserbringer das Dokument abzurufen (z.B. falls ein invalides Rechnungstoken verwendet wird)|`404 - Not Found`|
|Dokumnent kann anhand des Rechnungstokens nicht gefunden werden|`404 - Not Found`|
|Andere HTTP-Methode wird verwendet|`405 - Method Not Allowed`|

Anhand des übermittelten Dokumententokens MUSS der FD die entsprechende DocumentReference suchen. 

Die DocumentReference-Ressource KANN direkt an den Client zurückgegeben werden ohne, dass diese in eine Parameter-Ressource eingebettet wird.

### Beispiele

```
HTTP GET [fachdienst-endpunkt]/DocumentReference/$retrieve
```

<tabs>
    <tab title="Parameter-Input">      
        {{render:Resources/fsh-generated/resources/Parameters-BeispielParameterRetrieveInput.json}}
    </tab>
    <tab title="XML">      
        {{xml:Resources/fsh-generated/resources/Parameters-BeispielParameterRetrieveInput.json}}
    </tab>
    <tab title="JSON">
        {{json:Resources/fsh-generated/resources/Parameters-BeispielParameterRetrieveInput.json}}
    </tab>
    <tab title="Link">
        {{link:Resources/fsh-generated/resources/Parameters-BeispielParameterRetrieveInput.json}}
    </tab>
</tabs>

Antwort des Fachdienstes im Erfolgsfall:

```
HTTP 200 OK
```
mit Body:

<tabs>
    <tab title="Parameter-Input">      
        {{render:Resources/fsh-generated/resources/Parameters-BeispielParameterRetrieveOutputR6.json}}
    </tab>
    <tab title="XML">      
        {{xml:Resources/fsh-generated/resources/Parameters-BeispielParameterRetrieveOutputR6.json}}
    </tab>
    <tab title="JSON">
        {{json:Resources/fsh-generated/resources/Parameters-BeispielParameterRetrieveOutputR6.json}}
    </tab>
    <tab title="Link">
        {{link:Resources/fsh-generated/resources/Parameters-BeispielParameterRetrieveOutputR6.json}}
    </tab>
</tabs>


### Verarbeitungsschritte im FD

* Der FD MUSS aus dem Access-Token die KVNR extrahieren, falls es sich bei dem anfragenden System um ein DiPag FdV handelt. Der FD MUSS sicherstellen, dass nur DocumentReference-Ressourcen abgerufen werden können, in denen `DocumentReference.subject` auf einen Benutzer verweist, welcher durch die KVNR aus dem Access-Token identifiziert wird.

* Der FD MUSS sicherstellen, dass die Abfrage einer Binary-Ressource, welche unter `DocumentReference.content.attachment.url` referenziert wird, nur erfolgen kann, wenn:
    * ein valides Access-Token mitgeliefert wird UND
    * `DocumentReference.subject` zeigt auf einen Benutzeraccount mit einer KVNR, die identisch ist mit der KVNR aus dem Access-Token.

* Es gelten die Festlegungen der [FHIR-Kernspezifikation zur Handhabung von Binary-Ressourcen](https://www.hl7.org/fhir/r4/binary.html#rest).

* Handelt es sich bei dem abgerufenen Dokument um ein Rechnungsdokument, MUSS der FD unter `DocumentReference.context.related:anhaenge` auf alle Anhänge verweisen, die im Kontext der initialen Einreichung (vgl. {{pagelink:AF_10136}}) an den FD übergeben wurden. Jeder Verweis MUSS die Referenz auf die DocumentReference des Anhangs (`reference`), das Dokumenttoken des Anhangs (`identifier` mit System `https://gematik.de/fhir/sid/dipag-token`) sowie die Beschreibung des Anhangs (`display`, entspricht `DocumentReference.description` des Anhangs) enthalten. Das DiPag FdV KANN die Anhänge anhand des Dokumenttokens per `$retrieve` abrufen.

| |  |
|---------|---------------------|
| <img src="https://raw.githubusercontent.com/gematik/spec-Digitale-Patientenrechnung/master/Material/piktogramme/Betriebskoordination_Gruen_gematik.svg" alt="gematik logo" width="75"/> | **Hinweis:** Beim Abruf durch Kostenträger ({{pagelink:AF_10180}}) werden keine Anhänge unter `context.related:anhaenge` angegeben, da die versicherte Person bei der Weitergabe an einen Kostenträger selbst entscheidet, welche Anhänge sie weitergibt. |

----