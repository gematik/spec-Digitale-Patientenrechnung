# Akteure und Interaktionen - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* **Akteure und Interaktionen**

## Akteure und Interaktionen

# Akteure und Interaktionen

Auf technischer Ebene stellt der Fachdienst "Digitale Patientenrechnung" einer Reihe von Endpunkten zur Verfügung, welche innerhalb des Implementierungsleitfandens als "FHIR Custom Operations" basierend auf ["Extended Operations on the RESTful API"](https://hl7.org/fhir/r4/operations.html#3.2.0) oder als Standard-REST-Interaktion basierend auf der [FHIR-Kernspezifikation](https://www.hl7.org/fhir/r4/http.html) beschrieben werden. Registrierte Clients können diese Operations nach erfolgreicher Autorisierung und Authentifizierung über das freie Internet oder die Telematik-Infrastruktur aufgerufen werden (je nach Client). Weitere Hinweise siehe Abschnitt "3 Einordnung in die Telematikinfrastruktur" des Feature-Dokuments "Digitale Patientenrechnung".

In Kombination können die APIs verwendet werden um die Use Cases, beschrieben in Abschnitt [Use Cases](use-cases.md), umzusetzen.

Es ist zu beachten, dass nicht jede User Story oder jedes Epic des Feature-Dokumentes "Digitale Patientenrechnung" durch eine entsprechende FHIR-basierte API umgesetzt wird. Teile des Prozesses, inbesondere Funktionalität rund um die Verwaltung von Berechtigungen, basieren auf anderen technischen Standards und sind somit nicht im Scope des Implementierungsleitfadens.

-------

### Akteure

Folgende Abkürzungen werden für die Akteure innerhalb der Beschreibungen der API-Interaktionen verwendet:

* RE-PS = Primärsystem in der Versorgung oder des Abrechnungsdienstleisters, z.B. KIS, PVS
* DiPag FdV = Frontend des Versicherten, webbasiert oder App
* ITSys-KTR = IT-System des Kostenträgers
* FD = Fachdienst Digitale Patientenrechnung
* ePA = Elektronische Patientenakte des Versicherten

-------

### Rollen im Kontext der DiPag-API

Im Kontext der APIs zur Verwaltung der Digitalenn Patientenrechnungen können unterschiedliche Akteure die entsprechenden APIs aufrufen. Jeder Akteur, welche eine API aufrufen kann, wird nachfolgend vereinfachend als "Client" bezeichnet (gilt für LE-PS, FdV, ITSys-KTR).

Die Rolle des Servers übernimmt stets der Fachdienst "Digitale Patientenrechnung".

-------

### Interaktionen zwischen RE-PS und FD

Nachfolgend sind alle Interaktionen aufgelistet für die eine FHIR-API durch den FD zur Vergügung gestellt werden MUSS.

#### Use Case AF_10138 - Abruf von Rechnungen (Rechnungsempfänger)

Siehe Abschnitt "6.2.3 Ermittlung des Rechnungsempfängers" des Feature-Dokumentes "Digitale Patientenrechnung". Die technische Spezifikation hierzu findet sich unter [R5: Abruf von Rechnungen (Rechnungsempfänger)](R5-rechnungsabruf-rechnungsempfaenger.md).

#### Use Case AF_10136 - Rechnung mit Dokumenten validieren und versenden

Siehe Abschnitt "6.2.4 Validierung und Versand von Rechnungen und Dokumenten" des Feature-Dokumentes "Digitale Patientenrechnung". Die technische Spezifikation hierzu findet sich unter [R1: Rechnung versenden](R1-rechnung-versenden.md).

#### Use Case AF_10136 - Rechnung mit Dokumenten validieren und versenden (Bulk)

Siehe Abschnitt "6.2.4 Validierung und Versand von Rechnungen und Dokumenten" des Feature-Dokumentes "Digitale Patientenrechnung". Die technische Spezifikation hierzu findet sich unter [R2: Rechnung einreichen (Bulk)](R2-rechnung-einreichen-bulk.md).

#### Use Case AF_10271 - Abfrage von angereicherten PDF/A per Token (Rechnungsersteller)

Siehe Abschnitt "6.2.4 Validierung und Versand von Rechnungen und Dokumenten" des Feature-Dokumentes "Digitale Patientenrechnung". Die technische Spezifikation hierzu findet sich unter [R3: PDF/A-Abruf (Rechnungsersteller)](R3-pdf-abruf-rechnungsersteller.md).

#### Use Case AF_10271 - Abfrage von angereicherten PDF/A per Token (Rechnungsersteller) (Bulk)

Siehe Abschnitt "6.2.4 Validierung und Versand von Rechnungen und Dokumenten" des Feature-Dokumentes "Digitale Patientenrechnung". Die technische Spezifikation hierzu findet sich unter [R4: PDF/A-Abruf (Rechnungsersteller, Bulk)](R4-pdf-abruf-rechnungsersteller-bulk.md).

### Interaktionen zwischen DiPag FdV und FD

#### Use Case AF_10262 - Abfrage von Daten zu Rechnungen und Dokumenten per Token (Rechnungsempfänger)

Siehe Abschnitt "6.3.1 Abruf von Rechnungen und Dokumenten" des Feature-Dokumentes "Digitale Patientenrechnung". Die technische Spezifikation hierzu findet sich unter [R6: Abfrage per Token (Rechnungsempfänger)](R6-abfrage-token-rechnungsempfaenger.md).

#### Use Case AF_10245 - Manuelles Ändern des Bearbeitungsstatus von Rechnungen

Siehe Abschnitt "6.4 Verwaltung von empfangenen Rechnungen" des Feature-Dokumentes "Digitale Patientenrechnung". Die technische Spezifikation hierzu findet sich unter [R7: Bearbeitungsstatus ändern](R7-status-aendern.md).

#### Use Case AF_10160 - Manuelles Markieren von Rechnungen und Dokumenten

Siehe Abschnitt "6.4 Verwaltung von empfangenen Rechnungen" des Feature-Dokumentes "Digitale Patientenrechnung". Die technische Spezifikation hierzu findet sich unter [R8: Markieren](R8-markieren.md).

#### Löschen eines Rechnungsvorganges

Siehe Abschnitt "6.4 Verwaltung von empfangenen Rechnungen" des Feature-Dokumentes "Digitale Patientenrechnung". Die technische Spezifikation hierzu findet sich unter [R9: Löschen eines Rechnungsvorganges](R9-loeschen.md).

#### Use Case AF_10203 - Nutzerprotokoll einsehen

Siehe Abschnitt "6.7 Nutzerprotokolle" des Feature-Dokumentes "Digitale Patientenrechnung". Die technische Spezifikation hierzu findet sich unter [R10: Nutzerprotokoll einsehen](R10-nutzungsprotokoll.md).

### Interaktionen zwischen ITSys-KTR und FD

#### Use Case AF_10180 - Abfrage von Daten zu Rechnungen und Dokumenten per Token (Kostenträger)

Siehe Abschnitt "6.5.2 Anwendungsfälle des Kostenträgers" des Feature-Dokumentes "Digitale Patientenrechnung". Die technische Spezifikation hierzu findet sich unter [R11: Abfrage per Token (Kostenträger)](R11-abfrage-token-kostentraeger.md).

