---
expand: 2
topic: AF_TBD_R14
---

## {{page-title}}

Die nachfolgende Interaktion ist relevant für den FD als Server, sowie für das ITSys-KTR als Client. Der zugehörige Use Case des Feature-Dokumentes wird ergänzt, sobald die AF-Nummer vorliegt.

Über diese Interaktion kann ein Kostenträger die Rechnungsworkflows abfragen, die ihm per {{pagelink:AF_TBD_R13}} übermittelt wurden. Das Suchergebnis enthält die Rechnungs-Tokens (`identifier:Token`); der Abruf der eigentlichen Dokumente erfolgt ausschließlich über die `$retrieve`-Operation (vgl. {{pagelink:AF_TBD_R15}}).

|||
|-|-|
|HTTP-Methode|GET|
|Endpunkt|/DocumentReference|
|Suchparameter `_tag`| Kardinalität: 0..1<br>Rechnungsstatus (uebermittelt/abgerufen)<br>Type: token|
|Suchresultatparameter `_count`|Durch den Client gewünschte Page-Size, der FD KANN Vorgaben für die Maximale Page-Size definieren|
|User-Kontext `Telematik-ID`| Kardinalität: 1..1<br>Hinweis: Die Telematik-ID ist aus dem Claim `idNummer` des mitzusendenen Access-Token zu extrahieren.|

Weitere Suchparameter sind im Kontext dieser Interaktion nicht vorgesehen.

|API-Zustand|HTTP-Status-Code|
|-|-|
|Erfolgsfall|`200 - OK`|
|Weitere Parameter in HTTP-Anfrage enthalten|`400 - Bad Request`|
|Syntax für FHIR-Suchanfrage ist nicht korrekt oder Kardinalitäten werden nicht eingehalten|`400 - Bad Request`|
|Kein valides Access-Token wird mitgesendet|`401 - Unauthorized`|
|Autorisierter Benutzer verfügt über keine ausreichende Berechtigung die Interaktion auszuführen|`403 - Forbidden`|
|Andere HTTP-Methode wird verwendet|`405 - Method Not Allowed`|

Als Antwort MUSS der FD ein [FHIR-SearchSet-Bundle](https://www.hl7.org/fhir/r4/bundle.html#searchset) zurückliefern, welches eingegrenzt ist auf die, durch den Client übermittelten Suchparameter. Die enthaltenen DocumentReference-Ressourcen MÜSSEN valide gegen das Profil `DiPagDokumentenmetadatenIntern` sein. Der Rechnungsempfänger ist über den Slice `context.related:empfaenger` (Referenz auf die Organization) abgebildet; Markierungen sind im Kontext der an Organisationen übermittelten Rechnungen nicht vorhanden.

### Beispiele

Suche anhand des Rechnungsstatus mit Paginierung:
```
HTTP GET [fachdienst-endpunkt]/DocumentReference?_tag=uebermittelt&_count=50
```

Antwort des Endpunktes im Erfolgsfall:

```
HTTP 200 OK
```
mit Body:

<tabs>
    <tab title="DocumentReference">      
        {{render:Resources/fsh-generated/resources/Bundle-KtrWorkflowSearchBundle.json}}
    </tab>
    <tab title="XML">      
        {{xml:Resources/fsh-generated/resources/Bundle-KtrWorkflowSearchBundle.json}}
    </tab>
    <tab title="JSON">
        {{json:Resources/fsh-generated/resources/Bundle-KtrWorkflowSearchBundle.json}}
    </tab>
    <tab title="Link">
        {{link:Resources/fsh-generated/resources/Bundle-KtrWorkflowSearchBundle.json}}
    </tab>
</tabs>

<fql output="table" headers="true">
from
	StructureDefinition
where
	url = 'https://gematik.de/fhir/dipag/StructureDefinition/dipag-dokumentenmetadaten-intern'
select
	Canonical: url, Status: status, Version: version, Basis: baseDefinition
</fql>

<br>

{{tree:https://gematik.de/fhir/dipag/StructureDefinition/dipag-dokumentenmetadaten-intern, buttons}}

### Verarbeitungsschritte im FD

* Der FD MUSS die Suche auf DocumentReference-Ressourcen begrenzen, die unter `DocumentReference.context.related` auf die Organization verweisen, welche durch die Telematik-ID aus dem Access-Token identifiziert wird. So wird sichergestellt, dass ein Kostenträger ausschließlich die an ihn übermittelten Rechnungsworkflows abfragen kann.

* Der FD MUSS die Paginierung gemäß den Festlegungen der [FHIR-Kernspezifikation](https://www.hl7.org/fhir/r4/http.html#paging) über `Bundle.link` unterstützen.

### Nicht unterstützte Funktionen

Im Kontext der an Organisationen übermittelten Rechnungen stehen folgende Funktionen nicht zur Verfügung:

* Markierungen (`$process-flag`, Suchparameter `dipag-markierung`)
* Manuelles Ändern des Rechnungsstatus (`$change-status`)
* Löschen von Rechnungsvorgängen durch den Client (`$erase`); das Löschen erfolgt ausschließlich automatisch durch den FD (vgl. {{pagelink:AF_TBD_R15}})
* Versichertenprotokoll (AuditEvent)

----
