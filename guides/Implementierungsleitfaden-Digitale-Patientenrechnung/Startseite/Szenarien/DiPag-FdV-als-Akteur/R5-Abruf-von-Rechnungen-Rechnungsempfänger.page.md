---
expand: 2
topic: AF_10138
---

## {{page-title}}

Die nachfolgende Interaktion ist relevant für den FD als Server, sowie für das DiPag FdV als Client. Anwendungsfall AF_10138 MUSS durch den FD über die spezifizierte API umgesetzt werden. Die Vorgaben aus "Tabelle 18: Use Case Abruf von Rechnungen (Rechnungsempfänger)" des Feature-Dokumentes MÜSSEN eingehalten werden durch den FD.

|||
|-|-|
|HTTP-Methode|GET|
|Endpunkt|/DocumentReference|
|Suchparameter `_tag`| Kardinalität: 0..1<br>Rechnungsstatus<br>Type: token<br>Der FD MUSS den Modifier `:not` unterstützen.|
|Suchparameter `subject:text`| Kardinalität: 0..1<br>Name Rechnungsempfänger/Behandelte Person<br>Type: string<br>Der Suchparameter MUSS durch den Client mit dem Modifier `:text` verwendet werden. Dieser Suchmodifier ermöglicht eine Suche auf DocumentReference.subject.display.|
|Suchparameter `author:text`|Kardinalität: 0..1<br>Name des Leistungserbringer<br>Type: string<br>Der Suchparameter MUSS durch den Client mit dem Modifier `:text` verwendet werden. Dieser Suchmodifier ermöglicht eine Suche auf DocumentReference.author.display.|
|Suchparameter `type`|Kardinalität: 0..1<br>Dokumententyp (z.B. Rechnung)<br>Type: token<br>Der FD MUSS den Modifier `:not` unterstützen.|
|Suchparameter `dipag-makierung`|Kardinalität: 0..1<br>Manuelle Markierungen<br>Type: token|
|Suchresultatparameter `_sort`|Als Sortierkriterien können die oben genannten Suchparameter inkl. Custom SearchParameter verwendet werden für die Inhalte die als Sortierkriterien in Tabelle 18: Use Case Abruf von Rechnungen (Rechnungsempfänger) - Feature-Dokument Digitale Patientenrechnung genannt sind|
|Suchresultatparameter `_count`|Durch den Client gewünschte Page-Size, der FD KANN Vorgaben für die Maximale Page-Size definieren|
|User-Kontext `KVNR`| Kardinalität: 1..1<br>Hinweis: Die KVNR ist aus dem Claim `urn:telematik:claims:id` des mitzusendenen Access-Token zu extrahieren.|

|API-Zustand|HTTP-Status-Code|
|-|-|
|Erfolgsfall|`200 - OK`|
|Weitere Parameter in HTTP-Anfrage enthalten|`400 - Bad Request`|
|Syntax für Parameter ist nicht korrekt oder Kardinalitäten werden nicht eingehalten|`400 - Bad Request`|
|Kein valides Access-Token wird mitgesendet|`401 - Unauthorized`|
|Autorisierter Benutzer verfügt über keine ausreichende Berechtigung die Interaktion auszuführen|`403 - Forbidden`|
|Andere HTTP-Methode wird verwendet|`405 - Method Not Allowed`|

Als Antwort MUSS der FD ein [FHIR-SearchSet-Bundle](https://www.hl7.org/fhir/r4/bundle.html#searchset) zurückliefern, welches eingegrenzt ist auf die, durch den Client übermittelten Suchparameter.

### Beispiele

Suche anhand der Art des Dokumentes (nur Rechnungen):
```
HTTP GET [fachdienst-endpunkt]/DocumentReference?type=ABRE
```
und/oder anhand des Status
```
HTTP GET [fachdienst-endpunkt]/DocumentReference?_tag=offen

HTTP GET [fachdienst-endpunkt]/DocumentReference?_tag:not=papierkorb
```

Antwort des Endpunktes im Erfolgsfall:

```
HTTP 200 OK
```
mit Body:

<tabs>
    <tab title="Parameter-Input">      
        {{render:Resources/fsh-generated/resources/Bundle-ExampleR5Bundle.json}}
    </tab>
    <tab title="XML">      
        {{xml:Resources/fsh-generated/resources/Bundle-ExampleR5Bundle.json}}
    </tab>
    <tab title="JSON">
        {{json:Resources/fsh-generated/resources/Bundle-ExampleR5Bundle.json}}
    </tab>
    <tab title="Link">
        {{link:Resources/fsh-generated/resources/Bundle-ExampleR5Bundle.json}}
    </tab>
</tabs>

### Verarbeitungsschritte im FD

* Der FD MUSS die Suche auf DocumentReference-Ressourcen begrenzen die unter DocumentReference.related auf einen Benutzer verweisen welcher durch die KVNR aus dem Access-Token identifiziert wird, um sicherzustellen, dass nur DocumentReference-Ressourcen aus dem Postfach des angemeldeten Rechnungsempfängers zurückgegeben werden.

* Der FD MUSS die Signatur-Extension an allen Stellen (`DocumentReference.extension:docRef-signature`, `DocumentReference.content.attachment.extension:docRef-signature`) vor der Rückgabe an den Client entfernen.

* Falls es sich bei der DocumentReference um ein Rechnungsdokument handelt, MUSS der FD das Content-Element für das Rechnungspdf entfernen, sodass nur die Content-Elemente für das angereicherte PDF/A, sowie die strukturierten Rechnungsinhalte zurückgegeben werden.

* Der FD MUSS sicherstellen, dass die Abfrage einer Binary-Ressource, welche unter `DocumentReference.content.attachment.url` referenziert wird, nur erfolgen kann, wenn:
    * ein valides Access-Token mitgeliefert wird UND
    * `DocumentReference.subject` zeigt auf einen Benutzeraccount mit einer KVNR, die identisch ist mit der KVNR aus dem Access-Token.

* Es gelten die Festlegungen der [FHIR-Kernspezifikation zur Handhabung von Binary-Ressourcen](https://www.hl7.org/fhir/r4/binary.html#rest).

* Der FD MUSS unter DocumentReference.context.related:anhaenge Referenzen auf alle Anhänge zurückgeben die im Kontext der initialen Einreichung (vgl. {{pagelink:AF_10136}}) übergeben wurden an den FD. Die Anhänge MÜSSEN als DocumentReference-Ressourcen im SearchResult-Bundle zurückgegeben werden mit einem Hinweis, dass diese zusätzlich inkludiert wurden (Bundle.entry.search.mode = include).

----
