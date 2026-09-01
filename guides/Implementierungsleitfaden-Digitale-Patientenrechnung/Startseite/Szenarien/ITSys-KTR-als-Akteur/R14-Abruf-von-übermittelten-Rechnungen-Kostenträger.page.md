---
expand: 2
topic: AF_TBD_R14
---

## {{page-title}}

Die nachfolgende Interaktion ist relevant für den FD als Server, sowie für das ITSys-KTR als Client. Der zugehörige Use Case des Feature-Dokumentes wird ergänzt, sobald die AF-Nummer vorliegt.

|||
|-|-|
|HTTP-Methode|POST|
|Endpunkt|/DocumentReference/$retrieve|

Die Input- und Output-Parameter werden durch die OperationDefinition `https://gematik.de/fhir/dipag/OperationDefinition/Retrieve` beschrieben. Es gelten die Festlegungen aus {{pagelink:AF_10180}} mit folgenden Abweichungen:

* Das Rechnungs-Token stammt aus dem Suchergebnis der Dokumentenmetadaten-Suche (vgl. {{pagelink:AF_10138}}, Abschnitt "Suche durch Kostenträger-Organisationen") (`identifier:Token`) und wird nicht durch Versicherte an den Kostenträger weitergegeben.

* Die Berechtigungsprüfung erfolgt über die Zuordnung der Rechnung zur abrufenden Organisation: Der FD MUSS sicherstellen, dass `DocumentReference.context.related` auf die Organization verweist, deren Telematik-ID im Access-Token enthalten ist. Andernfalls MUSS die Anfrage mit `404 - Not Found` beantwortet werden.

* Nach dem erfolgreichen Abruf MUSS der FD den Rechnungsstatus (`DocumentReference.meta.tag:dipag-rechnungsstatus`) gemäß dem Workflowtyp der Rechnung aktualisieren (vgl. {{pagelink:Workflows}}).

* Die zurückgegebene DocumentReference-Ressource MUSS valide gegen das Profil `https://gematik.de/fhir/dipag/StructureDefinition/dipag-dokumentenmetadaten-intern` sein. Der Rechnungsempfänger ist über den Slice `context.related:empfaenger` (Referenz auf die Organization) abgebildet; Markierungen sind nicht vorhanden. Der bei der Einreichung gewählte Workflowtyp ist als `meta.tag:dipag-workflowtyp` enthalten (vgl. {{pagelink:AF_TBD_R13}}).

### Automatisches Löschen von Rechnungen

Der FD MUSS an Organisationen übermittelte Rechnungen automatisch löschen:

* 3 Monate nach Übermittlung der Rechnung, falls die Rechnung nicht abgerufen wurde.
* 72 Stunden nach dem Abruf der Rechnung.

| |  |
|---------|---------------------|
| <img src="https://raw.githubusercontent.com/gematik/spec-Digitale-Patientenrechnung/master/Material/piktogramme/Betriebskoordination_Gruen_gematik.svg" alt="gematik logo" width="75"/> | **Hinweis:** Die endgültigen Löschfristen sind noch nicht abgestimmt. Die hier genannten Werte sind daher als vorläufig zu verstehen. |

### Nicht unterstützte Funktionen

Im Kontext der an Organisationen übermittelten Rechnungen stehen folgende Funktionen nicht zur Verfügung:

* Markierungen (`$process-flag`, Suchparameter `dipag-markierung`)
* Manuelles Ändern des Rechnungsstatus (`$change-status`)
* Löschen von Rechnungsvorgängen durch den Client (`$erase`); das Löschen erfolgt ausschließlich automatisch durch den FD (siehe Abschnitt "Automatisches Löschen von Rechnungen")
* Versichertenprotokoll (AuditEvent)

----
