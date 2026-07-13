# Digitale Patientenrechnung Rechnung - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Rechnung**

## Ressourcenprofil: Digitale Patientenrechnung Rechnung 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnung | *Version*:1.0.8 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagRechnung |

 
Dieses Profil bildet die strukturierten Rechnungsinhalte einer Digitalen Patientenrechnung ab, inklusive Angaben zu Behandlungszeitraum, Diagnosen und Prozeduren, Behandlungsart, Fachrichtung, Rechnungspositionen und Zusammensetzung des Rechnungsbetrags. 

**Usages:**

* Use this Profile: [Digitale Patientenrechnung - Rechnungsinhalte Bundle](StructureDefinition-dipag-rechnungsbundle.md)
* Refer to this Profile: [Digitale Patientenrechnung Rechnung](StructureDefinition-dipag-rechnung.md)
* Examples for this Profile: [Invoice/KfoMehrkosten1Rechnung](Invoice-KfoMehrkosten1Rechnung.md), [Invoice/KfoMehrkosten2Rechnung](Invoice-KfoMehrkosten2Rechnung.md), [Invoice/KfoMehrkosten3Rechnung](Invoice-KfoMehrkosten3Rechnung.md), [Invoice/KfoMehrkosten4Rechnung](Invoice-KfoMehrkosten4Rechnung.md)... Show 2 more, [Invoice/a0b1c2d3-e4f5-6a7b-8c9d-0e1f2a3b4c5d](Invoice-a0b1c2d3-e4f5-6a7b-8c9d-0e1f2a3b4c5d.md) and [Invoice/c3d4e5f6-4b5c-6d7e-1f2a-3b4c5d6e7f8a](Invoice-c3d4e5f6-4b5c-6d7e-1f2a-3b4c5d6e7f8a.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.gematik.dipag|current/StructureDefinition/StructureDefinition-dipag-rechnung.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Must-Support Comments](#tabs-isik) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Invoice](http://hl7.org/fhir/R4/invoice.html) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

| | | |
| :--- | :--- | :--- |
| Invoice.date | Rechnungsdatum | Das Rechnungsdatum MUSS vorhanden sein. |
| Invoice.extension:AbrechnungsDiagnoseProzedur | Diagnose | Im Falle einer GOÄ oder GOÄ-neu Rechnung, SOLLEN Diagnosen und Prozeduren vorhanden sein. Im Falle einer GOZ oder BEMA Rechnung werden keine Diagnosen oder Prozedur gefordert. |
| Invoice.extension:AbrechnungsDiagnoseProzedur.extension:Referenz.value[x] | Zuordnung von Diagnosen oder Prozeduren zur Rechnung | Diagnosen und Prozeduren SOLLEN zur Rechnung zugeordnet sein. |
| Invoice.extension:AbrechnungsDiagnoseProzedur.extension:Use.value[x] | Kennzeichen Hauptdiagnose | Das Kennzeichen Hauptdiagnose SOLL vorhanden sein, wenn es sich um eine HD handelt. |
| Invoice.extension:AbrechnungsDiagnoseProzedurFreitext | Einleitung (Diagnose und Prozedure als Freitextangabe) | Im Falle einer GOÄ, GOZ oder BEMA Rechnung, SOLLEN Diagnose und Prozedure als Freitextangabe vorhanden sein. Im Falle einer GOÄ-neu Rechnung werden keine Diagnosen und Prozeduren als Freitext gefordert. |
| Invoice.extension:AbrechnungsDiagnoseProzedurFreitext.value[x] |  |  |
| Invoice.extension:Antragsreferenz |  |  |
| Invoice.extension:Antragsreferenz.value[x] | Referenz auf Heil- und Kostenplan, Kostenvoranschlag oder Kostenübernahmeantrag | Die Antragsreferenz SOLL vorhanden sein. |
| Invoice.extension:Antragsreferenz.value[x].system | NamingSystem der Antragsreferenz |  |
| Invoice.extension:Antragsreferenz.value[x].type |  |  |
| Invoice.extension:Antragsreferenz.value[x].value | Antragsreferenz |  |
| Invoice.extension:Behandlungsart | Behandlungsart | Die Behandlungsart MUSS vorhanden sein. |
| Invoice.extension:Behandlungsart.value[x] |  |  |
| Invoice.extension:Behandlungsart.value[x].code |  |  |
| Invoice.extension:Behandlungsart.value[x].system |  |  |
| Invoice.extension:Behandlungszeitraum | Behandlungszeitraum | Entweder ein Behandlungszeitraum, oder ein -datum SOLL bei einer GOÄ Rechnung vorhanden sein. Im Falle einer GOZ- oder BEMA- und GOZ-Rechnung ist die Angabe eines Behandlungszeitraums oder -datums optional. |
| Invoice.extension:Behandlungszeitraum.value[x]:valueDate | Behandlungsdatum |  |
| Invoice.extension:Behandlungszeitraum.value[x]:valuePeriod |  |  |
| Invoice.extension:Behandlungszeitraum.value[x]:valuePeriod.end | Enddatum |  |
| Invoice.extension:Behandlungszeitraum.value[x]:valuePeriod.start | Startdatum |  |
| Invoice.extension:BemaPunktsumme |  | Im Falle einer BEMA Rechnung SOLL die Punktsumme BEMA vorhanden sein. Im Falle einer GOÄ, GOÄ-neu oder GOZ Rechnung ist das Element nicht gefordert. |
| Invoice.extension:BemaPunktsumme.extension:Punktsumme | Summe Punktzahlen der BEMA-Leistungen | Die Summe Punktzahlen der BEMA-Leistungen SOLL vorhanden sein. |
| Invoice.extension:BemaPunktsumme.extension:Punktsumme.value[x] |  |  |
| Invoice.extension:BemaPunktsumme.extension:Punktwert | Punktwert der BEMA-Leistungen | Der Punktwert der BEMA-Leistungen SOLL vorhanden sein. |
| Invoice.extension:BemaPunktsumme.extension:Punktwert.value[x] |  |  |
| Invoice.extension:Fachrichtung | Fachrichtung | Die Fachrichtung MUSS vorhanden sein. Im Zahärztlichen Bereich SOLLEN nur die Fachrichtungen Oralchirurgie (ORAL), Kieferorthopädie (KIEF) und Zahnmedizin (MZKH) verwendet werden. |
| Invoice.extension:Fachrichtung.value[x] |  |  |
| Invoice.extension:Fachrichtung.value[x].code |  |  |
| Invoice.extension:Fachrichtung.value[x].system |  |  |
| Invoice.extension:Korrekturrechnung | Info Korrekturrechnung | Wenn die Instanz dieser Rechnung eine Korrektur einer anderen Rechnung ist, SOLL die ersetzte Rechnung hier referenziert werden. |
| Invoice.extension:Korrekturrechnung.value[x] |  |  |
| Invoice.extension:Korrekturtoken | Info Korrekturtoken | Wenn die Instanz dieser Rechnung eine Korrektur einer anderen Rechnung ist, SOLL das Token der ersetzten Rechnung hier angegeben werden. |
| Invoice.extension:Korrekturtoken.value[x] |  |  |
| Invoice.extension:Korrekturtoken.value[x].system |  |  |
| Invoice.extension:Korrekturtoken.value[x].value |  |  |
| Invoice.identifier |  |  |
| Invoice.identifier:Rechnungsnummer | Rechnungs-Nr. (der LEI) | Die Rechnungs-Nr. (der LEI) MUSS vorhanden sein. |
| Invoice.identifier:Rechnungsnummer.system | NamingSystem der Rechnungs-Nr. (der LEI) |  |
| Invoice.identifier:Rechnungsnummer.type |  |  |
| Invoice.identifier:Rechnungsnummer.value | Rechnungs-Nr. (der LEI) |  |
| Invoice.issuer | Rechnungsersteller | Der Rechnungsersteller MUSS vorhanden sein. |
| Invoice.issuer.reference |  |  |
| Invoice.lineItem | Rechnungspositionen |  |
| Invoice.lineItem.chargeItem[x] | Referenz auf die Instanz der Rechnungsposition | Die Referenz auf die Instanz der Rechnungsposition MUSS vorhanden sein. |
| Invoice.lineItem.priceComponent |  |  |
| Invoice.lineItem.priceComponent:BruttoBetrag | Betrag pro Rechnungsposition | Im Falle einer GOÄ, GOÄ-neu oder GOZ Rechnungsposition, SOLL der Betrag pro Rechnungsposition vorhanden sein. Im Falle einer BEMA Rechnungsposition ist das Element nicht gefordert. |
| Invoice.lineItem.priceComponent:BruttoBetrag.amount |  |  |
| Invoice.lineItem.priceComponent:BruttoBetrag.type |  |  |
| Invoice.lineItem.priceComponent:Steuern | Steuern enthalten im Brutto Betrag | Die enthaltenen Steuern SOLLEN vorhanden sein. |
| Invoice.lineItem.priceComponent:Steuern.amount |  |  |
| Invoice.lineItem.priceComponent:Steuern.type |  |  |
| Invoice.lineItem.sequence | Reihenfolge der Rechnungsposition | Die Reihenfolge der Rechnungsposition MUSS mit einer Sequenz-Nummer angegeben werden. Die Sequenz muss mit 1 als erste Ziffer beginnen. |
| Invoice.note | Hinweise an den Kostenträger | Der Hinweise an den Kostenträger KANN vorhanden sein. |
| Invoice.participant | weitere behandelnde Leistungserbringer oder abweichender Forderungsinhaber |  |
| Invoice.participant.role |  |  |
| Invoice.participant:Forderungsinhaber | Abweichender Forderungsinhaber | Der abweichender Forderungsinhaber SOLL vorhanden sein. |
| Invoice.participant:Leistungserbringer | Behandelnde Leistungserbringer | Im Falle einer GOÄ oder GOÄ-neu Rechnung, SOLLEN weitere behandelnde Leistungserbringer vorhanden sein. Im Falle einer GOZ oder BEMA Rechnung, KÖNNEN weitere behandelnde Leistungserbringer vorhanden sein.Im Falle einer GOZ oder BEMA Rechnung, MÜSSEN Leistungserbringer als Organisation referenziert werden, die Angabe von Personen ist in diesem Fall nicht zulässig. |
| Invoice.paymentTerms | Zahlungsdaten Überweisung und weitere Zahlungsmethoden | Die Zahlungsdaten zur Überweisung SOLLEN vorhanden sein. Weitere Zahlungsmethoden wie bspw. Paypal, Klarna, Kreditkarte KÖNNEN auch hier angegeben werden. Ebenfalls sollte hier der Zahlbetrag in EUR inkl. potenzieller Abzüge durch Anzahlungen, Vorauszahlungen oder Abschlagzahlungen. |
| Invoice.paymentTerms.extension:PaymentTo | Zahlungsverbindung für die Überweisung (basiert auf HL7 FM WG Draft) | Die Zahlungsverbindung SOLL vorhanden sein, wenn die Zahlungsdaten zur Überweisung angegeben werden. Diese Extension basiert auf dem DRAFT der HL7 Financial Management Working Group und wird sich mit der Veröffentlichung der offiziellen HL7-Standard-Extension ändern. |
| Invoice.paymentTerms.extension:Zahlungsziel | Zahlungsziel als Datum oder Fristangabe | Das Zahlungsziel SOLL vorhanden sein. |
| Invoice.recipient | Rechnungsempfänger |  |
| Invoice.recipient.display |  |  |
| Invoice.recipient.identifier |  | Das System des Leistungserbringers referenziert hier üblicherweise auf die lokale Instanz des Patienten um die Rechnung einer Patientenakte zuzuordnen. Der Fachdienst substitutiert den Link mit der Referenz auf das Postfach des Patienten bei der Extraktion der Invoice aus dem Bundle. Die Angabe der Versichertennummer dient der Plausibilisierung. Die KV-Nummer in der Instanz des Bundles muss daher mit der KV-Nummer übereinstimmen, die im Fachdienst für das Postfach des Rechnungsempfängers hinterlegt ist. |
| Invoice.recipient.reference |  |  |
| Invoice.status | Status der Rechnung | Der Status MUSS vorhanden sein. |
| Invoice.subject | Behandelte Person | Der Name der behandelten Person SOLL angegeben werden und kann vom Rechnungsempfänger abweichen, z.B. wenn Eltern Rechnungen für ihre Kinder erhalten. |
| Invoice.subject.reference |  |  |
| Invoice.totalGross | Rechnungsbetrag (Brutto) | Der Rechnungsbetrag in Brutto MUSS vorhanden sein. |
| Invoice.totalNet | Rechnungsbetrag (Netto) | Der Rechnungsbetrag in Netto MUSS vorhanden sein. |
| Invoice.totalPriceComponent |  |  |
| Invoice.totalPriceComponent:Abzug | Abzug | Der Abzug SOLL vorhanden sein. |
| Invoice.totalPriceComponent:Abzug.amount | Wert in EUR |  |
| Invoice.totalPriceComponent:Abzug.amount.currency |  |  |
| Invoice.totalPriceComponent:Abzug.amount.value |  |  |
| Invoice.totalPriceComponent:Abzug.code | Kategorisierung des Abzugs | Die Kategorisierung des Abzugs SOLL vorhanden sein. |
| Invoice.totalPriceComponent:Abzug.extension:Kassenanteil | Kassenanteil in Prozent | Im Falle einer BEMA oder gemischten BEMA und GOZ Rechnung SOLL der Kassenanteil in Prozent vorhanden sein. Im Falle einer GOZ Rechnung KANN der Kassenanteil in Prozent vorhanden sein. Im Falle einer GOÄ oder GOÄ-neu Rechnung ist das Element nicht gefordert. |
| Invoice.totalPriceComponent:Abzug.extension:Kassenanteil.value[x] |  |  |
| Invoice.totalPriceComponent:Abzug.type |  |  |
| Invoice.totalPriceComponent:Fremdlaborleistungen | Summe aller Fremdlaborleistungen | Die Summe aller Fremdlaborleistungen SOLL vorhanden sein. |
| Invoice.totalPriceComponent:Fremdlaborleistungen.amount | Wert in EUR |  |
| Invoice.totalPriceComponent:Fremdlaborleistungen.amount.currency |  |  |
| Invoice.totalPriceComponent:Fremdlaborleistungen.amount.value |  |  |
| Invoice.totalPriceComponent:Fremdlaborleistungen.code |  |  |
| Invoice.totalPriceComponent:Fremdlaborleistungen.type |  |  |
| Invoice.totalPriceComponent:MinderungNachGOZ | Minderungen nach §7 GOZ | Im Falle einer GOZ Rechnung SOLLEN die Minderungen nach §7 GOZ vorhanden sein. Im Falle einer GOÄ, GOÄ-neu oder BEMA Rechnung ist das Element nicht gefordert. |
| Invoice.totalPriceComponent:MinderungNachGOZ.amount | Wert in EUR |  |
| Invoice.totalPriceComponent:MinderungNachGOZ.amount.currency |  |  |
| Invoice.totalPriceComponent:MinderungNachGOZ.amount.value |  |  |
| Invoice.totalPriceComponent:MinderungNachGOZ.code |  |  |
| Invoice.totalPriceComponent:MinderungNachGOZ.type |  |  |
| Invoice.totalPriceComponent:SummeRechnungspositionen | Summe aller Rechnungspositionen | Die Summe aller Rechnungspositionen SOLL vorhanden sein. |
| Invoice.totalPriceComponent:SummeRechnungspositionen.amount | Wert in EUR |  |
| Invoice.totalPriceComponent:SummeRechnungspositionen.amount.currency |  |  |
| Invoice.totalPriceComponent:SummeRechnungspositionen.amount.value |  |  |
| Invoice.totalPriceComponent:SummeRechnungspositionen.code |  |  |
| Invoice.totalPriceComponent:SummeRechnungspositionen.extension:TeilSummenRechnungspositionen |  |  |
| Invoice.totalPriceComponent:SummeRechnungspositionen.extension:TeilSummenRechnungspositionen.extension:summe |  |  |
| Invoice.totalPriceComponent:SummeRechnungspositionen.extension:TeilSummenRechnungspositionen.extension:summe.value[x] |  |  |
| Invoice.totalPriceComponent:SummeRechnungspositionen.extension:TeilSummenRechnungspositionen.extension:summe.value[x].currency |  |  |
| Invoice.totalPriceComponent:SummeRechnungspositionen.extension:TeilSummenRechnungspositionen.extension:summe.value[x].value |  |  |
| Invoice.totalPriceComponent:SummeRechnungspositionen.extension:TeilSummenRechnungspositionen.extension:type |  |  |
| Invoice.totalPriceComponent:SummeRechnungspositionen.extension:TeilSummenRechnungspositionen.extension:type.value[x] |  |  |
| Invoice.totalPriceComponent:SummeRechnungspositionen.extension:TeilSummenRechnungspositionen.extension:type.value[x].code |  |  |
| Invoice.totalPriceComponent:SummeRechnungspositionen.extension:TeilSummenRechnungspositionen.extension:type.value[x].system |  |  |
| Invoice.totalPriceComponent:SummeRechnungspositionen.extension:TeilSummenRechnungspositionen.extension:uStBetrag |  |  |
| Invoice.totalPriceComponent:SummeRechnungspositionen.extension:TeilSummenRechnungspositionen.extension:uStBetrag.value[x] |  |  |
| Invoice.totalPriceComponent:SummeRechnungspositionen.extension:TeilSummenRechnungspositionen.extension:uStBetrag.value[x].currency |  |  |
| Invoice.totalPriceComponent:SummeRechnungspositionen.extension:TeilSummenRechnungspositionen.extension:uStBetrag.value[x].value |  |  |
| Invoice.totalPriceComponent:SummeRechnungspositionen.extension:TeilSummenRechnungspositionen.extension:uStProzent |  |  |
| Invoice.totalPriceComponent:SummeRechnungspositionen.extension:TeilSummenRechnungspositionen.extension:uStProzent.value[x] |  |  |
| Invoice.totalPriceComponent:SummeRechnungspositionen.type |  |  |
| Invoice.type |  |  |
| Invoice.type.coding |  |  |
| Invoice.type.coding:AusrichtungDerRechnung | Abrechnungsart der Rechnung | Die Grundsätzliche Ausrichtung der Rechnung (Abrechnungsart) SOLL vorhanden sein. |
| Invoice.type.coding:AusrichtungDerRechnung.code |  |  |
| Invoice.type.coding:AusrichtungDerRechnung.extension:Zusatzinformation | Zusatzinformation zur Abrechnungsart | Die Zusatzinformation zur Abrechnungsart SOLL vorhanden sein, wenn es sich um eine Abrechnung nach §13 Abs. 2 SGB V handelt. |
| Invoice.type.coding:AusrichtungDerRechnung.extension:Zusatzinformation.value[x] |  |  |
| Invoice.type.coding:AusrichtungDerRechnung.system |  |  |
| Invoice.type.coding:Rechnungsart | Rechnungsart | Die Rechnungsart SOLL vorhanden sein. |
| Invoice.type.coding:Rechnungsart.code |  |  |
| Invoice.type.coding:Rechnungsart.system |  |  |

Diese Struktur ist abgeleitet von [Invoice](http://hl7.org/fhir/R4/invoice.html) 

** Summary **

Mandatory: 27 elements(38 nested mandatory elements)
 Must-Support: 121 elements
 Prohibited: 6 elements

**Structures**

This structure refers to these other structures:

* [Digitale Patientenrechnung Rechnung (https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnung)](StructureDefinition-dipag-rechnung.md)
* [Digitale Patientenrechnung Patient (https://gematik.de/fhir/dipag/StructureDefinition/dipag-patient)](StructureDefinition-dipag-patient.md)
* [Identifier-Profil für die 10-stellige Krankenversichertennummer (http://fhir.de/StructureDefinition/identifier-kvid-10)](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.de/StructureDefinition/identifier-kvid-10)
* [Digitale Patientenrechnung Person (https://gematik.de/fhir/dipag/StructureDefinition/dipag-person)](StructureDefinition-dipag-person.md)
* [Digitale Patientenrechnung Institution (https://gematik.de/fhir/dipag/StructureDefinition/dipag-institution)](StructureDefinition-dipag-institution.md)
* [Digitale Patientenrechnung Rechnungsposition (https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition)](StructureDefinition-dipag-rechnungsposition.md)

**Extensions**

This structure refers to these extensions:

* [http://hl7.org/fhir/5.0/StructureDefinition/extension-Invoice.period[x]](StructureDefinition-InvoicePeriod.md)
* [https://gematik.de/fhir/dipag/StructureDefinition/DiPagAbrechnungsDiagnoseProzedur](StructureDefinition-DiPagAbrechnungsDiagnoseProzedur.md)
* [https://gematik.de/fhir/dipag/StructureDefinition/DiPagAbrechnungsDiagnoseProzedurFreitext](StructureDefinition-DiPagAbrechnungsDiagnoseProzedurFreitext.md)
* [https://gematik.de/fhir/dipag/StructureDefinition/dipag-behandlungsart](StructureDefinition-dipag-behandlungsart.md)
* [https://gematik.de/fhir/dipag/StructureDefinition/dipag-fachrichtung](StructureDefinition-dipag-fachrichtung.md)
* [https://gematik.de/fhir/dipag/StructureDefinition/DiPagInvoiceReplaces](StructureDefinition-DiPagInvoiceReplaces.md)
* [https://gematik.de/fhir/dipag/StructureDefinition/DiPagTokenStornierteRechnung](StructureDefinition-DiPagTokenStornierteRechnung.md)
* [https://gematik.de/fhir/dipag/StructureDefinition/DiPagInvoiceBasedOn](StructureDefinition-DiPagInvoiceBasedOn.md)
* [https://gematik.de/fhir/dipag/StructureDefinition/DiPagBemaPunktsumme](StructureDefinition-DiPagBemaPunktsumme.md)
* [https://gematik.de/fhir/dipag/StructureDefinition/DiPagZusatzinformationZurAbrechnungsart](StructureDefinition-DiPagZusatzinformationZurAbrechnungsart.md)
* [https://gematik.de/fhir/dipag/StructureDefinition/DiPagTeilsumme](StructureDefinition-DiPagTeilsumme.md)
* [https://gematik.de/fhir/dipag/StructureDefinition/dipag-abzug-kassenanteil](StructureDefinition-dipag-abzug-kassenanteil.md)
* [https://gematik.de/fhir/dipag/StructureDefinition/dipag-zahlungsziel](StructureDefinition-dipag-zahlungsziel.md)
* [https://gematik.de/fhir/dipag/StructureDefinition/DiPagPaymentTo](StructureDefinition-DiPagPaymentTo.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Invoice.extension.value[x]
* The element 1 is sliced based on the value of Invoice.identifier
* The element 1 is sliced based on the value of Invoice.type.coding
* The element 1 is sliced based on the value of Invoice.participant
* The element 1 is sliced based on the value of Invoice.lineItem.priceComponent
* The element 1 is sliced based on the value of Invoice.totalPriceComponent

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [Invoice](http://hl7.org/fhir/R4/invoice.html) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Invoice](http://hl7.org/fhir/R4/invoice.html) 

** Summary **

Mandatory: 27 elements(38 nested mandatory elements)
 Must-Support: 121 elements
 Prohibited: 6 elements

**Structures**

This structure refers to these other structures:

* [Digitale Patientenrechnung Rechnung (https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnung)](StructureDefinition-dipag-rechnung.md)
* [Digitale Patientenrechnung Patient (https://gematik.de/fhir/dipag/StructureDefinition/dipag-patient)](StructureDefinition-dipag-patient.md)
* [Identifier-Profil für die 10-stellige Krankenversichertennummer (http://fhir.de/StructureDefinition/identifier-kvid-10)](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.de/StructureDefinition/identifier-kvid-10)
* [Digitale Patientenrechnung Person (https://gematik.de/fhir/dipag/StructureDefinition/dipag-person)](StructureDefinition-dipag-person.md)
* [Digitale Patientenrechnung Institution (https://gematik.de/fhir/dipag/StructureDefinition/dipag-institution)](StructureDefinition-dipag-institution.md)
* [Digitale Patientenrechnung Rechnungsposition (https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition)](StructureDefinition-dipag-rechnungsposition.md)

**Extensions**

This structure refers to these extensions:

* [http://hl7.org/fhir/5.0/StructureDefinition/extension-Invoice.period[x]](StructureDefinition-InvoicePeriod.md)
* [https://gematik.de/fhir/dipag/StructureDefinition/DiPagAbrechnungsDiagnoseProzedur](StructureDefinition-DiPagAbrechnungsDiagnoseProzedur.md)
* [https://gematik.de/fhir/dipag/StructureDefinition/DiPagAbrechnungsDiagnoseProzedurFreitext](StructureDefinition-DiPagAbrechnungsDiagnoseProzedurFreitext.md)
* [https://gematik.de/fhir/dipag/StructureDefinition/dipag-behandlungsart](StructureDefinition-dipag-behandlungsart.md)
* [https://gematik.de/fhir/dipag/StructureDefinition/dipag-fachrichtung](StructureDefinition-dipag-fachrichtung.md)
* [https://gematik.de/fhir/dipag/StructureDefinition/DiPagInvoiceReplaces](StructureDefinition-DiPagInvoiceReplaces.md)
* [https://gematik.de/fhir/dipag/StructureDefinition/DiPagTokenStornierteRechnung](StructureDefinition-DiPagTokenStornierteRechnung.md)
* [https://gematik.de/fhir/dipag/StructureDefinition/DiPagInvoiceBasedOn](StructureDefinition-DiPagInvoiceBasedOn.md)
* [https://gematik.de/fhir/dipag/StructureDefinition/DiPagBemaPunktsumme](StructureDefinition-DiPagBemaPunktsumme.md)
* [https://gematik.de/fhir/dipag/StructureDefinition/DiPagZusatzinformationZurAbrechnungsart](StructureDefinition-DiPagZusatzinformationZurAbrechnungsart.md)
* [https://gematik.de/fhir/dipag/StructureDefinition/DiPagTeilsumme](StructureDefinition-DiPagTeilsumme.md)
* [https://gematik.de/fhir/dipag/StructureDefinition/dipag-abzug-kassenanteil](StructureDefinition-dipag-abzug-kassenanteil.md)
* [https://gematik.de/fhir/dipag/StructureDefinition/dipag-zahlungsziel](StructureDefinition-dipag-zahlungsziel.md)
* [https://gematik.de/fhir/dipag/StructureDefinition/DiPagPaymentTo](StructureDefinition-DiPagPaymentTo.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Invoice.extension.value[x]
* The element 1 is sliced based on the value of Invoice.identifier
* The element 1 is sliced based on the value of Invoice.type.coding
* The element 1 is sliced based on the value of Invoice.participant
* The element 1 is sliced based on the value of Invoice.lineItem.priceComponent
* The element 1 is sliced based on the value of Invoice.totalPriceComponent

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-dipag-rechnung.csv), [Excel](../StructureDefinition-dipag-rechnung.xlsx), [Schematron](../StructureDefinition-dipag-rechnung.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "dipag-rechnung",
  "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnung",
  "version" : "1.0.8",
  "name" : "DiPagRechnung",
  "title" : "Digitale Patientenrechnung Rechnung",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-03-26",
  "publisher" : "gematik GmbH",
  "contact" : [{
    "name" : "gematik GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.gematik.de"
    }]
  }],
  "description" : "Dieses Profil bildet die strukturierten Rechnungsinhalte einer Digitalen Patientenrechnung ab, inklusive Angaben zu Behandlungszeitraum, Diagnosen und Prozeduren, Behandlungsart, Fachrichtung, Rechnungspositionen und Zusammensetzung des Rechnungsbetrags.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Invoice",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Invoice",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Invoice",
      "path" : "Invoice"
    },
    {
      "id" : "Invoice.extension",
      "path" : "Invoice.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 2
    },
    {
      "id" : "Invoice.extension:Behandlungszeitraum",
      "path" : "Invoice.extension",
      "sliceName" : "Behandlungszeitraum",
      "short" : "Behandlungszeitraum",
      "comment" : "Entweder ein Behandlungszeitraum, oder ein -datum SOLL bei einer GOÄ Rechnung vorhanden sein. Im Falle einer GOZ- oder BEMA- und GOZ-Rechnung ist die Angabe eines Behandlungszeitraums oder -datums optional.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/extension-Invoice.period[x]"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Invoice.extension:Behandlungszeitraum.value[x]",
      "path" : "Invoice.extension.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Invoice.extension:Behandlungszeitraum.value[x]:valuePeriod",
      "path" : "Invoice.extension.value[x]",
      "sliceName" : "valuePeriod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Invoice.extension:Behandlungszeitraum.value[x]:valuePeriod.start",
      "path" : "Invoice.extension.value[x].start",
      "short" : "Startdatum",
      "mustSupport" : true
    },
    {
      "id" : "Invoice.extension:Behandlungszeitraum.value[x]:valuePeriod.end",
      "path" : "Invoice.extension.value[x].end",
      "short" : "Enddatum",
      "mustSupport" : true
    },
    {
      "id" : "Invoice.extension:Behandlungszeitraum.value[x]:valueDate",
      "path" : "Invoice.extension.value[x]",
      "sliceName" : "valueDate",
      "short" : "Behandlungsdatum",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Invoice.extension:AbrechnungsDiagnoseProzedur",
      "path" : "Invoice.extension",
      "sliceName" : "AbrechnungsDiagnoseProzedur",
      "short" : "Diagnose",
      "comment" : "Im Falle einer GOÄ oder GOÄ-neu Rechnung, SOLLEN Diagnosen und Prozeduren vorhanden sein.\n  Im Falle einer GOZ oder BEMA Rechnung werden keine Diagnosen oder Prozedur gefordert.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/DiPagAbrechnungsDiagnoseProzedur"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Invoice.extension:AbrechnungsDiagnoseProzedur.extension:Use",
      "path" : "Invoice.extension.extension",
      "sliceName" : "Use"
    },
    {
      "id" : "Invoice.extension:AbrechnungsDiagnoseProzedur.extension:Use.value[x]",
      "path" : "Invoice.extension.extension.value[x]",
      "short" : "Kennzeichen Hauptdiagnose",
      "comment" : "Das Kennzeichen Hauptdiagnose SOLL vorhanden sein, wenn es sich um eine HD handelt.",
      "mustSupport" : true
    },
    {
      "id" : "Invoice.extension:AbrechnungsDiagnoseProzedur.extension:Use.value[x].code",
      "path" : "Invoice.extension.extension.value[x].code",
      "patternCode" : "main-diagnosis"
    },
    {
      "id" : "Invoice.extension:AbrechnungsDiagnoseProzedur.extension:Referenz",
      "path" : "Invoice.extension.extension",
      "sliceName" : "Referenz"
    },
    {
      "id" : "Invoice.extension:AbrechnungsDiagnoseProzedur.extension:Referenz.value[x]",
      "path" : "Invoice.extension.extension.value[x]",
      "short" : "Zuordnung von Diagnosen oder Prozeduren zur Rechnung",
      "comment" : "Diagnosen und Prozeduren SOLLEN zur Rechnung zugeordnet sein.",
      "mustSupport" : true
    },
    {
      "id" : "Invoice.extension:AbrechnungsDiagnoseProzedurFreitext",
      "path" : "Invoice.extension",
      "sliceName" : "AbrechnungsDiagnoseProzedurFreitext",
      "short" : "Einleitung (Diagnose und Prozedure als Freitextangabe)",
      "comment" : "Im Falle einer GOÄ, GOZ oder BEMA Rechnung, SOLLEN Diagnose und Prozedure als Freitextangabe vorhanden sein.\n  Im Falle einer GOÄ-neu Rechnung werden keine Diagnosen und Prozeduren als Freitext gefordert.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/DiPagAbrechnungsDiagnoseProzedurFreitext"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Invoice.extension:AbrechnungsDiagnoseProzedurFreitext.value[x]",
      "path" : "Invoice.extension.value[x]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Invoice.extension:Behandlungsart",
      "path" : "Invoice.extension",
      "sliceName" : "Behandlungsart",
      "short" : "Behandlungsart",
      "comment" : "Die Behandlungsart MUSS vorhanden sein.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-behandlungsart"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Invoice.extension:Behandlungsart.value[x]",
      "path" : "Invoice.extension.value[x]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Invoice.extension:Behandlungsart.value[x].system",
      "path" : "Invoice.extension.value[x].system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Invoice.extension:Behandlungsart.value[x].code",
      "path" : "Invoice.extension.value[x].code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Invoice.extension:Fachrichtung",
      "path" : "Invoice.extension",
      "sliceName" : "Fachrichtung",
      "short" : "Fachrichtung",
      "comment" : "Die Fachrichtung MUSS vorhanden sein.\n  Im Zahärztlichen Bereich SOLLEN nur die Fachrichtungen Oralchirurgie (ORAL), Kieferorthopädie (KIEF) und Zahnmedizin (MZKH) verwendet werden.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-fachrichtung"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Invoice.extension:Fachrichtung.value[x]",
      "path" : "Invoice.extension.value[x]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Invoice.extension:Fachrichtung.value[x].system",
      "path" : "Invoice.extension.value[x].system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Invoice.extension:Fachrichtung.value[x].code",
      "path" : "Invoice.extension.value[x].code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Invoice.extension:Korrekturrechnung",
      "path" : "Invoice.extension",
      "sliceName" : "Korrekturrechnung",
      "short" : "Info Korrekturrechnung",
      "comment" : "Wenn die Instanz dieser Rechnung eine Korrektur einer anderen Rechnung ist, SOLL die ersetzte Rechnung hier referenziert werden.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/DiPagInvoiceReplaces"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Invoice.extension:Korrekturrechnung.value[x]",
      "path" : "Invoice.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnung",
        "http://hl7.org/fhir/StructureDefinition/Invoice"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Invoice.extension:Korrekturtoken",
      "path" : "Invoice.extension",
      "sliceName" : "Korrekturtoken",
      "short" : "Info Korrekturtoken",
      "comment" : "Wenn die Instanz dieser Rechnung eine Korrektur einer anderen Rechnung ist, SOLL das Token der ersetzten Rechnung hier angegeben werden.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/DiPagTokenStornierteRechnung"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Invoice.extension:Korrekturtoken.value[x]",
      "path" : "Invoice.extension.value[x]",
      "mustSupport" : true
    },
    {
      "id" : "Invoice.extension:Korrekturtoken.value[x].system",
      "path" : "Invoice.extension.value[x].system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Invoice.extension:Korrekturtoken.value[x].value",
      "path" : "Invoice.extension.value[x].value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Invoice.extension:Antragsreferenz",
      "path" : "Invoice.extension",
      "sliceName" : "Antragsreferenz",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/DiPagInvoiceBasedOn"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Invoice.extension:Antragsreferenz.value[x]",
      "path" : "Invoice.extension.value[x]",
      "short" : "Referenz auf Heil- und Kostenplan, Kostenvoranschlag oder Kostenübernahmeantrag",
      "comment" : "Die Antragsreferenz SOLL vorhanden sein.",
      "min" : 1,
      "patternIdentifier" : {
        "type" : {
          "coding" : [{
            "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-identifier-type-cs",
            "code" : "antragsreferenz"
          }]
        }
      },
      "mustSupport" : true
    },
    {
      "id" : "Invoice.extension:Antragsreferenz.value[x].type",
      "path" : "Invoice.extension.value[x].type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-identifier-type-cs",
          "code" : "antragsreferenz"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Invoice.extension:Antragsreferenz.value[x].system",
      "path" : "Invoice.extension.value[x].system",
      "short" : "NamingSystem der Antragsreferenz",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Invoice.extension:Antragsreferenz.value[x].value",
      "path" : "Invoice.extension.value[x].value",
      "short" : "Antragsreferenz",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Invoice.extension:BemaPunktsumme",
      "path" : "Invoice.extension",
      "sliceName" : "BemaPunktsumme",
      "comment" : "Im Falle einer BEMA Rechnung SOLL die Punktsumme BEMA vorhanden sein.\n  Im Falle einer GOÄ, GOÄ-neu oder GOZ Rechnung ist das Element nicht gefordert.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/DiPagBemaPunktsumme"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Invoice.extension:BemaPunktsumme.extension:Punktsumme",
      "path" : "Invoice.extension.extension",
      "sliceName" : "Punktsumme",
      "short" : "Summe Punktzahlen der BEMA-Leistungen",
      "comment" : "Die Summe Punktzahlen der BEMA-Leistungen SOLL vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Invoice.extension:BemaPunktsumme.extension:Punktsumme.value[x]",
      "path" : "Invoice.extension.extension.value[x]",
      "mustSupport" : true
    },
    {
      "id" : "Invoice.extension:BemaPunktsumme.extension:Punktwert",
      "path" : "Invoice.extension.extension",
      "sliceName" : "Punktwert",
      "short" : "Punktwert der BEMA-Leistungen",
      "comment" : "Der Punktwert der BEMA-Leistungen SOLL vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "Invoice.extension:BemaPunktsumme.extension:Punktwert.value[x]",
      "path" : "Invoice.extension.extension.value[x]",
      "mustSupport" : true
    },
    {
      "id" : "Invoice.identifier",
      "path" : "Invoice.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Invoice.identifier:Rechnungsnummer",
      "path" : "Invoice.identifier",
      "sliceName" : "Rechnungsnummer",
      "short" : "Rechnungs-Nr. (der LEI)",
      "comment" : "Die Rechnungs-Nr. (der LEI) MUSS vorhanden sein.",
      "min" : 1,
      "max" : "1",
      "patternIdentifier" : {
        "type" : {
          "coding" : [{
            "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-identifier-type-cs",
            "code" : "invoice"
          }]
        }
      },
      "mustSupport" : true
    },
    {
      "id" : "Invoice.identifier:Rechnungsnummer.type",
      "path" : "Invoice.identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-identifier-type-cs",
          "code" : "invoice"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Invoice.identifier:Rechnungsnummer.system",
      "path" : "Invoice.identifier.system",
      "short" : "NamingSystem der Rechnungs-Nr. (der LEI)",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Invoice.identifier:Rechnungsnummer.value",
      "path" : "Invoice.identifier.value",
      "short" : "Rechnungs-Nr. (der LEI)",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Invoice.status",
      "path" : "Invoice.status",
      "short" : "Status der Rechnung",
      "comment" : "Der Status MUSS vorhanden sein.",
      "patternCode" : "issued",
      "mustSupport" : true
    },
    {
      "id" : "Invoice.type",
      "path" : "Invoice.type",
      "mustSupport" : true
    },
    {
      "id" : "Invoice.type.coding",
      "path" : "Invoice.type.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Invoice.type.coding:AusrichtungDerRechnung",
      "path" : "Invoice.type.coding",
      "sliceName" : "AusrichtungDerRechnung",
      "short" : "Abrechnungsart der Rechnung",
      "comment" : "Die Grundsätzliche Ausrichtung der Rechnung (Abrechnungsart) SOLL vorhanden sein.",
      "min" : 0,
      "max" : "1",
      "patternCoding" : {
        "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-abrechnungsart-cs"
      },
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://gematik.de/fhir/dipag/ValueSet/dipag-rechnung-abrechnungsart-vs"
      }
    },
    {
      "id" : "Invoice.type.coding:AusrichtungDerRechnung.extension:Zusatzinformation",
      "path" : "Invoice.type.coding.extension",
      "sliceName" : "Zusatzinformation",
      "short" : "Zusatzinformation zur Abrechnungsart",
      "comment" : "Die Zusatzinformation zur Abrechnungsart SOLL vorhanden sein, wenn es sich um eine Abrechnung nach §13 Abs. 2 SGB V handelt.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/DiPagZusatzinformationZurAbrechnungsart"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Invoice.type.coding:AusrichtungDerRechnung.extension:Zusatzinformation.value[x]",
      "path" : "Invoice.type.coding.extension.value[x]",
      "mustSupport" : true
    },
    {
      "id" : "Invoice.type.coding:AusrichtungDerRechnung.system",
      "path" : "Invoice.type.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Invoice.type.coding:AusrichtungDerRechnung.code",
      "path" : "Invoice.type.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Invoice.type.coding:Rechnungsart",
      "path" : "Invoice.type.coding",
      "sliceName" : "Rechnungsart",
      "short" : "Rechnungsart",
      "comment" : "Die Rechnungsart SOLL vorhanden sein.",
      "min" : 0,
      "max" : "1",
      "patternCoding" : {
        "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnungsart-cs"
      },
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://gematik.de/fhir/dipag/ValueSet/dipag-rechnungsart-vs"
      }
    },
    {
      "id" : "Invoice.type.coding:Rechnungsart.system",
      "path" : "Invoice.type.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Invoice.type.coding:Rechnungsart.code",
      "path" : "Invoice.type.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Invoice.subject",
      "path" : "Invoice.subject",
      "short" : "Behandelte Person",
      "comment" : "Der Name der behandelten Person SOLL angegeben werden und kann vom Rechnungsempfänger abweichen, z.B. wenn Eltern Rechnungen für ihre Kinder erhalten.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-patient",
        "http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Invoice.subject.reference",
      "path" : "Invoice.subject.reference",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Invoice.recipient",
      "path" : "Invoice.recipient",
      "short" : "Rechnungsempfänger",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-patient",
        "http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Invoice.recipient.reference",
      "path" : "Invoice.recipient.reference",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Invoice.recipient.identifier",
      "path" : "Invoice.recipient.identifier",
      "comment" : "Das System des Leistungserbringers referenziert hier üblicherweise \n    auf die lokale Instanz des Patienten um die Rechnung einer Patientenakte zuzuordnen. \n    Der Fachdienst substitutiert den Link mit der Referenz auf das Postfach des Patienten \n    bei der Extraktion der Invoice aus dem Bundle. Die Angabe der Versichertennummer dient \n    der Plausibilisierung. Die KV-Nummer in der Instanz des Bundles muss daher mit der \n    KV-Nummer übereinstimmen, die im Fachdienst für das Postfach des Rechnungsempfängers hinterlegt ist.",
      "min" : 1,
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://fhir.de/StructureDefinition/identifier-kvid-10"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Invoice.recipient.display",
      "path" : "Invoice.recipient.display",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Invoice.date",
      "path" : "Invoice.date",
      "short" : "Rechnungsdatum",
      "comment" : "Das Rechnungsdatum MUSS vorhanden sein.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Invoice.participant",
      "path" : "Invoice.participant",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "role"
        }],
        "rules" : "open"
      },
      "short" : "weitere behandelnde Leistungserbringer oder abweichender Forderungsinhaber",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Invoice.participant.role",
      "path" : "Invoice.participant.role",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://gematik.de/fhir/dipag/ValueSet/dipag-participant-role-VS"
      }
    },
    {
      "id" : "Invoice.participant:Leistungserbringer",
      "path" : "Invoice.participant",
      "sliceName" : "Leistungserbringer",
      "short" : "Behandelnde Leistungserbringer",
      "comment" : "Im Falle einer GOÄ oder GOÄ-neu Rechnung, SOLLEN weitere behandelnde Leistungserbringer vorhanden sein.\n  Im Falle einer GOZ oder BEMA Rechnung, KÖNNEN weitere behandelnde Leistungserbringer vorhanden sein.\n  \n  Im Falle einer GOZ oder BEMA Rechnung, MÜSSEN Leistungserbringer als Organisation referenziert werden, die Angabe von Personen ist in diesem Fall nicht zulässig.",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Invoice.participant:Leistungserbringer.role",
      "path" : "Invoice.participant.role",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-participant-role-cs",
          "code" : "leistungserbringer"
        }]
      }
    },
    {
      "id" : "Invoice.participant:Leistungserbringer.actor",
      "path" : "Invoice.participant.actor",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-person",
        "https://gematik.de/fhir/dipag/StructureDefinition/dipag-institution",
        "http://hl7.org/fhir/StructureDefinition/Practitioner",
        "http://hl7.org/fhir/StructureDefinition/Organization"]
      }]
    },
    {
      "id" : "Invoice.participant:Forderungsinhaber",
      "path" : "Invoice.participant",
      "sliceName" : "Forderungsinhaber",
      "short" : "Abweichender Forderungsinhaber",
      "comment" : "Der abweichender Forderungsinhaber SOLL vorhanden sein.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Invoice.participant:Forderungsinhaber.role",
      "path" : "Invoice.participant.role",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-participant-role-cs",
          "code" : "forderungsinhaber"
        }]
      }
    },
    {
      "id" : "Invoice.participant:Forderungsinhaber.actor",
      "path" : "Invoice.participant.actor",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-person",
        "http://hl7.org/fhir/StructureDefinition/Practitioner",
        "https://gematik.de/fhir/dipag/StructureDefinition/dipag-institution",
        "http://hl7.org/fhir/StructureDefinition/Organization"]
      }]
    },
    {
      "id" : "Invoice.issuer",
      "path" : "Invoice.issuer",
      "short" : "Rechnungsersteller",
      "comment" : "Der Rechnungsersteller MUSS vorhanden sein.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-institution",
        "http://hl7.org/fhir/StructureDefinition/Organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Invoice.issuer.reference",
      "path" : "Invoice.issuer.reference",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Invoice.lineItem",
      "path" : "Invoice.lineItem",
      "short" : "Rechnungspositionen",
      "mustSupport" : true
    },
    {
      "id" : "Invoice.lineItem.sequence",
      "path" : "Invoice.lineItem.sequence",
      "short" : "Reihenfolge der Rechnungsposition",
      "comment" : "Die Reihenfolge der Rechnungsposition MUSS mit einer Sequenz-Nummer angegeben werden. Die Sequenz muss mit 1 als erste Ziffer beginnen.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Invoice.lineItem.chargeItem[x]",
      "path" : "Invoice.lineItem.chargeItem[x]",
      "short" : "Referenz auf die Instanz der Rechnungsposition",
      "comment" : "Die Referenz auf die Instanz der Rechnungsposition MUSS vorhanden sein.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition",
        "http://hl7.org/fhir/StructureDefinition/ChargeItem"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Invoice.lineItem.priceComponent",
      "path" : "Invoice.lineItem.priceComponent",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "type"
        }],
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Invoice.lineItem.priceComponent:BruttoBetrag",
      "path" : "Invoice.lineItem.priceComponent",
      "sliceName" : "BruttoBetrag",
      "short" : "Betrag pro Rechnungsposition",
      "comment" : "Im Falle einer GOÄ, GOÄ-neu oder GOZ Rechnungsposition, SOLL der Betrag pro Rechnungsposition vorhanden sein.\n  Im Falle einer BEMA Rechnungsposition ist das Element nicht gefordert.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Invoice.lineItem.priceComponent:BruttoBetrag.type",
      "path" : "Invoice.lineItem.priceComponent.type",
      "patternCode" : "base",
      "mustSupport" : true
    },
    {
      "id" : "Invoice.lineItem.priceComponent:BruttoBetrag.factor",
      "path" : "Invoice.lineItem.priceComponent.factor",
      "max" : "0"
    },
    {
      "id" : "Invoice.lineItem.priceComponent:BruttoBetrag.amount",
      "path" : "Invoice.lineItem.priceComponent.amount",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Invoice.lineItem.priceComponent:Steuern",
      "path" : "Invoice.lineItem.priceComponent",
      "sliceName" : "Steuern",
      "short" : "Steuern enthalten im Brutto Betrag",
      "comment" : "Die enthaltenen Steuern SOLLEN vorhanden sein.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Invoice.lineItem.priceComponent:Steuern.type",
      "path" : "Invoice.lineItem.priceComponent.type",
      "patternCode" : "tax",
      "mustSupport" : true
    },
    {
      "id" : "Invoice.lineItem.priceComponent:Steuern.factor",
      "path" : "Invoice.lineItem.priceComponent.factor",
      "max" : "0"
    },
    {
      "id" : "Invoice.lineItem.priceComponent:Steuern.amount",
      "path" : "Invoice.lineItem.priceComponent.amount",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Invoice.totalPriceComponent",
      "path" : "Invoice.totalPriceComponent",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "code"
        }],
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Invoice.totalPriceComponent:SummeRechnungspositionen",
      "path" : "Invoice.totalPriceComponent",
      "sliceName" : "SummeRechnungspositionen",
      "short" : "Summe aller Rechnungspositionen",
      "comment" : "Die Summe aller Rechnungspositionen SOLL vorhanden sein.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Invoice.totalPriceComponent:SummeRechnungspositionen.extension",
      "path" : "Invoice.totalPriceComponent.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Invoice.totalPriceComponent:SummeRechnungspositionen.extension:TeilSummenRechnungspositionen",
      "path" : "Invoice.totalPriceComponent.extension",
      "sliceName" : "TeilSummenRechnungspositionen",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/DiPagTeilsumme"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Invoice.totalPriceComponent:SummeRechnungspositionen.extension:TeilSummenRechnungspositionen.extension:type",
      "path" : "Invoice.totalPriceComponent.extension.extension",
      "sliceName" : "type",
      "mustSupport" : true
    },
    {
      "id" : "Invoice.totalPriceComponent:SummeRechnungspositionen.extension:TeilSummenRechnungspositionen.extension:type.value[x]",
      "path" : "Invoice.totalPriceComponent.extension.extension.value[x]",
      "mustSupport" : true
    },
    {
      "id" : "Invoice.totalPriceComponent:SummeRechnungspositionen.extension:TeilSummenRechnungspositionen.extension:type.value[x].system",
      "path" : "Invoice.totalPriceComponent.extension.extension.value[x].system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Invoice.totalPriceComponent:SummeRechnungspositionen.extension:TeilSummenRechnungspositionen.extension:type.value[x].code",
      "path" : "Invoice.totalPriceComponent.extension.extension.value[x].code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Invoice.totalPriceComponent:SummeRechnungspositionen.extension:TeilSummenRechnungspositionen.extension:summe",
      "path" : "Invoice.totalPriceComponent.extension.extension",
      "sliceName" : "summe",
      "mustSupport" : true
    },
    {
      "id" : "Invoice.totalPriceComponent:SummeRechnungspositionen.extension:TeilSummenRechnungspositionen.extension:summe.value[x]",
      "path" : "Invoice.totalPriceComponent.extension.extension.value[x]",
      "mustSupport" : true
    },
    {
      "id" : "Invoice.totalPriceComponent:SummeRechnungspositionen.extension:TeilSummenRechnungspositionen.extension:summe.value[x].value",
      "path" : "Invoice.totalPriceComponent.extension.extension.value[x].value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Invoice.totalPriceComponent:SummeRechnungspositionen.extension:TeilSummenRechnungspositionen.extension:summe.value[x].currency",
      "path" : "Invoice.totalPriceComponent.extension.extension.value[x].currency",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Invoice.totalPriceComponent:SummeRechnungspositionen.extension:TeilSummenRechnungspositionen.extension:uStProzent",
      "path" : "Invoice.totalPriceComponent.extension.extension",
      "sliceName" : "uStProzent",
      "mustSupport" : true
    },
    {
      "id" : "Invoice.totalPriceComponent:SummeRechnungspositionen.extension:TeilSummenRechnungspositionen.extension:uStProzent.value[x]",
      "path" : "Invoice.totalPriceComponent.extension.extension.value[x]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Invoice.totalPriceComponent:SummeRechnungspositionen.extension:TeilSummenRechnungspositionen.extension:uStBetrag",
      "path" : "Invoice.totalPriceComponent.extension.extension",
      "sliceName" : "uStBetrag",
      "mustSupport" : true
    },
    {
      "id" : "Invoice.totalPriceComponent:SummeRechnungspositionen.extension:TeilSummenRechnungspositionen.extension:uStBetrag.value[x]",
      "path" : "Invoice.totalPriceComponent.extension.extension.value[x]",
      "mustSupport" : true
    },
    {
      "id" : "Invoice.totalPriceComponent:SummeRechnungspositionen.extension:TeilSummenRechnungspositionen.extension:uStBetrag.value[x].value",
      "path" : "Invoice.totalPriceComponent.extension.extension.value[x].value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Invoice.totalPriceComponent:SummeRechnungspositionen.extension:TeilSummenRechnungspositionen.extension:uStBetrag.value[x].currency",
      "path" : "Invoice.totalPriceComponent.extension.extension.value[x].currency",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Invoice.totalPriceComponent:SummeRechnungspositionen.type",
      "path" : "Invoice.totalPriceComponent.type",
      "patternCode" : "base",
      "mustSupport" : true
    },
    {
      "id" : "Invoice.totalPriceComponent:SummeRechnungspositionen.code",
      "path" : "Invoice.totalPriceComponent.code",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-total-price-component-type-cs",
          "code" : "SummeRechnungspositionen"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Invoice.totalPriceComponent:SummeRechnungspositionen.factor",
      "path" : "Invoice.totalPriceComponent.factor",
      "max" : "0"
    },
    {
      "id" : "Invoice.totalPriceComponent:SummeRechnungspositionen.amount",
      "path" : "Invoice.totalPriceComponent.amount",
      "short" : "Wert in EUR",
      "mustSupport" : true
    },
    {
      "id" : "Invoice.totalPriceComponent:SummeRechnungspositionen.amount.value",
      "path" : "Invoice.totalPriceComponent.amount.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Invoice.totalPriceComponent:SummeRechnungspositionen.amount.currency",
      "path" : "Invoice.totalPriceComponent.amount.currency",
      "min" : 1,
      "patternCode" : "EUR",
      "mustSupport" : true
    },
    {
      "id" : "Invoice.totalPriceComponent:MinderungNachGOZ",
      "path" : "Invoice.totalPriceComponent",
      "sliceName" : "MinderungNachGOZ",
      "short" : "Minderungen nach §7 GOZ",
      "comment" : "Im Falle einer GOZ Rechnung SOLLEN die Minderungen nach §7 GOZ vorhanden sein.\n  Im Falle einer GOÄ, GOÄ-neu oder BEMA Rechnung ist das Element nicht gefordert.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Invoice.totalPriceComponent:MinderungNachGOZ.type",
      "path" : "Invoice.totalPriceComponent.type",
      "patternCode" : "deduction",
      "mustSupport" : true
    },
    {
      "id" : "Invoice.totalPriceComponent:MinderungNachGOZ.code",
      "path" : "Invoice.totalPriceComponent.code",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-total-price-component-type-cs",
          "code" : "Minderung7GOZ"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Invoice.totalPriceComponent:MinderungNachGOZ.factor",
      "path" : "Invoice.totalPriceComponent.factor",
      "max" : "0"
    },
    {
      "id" : "Invoice.totalPriceComponent:MinderungNachGOZ.amount",
      "path" : "Invoice.totalPriceComponent.amount",
      "short" : "Wert in EUR",
      "mustSupport" : true
    },
    {
      "id" : "Invoice.totalPriceComponent:MinderungNachGOZ.amount.value",
      "path" : "Invoice.totalPriceComponent.amount.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Invoice.totalPriceComponent:MinderungNachGOZ.amount.currency",
      "path" : "Invoice.totalPriceComponent.amount.currency",
      "min" : 1,
      "patternCode" : "EUR",
      "mustSupport" : true
    },
    {
      "id" : "Invoice.totalPriceComponent:Fremdlaborleistungen",
      "path" : "Invoice.totalPriceComponent",
      "sliceName" : "Fremdlaborleistungen",
      "short" : "Summe aller Fremdlaborleistungen",
      "comment" : "Die Summe aller Fremdlaborleistungen SOLL vorhanden sein.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Invoice.totalPriceComponent:Fremdlaborleistungen.type",
      "path" : "Invoice.totalPriceComponent.type",
      "patternCode" : "base",
      "mustSupport" : true
    },
    {
      "id" : "Invoice.totalPriceComponent:Fremdlaborleistungen.code",
      "path" : "Invoice.totalPriceComponent.code",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-total-price-component-type-cs",
          "code" : "Fremdlaborleistungen"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Invoice.totalPriceComponent:Fremdlaborleistungen.factor",
      "path" : "Invoice.totalPriceComponent.factor",
      "max" : "0"
    },
    {
      "id" : "Invoice.totalPriceComponent:Fremdlaborleistungen.amount",
      "path" : "Invoice.totalPriceComponent.amount",
      "short" : "Wert in EUR",
      "mustSupport" : true
    },
    {
      "id" : "Invoice.totalPriceComponent:Fremdlaborleistungen.amount.value",
      "path" : "Invoice.totalPriceComponent.amount.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Invoice.totalPriceComponent:Fremdlaborleistungen.amount.currency",
      "path" : "Invoice.totalPriceComponent.amount.currency",
      "min" : 1,
      "patternCode" : "EUR",
      "mustSupport" : true
    },
    {
      "id" : "Invoice.totalPriceComponent:Abzug",
      "path" : "Invoice.totalPriceComponent",
      "sliceName" : "Abzug",
      "short" : "Abzug",
      "comment" : "Der Abzug SOLL vorhanden sein.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Invoice.totalPriceComponent:Abzug.extension",
      "path" : "Invoice.totalPriceComponent.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Invoice.totalPriceComponent:Abzug.extension:Kassenanteil",
      "path" : "Invoice.totalPriceComponent.extension",
      "sliceName" : "Kassenanteil",
      "short" : "Kassenanteil in Prozent",
      "comment" : "Im Falle einer BEMA oder gemischten BEMA und GOZ Rechnung SOLL der Kassenanteil in Prozent vorhanden sein.\n    Im Falle einer GOZ Rechnung KANN der Kassenanteil in Prozent vorhanden sein.\n    Im Falle einer GOÄ oder GOÄ-neu Rechnung ist das Element nicht gefordert.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-abzug-kassenanteil"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Invoice.totalPriceComponent:Abzug.extension:Kassenanteil.value[x]",
      "path" : "Invoice.totalPriceComponent.extension.value[x]",
      "mustSupport" : true
    },
    {
      "id" : "Invoice.totalPriceComponent:Abzug.type",
      "path" : "Invoice.totalPriceComponent.type",
      "patternCode" : "deduction",
      "mustSupport" : true
    },
    {
      "id" : "Invoice.totalPriceComponent:Abzug.code",
      "path" : "Invoice.totalPriceComponent.code",
      "short" : "Kategorisierung des Abzugs",
      "comment" : "Die Kategorisierung des Abzugs SOLL vorhanden sein.",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://gematik.de/fhir/dipag/ValueSet/dipag-total-price-component-deduction-type-vs"
      }
    },
    {
      "id" : "Invoice.totalPriceComponent:Abzug.factor",
      "path" : "Invoice.totalPriceComponent.factor",
      "max" : "0"
    },
    {
      "id" : "Invoice.totalPriceComponent:Abzug.amount",
      "path" : "Invoice.totalPriceComponent.amount",
      "short" : "Wert in EUR",
      "mustSupport" : true
    },
    {
      "id" : "Invoice.totalPriceComponent:Abzug.amount.value",
      "path" : "Invoice.totalPriceComponent.amount.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Invoice.totalPriceComponent:Abzug.amount.currency",
      "path" : "Invoice.totalPriceComponent.amount.currency",
      "min" : 1,
      "patternCode" : "EUR",
      "mustSupport" : true
    },
    {
      "id" : "Invoice.totalNet",
      "path" : "Invoice.totalNet",
      "short" : "Rechnungsbetrag (Netto)",
      "comment" : "Der Rechnungsbetrag in Netto MUSS vorhanden sein.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Invoice.totalGross",
      "path" : "Invoice.totalGross",
      "short" : "Rechnungsbetrag (Brutto)",
      "comment" : "Der Rechnungsbetrag in Brutto MUSS vorhanden sein.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Invoice.paymentTerms",
      "path" : "Invoice.paymentTerms",
      "short" : "Zahlungsdaten Überweisung und weitere Zahlungsmethoden",
      "comment" : "Die Zahlungsdaten zur Überweisung SOLLEN vorhanden sein.\n  Weitere Zahlungsmethoden wie bspw. Paypal, Klarna, Kreditkarte KÖNNEN auch hier angegeben werden.\n  Ebenfalls sollte hier der Zahlbetrag in EUR inkl. potenzieller Abzüge durch Anzahlungen, Vorauszahlungen oder Abschlagzahlungen.",
      "mustSupport" : true
    },
    {
      "id" : "Invoice.paymentTerms.extension",
      "path" : "Invoice.paymentTerms.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Invoice.paymentTerms.extension:Zahlungsziel",
      "path" : "Invoice.paymentTerms.extension",
      "sliceName" : "Zahlungsziel",
      "short" : "Zahlungsziel als Datum oder Fristangabe",
      "comment" : "Das Zahlungsziel SOLL vorhanden sein.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-zahlungsziel"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Invoice.paymentTerms.extension:PaymentTo",
      "path" : "Invoice.paymentTerms.extension",
      "sliceName" : "PaymentTo",
      "short" : "Zahlungsverbindung für die Überweisung (basiert auf HL7 FM WG Draft)",
      "comment" : "Die Zahlungsverbindung SOLL vorhanden sein, wenn die Zahlungsdaten zur Überweisung angegeben werden. Diese Extension basiert auf dem DRAFT der HL7 Financial Management Working Group und wird sich mit der Veröffentlichung der offiziellen HL7-Standard-Extension ändern.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/DiPagPaymentTo"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Invoice.note",
      "path" : "Invoice.note",
      "short" : "Hinweise an den Kostenträger",
      "comment" : "Der Hinweise an den Kostenträger KANN vorhanden sein.",
      "mustSupport" : true
    }]
  }
}

```
