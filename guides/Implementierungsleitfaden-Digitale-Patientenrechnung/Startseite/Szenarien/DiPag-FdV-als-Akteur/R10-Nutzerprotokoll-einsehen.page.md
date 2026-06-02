---
expand: 2
topic: AF_10203
---

## {{page-title}}

Die nachfolgende Interaktion ist relevant für den FD als Server, sowie für das DiPag FdV als Client. Anwendungsfall AF_10203 MUSS durch den FD über die spezifizierte API umgesetzt werden. Die Vorgaben aus "Tabelle 39: Use Case Nutzerprotokoll einsehen" des Feature-Dokumentes MÜSSEN eingehalten werden durch den FD.

|||
|-|-|
|HTTP-Methode|GET|
|Endpunkt|/AuditEvent|
|Suchparameter `agent-display`| Kardinalität: 0..1<br>Name Rechnungsersteller/Kostenträger/FachdienstVersicherte Person<br>Hinweis: Alle Akteure werden mit unterschiedlichen Rollen als `agent` erfasst<br>Type: string|
|Suchparameter `date`| Kardinalität: 0..*<br>Type: date|
|Suchresultatparameter `_sort`|Als Sortierkriterien können die oben genannten Suchparameter verwendet werden für die Inhalte die als Sortierkriterien in Tabelle 39: Use Case Nutzerprotokoll einsehen - Feature-Dokument Digitale Patientenrechnung genannt sind|
|Suchresultatparameter `_count`|Durch den Client gewünschte Page-Size, der FD KANN Vorgaben für die Maximale Page-Size definieren|


|API-Zustand|HTTP-Status-Code|
|-|-|
|Erfolgsfall|`200 - OK`|
|Weitere Parameter in HTTP-Anfrage enthalten|`400 - Bad Request`|
|Syntax für Parameter ist nicht korrekt oder Kardinalitäten werden nicht eingehalten|`400 - Bad Request`|
|Kein valides Access-Token wird mitgesendet|`401 - Unauthorized`|
|Autorisierter Benutzer verfügt über keine ausreichende Berechtigung die Interaktion auszuführen|`403 - Forbidden`|
|Andere HTTP-Methode wird verwendet|`405 - Method Not Allowed`|

Als Antwort MUSS der FD ein [FHIR-SearchSet-Bundle](https://www.hl7.org/fhir/r4/bundle.html#searchset) zurückliefern welches eingegrenzt ist auf die durch den Client übermittelten Suchparameter.

### Beispiele

```
HTTP GET [fachdienst-endpunkt]/AuditEvent?agent-display=Max Mustermann
```

Antwort des Fachdienstes im Erfolgsfall:

```
HTTP 200 OK
```
mit Body:

<tabs>
    <tab title="Parameter-Input">      
        {{render:Resources/fsh-generated/resources/Bundle-BeispielNutzungsprotokollResultBundle.json}}
    </tab>
    <tab title="XML">      
        {{xml:Resources/fsh-generated/resources/Bundle-BeispielNutzungsprotokollResultBundle.json}}
    </tab>
    <tab title="JSON">
        {{json:Resources/fsh-generated/resources/Bundle-BeispielNutzungsprotokollResultBundle.json}}
    </tab>
    <tab title="Link">
        {{link:Resources/fsh-generated/resources/Bundle-BeispielNutzungsprotokollResultBundle.json}}
    </tab>
</tabs>

### Verarbeitungsschritte im FD

#### Lesen von AuditEvent-Ressourcen

* Der FD MUSS die Suche auf AuditEvent-Ressourcen begrenzen die unter `AuditEvent.entity:Versicherter.what` auf einen Benutzer verweisen, welcher durch die KVNR aus dem Access-Token identifiziert wird, um sicherzustellen, dass nur persönliche AuditEvent-Ressourcen des angemeldeten Rechnungsempfänger zurückgegeben werden.
* Die oben aufgeführten Suchparameter schränken die Ergebnismenge weiter ein, bzw. modifizieren das Ergebnis bspw. durch Sortierung, um die Suche nach relevanten AuditEvent-Ressourcen zu ermöglichen.
* Bei der Suche mittels `date` Suchparameter sind nur die folgenden Modifikatoren zulässig: `eq`, `gt`, `lt`, `ge`, `le`. Alle anderen Modifikatoren werden mit einem Fehlercode 400 beantwortet werden.
* Die Suche nach einer `date`-Range darf nicht größer als ein Jahr sein. Anfragen, die größer als ein Jahr sind, werden auf ein Jahr begrenzt und in einem OperationsOutcome mit einem entsprechenden Hinweis beantwortet.


#### Erfassung von AuditEvent-Ressourcen

* Beim Eintreten eines Events muss das FdV den korrekten `type` und `subtype` setzen
* Beim Eintreten eines Events muss der Fachdienst die auslösende Instanz korrekt im `agent.who` Element setzen. Um eine Suche für den Versicherten zu ermöglichen, muss auch das `agent.who.display` gesetzt sein. Hierbei ist meist der Name der auslösenden Instanz (z.B. Name des Rechnungserstellers) sinnvoll.
* Beim Eintreten eines Events muss der Fachdienst die OID und den Namen des Servers als `observer` setzen
* Beim Eintreten eines Events muss der Fachdienst das Nutzerkonto des betroffenen Versicherten in `entity:Versicherter.what` referenzieren. Ein AuditEvent ohne diese Referenz kann aktuell keinem Konto angezeigt werden und ist ungültig.
Zusätzlich müssen alle betroffenen DocumentReference und Binary Ressourcen referenziert werden. 
  * Bei DocumentReference wird vom Fachdienst als `entity:DocumentReference.name` der Inhalt des Elementes `description` aus dem Profil **DiPagDokumentenmetadatenIntern** gesetzt.
  * Bei Binary wird vom Fachdienst als `entity:Binary.name` der Inhalt des Binary spezifiziert und mit dem Inhalt des Elementes `description` aus dem Profil **DiPagDokumentenmetadatenIntern** kombiniert. Beispiel: "Strukturierter Rechnungsinhalt zu Rechnung Reiseimpfung vom 10.01.2024" wobei "Rechnung Reiseimpfung vom 10.01.2024" der Inhalt aus `DocumentReference.description` ist.