# Rechnungsinhalt - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* **Rechnungsinhalt**

## Rechnungsinhalt

# Rechnungsinhalt

Der strukturierte Rechnungsinhalt einer Digitalen Patientenrechnung wird über die folgenden Profile abgebildet: `DiPagInstitution`, `DiPagPerson`, `DiPagPatient`, `DiPagRechnung`, `DiPagRechnungsposition`, `DiPagRechnungsdiagnose` und `DiPagRechnungsprozedur`. Diese Seite zeigt zwei Musterbeispiele sowie die Zuordnung der fachlichen Rechnungsinhalte zu den jeweiligen FHIR-Elementen.

## Beispiele

Im IG sind zwei Musterbeispiele für die Rechnungsinhalte enthalten.

### Maximalbeispiel

Dieses stellt ein Maximalbeispiel dar, welches alle möglichen Elemente befüllt. Es basiert auf keiner real existierenden Rechnung, sondern dient ausschließlich der Veranschaulichung aller möglichen Elemente und deren Befüllung.

[Bundle-BundleExample](Bundle-BundleExample.md)

### Beispiel auf Basis einer realen Rechnung

Dieses wurde auf Basis einer realen Rechnung erstellt.

[Bundle-MusterrechnungBundle](Bundle-MusterrechnungBundle.md)

Die zugrunde liegende Rechnung:

## Zuordnung Rechnungsinhalte zum FHIR-Element

Die folgende Tabelle ordnet – je Profil des strukturierten Rechnungsinhalts – die fachlichen Rechnungsinhalte (Kurzbeschreibung) den jeweiligen FHIR-Elementen (Feldname) zu. Aufgeführt sind alle Must-Support-Elemente mit Kurzbeschreibung; ergänzende Implementierungshinweise stehen in der Spalte „Hinweise". Die Tabelle wird beim Build automatisch aus den Profilen erzeugt (SQL-on-FHIR).

| | | | |
| :--- | :--- | :--- | :--- |
| Digitale Patientenrechnung Institution | Postfach | `Organization.address:Postfach` | Das Postfach SOLL vorhanden sein. |
| Digitale Patientenrechnung Institution | Ort | `Organization.address:Postfach.city` | Der Ort SOLL vorhanden sein. |
| Digitale Patientenrechnung Institution | Länderkennzeichen | `Organization.address:Postfach.country` | Das Länderkennzeichen KANN vorhanden sein. |
| Digitale Patientenrechnung Institution | Postfach-Angabe | `Organization.address:Postfach.line` | Die Postfach-Angabe SOLL angegeben werden, die Extensions zur strukurierten Erfassung KANN vorhanden sein. |
| Digitale Patientenrechnung Institution | Strassenanschrift | `Organization.address:Strassenanschrift` | Die Strassenanschrift SOLL vorhanden sein. |
| Digitale Patientenrechnung Institution | Ort | `Organization.address:Strassenanschrift.city` | Der Ort SOLL vorhanden sein. |
| Digitale Patientenrechnung Institution | Länderkennzeichen | `Organization.address:Strassenanschrift.country` | Das Länderkennzeichen KANN vorhanden sein. |
| Digitale Patientenrechnung Institution | Straße und Hausnummer | `Organization.address:Strassenanschrift.line` | Straße und Hausnummer SOLLEN angegeben werden, die Extensions zur strukurierten Erfassung KÖNNEN vorhanden sein. |
| Digitale Patientenrechnung Institution | Betriebsstättennummer | `Organization.identifier:BSNR` | Die Betriebsstättennummer für vertragsärztliche Praxen KANN vorhanden sein. |
| Digitale Patientenrechnung Institution | System der BSNR | `Organization.identifier:BSNR.system` | Das System der BSNR MUSS vorhanden sein. |
| Digitale Patientenrechnung Institution | Betriebsstättennummer | `Organization.identifier:BSNR.value` |  |
| Digitale Patientenrechnung Institution | IK-Nummer | `Organization.identifier:IKNR` | Für alle Institutionen KANN die IK-Nummer vorhanden sein. |
| Digitale Patientenrechnung Institution | System der IK-Nummer | `Organization.identifier:IKNR.system` | Das System der IK-Nummer MUSS vorhanden sein. |
| Digitale Patientenrechnung Institution | IK-Nummer | `Organization.identifier:IKNR.value` |  |
| Digitale Patientenrechnung Institution | Abrechnungsnummer für zahnärztliche Praxen | `Organization.identifier:KZVAbrechnungsnummer` | Die Abrechnungsnummer für zahnärztliche Praxen KANN vorhanden sein. |
| Digitale Patientenrechnung Institution | System der Abrechnungsnummer für zahnärztliche Praxen | `Organization.identifier:KZVAbrechnungsnummer.system` | Das System der Abrechnungsnummer für zahnärztliche Praxen MUSS vorhanden sein, wenn eine Abrechnungsnummer angegeben ist. |
| Digitale Patientenrechnung Institution | Abrechnungsnummer für zahnärztliche Praxen | `Organization.identifier:KZVAbrechnungsnummer.value` |  |
| Digitale Patientenrechnung Institution | Telematik-ID (VZD-Eintrag) | `Organization.identifier:Telematik-ID` | Die Telematik-ID (VZD-Eintrag) SOLL vorhanden sein. |
| Digitale Patientenrechnung Institution | System der Telematik-ID | `Organization.identifier:Telematik-ID.system` | Das System der Telematik-ID MUSS vorhanden sein. |
| Digitale Patientenrechnung Institution | Telematik-ID (VZD-Eintrag) | `Organization.identifier:Telematik-ID.value` |  |
| Digitale Patientenrechnung Institution | Umsatzsteuer-Identifikationsnummer | `Organization.identifier:USt-ID-Nr` | Die Umsatzsteuer-Identifikationsnummer KANN vorhanden sein. Sie KANN vorkommen, wenn eine Institution die Rolle eines 'Abweichender Forderungsinhaber', sowie des 'Rechnungsersteller' inne hat. |
| Digitale Patientenrechnung Institution | Institutionsname | `Organization.name` | Der Institutionsname SOLL vorhanden sein.Im Namen kann auch eine Inhaberschaftsangabe vorhanden sein, z.B. 'Praxis Dr. Muster' oder 'MVZ Dr. Muster'. |
| Digitale Patientenrechnung Institution | Telefon | `Organization.telecom:Telefon` | Die Angabe einer Telefonnummer KANN vorhanden sein. Sie KANN vorkommen, wenn eine Institution die Rolle eines 'Abweichender Forderungsinhaber', sowie des 'Rechnungsersteller' inne hat. |
| Digitale Patientenrechnung Institution | Telefonnummer | `Organization.telecom:Telefon.value` |  |
| Digitale Patientenrechnung Person | Postfach | `Practitioner.address:Postfach` | Das Postfach SOLL vorhanden sein. |
| Digitale Patientenrechnung Person | Ort | `Practitioner.address:Postfach.city` | Der Ort SOLL vorhanden sein. |
| Digitale Patientenrechnung Person | Länderkennzeichen | `Practitioner.address:Postfach.country` | Das Länderkennzeichen KANN vorhanden sein. |
| Digitale Patientenrechnung Person | Postfach-Angabe | `Practitioner.address:Postfach.line` | Die Postfach-Angabe SOLL angegeben werden, die Extensions zur strukurierten Erfassung KANN vorhanden sein. |
| Digitale Patientenrechnung Person | Strassenanschrift der Arbeitsadresse | `Practitioner.address:Strassenanschrift` | Die Strassenanschrift SOLL vorhanden sein. Es handelt sich hierbei um eine Arbeitsadresse, nicht um eine Privatadresse. |
| Digitale Patientenrechnung Person | Ort | `Practitioner.address:Strassenanschrift.city` | Der Ort SOLL vorhanden sein. |
| Digitale Patientenrechnung Person | Länderkennzeichen | `Practitioner.address:Strassenanschrift.country` | Das Länderkennzeichen KANN vorhanden sein. |
| Digitale Patientenrechnung Person | Straße und Hausnummer | `Practitioner.address:Strassenanschrift.line` | Straße und Hausnummer SOLLEN angegeben werden, die Extensions zur strukurierten Erfassung KÖNNEN vorhanden sein. |
| Digitale Patientenrechnung Person | Telematik-ID (VZD-Eintrag) | `Practitioner.identifier:Telematik-ID` | Die Telematik-ID (VZD-Eintrag) SOLL vorhanden sein. |
| Digitale Patientenrechnung Person | Telematik-ID (VZD-Eintrag) | `Practitioner.identifier:Telematik-ID.value` |  |
| Digitale Patientenrechnung Person | Umsatzsteuer-Identifikationsnummer | `Practitioner.identifier:USt-ID-Nr` | Die Umsatzsteuer-Identifikationsnummer KANN vorhanden sein. Sie KANN vorkommen, wenn eine Institution die Rolle eines 'Abweichender Forderungsinhaber', sowie des 'Rechnungsersteller' inne hat. |
| Digitale Patientenrechnung Person | Name | `Practitioner.name` | Der Name SOLL vorhanden sein. |
| Digitale Patientenrechnung Person | Nachname | `Practitioner.name.family` | Der Nachname SOLL vorhanden sein, die Extensions zur strukurierten Erfassung KÖNNEN vorhanden sein. |
| Digitale Patientenrechnung Person | Titel | `Practitioner.name.prefix` | Der Titel SOLL vorhanden sein, die Extension zur Qualifizierung KANN vorhanden sein. |
| Digitale Patientenrechnung Person | Voller Name inkl. Anrede | `Practitioner.name.text` | Die Anrede SOLLEN vorhanden sein. |
| Digitale Patientenrechnung Person | Telefon | `Practitioner.telecom:Telefon` | Die Angabe einer Telefonnummer KANN vorhanden sein. Sie KANN vorkommen, wenn eine Person die Rolle eines 'Abweichender Forderungsinhaber' inne hat. |
| Digitale Patientenrechnung Person | Telefonnummer | `Practitioner.telecom:Telefon.value` |  |
| Digitale Patientenrechnung Patient | Postfach | `Patient.address:Postfach` | Das Postfach SOLL vorhanden sein. |
| Digitale Patientenrechnung Patient | Ort | `Patient.address:Postfach.city` | Der Ort SOLL vorhanden sein. |
| Digitale Patientenrechnung Patient | Länderkennzeichen | `Patient.address:Postfach.country` | Das Länderkennzeichen KANN vorhanden sein. |
| Digitale Patientenrechnung Patient | Postfach-Angabe | `Patient.address:Postfach.line` | Die Postfach-Angabe SOLL angegeben werden, die Extensions zur strukurierten Erfassung KANN vorhanden sein. |
| Digitale Patientenrechnung Patient | Strassenanschrift | `Patient.address:Strassenanschrift` | Die Strassenanschrift SOLL vorhanden sein. |
| Digitale Patientenrechnung Patient | Ort | `Patient.address:Strassenanschrift.city` | Der Ort SOLL vorhanden sein. |
| Digitale Patientenrechnung Patient | Länderkennzeichen | `Patient.address:Strassenanschrift.country` | Das Länderkennzeichen KANN vorhanden sein. |
| Digitale Patientenrechnung Patient | Straße und Hausnummer | `Patient.address:Strassenanschrift.line` | Straße und Hausnummer SOLLEN angegeben werden, die Extensions zur strukurierten Erfassung KÖNNEN vorhanden sein. |
| Digitale Patientenrechnung Patient | Geburtsdatum | `Patient.birthDate` | Das Geburtsdatum SOLL vorhanden sein. |
| Digitale Patientenrechnung Patient | KVNR (Krankenversichertennummer) | `Patient.identifier:KVNR` | Die KVNR MUSS vorkommen, wenn eine Person die Rolle des 'Rechnungsempfänger' inne hat. |
| Digitale Patientenrechnung Patient | IK-Nummer der Krankenkasse | `Patient.identifier:KVNR.assigner.identifier` | Bei GKV-Versicherten Personen SOLL die IK-Nummer der Krankenkasse angegeben werden. |
| Digitale Patientenrechnung Patient | System der IK-Nummer | `Patient.identifier:KVNR.assigner.identifier.system` | Das System der IK-Nummer MUSS vorhanden sein. |
| Digitale Patientenrechnung Patient | IK-Nummer der Krankenkasse | `Patient.identifier:KVNR.assigner.identifier.value` |  |
| Digitale Patientenrechnung Patient | System des KVZ10 Code | `Patient.identifier:KVNR.system` | Das System des KVZ10 Code MUSS vorhanden sein. |
| Digitale Patientenrechnung Patient | KVNR (Krankenversichertennummer) | `Patient.identifier:KVNR.value` |  |
| Digitale Patientenrechnung Patient | Name | `Patient.name` | Der Name SOLL vorhanden sein. |
| Digitale Patientenrechnung Patient | Nachname | `Patient.name.family` | Der Nachname MUSS in der Rolle einer 'Behandelte Person' vorhanden sein. Der Nachname SOLL in der Rolle eines 'Rechnungsempfänger' vorhanden sein. Die Extensions zur strukurierten Erfassung KÖNNEN vorhanden sein. |
| Digitale Patientenrechnung Patient | Titel | `Patient.name.prefix` | Der Titel SOLL vorhanden sein, die Extension zur Qualifizierung KANN vorhanden sein. |
| Digitale Patientenrechnung Patient | Voller Name inkl. Anrede | `Patient.name.text` | Die Anrede SOLLEN vorhanden sein. |
| Digitale Patientenrechnung Rechnung | Rechnungsdatum | `Invoice.date` | Das Rechnungsdatum MUSS vorhanden sein. |
| Digitale Patientenrechnung Rechnung | Diagnose | `Invoice.extension:AbrechnungsDiagnoseProzedur` | Im Falle einer GOÄ oder GOÄ-neu Rechnung, SOLLEN Diagnosen und Prozeduren vorhanden sein. Im Falle einer GOZ oder BEMA Rechnung werden keine Diagnosen oder Prozedur gefordert. |
| Digitale Patientenrechnung Rechnung | Zuordnung von Diagnosen oder Prozeduren zur Rechnung | `Invoice.extension:AbrechnungsDiagnoseProzedur.extension:Referenz.value[x]` | Diagnosen und Prozeduren SOLLEN zur Rechnung zugeordnet sein. |
| Digitale Patientenrechnung Rechnung | Kennzeichen Hauptdiagnose | `Invoice.extension:AbrechnungsDiagnoseProzedur.extension:Use.value[x]` | Das Kennzeichen Hauptdiagnose SOLL vorhanden sein, wenn es sich um eine HD handelt. |
| Digitale Patientenrechnung Rechnung | Einleitung (Diagnose und Prozedure als Freitextangabe) | `Invoice.extension:AbrechnungsDiagnoseProzedurFreitext` | Im Falle einer GOÄ, GOZ oder BEMA Rechnung, SOLLEN Diagnose und Prozedure als Freitextangabe vorhanden sein. Im Falle einer GOÄ-neu Rechnung werden keine Diagnosen und Prozeduren als Freitext gefordert. |
| Digitale Patientenrechnung Rechnung | Referenz auf Heil- und Kostenplan, Kostenvoranschlag oder Kostenübernahmeantrag | `Invoice.extension:Antragsreferenz.value[x]` | Die Antragsreferenz SOLL vorhanden sein. |
| Digitale Patientenrechnung Rechnung | NamingSystem der Antragsreferenz | `Invoice.extension:Antragsreferenz.value[x].system` |  |
| Digitale Patientenrechnung Rechnung | Antragsreferenz | `Invoice.extension:Antragsreferenz.value[x].value` |  |
| Digitale Patientenrechnung Rechnung | Behandlungsart | `Invoice.extension:Behandlungsart` | Die Behandlungsart MUSS vorhanden sein. |
| Digitale Patientenrechnung Rechnung | Behandlungszeitraum | `Invoice.extension:Behandlungszeitraum` | Entweder ein Behandlungszeitraum, oder ein -datum SOLL bei einer GOÄ Rechnung vorhanden sein. Im Falle einer GOZ- oder BEMA- und GOZ-Rechnung ist die Angabe eines Behandlungszeitraums oder -datums optional. |
| Digitale Patientenrechnung Rechnung | Behandlungsdatum | `Invoice.extension:Behandlungszeitraum.value[x]:valueDate` |  |
| Digitale Patientenrechnung Rechnung | Enddatum | `Invoice.extension:Behandlungszeitraum.value[x]:valuePeriod.end` |  |
| Digitale Patientenrechnung Rechnung | Startdatum | `Invoice.extension:Behandlungszeitraum.value[x]:valuePeriod.start` |  |
| Digitale Patientenrechnung Rechnung | Summe Punktzahlen der BEMA-Leistungen | `Invoice.extension:BemaPunktsumme.extension:Punktsumme` | Die Summe Punktzahlen der BEMA-Leistungen SOLL vorhanden sein. |
| Digitale Patientenrechnung Rechnung | Punktwert der BEMA-Leistungen | `Invoice.extension:BemaPunktsumme.extension:Punktwert` | Der Punktwert der BEMA-Leistungen SOLL vorhanden sein. |
| Digitale Patientenrechnung Rechnung | Fachrichtung | `Invoice.extension:Fachrichtung` | Die Fachrichtung MUSS vorhanden sein. Im Zahärztlichen Bereich SOLLEN nur die Fachrichtungen Oralchirurgie (ORAL), Kieferorthopädie (KIEF) und Zahnmedizin (MZKH) verwendet werden. |
| Digitale Patientenrechnung Rechnung | Info Korrekturrechnung | `Invoice.extension:Korrekturrechnung` | Wenn die Instanz dieser Rechnung eine Korrektur einer anderen Rechnung ist, SOLL die ersetzte Rechnung hier referenziert werden. |
| Digitale Patientenrechnung Rechnung | Info Korrekturtoken | `Invoice.extension:Korrekturtoken` | Wenn die Instanz dieser Rechnung eine Korrektur einer anderen Rechnung ist, SOLL das Token der ersetzten Rechnung hier angegeben werden. |
| Digitale Patientenrechnung Rechnung | Rechnungs-Nr. (der LEI) | `Invoice.identifier:Rechnungsnummer` | Die Rechnungs-Nr. (der LEI) MUSS vorhanden sein. |
| Digitale Patientenrechnung Rechnung | NamingSystem der Rechnungs-Nr. (der LEI) | `Invoice.identifier:Rechnungsnummer.system` |  |
| Digitale Patientenrechnung Rechnung | Rechnungs-Nr. (der LEI) | `Invoice.identifier:Rechnungsnummer.value` |  |
| Digitale Patientenrechnung Rechnung | Rechnungsersteller | `Invoice.issuer` | Der Rechnungsersteller MUSS vorhanden sein. |
| Digitale Patientenrechnung Rechnung | Rechnungspositionen | `Invoice.lineItem` |  |
| Digitale Patientenrechnung Rechnung | Referenz auf die Instanz der Rechnungsposition | `Invoice.lineItem.chargeItem[x]` | Die Referenz auf die Instanz der Rechnungsposition MUSS vorhanden sein. |
| Digitale Patientenrechnung Rechnung | Betrag pro Rechnungsposition | `Invoice.lineItem.priceComponent:BruttoBetrag` | Im Falle einer GOÄ, GOÄ-neu oder GOZ Rechnungsposition, SOLL der Betrag pro Rechnungsposition vorhanden sein. Im Falle einer BEMA Rechnungsposition ist das Element nicht gefordert. |
| Digitale Patientenrechnung Rechnung | Steuern enthalten im Brutto Betrag | `Invoice.lineItem.priceComponent:Steuern` | Die enthaltenen Steuern SOLLEN vorhanden sein. |
| Digitale Patientenrechnung Rechnung | Reihenfolge der Rechnungsposition | `Invoice.lineItem.sequence` | Die Reihenfolge der Rechnungsposition MUSS mit einer Sequenz-Nummer angegeben werden. Die Sequenz muss mit 1 als erste Ziffer beginnen. |
| Digitale Patientenrechnung Rechnung | Hinweise an den Kostenträger | `Invoice.note` | Der Hinweise an den Kostenträger KANN vorhanden sein. |
| Digitale Patientenrechnung Rechnung | weitere behandelnde Leistungserbringer oder abweichender Forderungsinhaber | `Invoice.participant` |  |
| Digitale Patientenrechnung Rechnung | Abweichender Forderungsinhaber | `Invoice.participant:Forderungsinhaber` | Der abweichender Forderungsinhaber SOLL vorhanden sein. |
| Digitale Patientenrechnung Rechnung | Behandelnde Leistungserbringer | `Invoice.participant:Leistungserbringer` | Im Falle einer GOÄ oder GOÄ-neu Rechnung, SOLLEN weitere behandelnde Leistungserbringer vorhanden sein. Im Falle einer GOZ oder BEMA Rechnung, KÖNNEN weitere behandelnde Leistungserbringer vorhanden sein.Im Falle einer GOZ oder BEMA Rechnung, MÜSSEN Leistungserbringer als Organisation referenziert werden, die Angabe von Personen ist in diesem Fall nicht zulässig. |
| Digitale Patientenrechnung Rechnung | Zahlungsdaten Überweisung und weitere Zahlungsmethoden | `Invoice.paymentTerms` | Die Zahlungsdaten zur Überweisung SOLLEN vorhanden sein. Weitere Zahlungsmethoden wie bspw. Paypal, Klarna, Kreditkarte KÖNNEN auch hier angegeben werden. Ebenfalls sollte hier der Zahlbetrag in EUR inkl. potenzieller Abzüge durch Anzahlungen, Vorauszahlungen oder Abschlagzahlungen. |
| Digitale Patientenrechnung Rechnung | Zahlungsverbindung für die Überweisung (basiert auf HL7 FM WG Draft) | `Invoice.paymentTerms.extension:PaymentTo` | Die Zahlungsverbindung SOLL vorhanden sein, wenn die Zahlungsdaten zur Überweisung angegeben werden. Diese Extension basiert auf dem DRAFT der HL7 Financial Management Working Group und wird sich mit der Veröffentlichung der offiziellen HL7-Standard-Extension ändern. |
| Digitale Patientenrechnung Rechnung | Zahlungsziel als Datum oder Fristangabe | `Invoice.paymentTerms.extension:Zahlungsziel` | Das Zahlungsziel SOLL vorhanden sein. |
| Digitale Patientenrechnung Rechnung | Rechnungsempfänger | `Invoice.recipient` |  |
| Digitale Patientenrechnung Rechnung | Status der Rechnung | `Invoice.status` | Der Status MUSS vorhanden sein. |
| Digitale Patientenrechnung Rechnung | Behandelte Person | `Invoice.subject` | Der Name der behandelten Person SOLL angegeben werden und kann vom Rechnungsempfänger abweichen, z.B. wenn Eltern Rechnungen für ihre Kinder erhalten. |
| Digitale Patientenrechnung Rechnung | Rechnungsbetrag (Brutto) | `Invoice.totalGross` | Der Rechnungsbetrag in Brutto MUSS vorhanden sein. |
| Digitale Patientenrechnung Rechnung | Rechnungsbetrag (Netto) | `Invoice.totalNet` | Der Rechnungsbetrag in Netto MUSS vorhanden sein. |
| Digitale Patientenrechnung Rechnung | Abzug | `Invoice.totalPriceComponent:Abzug` | Der Abzug SOLL vorhanden sein. |
| Digitale Patientenrechnung Rechnung | Wert in EUR | `Invoice.totalPriceComponent:Abzug.amount` |  |
| Digitale Patientenrechnung Rechnung | Kategorisierung des Abzugs | `Invoice.totalPriceComponent:Abzug.code` | Die Kategorisierung des Abzugs SOLL vorhanden sein. |
| Digitale Patientenrechnung Rechnung | Kassenanteil in Prozent | `Invoice.totalPriceComponent:Abzug.extension:Kassenanteil` | Im Falle einer BEMA oder gemischten BEMA und GOZ Rechnung SOLL der Kassenanteil in Prozent vorhanden sein. Im Falle einer GOZ Rechnung KANN der Kassenanteil in Prozent vorhanden sein. Im Falle einer GOÄ oder GOÄ-neu Rechnung ist das Element nicht gefordert. |
| Digitale Patientenrechnung Rechnung | Summe aller Fremdlaborleistungen | `Invoice.totalPriceComponent:Fremdlaborleistungen` | Die Summe aller Fremdlaborleistungen SOLL vorhanden sein. |
| Digitale Patientenrechnung Rechnung | Wert in EUR | `Invoice.totalPriceComponent:Fremdlaborleistungen.amount` |  |
| Digitale Patientenrechnung Rechnung | Minderungen nach §7 GOZ | `Invoice.totalPriceComponent:MinderungNachGOZ` | Im Falle einer GOZ Rechnung SOLLEN die Minderungen nach §7 GOZ vorhanden sein. Im Falle einer GOÄ, GOÄ-neu oder BEMA Rechnung ist das Element nicht gefordert. |
| Digitale Patientenrechnung Rechnung | Wert in EUR | `Invoice.totalPriceComponent:MinderungNachGOZ.amount` |  |
| Digitale Patientenrechnung Rechnung | Summe aller Rechnungspositionen | `Invoice.totalPriceComponent:SummeRechnungspositionen` | Die Summe aller Rechnungspositionen SOLL vorhanden sein. |
| Digitale Patientenrechnung Rechnung | Wert in EUR | `Invoice.totalPriceComponent:SummeRechnungspositionen.amount` |  |
| Digitale Patientenrechnung Rechnung | Abrechnungsart der Rechnung | `Invoice.type.coding:AusrichtungDerRechnung` | Die Grundsätzliche Ausrichtung der Rechnung (Abrechnungsart) SOLL vorhanden sein. |
| Digitale Patientenrechnung Rechnung | Zusatzinformation zur Abrechnungsart | `Invoice.type.coding:AusrichtungDerRechnung.extension:Zusatzinformation` | Die Zusatzinformation zur Abrechnungsart SOLL vorhanden sein, wenn es sich um eine Abrechnung nach §13 Abs. 2 SGB V handelt. |
| Digitale Patientenrechnung Rechnung | Rechnungsart | `Invoice.type.coding:Rechnungsart` | Die Rechnungsart SOLL vorhanden sein. |
| Digitale Patientenrechnung Rechnungsposition | Zahn/Region | `ChargeItem.bodysite.extension:ZahnRegion` | Im Falle einer GOZ oder BEMA Rechnungsposition, SOLL das Element Zahn/Region vorhanden sein. Im Falle einer GOÄ oder GOÄ-neu Rechnungsposition ist das Element nicht gefordert. Im GOZ-Rechnungsformular zugelassen ist* zwei Ziffern durch Komma und Leerzeichen getrennt
* Bereich zugelassen, z.B. 17-27 Die Kieferbezeichnung mit 'OK' und 'UK' ist im Formular nicht zulässig, da die Verwendung allerdings die Regel ist, wird der Inhalt des Feldes nicht nach Korrektheit überprüft.
 |
| Digitale Patientenrechnung Rechnungsposition | Gebührenziffer | `ChargeItem.code` | Ist der Rechnungspositionstyp auf eine Gebührenordnung festgelegt, SOLL die Gebührenziffer vorhanden sein. Mit 'Gebührenziffer' ist die eindeutige Kennung zu verstehen, die eine spezifische medizinische oder zahnmedizinische Leistung in den entsprechenden Gebührenordnungen beschreibt. Sie dient als Grundlage für die Abrechnung zwischen Leistungserbringern (Ärzten/Zahnärzten) und Kostenträgern (z. B. Krankenkassen oder Patienten). In spezifischen Gebührenordnungen werden ggf. abweichende Begriffe hierfür verwendet. |
| Digitale Patientenrechnung Rechnungsposition | GOÄ Ziffer | `ChargeItem.code.coding:GOAE` |  |
| Digitale Patientenrechnung Rechnungsposition | Legendentext der Gebührenordnung / Leistungsbeschreibung | `ChargeItem.code.coding:GOAE.display` |  |
| Digitale Patientenrechnung Rechnungsposition | GOZ Ziffer | `ChargeItem.code.coding:GOZ` |  |
| Digitale Patientenrechnung Rechnungsposition | Legendentext der Gebührenordnung / Leistungsbeschreibung | `ChargeItem.code.coding:GOZ.display` |  |
| Digitale Patientenrechnung Rechnungsposition | Bezeichnung für Auslagen/Sachkosten, z.B. Wirkstoffname oder Fremdlaborleistung | `ChargeItem.code.text` |  |
| Digitale Patientenrechnung Rechnungsposition | Behandlungsdatum | `ChargeItem.extension:Behandlungsdatum` | Das Behandlungsdatum SOLL vorhanden sein. |
| Digitale Patientenrechnung Rechnungsposition | Gebühr Einfachsatz in EUR | `ChargeItem.extension:GebuehrenordnungAngaben.extension:Einfachsatz` | Im Falle einer GOÄ oder GOÄ-neu Rechnungsposition, SOLL der Gebühr Einfachsatz in EUR vorhanden sein. Im Falle einer BEMA oder GOZ Rechnungsposition ist er nicht gefordert. |
| Digitale Patientenrechnung Rechnungsposition | Faktor Grund | `ChargeItem.extension:GebuehrenordnungAngaben.extension:Faktor.extension:FaktorGrund` | Im Falle einer GOÄ-neu Rechnungsposition SOLL der Faktor Grund vorhanden sein. Im Falle einer GOÄ Rechnungsposition KANN der Faktor Grund vorhanden sein. Im Falle einer GOZ oder BEMA Rechnungsposition ist der Faktor Grund nicht gefordert. |
| Digitale Patientenrechnung Rechnungsposition | Minderungen nach §6a GOÄ in Prozent | `ChargeItem.extension:GebuehrenordnungAngaben.extension:MinderungP6GOAE` | Im Falle einer GOÄ oder GOÄ-neu Rechnungsposition SOLL die Minderungen nach §6a GOÄ in Prozent vorhanden sein. Im Falle einer GOZ oder BEMA Rechnungsposition ist das Element nicht gefordert. |
| Digitale Patientenrechnung Rechnungsposition | Punktzahl BEMA | `ChargeItem.extension:GebuehrenordnungAngaben.extension:Punktzahl` | Im Fall einer BEMA Rechnungsposition SOLL die Punktzahl BEMA vorhanden sein. Im Falle einer GOÄ, GOÄ-neu oder GOZ Rechnungsposition ist die Punktzahl BEMA nicht gefordert. |
| Digitale Patientenrechnung Rechnungsposition | Rechnungspositionstyp | `ChargeItem.extension:Rechnungspositionstyp` | Der Rechnungspositionstyp MUSS vorhanden sein. |
| Digitale Patientenrechnung Rechnungsposition | Wegegeld oder Reiseentschädigung | `ChargeItem.extension:WegegeldReiseentschaedigung` | Im Falle einer GOÄ, GOÄ-neu oder GOZ Rechnungsposition SOLL Wegegeld oder Reiseentschädigung vorhanden sein. Im Falle einer BEMA Rechnungsposition ist das Element nicht gefordert. |
| Digitale Patientenrechnung Rechnungsposition | Reiseentschädigung ab 25 km | `ChargeItem.extension:WegegeldReiseentschaedigung.extension:Reiseentschaedigung` | Die Reiseentschädigung ab 25 km SOLL vorhanden sein. |
| Digitale Patientenrechnung Rechnungsposition | Abwesenheit in Stunden | `ChargeItem.extension:WegegeldReiseentschaedigung.extension:Reiseentschaedigung.extension:Abwesenheit` |  |
| Digitale Patientenrechnung Rechnungsposition | Entfernung in km | `ChargeItem.extension:WegegeldReiseentschaedigung.extension:Reiseentschaedigung.extension:Entfernung` |  |
| Digitale Patientenrechnung Rechnungsposition | Kosten der Übernachtung | `ChargeItem.extension:WegegeldReiseentschaedigung.extension:Reiseentschaedigung.extension:Uebernachtung` |  |
| Digitale Patientenrechnung Rechnungsposition | Verkehrsmittel | `ChargeItem.extension:WegegeldReiseentschaedigung.extension:Reiseentschaedigung.extension:Verkehrsmittel` |  |
| Digitale Patientenrechnung Rechnungsposition | Wegegeld bis 25km | `ChargeItem.extension:WegegeldReiseentschaedigung.extension:Wegegeld` | Das Wegegeld bis 25km SOLL vorhanden sein. |
| Digitale Patientenrechnung Rechnungsposition | Entfernung in km | `ChargeItem.extension:WegegeldReiseentschaedigung.extension:Wegegeld.extension:Entfernung` |  |
| Digitale Patientenrechnung Rechnungsposition | Nacht | `ChargeItem.extension:WegegeldReiseentschaedigung.extension:Wegegeld.extension:Nacht` |  |
| Digitale Patientenrechnung Rechnungsposition | Zusatz | `ChargeItem.extension:Zusatz` | Im Falle einer GOÄ, GOÄ-neu oder GOZ Rechnungsposition, SOLL der Zusatz vorhanden sein. Bei einer BEMA Rechnungsposition ist der Zusatz nicht gefordert. Der Code F 'Leistungs zur Früherkennung' ist für GOZ-Rechnungen nicht relevant. |
| Digitale Patientenrechnung Rechnungsposition | Leistungszeitraum | `ChargeItem.occurrence[x]` | Im Falle einer GOÄ, GOÄ-neu oder GOZ Rechnungsposition, SOLL der Leistungszeitraum vorhanden sein. Im Falle einer BEMA Rechnungsposition, ist das Element nicht gefordert |
| Digitale Patientenrechnung Rechnungsposition | Behandlungsdatum | `ChargeItem.occurrence[x]:occurrenceDateTime` |  |
| Digitale Patientenrechnung Rechnungsposition | Behandlungszeitraum | `ChargeItem.occurrence[x]:occurrencePeriod` |  |
| Digitale Patientenrechnung Rechnungsposition | Referenz Behandelnder Leistungserbringer | `ChargeItem.performer.actor` | Im Falle einer GOÄ-neu Rechnungsposition, SOLL die Referenz auf einen behandelnden Leistungserbringer vorhanden sein. Im Fall einer GOÄ Rechnungsposition, KANN ein behandelnder Leistungserbringer vorhanden sein. Bei GOZ oder BEMA Leistungen ist ein behandelnder Leistungserbringer nicht gefordert. |
| Digitale Patientenrechnung Rechnungsposition | Pharmazentralnummer | `ChargeItem.product[x].coding:PZN` | Im Falle einer GOÄ oder GOÄ-neu Rechnungsposition SOLL die Pharmazentralnummer (PZN) vorhanden sein. Im Falle einer GOZ oder BEMA Rechnungsposition wird die PZN nicht gefordert. |
| Digitale Patientenrechnung Rechnungsposition | Material / Wirkstoffname | `ChargeItem.product[x].text` | Das Material oder der Wirkstoffname SOLLEN hier vorhanden sein. |
| Digitale Patientenrechnung Rechnungsposition | Anzahl oder verbrauchte Menge | `ChargeItem.quantity` | Ist die Rechnungsposition vom Typ 'Auslagen/Sachkosten' und es eine GOÄ, GOÄ-neu oder GOZ Rechnungsposition, SOLL hier die Anzahl des unter product[x] angegebenen Medikament, Wirkstoff oder Material vorhanden sein. Ist die Rechnungsposition vom Typ 'GOÄ', 'GOZ' oder 'BEMA' SOLL hier die Anzahl vorhanden sein. |
| Digitale Patientenrechnung Rechnungsposition | Einheit als UCUM-Code | `ChargeItem.quantity.code` |  |
| Digitale Patientenrechnung Rechnungsposition | Einheit | `ChargeItem.quantity.unit` |  |
| Digitale Patientenrechnung Rechnungsposition | Menge | `ChargeItem.quantity.value` |  |
| Digitale Patientenrechnung Rechnungsposition | Begründung in Abhängigkeit zur Gebührenziffer | `ChargeItem.reason.text` | Im Falle einer GOÄ, GOÄ-neu oder GOZ Rechnungsposition, SOLL die Begründung in Abhängigkeit zur Gebührenziffer vorhanden sein. Bei einer BEMA Rechnungsposition ist die Begründung in Abhängigkeit zur Gebührenziffer nicht gefordert. Beispiele sind:* obligatorisch bei analoger Rechnungsposition
* Angabe zu den behandelten Organen
* Überschreitung der Regelsätze
 |
| Digitale Patientenrechnung Rechnungsposition | Der Status der Rechnungsposition MUSS vorhanden sein. | `ChargeItem.status` |  |
| Digitale Patientenrechnung Rechnungsposition | Behandelte Person | `ChargeItem.subject` |  |
| Digitale Patientenrechnung Rechnungsdiagnose | Code und Text nach ICD-10 | `Condition.code.coding:ICD-10-GM` | Die Codierung nach ICD-10 SOLL vorhanden sein. |
| Digitale Patientenrechnung Rechnungsdiagnose | Code nach ICD-10 | `Condition.code.coding:ICD-10-GM.code` | Der Code nach ICD-10 SOLL vorhanden sein. |
| Digitale Patientenrechnung Rechnungsdiagnose | Text zum ICD-10 Code | `Condition.code.coding:ICD-10-GM.display` | Der Text zum ICD-10 Code SOLL vorhanden sein. |
| Digitale Patientenrechnung Rechnungsdiagnose | Lokalisierung | `Condition.code.coding:ICD-10-GM.extension:Seitenlokalisation` | Die Lokalisierung SOLL vorhanden sein. |
| Digitale Patientenrechnung Rechnungsdiagnose | System des ICD-10 Code | `Condition.code.coding:ICD-10-GM.system` | Das System des ICD-10 Code MUSS vorhanden sein. |
| Digitale Patientenrechnung Rechnungsdiagnose | Behandlungsdatum (Erstdiagnose) | `Condition.onset[x]` | Das Behandlungsdatum (Erstdiagnose) SOLL vorhanden sein. |
| Digitale Patientenrechnung Rechnungsdiagnose | Referenz auf die behandelte Person | `Condition.subject` | Die Diagnose SOLL auf eine zugehörige behandelte Person referenzieren. |
| Digitale Patientenrechnung Rechnungsprozedur | Code und Text nach OPS | `Procedure.code.coding:OPS` | Die Codierung nach OPS SOLL vorhanden sein. |
| Digitale Patientenrechnung Rechnungsprozedur | Code nach OPS | `Procedure.code.coding:OPS.code` | Der Code nach OPS SOLL vorhanden sein. |
| Digitale Patientenrechnung Rechnungsprozedur | Text zum OPS Code | `Procedure.code.coding:OPS.display` | Der Text zum OPS Code SOLL vorhanden sein. |
| Digitale Patientenrechnung Rechnungsprozedur | System des OPS Code | `Procedure.code.coding:OPS.system` | Das System des OPS Code MUSS vorhanden sein. |
| Digitale Patientenrechnung Rechnungsprozedur | OPS Behandlungsdatum oder -zeitraum | `Procedure.performed[x]` | Entweder das OPS Behandlungsdatum, oder der -zeitraum SOLL vorhanden sein. |
| Digitale Patientenrechnung Rechnungsprozedur | OPS Behandlungsdatum | `Procedure.performed[x]:performedDateTime` |  |
| Digitale Patientenrechnung Rechnungsprozedur | OPS Behandlungszeitraum | `Procedure.performed[x]:performedPeriod` |  |
| Digitale Patientenrechnung Rechnungsprozedur | Status der Prozedur | `Procedure.status` | Der Status der Prozedur MUSS vorhanden sein. |
| Digitale Patientenrechnung Rechnungsprozedur | Referenz auf die behandelte Person | `Procedure.subject` | Die Procedure SOLL auf eine zugehörige behandelte Person referenzieren. |

