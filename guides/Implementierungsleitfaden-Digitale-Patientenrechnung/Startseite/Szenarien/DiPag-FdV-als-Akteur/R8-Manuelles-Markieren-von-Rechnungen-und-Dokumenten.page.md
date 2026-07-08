---
expand: 2
topic: AF_10160
---

## {{page-title}}

| |  |
|---------|---------------------|
| <img src="https://raw.githubusercontent.com/gematik/spec-Digitale-Patientenrechnung/master/Material/piktogramme/Betriebskoordination_Gruen_gematik.svg" alt="gematik logo" width="75"/> | **Feedback erbeten:** Zu dieser Markierungs-Operation wird ausdrücklich um Feedback gebeten. |

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
|Verpflichtende Zusatzinformationen zu einer Markierung fehlen oder eine nur einmal zulässige Markierung wird mehrfach übergeben|`400 - Bad Request`|
|Kein valides Access-Token wird mitgesendet|`401 - Unauthorized`|
|Autorisierter Benutzer verfügt über keine ausreichende Berechtigung die Interaktion auszuführen|`403 - Forbidden`|
|Fehlende Berechtigung für den Rechnungsempfänger die Dokumentenmarkierung zu verändern|`404 - Not Found`|
|Operation wird auf nicht existierender DocumentReference-Ressource aufgerufen|`404 - Not Found`|
|Andere HTTP-Methode wird verwendet|`405 - Method Not Allowed`|

Die Input- und Output-Parameter werden durch die OperationDefinition `https://gematik.de/fhir/dipag/OperationDefinition/ProcessFlag` beschrieben.

{{render:https://gematik.de/fhir/dipag/OperationDefinition/ProcessFlag}}

### Beispiele

```
HTTP POST [fachdienst-endpunkt]/DocumentReference/[id]/$process-flag
```

<tabs>
    <tab title="Parameter-Input">      
        {{render:Resources/fsh-generated/resources/Parameters-BeispielParameterProcessFlagInput.json}}
    </tab>
    <tab title="XML">      
        {{xml:Resources/fsh-generated/resources/Parameters-BeispielParameterProcessFlagInput.json}}
    </tab>
    <tab title="JSON">
        {{json:Resources/fsh-generated/resources/Parameters-BeispielParameterProcessFlagInput.json}}
    </tab>
    <tab title="Link">
        {{link:Resources/fsh-generated/resources/Parameters-BeispielParameterProcessFlagInput.json}}
    </tab>
</tabs>

Antwort des Fachdienstes im Erfolgsfall:

```
HTTP 200 OK
```
mit Body:

<tabs>
    <tab title="Parameter-Input">      
        {{render:Resources/fsh-generated/resources/Parameters-BeispielParameterProcessFlagOutput.json}}
    </tab>
    <tab title="XML">      
        {{xml:Resources/fsh-generated/resources/Parameters-BeispielParameterProcessFlagOutput.json}}
    </tab>
    <tab title="JSON">
        {{json:Resources/fsh-generated/resources/Parameters-BeispielParameterProcessFlagOutput.json}}
    </tab>
    <tab title="Link">
        {{link:Resources/fsh-generated/resources/Parameters-BeispielParameterProcessFlagOutput.json}}
    </tab>
</tabs>

### Verarbeitungsschritte im FD

* Die Operation folgt dem **Complete-Replacement-Prinzip**: Der übermittelte Markierungssatz ersetzt den bisherigen Markierungssatz des Dokuments vollständig. Markierungen, die nicht im Request enthalten sind, werden entfernt. Der Request MUSS daher stets alle weiterhin gültigen Markierungen inklusive ihrer jeweiligen Zusatzinformationen vollständig enthalten.

* Wird kein `markierung`-Parameter übergeben (leerer Markierungssatz), MUSS der FD alle änderbaren Markierungen des Dokuments entfernen. Da `$process-flag` der einzige Endpunkt zur Pflege der Markierungen ist, wird hierüber auch das vollständige Löschen der Markierungen unterstützt.

* Die Markierungen `persönlich` und `abgerufen durch KTR` können über diese Operation weder gesetzt noch entfernt werden; übermittelte Werte dieser Markierungen werden ignoriert und bleiben von der Ersetzung bzw. Löschung unberührt.

* Der FD MUSS anhand der übergebenen Parameter die Extension `DiPagDocumentReferenceMarkierung` im Meta-Element der DocumentReference entsprechend erstellen, aktualisieren und entfernen.

* Der FD MUSS strikt validieren, dass zu jeder übermittelten Markierung die verpflichtenden Zusatzinformationen vollständig vorhanden sind (z. B. der Zusatz `artDerArchivierung` bei der Markierung `archiviert` sowie die Kostenträger-Referenz bei der Markierung `abgerufen`). Fehlen erforderliche Informationen, MUSS der FD den Request mit `400 - Bad Request` ablehnen; es werden keine Default-Werte angenommen. Diese Prüfung geht über die im Profil hinterlegten Invarianten hinaus, die lediglich die umgekehrte Richtung (Zulässigkeit eines Zusatzes in Abhängigkeit vom Markierungstyp) einschränken.

* Enthält ein Request mehrere Markierungen eines Typs, der auf einer Rechnung nur einmal gesetzt werden kann (z. B. `gelesen` oder die Art der Archivierung), MUSS der FD den Request mit `400 - Bad Request` ablehnen.

Die folgende Tabelle zeigt je Markierungstyp, ob eine Mehrfach-Markierung zulässig ist, wann und durch wen die Markierung verwendet wird sowie welche ergänzenden Informationen verpflichtend bzw. optional sind:

|Typ der Markierung|Mehrfach-Markierung?|Verwendung (wann und durch wen)|ergänzende Informationen|
|-|-|-|-|
|Eingereicht (per Frontend)|ja, eine pro Kostenträger|Bei Einreichung durch Versicherten|- Zeitpunkt<br>- optional: Details<br>- optional: Referenz auf den Kostenträger (im MVP: nur Freitext)|
|Eingereicht (per Post)|ja, eine pro Kostenträger|Bei Postversand durch Versicherten|- Zeitpunkt<br>- optional: Details<br>- optional: Referenz auf den Kostenträger (im MVP: nur Freitext)|
|Geteilt|ja, eine pro Kostenträger|Bei Teilen durch den Versicherten|- Zeitpunkt<br>- optional: Details<br>- optional: Referenz auf den Kostenträger (im MVP: nur Freitext)|
|Abgerufen durch Kostenträger|ja, eine pro Kostenträger|Bei Abruf eines Dokuments/einer Rechnung durch den Kostenträger, durch den Fachdienst|- Zeitpunkt<br>- Referenz auf den Kostenträger, der abgerufen hat. (im MVP: nur Freitext)|
|Gelesen|nein|Beim Einsehen von Rechnungen oder Dokumenten durch den Versicherten im DiPag FdV. Ist die Markierung vorhanden, gilt die Rechnung oder das Dokument als gelesen. Ist die Markierung nicht vorhanden, gilt das Dokument oder die Rechnung als ungelesen.||
|Bezahlt|nein|Bei Zahlung durch den Versicherten|- Zeitpunkt<br>- optional: Details|
|Archiviert|nein|Bei Archivierung durch den Versicherten|- Art der Archivierung: ePA oder persönliche Ablage<br>- optional: Zeitpunkt<br>- optional: Details|
|Persönlich|nein|Durch den Rechnungsersteller bei Versenden von Dokumenten, die ausschließlich nur persönlich an den Versicherten gerichtet sind.|- optional: Details|

----