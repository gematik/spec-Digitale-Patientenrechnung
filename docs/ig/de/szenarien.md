# Szenarien - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* **Szenarien**

## Szenarien

# Szenarien

Um den Zusammenhang zwischen den einzelnen API-Interaktionen zur Verarbeitung einer Digitalen Patientenrechnung aufzuzeigen, werden im nachfolgenden Abschnitt Szenarien entworfen. Diese enthalten Informationen darüber, welcher Client unter welchen Bedingungen eine API aufrufen kann, sowie detailierte Beschreibungen der zu übermittelnden bzw. zu empfangenden Datenobjekte.

Die Szenarien sind nach dem aufrufenden Akteur (Client) gruppiert:

## RE-PS als Akteur

Primärsystem in der Versorgung oder des Abrechnungsdienstleisters, z. B. KIS, PVS.

* [R0: Abfrage des Rechnungsempfängers und dessen Einwilligung zum Rechnungsversand](R0-rechnungsempfaenger-ermitteln.md)
* [R1: Rechnung mit Dokumenten validieren und versenden](R1-rechnung-versenden.md)
* [R2: Rechnung validieren/einreichen (Bulk)](R2-rechnung-einreichen-bulk.md)
* [R3: Abfrage von angereicherten PDF/A per Token (Rechnungsersteller)](R3-pdf-abruf-rechnungsersteller.md)
* [R4: Abfrage von angereicherten PDF/A per Token (Rechnungsersteller) (Bulk)](R4-pdf-abruf-rechnungsersteller-bulk.md)

## DiPag FdV als Akteur

Frontend des Versicherten, webbasiert oder App.

* [R5: Abruf von Rechnungen (Rechnungsempfänger)](R5-rechnungsabruf-rechnungsempfaenger.md)
* [R6: Abfrage von Daten zu Rechnungen und Dokumenten per Token (Rechnungsempfänger)](R6-abfrage-token-rechnungsempfaenger.md)
* [R7: Manuelles Ändern des Bearbeitungsstatus von Rechnungen](R7-status-aendern.md)
* [R8: Manuelles Markieren von Rechnungen und Dokumenten](R8-markieren.md)
* [R9: Löschen eines Rechnungsvorganges](R9-loeschen.md)
* [R10: Nutzerprotokoll einsehen](R10-nutzungsprotokoll.md)

## ITSys-KTR als Akteur

IT-System des Kostenträgers.

* [R11: Abfrage von Daten zu Rechnungen und Dokumenten per Token (Kostenträger)](R11-abfrage-token-kostentraeger.md)

