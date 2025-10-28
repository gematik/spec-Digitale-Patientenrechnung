<img src="https://raw.githubusercontent.com/gematik/spec-ISiK-Basismodul/master-isik-stufe-2/Material/Gematik_Logo_Flag.png" alt="gematik logo" width="400"/>

----

# {{page-title}}

<br>

<a href="https://simplifier.net/DigitalePatientenrechnung/~introduction" class="btn btn-primary">Zum Projekt auf Simplifier</a>

<a href="https://github.com/gematik/spec-Digitale-Patientenrechnung/pull/42" class="btn btn-primary">Zum PR mit BEMA-Leistungen</a>


### Zusammenfassung
Im Folgenden sind die Anpassungen an **Profilen**, **Extensions**, **CodeSystemen** und dem **IG** beschrieben, mit denen die BEMA-Leistungen in das Projekt aufgenommen wurden. Die Ergänzungen wurden im Rahmen eines Pull-Requests auf GitHub vorbereitet, sind jedoch noch nicht Teil des veröffentlichten Packages und derzeit nur als Draft sichtbar.

### Profile

#### {{link:DiPagRechnung}}

- Die Extension BemaPunktsumme wurde hinzugefügt (siehe unten)
- Die folgenden Beschreibungen wurden um Vorgaben ergänzt, wie im BEMA-Kontext mit dem Element umzugehen ist
    - `extension[AbrechnungsDiagnoseProzedur]`
        - [..]Im Falle einer GOZ oder BEMA Rechnung werden keine Diagnosen oder Prozedur gefordert.
    - `extension[AbrechnungsDiagnoseProzedurFreitext]`
        - [..]Im Falle einer GOÄ, GOZ oder BEMA Rechnung, SOLLEN Diagnose und Prozedure als Freitextangabe vorhanden sein.
    - `participant[Leistungserbringer]`
        - [..]Im Falle einer GOZ oder BEMA Rechnung, KÖNNEN weitere behandelnde Leistungserbringer vorhanden sein.
    - `totalPriceComponent[MinderungNachGOZ]`
        - [..]Im Falle einer GOÄ, GOÄ-neu oder BEMA Rechnung ist das Element nicht gefordert.
    - `totalPriceComponent[MinderungNachGOZ].extension[Kassenanteil]`
        - Im Falle einer BEMA Rechnung SOLL der Kassenanteil in Prozent vorhanden sein.[..]
    - `lineItem.priceComponent[BruttoBetrag]`
        - [..]Im Falle einer BEMA Rechnungsposition ist das Element nicht gefordert.

#### {{link:DiPagRechnungsposition}}

- Die komplexe Extension {{link:DiPagRechnungspositionGOAngaben}} bietet die Möglichkeit, die BEMA-Punktzahl anzugeben. Diese wurde im Profil mit MUST-SUPPORT gekennzeichnet.
- Die folgenden Beschreibungen wurden um Vorgaben ergänzt, wie im BEMA-Kontext mit dem Element umzugehen ist
    - `extension[Zusatz]`
        - [..]Bei einer BEMA Rechnungsposition ist der Zusatz nicht gefordert.[..]
    - `extension[WegegeldReiseentschädigung]`
        - [..]Im Falle einer BEMA Rechnungsposition ist das Element nicht gefordert.
    - `extension[Einfachsatz]`
        - [..]Im Falle einer BEMA Rechnungsposition ist er nicht gefordert.
    - `extension[Faktor].extension[Value]`
        - [..]Im Falle einer GOZ oder BEMA Rechnungsposition ist der Faktor Grund nicht gefordert.
    - `extension[MinderungP6GOÄ]`
        - [..]Im Falle einer GOZ oder BEMA Rechnungsposition ist das Element nicht gefordert.
    - `occurrence[x]`
        - [..]Im Falle einer BEMA Rechnungsposition, ist das Element nicht gefordert.
    - `occurrencePeriod`
        - [..]Bei GOZ oder BEMA Leistungen ist ein behandelnder Leistungserbringer nicht gefordert.
    - `reason.text`
        - [..]Bei einer BEMA Rechnungsposition ist die Begründung in Abhängigkeit zur Gebührenziffer nicht gefordert.
    - `bodysite.extension[ZahnRegion]`
        - Im Falle einer GOZ oder BEMA Rechnungsposition, SOLL das Element Zahn/Region vorhanden sein.[..]
    - `coding[PZN]`
        - [..]Im Falle einer GOZ oder BEMA Rechnungsposition wird die PZN nicht gefordert.
    - `quantity`
        - [..]Ist die Rechnungsposition vom Typ 'GOÄ', 'GOZ' oder 'BEMA' SOLL hier die Anzahl vorhanden sein.
    

### Extensions

#### DiPagBemaPunktsumme

Eine neue Extension wurde hinzugefügt, mit der es möglich ist, an der Rechnung die BEMA-Punktsumme strukturiert zu erfassen.

<iframe src="https://simplifier.net/embed/snippet?user=jonasschn2&key=8" style="width:100%; height:300px; border:none; display:block;"></iframe>

### CodeSysteme

#### {{link:DiPagRechnungAbrechnungsartCS}}

Das CodeSystem wurde um den Code `BEMA` erweitert, sodass es möglich ist, eine Rechnung mit der Abrechnungsart BEMA zu erstellen.

#### {{link:DiPagRechnungspositionTypeCS}}

Das CodeSystem wurde um den Code `BEMA` erweitert, sodass es möglich ist, eine Rechnungsposition mit dem Typ BEMA zu erstellen.

#### {{link:DiPagTotalPriceComponentTypeCS}}

Das CodeSystem wurde um den Code `KostenBema13AtoD` erweitert, der dem Code `Abzug` untergeordnet ist.
Damit lassen sich Abzüge im `totalPriceComponent` einer Rechnung nach diesem Abzugstyp erfassen.

### Implementation Guide

Im [IG](https://simplifier.net/guide/digitalepatientenrechnung-implementierungsleitfaden) wurde für die oben genannte Extension eine Seite hinzugefügt. Alle weiteren Anpassungen im IG erfolgen automatisch in den Tabellen, welche die Beschreibungen aus den Profilen laden. Es sind die im Abschnitt **Profile** genannten Anpassungen.

### Status

Version: 1.0.0

Realm: Deutschland

Reifegrad: Draft <!-- Draft, STU (Standard for Trial Use) oder Normativ--> 

Datum: 16.10.2025

### Herausgeber

gematik GmbH

[Impressum](https://www.gematik.de/impressum/)

### Ansprechpartner
* Frank Weber
* Peter Menze

### Weitere Links
<!-- z. B. Beschreibungen des UseCases, Datenmodell, ges. Vorgaben, fachliche Anforderungen, relevante Spezifikationen-->
* [GitHub Projekt](https://github.com/gematik/spec-Digitale-Patientenrechnung)
* [Feature-Dokument Digitale Patientenrechnung](https://gemspec.gematik.de/docs/gemF/gemF_DiPag/latest/)










