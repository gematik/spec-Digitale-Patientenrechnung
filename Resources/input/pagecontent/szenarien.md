# Szenarien

Um den Zusammenhang zwischen den einzelnen API-Interaktionen zur Verarbeitung einer Digitalen Patientenrechnung aufzuzeigen, werden im nachfolgenden Abschnitt Szenarien entworfen. Diese enthalten Informationen darüber, welcher Client unter welchen Bedingungen eine API aufrufen kann, sowie detailierte Beschreibungen der zu übermittelnden bzw. zu empfangenden Datenobjekte.

Die Szenarien sind nach dem aufrufenden Akteur (Client) gruppiert:

## RE-PS als Akteur

Primärsystem in der Versorgung oder des Abrechnungsdienstleisters, z. B. KIS, PVS.

- [R0: Abfrage des Rechnungsempfängers und dessen Einwilligung zum Rechnungsversand](R0-rechnungsempfaenger-ermitteln.html)
- [R1: Rechnung mit Dokumenten validieren und versenden](R1-rechnung-versenden.html)
- [R2: Rechnung validieren/einreichen (Bulk)](R2-rechnung-einreichen-bulk.html)
- [R3: Abfrage von angereicherten PDF/A per Token (Rechnungsersteller)](R3-pdf-abruf-rechnungsersteller.html)
- [R4: Abfrage von angereicherten PDF/A per Token (Rechnungsersteller) (Bulk)](R4-pdf-abruf-rechnungsersteller-bulk.html)

## DiPag FdV als Akteur

Frontend des Versicherten, webbasiert oder App.

- [R5: Abruf von Rechnungen (Rechnungsempfänger)](R5-rechnungsabruf-rechnungsempfaenger.html)
- [R6: Abfrage von Daten zu Rechnungen und Dokumenten per Token (Rechnungsempfänger)](R6-abfrage-token-rechnungsempfaenger.html)
- [R7: Manuelles Ändern des Bearbeitungsstatus von Rechnungen](R7-status-aendern.html)
- [R8: Manuelles Markieren von Rechnungen und Dokumenten](R8-markieren.html)
- [R9: Löschen eines Rechnungsvorganges](R9-loeschen.html)
- [R10: Nutzerprotokoll einsehen](R10-nutzungsprotokoll.html)

## ITSys-KTR als Akteur

IT-System des Kostenträgers.

- [R11: Abfrage von Daten zu Rechnungen und Dokumenten per Token (Kostenträger)](R11-abfrage-token-kostentraeger.html)

