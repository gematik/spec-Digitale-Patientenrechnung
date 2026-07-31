# Digitale Patientenrechnung Rechnungsposition - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Rechnungsposition**

## Ressourcenprofil: Digitale Patientenrechnung Rechnungsposition 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition | *Version*:1.1.0 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagRechnungsposition |

 
Dieses Profil bildet eine einzelne Rechnungsposition einer Digitalen Patientenrechnung ab, z. B. Leistungen nach GOÄ, GOZ oder BEMA sowie Laborleistungen, Sachkosten/Auslagen und Wegegeld/Reiseentschädigung. 

**Usages:**

* Refer to this Profile: [Digitale Patientenrechnung Rechnung](StructureDefinition-dipag-rechnung.md)
* Examples for this Profile: [ChargeItem/0d1e2f3a-4b5c-6d7e-8f9a-0b1c2d3e4f5a](ChargeItem-0d1e2f3a-4b5c-6d7e-8f9a-0b1c2d3e4f5a.md), [ChargeItem/4d5e6f7a-8b9c-0d1e-2f3a-4b5c6d7e8f9a](ChargeItem-4d5e6f7a-8b9c-0d1e-2f3a-4b5c6d7e8f9a.md), [ChargeItem/5e6f7a8b-9c0d-1e2f-3a4b-5c6d7e8f9a0b](ChargeItem-5e6f7a8b-9c0d-1e2f-3a4b-5c6d7e8f9a0b.md), [ChargeItem/6f7a8b9c-0d1e-2f3a-4b5c-6d7e8f9a0b1c](ChargeItem-6f7a8b9c-0d1e-2f3a-4b5c-6d7e8f9a0b1c.md)... Show 43 more, [ChargeItem/7a8b9c0d-1e2f-3a4b-5c6d-7e8f9a0b1c2d](ChargeItem-7a8b9c0d-1e2f-3a4b-5c6d-7e8f9a0b1c2d.md), [ChargeItem/8b9c0d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e](ChargeItem-8b9c0d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e.md), [ChargeItem/9c0d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f](ChargeItem-9c0d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f.md), [ChargeItem/KfoMehrkosten1-P1](ChargeItem-KfoMehrkosten1-P1.md), [ChargeItem/KfoMehrkosten1-P10](ChargeItem-KfoMehrkosten1-P10.md), [ChargeItem/KfoMehrkosten1-P2](ChargeItem-KfoMehrkosten1-P2.md), [ChargeItem/KfoMehrkosten1-P3](ChargeItem-KfoMehrkosten1-P3.md), [ChargeItem/KfoMehrkosten1-P4](ChargeItem-KfoMehrkosten1-P4.md), [ChargeItem/KfoMehrkosten1-P5](ChargeItem-KfoMehrkosten1-P5.md), [ChargeItem/KfoMehrkosten1-P6](ChargeItem-KfoMehrkosten1-P6.md), [ChargeItem/KfoMehrkosten1-P7](ChargeItem-KfoMehrkosten1-P7.md), [ChargeItem/KfoMehrkosten1-P8](ChargeItem-KfoMehrkosten1-P8.md), [ChargeItem/KfoMehrkosten1-P9](ChargeItem-KfoMehrkosten1-P9.md), [ChargeItem/KfoMehrkosten2-P1](ChargeItem-KfoMehrkosten2-P1.md), [ChargeItem/KfoMehrkosten2-P2](ChargeItem-KfoMehrkosten2-P2.md), [ChargeItem/KfoMehrkosten2-P3](ChargeItem-KfoMehrkosten2-P3.md), [ChargeItem/KfoMehrkosten2-P4](ChargeItem-KfoMehrkosten2-P4.md), [ChargeItem/KfoMehrkosten2-P5](ChargeItem-KfoMehrkosten2-P5.md), [ChargeItem/KfoMehrkosten2-P6](ChargeItem-KfoMehrkosten2-P6.md), [ChargeItem/KfoMehrkosten2-P7](ChargeItem-KfoMehrkosten2-P7.md), [ChargeItem/KfoMehrkosten2-P8](ChargeItem-KfoMehrkosten2-P8.md), [ChargeItem/KfoMehrkosten3-P1](ChargeItem-KfoMehrkosten3-P1.md), [ChargeItem/KfoMehrkosten3-P10](ChargeItem-KfoMehrkosten3-P10.md), [ChargeItem/KfoMehrkosten3-P11](ChargeItem-KfoMehrkosten3-P11.md), [ChargeItem/KfoMehrkosten3-P12](ChargeItem-KfoMehrkosten3-P12.md), [ChargeItem/KfoMehrkosten3-P13](ChargeItem-KfoMehrkosten3-P13.md), [ChargeItem/KfoMehrkosten3-P14](ChargeItem-KfoMehrkosten3-P14.md), [ChargeItem/KfoMehrkosten3-P15](ChargeItem-KfoMehrkosten3-P15.md), [ChargeItem/KfoMehrkosten3-P2](ChargeItem-KfoMehrkosten3-P2.md), [ChargeItem/KfoMehrkosten3-P3](ChargeItem-KfoMehrkosten3-P3.md), [ChargeItem/KfoMehrkosten3-P4](ChargeItem-KfoMehrkosten3-P4.md), [ChargeItem/KfoMehrkosten3-P5](ChargeItem-KfoMehrkosten3-P5.md), [ChargeItem/KfoMehrkosten3-P6](ChargeItem-KfoMehrkosten3-P6.md), [ChargeItem/KfoMehrkosten3-P7](ChargeItem-KfoMehrkosten3-P7.md), [ChargeItem/KfoMehrkosten3-P8](ChargeItem-KfoMehrkosten3-P8.md), [ChargeItem/KfoMehrkosten3-P9](ChargeItem-KfoMehrkosten3-P9.md), [ChargeItem/KfoMehrkosten4-P1](ChargeItem-KfoMehrkosten4-P1.md), [ChargeItem/KfoMehrkosten4-P2](ChargeItem-KfoMehrkosten4-P2.md), [ChargeItem/a5b6c7d8-6f7a-8b9c-3d4e-5f6a7b8c9d0e](ChargeItem-a5b6c7d8-6f7a-8b9c-3d4e-5f6a7b8c9d0e.md), [ChargeItem/b6c7d8e9-7a8b-9c0d-4e5f-6a7b8c9d0e1f](ChargeItem-b6c7d8e9-7a8b-9c0d-4e5f-6a7b8c9d0e1f.md), [ChargeItem/c7d8e9f0-8b9c-0d1e-5f6a-7b8c9d0e1f2a](ChargeItem-c7d8e9f0-8b9c-0d1e-5f6a-7b8c9d0e1f2a.md), [ChargeItem/d8e9f0a1-9c0d-1e2f-6a7b-8c9d0e1f2a3b](ChargeItem-d8e9f0a1-9c0d-1e2f-6a7b-8c9d0e1f2a3b.md) and [ChargeItem/e9f0a1b2-0d1e-2f3a-7b8c-9d0e1f2a3b4c](ChargeItem-e9f0a1b2-0d1e-2f3a-7b8c-9d0e1f2a3b4c.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.gematik.dipag|current/StructureDefinition/StructureDefinition-dipag-rechnungsposition.json)

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

Diese Struktur ist abgeleitet von [ChargeItem](http://hl7.org/fhir/R4/chargeitem.html) 

#### Terminology Bindings

#### Constraints

| | | |
| :--- | :--- | :--- |
| ChargeItem.bodysite |  |  |
| ChargeItem.bodysite.extension:ZahnRegion | Zahn/Region | Im Falle einer GOZ oder BEMA Rechnungsposition, SOLL das Element Zahn/Region vorhanden sein. Im Falle einer GOÄ oder GOÄ-neu Rechnungsposition ist das Element nicht gefordert. Im GOZ-Rechnungsformular zugelassen ist* zwei Ziffern durch Komma und Leerzeichen getrennt
* Bereich zugelassen, z.B. 17-27 Die Kieferbezeichnung mit 'OK' und 'UK' ist im Formular nicht zulässig, da die Verwendung allerdings die Regel ist, wird der Inhalt des Feldes nicht nach Korrektheit überprüft.
 |
| ChargeItem.bodysite.extension:ZahnRegion.value[x] |  |  |
| ChargeItem.code | Gebührenziffer | Ist der Rechnungspositionstyp auf eine Gebührenordnung festgelegt, SOLL die Gebührenziffer vorhanden sein. Mit 'Gebührenziffer' ist die eindeutige Kennung zu verstehen, die eine spezifische medizinische oder zahnmedizinische Leistung in den entsprechenden Gebührenordnungen beschreibt. Sie dient als Grundlage für die Abrechnung zwischen Leistungserbringern (Ärzten/Zahnärzten) und Kostenträgern (z. B. Krankenkassen oder Patienten). In spezifischen Gebührenordnungen werden ggf. abweichende Begriffe hierfür verwendet. |
| ChargeItem.code.coding |  |  |
| ChargeItem.code.coding:GOAE | GOÄ Ziffer |  |
| ChargeItem.code.coding:GOAE.code |  |  |
| ChargeItem.code.coding:GOAE.display | Legendentext der Gebührenordnung / Leistungsbeschreibung |  |
| ChargeItem.code.coding:GOAE.system |  |  |
| ChargeItem.code.coding:GOZ | GOZ Ziffer |  |
| ChargeItem.code.coding:GOZ.code |  |  |
| ChargeItem.code.coding:GOZ.display | Legendentext der Gebührenordnung / Leistungsbeschreibung |  |
| ChargeItem.code.coding:GOZ.system |  |  |
| ChargeItem.code.text | Bezeichnung für Auslagen/Sachkosten, z.B. Wirkstoffname oder Fremdlaborleistung |  |
| ChargeItem.extension:Behandlungsdatum | Behandlungsdatum | Das Behandlungsdatum SOLL vorhanden sein. |
| ChargeItem.extension:Behandlungsdatum.value[x] |  |  |
| ChargeItem.extension:GebuehrenordnungAngaben |  |  |
| ChargeItem.extension:GebuehrenordnungAngaben.extension:Einfachsatz | Gebühr Einfachsatz in EUR | Im Falle einer GOÄ oder GOÄ-neu Rechnungsposition, SOLL der Gebühr Einfachsatz in EUR vorhanden sein. Im Falle einer BEMA oder GOZ Rechnungsposition ist er nicht gefordert. |
| ChargeItem.extension:GebuehrenordnungAngaben.extension:Einfachsatz.value[x] |  |  |
| ChargeItem.extension:GebuehrenordnungAngaben.extension:Einfachsatz.value[x].currency |  |  |
| ChargeItem.extension:GebuehrenordnungAngaben.extension:Einfachsatz.value[x].value |  |  |
| ChargeItem.extension:GebuehrenordnungAngaben.extension:Faktor |  |  |
| ChargeItem.extension:GebuehrenordnungAngaben.extension:Faktor.extension:FaktorGrund | Faktor Grund | Im Falle einer GOÄ-neu Rechnungsposition SOLL der Faktor Grund vorhanden sein. Im Falle einer GOÄ Rechnungsposition KANN der Faktor Grund vorhanden sein. Im Falle einer GOZ oder BEMA Rechnungsposition ist der Faktor Grund nicht gefordert. |
| ChargeItem.extension:GebuehrenordnungAngaben.extension:Faktor.extension:FaktorGrund.value[x] |  |  |
| ChargeItem.extension:GebuehrenordnungAngaben.extension:Faktor.extension:Value.value[x] |  |  |
| ChargeItem.extension:GebuehrenordnungAngaben.extension:MinderungP6GOAE | Minderungen nach §6a GOÄ in Prozent | Im Falle einer GOÄ oder GOÄ-neu Rechnungsposition SOLL die Minderungen nach §6a GOÄ in Prozent vorhanden sein. Im Falle einer GOZ oder BEMA Rechnungsposition ist das Element nicht gefordert. |
| ChargeItem.extension:GebuehrenordnungAngaben.extension:MinderungP6GOAE.value[x] |  |  |
| ChargeItem.extension:GebuehrenordnungAngaben.extension:MinderungP6GOAE.value[x].code |  |  |
| ChargeItem.extension:GebuehrenordnungAngaben.extension:MinderungP6GOAE.value[x].system |  |  |
| ChargeItem.extension:GebuehrenordnungAngaben.extension:MinderungP6GOAE.value[x].unit |  |  |
| ChargeItem.extension:GebuehrenordnungAngaben.extension:MinderungP6GOAE.value[x].value |  |  |
| ChargeItem.extension:GebuehrenordnungAngaben.extension:Punktzahl | Punktzahl BEMA | Im Fall einer BEMA Rechnungsposition SOLL die Punktzahl BEMA vorhanden sein. Im Falle einer GOÄ, GOÄ-neu oder GOZ Rechnungsposition ist die Punktzahl BEMA nicht gefordert. |
| ChargeItem.extension:GebuehrenordnungAngaben.extension:Punktzahl.value[x] |  |  |
| ChargeItem.extension:Rechnungspositionstyp | Rechnungspositionstyp | Der Rechnungspositionstyp MUSS vorhanden sein. |
| ChargeItem.extension:Rechnungspositionstyp.value[x] |  |  |
| ChargeItem.extension:Rechnungspositionstyp.value[x].code |  |  |
| ChargeItem.extension:Rechnungspositionstyp.value[x].system |  |  |
| ChargeItem.extension:WegegeldReiseentschaedigung | Wegegeld oder Reiseentschädigung | Im Falle einer GOÄ, GOÄ-neu oder GOZ Rechnungsposition SOLL Wegegeld oder Reiseentschädigung vorhanden sein. Im Falle einer BEMA Rechnungsposition ist das Element nicht gefordert. |
| ChargeItem.extension:WegegeldReiseentschaedigung.extension:Reiseentschaedigung | Reiseentschädigung ab 25 km | Die Reiseentschädigung ab 25 km SOLL vorhanden sein. |
| ChargeItem.extension:WegegeldReiseentschaedigung.extension:Reiseentschaedigung.extension:Abwesenheit | Abwesenheit in Stunden |  |
| ChargeItem.extension:WegegeldReiseentschaedigung.extension:Reiseentschaedigung.extension:Abwesenheit.value[x] |  |  |
| ChargeItem.extension:WegegeldReiseentschaedigung.extension:Reiseentschaedigung.extension:Abwesenheit.value[x].code |  |  |
| ChargeItem.extension:WegegeldReiseentschaedigung.extension:Reiseentschaedigung.extension:Abwesenheit.value[x].system |  |  |
| ChargeItem.extension:WegegeldReiseentschaedigung.extension:Reiseentschaedigung.extension:Abwesenheit.value[x].unit |  |  |
| ChargeItem.extension:WegegeldReiseentschaedigung.extension:Reiseentschaedigung.extension:Abwesenheit.value[x].value |  |  |
| ChargeItem.extension:WegegeldReiseentschaedigung.extension:Reiseentschaedigung.extension:Entfernung | Entfernung in km |  |
| ChargeItem.extension:WegegeldReiseentschaedigung.extension:Reiseentschaedigung.extension:Entfernung.value[x] |  |  |
| ChargeItem.extension:WegegeldReiseentschaedigung.extension:Reiseentschaedigung.extension:Entfernung.value[x].code |  |  |
| ChargeItem.extension:WegegeldReiseentschaedigung.extension:Reiseentschaedigung.extension:Entfernung.value[x].system |  |  |
| ChargeItem.extension:WegegeldReiseentschaedigung.extension:Reiseentschaedigung.extension:Entfernung.value[x].unit |  |  |
| ChargeItem.extension:WegegeldReiseentschaedigung.extension:Reiseentschaedigung.extension:Entfernung.value[x].value |  |  |
| ChargeItem.extension:WegegeldReiseentschaedigung.extension:Reiseentschaedigung.extension:Uebernachtung | Kosten der Übernachtung |  |
| ChargeItem.extension:WegegeldReiseentschaedigung.extension:Reiseentschaedigung.extension:Uebernachtung.value[x] |  |  |
| ChargeItem.extension:WegegeldReiseentschaedigung.extension:Reiseentschaedigung.extension:Uebernachtung.value[x].currency |  |  |
| ChargeItem.extension:WegegeldReiseentschaedigung.extension:Reiseentschaedigung.extension:Uebernachtung.value[x].value |  |  |
| ChargeItem.extension:WegegeldReiseentschaedigung.extension:Reiseentschaedigung.extension:Verkehrsmittel | Verkehrsmittel |  |
| ChargeItem.extension:WegegeldReiseentschaedigung.extension:Reiseentschaedigung.extension:Verkehrsmittel.value[x] |  |  |
| ChargeItem.extension:WegegeldReiseentschaedigung.extension:Wegegeld | Wegegeld bis 25km | Das Wegegeld bis 25km SOLL vorhanden sein. |
| ChargeItem.extension:WegegeldReiseentschaedigung.extension:Wegegeld.extension:Entfernung | Entfernung in km |  |
| ChargeItem.extension:WegegeldReiseentschaedigung.extension:Wegegeld.extension:Entfernung.value[x] |  |  |
| ChargeItem.extension:WegegeldReiseentschaedigung.extension:Wegegeld.extension:Entfernung.value[x].code |  |  |
| ChargeItem.extension:WegegeldReiseentschaedigung.extension:Wegegeld.extension:Entfernung.value[x].system |  |  |
| ChargeItem.extension:WegegeldReiseentschaedigung.extension:Wegegeld.extension:Entfernung.value[x].unit |  |  |
| ChargeItem.extension:WegegeldReiseentschaedigung.extension:Wegegeld.extension:Entfernung.value[x].value |  |  |
| ChargeItem.extension:WegegeldReiseentschaedigung.extension:Wegegeld.extension:Nacht | Nacht |  |
| ChargeItem.extension:WegegeldReiseentschaedigung.extension:Wegegeld.extension:Nacht.value[x] |  |  |
| ChargeItem.extension:Zusatz | Zusatz | Im Falle einer GOÄ, GOÄ-neu oder GOZ Rechnungsposition, SOLL der Zusatz vorhanden sein. Bei einer BEMA Rechnungsposition ist der Zusatz nicht gefordert. Der Code F 'Leistungs zur Früherkennung' ist für GOZ-Rechnungen nicht relevant. |
| ChargeItem.extension:Zusatz.value[x] |  |  |
| ChargeItem.extension:Zusatz.value[x].code |  |  |
| ChargeItem.extension:Zusatz.value[x].system |  |  |
| ChargeItem.occurrence[x] | Leistungszeitraum | Im Falle einer GOÄ, GOÄ-neu oder GOZ Rechnungsposition, SOLL der Leistungszeitraum vorhanden sein. Im Falle einer BEMA Rechnungsposition, ist das Element nicht gefordert |
| ChargeItem.occurrence[x]:occurrenceDateTime | Behandlungsdatum |  |
| ChargeItem.occurrence[x]:occurrencePeriod | Behandlungszeitraum |  |
| ChargeItem.occurrence[x]:occurrencePeriod.end |  |  |
| ChargeItem.occurrence[x]:occurrencePeriod.start |  |  |
| ChargeItem.performer |  |  |
| ChargeItem.performer.actor | Referenz Behandelnder Leistungserbringer | Im Falle einer GOÄ-neu Rechnungsposition, SOLL die Referenz auf einen behandelnden Leistungserbringer vorhanden sein. Im Fall einer GOÄ Rechnungsposition, KANN ein behandelnder Leistungserbringer vorhanden sein. Bei GOZ oder BEMA Leistungen ist ein behandelnder Leistungserbringer nicht gefordert. |
| ChargeItem.product[x] |  |  |
| ChargeItem.product[x].coding:PZN | Pharmazentralnummer | Im Falle einer GOÄ oder GOÄ-neu Rechnungsposition SOLL die Pharmazentralnummer (PZN) vorhanden sein. Im Falle einer GOZ oder BEMA Rechnungsposition wird die PZN nicht gefordert. |
| ChargeItem.product[x].text | Material / Wirkstoffname | Das Material oder der Wirkstoffname SOLLEN hier vorhanden sein. |
| ChargeItem.quantity | Anzahl oder verbrauchte Menge | Ist die Rechnungsposition vom Typ 'Auslagen/Sachkosten' und es eine GOÄ, GOÄ-neu oder GOZ Rechnungsposition, SOLL hier die Anzahl des unter product[x] angegebenen Medikament, Wirkstoff oder Material vorhanden sein. Ist die Rechnungsposition vom Typ 'GOÄ', 'GOZ' oder 'BEMA' SOLL hier die Anzahl vorhanden sein. |
| ChargeItem.quantity.code | Einheit als UCUM-Code |  |
| ChargeItem.quantity.system |  |  |
| ChargeItem.quantity.unit | Einheit |  |
| ChargeItem.quantity.value | Menge |  |
| ChargeItem.reason |  |  |
| ChargeItem.reason.text | Begründung in Abhängigkeit zur Gebührenziffer | Im Falle einer GOÄ, GOÄ-neu oder GOZ Rechnungsposition, SOLL die Begründung in Abhängigkeit zur Gebührenziffer vorhanden sein. Bei einer BEMA Rechnungsposition ist die Begründung in Abhängigkeit zur Gebührenziffer nicht gefordert. Beispiele sind:* obligatorisch bei analoger Rechnungsposition
* Angabe zu den behandelten Organen
* Überschreitung der Regelsätze
 |
| ChargeItem.status | Der Status der Rechnungsposition MUSS vorhanden sein. |  |
| ChargeItem.subject | Behandelte Person |  |
| ChargeItem.subject.reference |  |  |

Diese Struktur ist abgeleitet von [ChargeItem](http://hl7.org/fhir/R4/chargeitem.html) 

** Summary **

Mandatory: 6 elements(28 nested mandatory elements)
 Must-Support: 90 elements

**Structures**

This structure refers to these other structures:

* [Digitale Patientenrechnung Patient (https://gematik.de/fhir/dipag/StructureDefinition/dipag-patient)](StructureDefinition-dipag-patient.md)
* [Digitale Patientenrechnung Person (https://gematik.de/fhir/dipag/StructureDefinition/dipag-person)](StructureDefinition-dipag-person.md)
* [Digitale Patientenrechnung Institution (https://gematik.de/fhir/dipag/StructureDefinition/dipag-institution)](StructureDefinition-dipag-institution.md)
* [Coding-Profil für PZN (http://fhir.de/StructureDefinition/CodingPZN)](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.de/StructureDefinition/CodingPZN)

**Extensions**

This structure refers to these extensions:

* [https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition-type](StructureDefinition-dipag-rechnungsposition-type.md)
* [https://gematik.de/fhir/dipag/StructureDefinition/DiPagRechnungspositionZusatz](StructureDefinition-DiPagRechnungspositionZusatz.md)
* [https://gematik.de/fhir/dipag/StructureDefinition/dipag-wegegeld-reiseentschaedigung](StructureDefinition-dipag-wegegeld-reiseentschaedigung.md)
* [https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition-go-angaben](StructureDefinition-dipag-rechnungsposition-go-angaben.md)
* [https://gematik.de/fhir/dipag/StructureDefinition/DiPagRechnungspositionBehandlungsdatum](StructureDefinition-DiPagRechnungspositionBehandlungsdatum.md)
* [https://gematik.de/fhir/dipag/StructureDefinition/dipag-zahnregion](StructureDefinition-dipag-zahnregion.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of ChargeItem.code.coding
* The element 1 is sliced based on the value of ChargeItem.occurrence[x]
* The element 1 is sliced based on the value of ChargeItem.product[x].coding

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [ChargeItem](http://hl7.org/fhir/R4/chargeitem.html) 

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [ChargeItem](http://hl7.org/fhir/R4/chargeitem.html) 

** Summary **

Mandatory: 6 elements(28 nested mandatory elements)
 Must-Support: 90 elements

**Structures**

This structure refers to these other structures:

* [Digitale Patientenrechnung Patient (https://gematik.de/fhir/dipag/StructureDefinition/dipag-patient)](StructureDefinition-dipag-patient.md)
* [Digitale Patientenrechnung Person (https://gematik.de/fhir/dipag/StructureDefinition/dipag-person)](StructureDefinition-dipag-person.md)
* [Digitale Patientenrechnung Institution (https://gematik.de/fhir/dipag/StructureDefinition/dipag-institution)](StructureDefinition-dipag-institution.md)
* [Coding-Profil für PZN (http://fhir.de/StructureDefinition/CodingPZN)](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.de/StructureDefinition/CodingPZN)

**Extensions**

This structure refers to these extensions:

* [https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition-type](StructureDefinition-dipag-rechnungsposition-type.md)
* [https://gematik.de/fhir/dipag/StructureDefinition/DiPagRechnungspositionZusatz](StructureDefinition-DiPagRechnungspositionZusatz.md)
* [https://gematik.de/fhir/dipag/StructureDefinition/dipag-wegegeld-reiseentschaedigung](StructureDefinition-dipag-wegegeld-reiseentschaedigung.md)
* [https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition-go-angaben](StructureDefinition-dipag-rechnungsposition-go-angaben.md)
* [https://gematik.de/fhir/dipag/StructureDefinition/DiPagRechnungspositionBehandlungsdatum](StructureDefinition-DiPagRechnungspositionBehandlungsdatum.md)
* [https://gematik.de/fhir/dipag/StructureDefinition/dipag-zahnregion](StructureDefinition-dipag-zahnregion.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of ChargeItem.code.coding
* The element 1 is sliced based on the value of ChargeItem.occurrence[x]
* The element 1 is sliced based on the value of ChargeItem.product[x].coding

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-dipag-rechnungsposition.csv), [Excel](../StructureDefinition-dipag-rechnungsposition.xlsx), [Schematron](../StructureDefinition-dipag-rechnungsposition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "dipag-rechnungsposition",
  "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition",
  "version" : "1.1.0",
  "name" : "DiPagRechnungsposition",
  "title" : "Digitale Patientenrechnung Rechnungsposition",
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
  "description" : "Dieses Profil bildet eine einzelne Rechnungsposition einer Digitalen Patientenrechnung ab, z. B. Leistungen nach GOÄ, GOZ oder BEMA sowie Laborleistungen, Sachkosten/Auslagen und Wegegeld/Reiseentschädigung.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ChargeItem",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ChargeItem",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ChargeItem",
      "path" : "ChargeItem"
    },
    {
      "id" : "ChargeItem.extension",
      "path" : "ChargeItem.extension",
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
      "id" : "ChargeItem.extension:Rechnungspositionstyp",
      "path" : "ChargeItem.extension",
      "sliceName" : "Rechnungspositionstyp",
      "short" : "Rechnungspositionstyp",
      "comment" : "Der Rechnungspositionstyp MUSS vorhanden sein.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition-type"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:Rechnungspositionstyp.value[x]",
      "path" : "ChargeItem.extension.value[x]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:Rechnungspositionstyp.value[x].system",
      "path" : "ChargeItem.extension.value[x].system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:Rechnungspositionstyp.value[x].code",
      "path" : "ChargeItem.extension.value[x].code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:Zusatz",
      "path" : "ChargeItem.extension",
      "sliceName" : "Zusatz",
      "short" : "Zusatz",
      "comment" : "Im Falle einer GOÄ, GOÄ-neu oder GOZ Rechnungsposition, SOLL der Zusatz vorhanden sein.\n  Bei einer BEMA Rechnungsposition ist der Zusatz nicht gefordert.\n  Der Code F 'Leistungs zur Früherkennung' ist für GOZ-Rechnungen nicht relevant.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/DiPagRechnungspositionZusatz"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:Zusatz.value[x]",
      "path" : "ChargeItem.extension.value[x]",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:Zusatz.value[x].system",
      "path" : "ChargeItem.extension.value[x].system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:Zusatz.value[x].code",
      "path" : "ChargeItem.extension.value[x].code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:WegegeldReiseentschaedigung",
      "path" : "ChargeItem.extension",
      "sliceName" : "WegegeldReiseentschaedigung",
      "short" : "Wegegeld oder Reiseentschädigung",
      "comment" : "Im Falle einer GOÄ, GOÄ-neu oder GOZ Rechnungsposition SOLL Wegegeld oder Reiseentschädigung vorhanden sein.\n  Im Falle einer BEMA Rechnungsposition ist das Element nicht gefordert.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-wegegeld-reiseentschaedigung"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:WegegeldReiseentschaedigung.extension:Wegegeld",
      "path" : "ChargeItem.extension.extension",
      "sliceName" : "Wegegeld",
      "short" : "Wegegeld bis 25km",
      "comment" : "Das Wegegeld bis 25km SOLL vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:WegegeldReiseentschaedigung.extension:Wegegeld.extension:Entfernung",
      "path" : "ChargeItem.extension.extension.extension",
      "sliceName" : "Entfernung",
      "short" : "Entfernung in km",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:WegegeldReiseentschaedigung.extension:Wegegeld.extension:Entfernung.value[x]",
      "path" : "ChargeItem.extension.extension.extension.value[x]",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:WegegeldReiseentschaedigung.extension:Wegegeld.extension:Entfernung.value[x].value",
      "path" : "ChargeItem.extension.extension.extension.value[x].value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:WegegeldReiseentschaedigung.extension:Wegegeld.extension:Entfernung.value[x].unit",
      "path" : "ChargeItem.extension.extension.extension.value[x].unit",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:WegegeldReiseentschaedigung.extension:Wegegeld.extension:Entfernung.value[x].system",
      "path" : "ChargeItem.extension.extension.extension.value[x].system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:WegegeldReiseentschaedigung.extension:Wegegeld.extension:Entfernung.value[x].code",
      "path" : "ChargeItem.extension.extension.extension.value[x].code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:WegegeldReiseentschaedigung.extension:Wegegeld.extension:Nacht",
      "path" : "ChargeItem.extension.extension.extension",
      "sliceName" : "Nacht",
      "short" : "Nacht",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:WegegeldReiseentschaedigung.extension:Wegegeld.extension:Nacht.value[x]",
      "path" : "ChargeItem.extension.extension.extension.value[x]",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:WegegeldReiseentschaedigung.extension:Reiseentschaedigung",
      "path" : "ChargeItem.extension.extension",
      "sliceName" : "Reiseentschaedigung",
      "short" : "Reiseentschädigung ab 25 km",
      "comment" : "Die Reiseentschädigung ab 25 km SOLL vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:WegegeldReiseentschaedigung.extension:Reiseentschaedigung.extension:Abwesenheit",
      "path" : "ChargeItem.extension.extension.extension",
      "sliceName" : "Abwesenheit",
      "short" : "Abwesenheit in Stunden",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:WegegeldReiseentschaedigung.extension:Reiseentschaedigung.extension:Abwesenheit.value[x]",
      "path" : "ChargeItem.extension.extension.extension.value[x]",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:WegegeldReiseentschaedigung.extension:Reiseentschaedigung.extension:Abwesenheit.value[x].value",
      "path" : "ChargeItem.extension.extension.extension.value[x].value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:WegegeldReiseentschaedigung.extension:Reiseentschaedigung.extension:Abwesenheit.value[x].unit",
      "path" : "ChargeItem.extension.extension.extension.value[x].unit",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:WegegeldReiseentschaedigung.extension:Reiseentschaedigung.extension:Abwesenheit.value[x].system",
      "path" : "ChargeItem.extension.extension.extension.value[x].system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:WegegeldReiseentschaedigung.extension:Reiseentschaedigung.extension:Abwesenheit.value[x].code",
      "path" : "ChargeItem.extension.extension.extension.value[x].code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:WegegeldReiseentschaedigung.extension:Reiseentschaedigung.extension:Entfernung",
      "path" : "ChargeItem.extension.extension.extension",
      "sliceName" : "Entfernung",
      "short" : "Entfernung in km",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:WegegeldReiseentschaedigung.extension:Reiseentschaedigung.extension:Entfernung.value[x]",
      "path" : "ChargeItem.extension.extension.extension.value[x]",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:WegegeldReiseentschaedigung.extension:Reiseentschaedigung.extension:Entfernung.value[x].value",
      "path" : "ChargeItem.extension.extension.extension.value[x].value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:WegegeldReiseentschaedigung.extension:Reiseentschaedigung.extension:Entfernung.value[x].unit",
      "path" : "ChargeItem.extension.extension.extension.value[x].unit",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:WegegeldReiseentschaedigung.extension:Reiseentschaedigung.extension:Entfernung.value[x].system",
      "path" : "ChargeItem.extension.extension.extension.value[x].system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:WegegeldReiseentschaedigung.extension:Reiseentschaedigung.extension:Entfernung.value[x].code",
      "path" : "ChargeItem.extension.extension.extension.value[x].code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:WegegeldReiseentschaedigung.extension:Reiseentschaedigung.extension:Uebernachtung",
      "path" : "ChargeItem.extension.extension.extension",
      "sliceName" : "Uebernachtung",
      "short" : "Kosten der Übernachtung",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:WegegeldReiseentschaedigung.extension:Reiseentschaedigung.extension:Uebernachtung.value[x]",
      "path" : "ChargeItem.extension.extension.extension.value[x]",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:WegegeldReiseentschaedigung.extension:Reiseentschaedigung.extension:Uebernachtung.value[x].value",
      "path" : "ChargeItem.extension.extension.extension.value[x].value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:WegegeldReiseentschaedigung.extension:Reiseentschaedigung.extension:Uebernachtung.value[x].currency",
      "path" : "ChargeItem.extension.extension.extension.value[x].currency",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:WegegeldReiseentschaedigung.extension:Reiseentschaedigung.extension:Verkehrsmittel",
      "path" : "ChargeItem.extension.extension.extension",
      "sliceName" : "Verkehrsmittel",
      "short" : "Verkehrsmittel",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:WegegeldReiseentschaedigung.extension:Reiseentschaedigung.extension:Verkehrsmittel.value[x]",
      "path" : "ChargeItem.extension.extension.extension.value[x]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:GebuehrenordnungAngaben",
      "path" : "ChargeItem.extension",
      "sliceName" : "GebuehrenordnungAngaben",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition-go-angaben"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:GebuehrenordnungAngaben.extension:Einfachsatz",
      "path" : "ChargeItem.extension.extension",
      "sliceName" : "Einfachsatz",
      "short" : "Gebühr Einfachsatz in EUR",
      "comment" : "Im Falle einer GOÄ oder GOÄ-neu Rechnungsposition, SOLL der Gebühr Einfachsatz in EUR vorhanden sein.\n    Im Falle einer BEMA oder GOZ Rechnungsposition ist er nicht gefordert.",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:GebuehrenordnungAngaben.extension:Einfachsatz.value[x]",
      "path" : "ChargeItem.extension.extension.value[x]",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:GebuehrenordnungAngaben.extension:Einfachsatz.value[x].value",
      "path" : "ChargeItem.extension.extension.value[x].value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:GebuehrenordnungAngaben.extension:Einfachsatz.value[x].currency",
      "path" : "ChargeItem.extension.extension.value[x].currency",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:GebuehrenordnungAngaben.extension:Punktzahl",
      "path" : "ChargeItem.extension.extension",
      "sliceName" : "Punktzahl",
      "short" : "Punktzahl BEMA",
      "comment" : "Im Fall einer BEMA Rechnungsposition SOLL die Punktzahl BEMA vorhanden sein.\n    Im Falle einer GOÄ, GOÄ-neu oder GOZ Rechnungsposition ist die Punktzahl BEMA nicht gefordert.",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:GebuehrenordnungAngaben.extension:Punktzahl.value[x]",
      "path" : "ChargeItem.extension.extension.value[x]",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:GebuehrenordnungAngaben.extension:Faktor",
      "path" : "ChargeItem.extension.extension",
      "sliceName" : "Faktor",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:GebuehrenordnungAngaben.extension:Faktor.extension:Value",
      "path" : "ChargeItem.extension.extension.extension",
      "sliceName" : "Value",
      "short" : "Faktor",
      "comment" : "Im Falle einer GOÄ, GOÄ-neu oder GOZ Rechnungsposition SOLL der Faktor vorhanden sein."
    },
    {
      "id" : "ChargeItem.extension:GebuehrenordnungAngaben.extension:Faktor.extension:Value.value[x]",
      "path" : "ChargeItem.extension.extension.extension.value[x]",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:GebuehrenordnungAngaben.extension:Faktor.extension:FaktorGrund",
      "path" : "ChargeItem.extension.extension.extension",
      "sliceName" : "FaktorGrund",
      "short" : "Faktor Grund",
      "comment" : "Im Falle einer GOÄ-neu Rechnungsposition SOLL der Faktor Grund vorhanden sein.\n      Im Falle einer GOÄ Rechnungsposition KANN der Faktor Grund vorhanden sein.\n      Im Falle einer GOZ oder BEMA Rechnungsposition ist der Faktor Grund nicht gefordert.",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:GebuehrenordnungAngaben.extension:Faktor.extension:FaktorGrund.value[x]",
      "path" : "ChargeItem.extension.extension.extension.value[x]",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:GebuehrenordnungAngaben.extension:MinderungP6GOAE",
      "path" : "ChargeItem.extension.extension",
      "sliceName" : "MinderungP6GOAE",
      "short" : "Minderungen nach §6a GOÄ in Prozent",
      "comment" : "Im Falle einer GOÄ oder GOÄ-neu Rechnungsposition SOLL die Minderungen nach §6a GOÄ in Prozent vorhanden sein.\n    Im Falle einer GOZ oder BEMA Rechnungsposition ist das Element nicht gefordert.",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:GebuehrenordnungAngaben.extension:MinderungP6GOAE.value[x]",
      "path" : "ChargeItem.extension.extension.value[x]",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:GebuehrenordnungAngaben.extension:MinderungP6GOAE.value[x].value",
      "path" : "ChargeItem.extension.extension.value[x].value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:GebuehrenordnungAngaben.extension:MinderungP6GOAE.value[x].unit",
      "path" : "ChargeItem.extension.extension.value[x].unit",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:GebuehrenordnungAngaben.extension:MinderungP6GOAE.value[x].system",
      "path" : "ChargeItem.extension.extension.value[x].system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:GebuehrenordnungAngaben.extension:MinderungP6GOAE.value[x].code",
      "path" : "ChargeItem.extension.extension.value[x].code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:Behandlungsdatum",
      "path" : "ChargeItem.extension",
      "sliceName" : "Behandlungsdatum",
      "short" : "Behandlungsdatum",
      "comment" : "Das Behandlungsdatum SOLL vorhanden sein.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/DiPagRechnungspositionBehandlungsdatum"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.extension:Behandlungsdatum.value[x]",
      "path" : "ChargeItem.extension.value[x]",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.status",
      "path" : "ChargeItem.status",
      "short" : "Der Status der Rechnungsposition MUSS vorhanden sein.",
      "patternCode" : "billable",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.code",
      "path" : "ChargeItem.code",
      "short" : "Gebührenziffer",
      "comment" : "Ist der Rechnungspositionstyp auf eine Gebührenordnung festgelegt, SOLL die Gebührenziffer vorhanden sein.\nMit 'Gebührenziffer' ist die eindeutige Kennung zu verstehen, die eine spezifische medizinische oder zahnmedizinische Leistung in den entsprechenden Gebührenordnungen beschreibt. Sie dient als Grundlage für die Abrechnung zwischen Leistungserbringern (Ärzten/Zahnärzten) und Kostenträgern (z. B. Krankenkassen oder Patienten). In spezifischen Gebührenordnungen werden ggf. abweichende Begriffe hierfür verwendet.",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.code.coding",
      "path" : "ChargeItem.code.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.code.coding:GOAE",
      "path" : "ChargeItem.code.coding",
      "sliceName" : "GOAE",
      "short" : "GOÄ Ziffer",
      "min" : 0,
      "max" : "1",
      "patternCoding" : {
        "system" : "http://fhir.de/CodeSystem/bäk/goä"
      },
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.code.coding:GOAE.system",
      "path" : "ChargeItem.code.coding.system",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.code.coding:GOAE.code",
      "path" : "ChargeItem.code.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.code.coding:GOAE.display",
      "path" : "ChargeItem.code.coding.display",
      "short" : "Legendentext der Gebührenordnung / Leistungsbeschreibung",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.code.coding:GOZ",
      "path" : "ChargeItem.code.coding",
      "sliceName" : "GOZ",
      "short" : "GOZ Ziffer",
      "min" : 0,
      "max" : "1",
      "patternCoding" : {
        "system" : "http://fhir.de/CodeSystem/bäk/gzä"
      },
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.code.coding:GOZ.system",
      "path" : "ChargeItem.code.coding.system",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.code.coding:GOZ.code",
      "path" : "ChargeItem.code.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.code.coding:GOZ.display",
      "path" : "ChargeItem.code.coding.display",
      "short" : "Legendentext der Gebührenordnung / Leistungsbeschreibung",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.code.text",
      "path" : "ChargeItem.code.text",
      "short" : "Bezeichnung für Auslagen/Sachkosten, z.B. Wirkstoffname oder Fremdlaborleistung",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.subject",
      "path" : "ChargeItem.subject",
      "short" : "Behandelte Person",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-patient",
        "http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.subject.reference",
      "path" : "ChargeItem.subject.reference",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.occurrence[x]",
      "path" : "ChargeItem.occurrence[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Leistungszeitraum",
      "comment" : "Im Falle einer GOÄ, GOÄ-neu oder GOZ Rechnungsposition, SOLL der Leistungszeitraum vorhanden sein.\n  Im Falle einer BEMA Rechnungsposition, ist das Element nicht gefordert",
      "type" : [{
        "code" : "dateTime"
      },
      {
        "code" : "Period"
      }],
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.occurrence[x]:occurrencePeriod",
      "path" : "ChargeItem.occurrence[x]",
      "sliceName" : "occurrencePeriod",
      "short" : "Behandlungszeitraum",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }],
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.occurrence[x]:occurrencePeriod.start",
      "path" : "ChargeItem.occurrence[x].start",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.occurrence[x]:occurrencePeriod.end",
      "path" : "ChargeItem.occurrence[x].end",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.occurrence[x]:occurrenceDateTime",
      "path" : "ChargeItem.occurrence[x]",
      "sliceName" : "occurrenceDateTime",
      "short" : "Behandlungsdatum",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.performer",
      "path" : "ChargeItem.performer",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.performer.actor",
      "path" : "ChargeItem.performer.actor",
      "short" : "Referenz Behandelnder Leistungserbringer",
      "comment" : "Im Falle einer GOÄ-neu Rechnungsposition, SOLL die Referenz auf einen behandelnden Leistungserbringer vorhanden sein.\n    Im Fall einer GOÄ Rechnungsposition, KANN ein behandelnder Leistungserbringer vorhanden sein.\n    Bei GOZ oder BEMA Leistungen ist ein behandelnder Leistungserbringer nicht gefordert.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-person",
        "https://gematik.de/fhir/dipag/StructureDefinition/dipag-institution",
        "http://hl7.org/fhir/StructureDefinition/Organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.quantity",
      "path" : "ChargeItem.quantity",
      "short" : "Anzahl oder verbrauchte Menge",
      "comment" : "Ist die Rechnungsposition vom Typ 'Auslagen/Sachkosten' und es eine GOÄ, GOÄ-neu oder GOZ Rechnungsposition, SOLL hier die Anzahl des unter product[x] angegebenen Medikament, Wirkstoff oder Material vorhanden sein.\n  Ist die Rechnungsposition vom Typ 'GOÄ', 'GOZ' oder 'BEMA' SOLL hier die Anzahl vorhanden sein.",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.quantity.value",
      "path" : "ChargeItem.quantity.value",
      "short" : "Menge",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.quantity.unit",
      "path" : "ChargeItem.quantity.unit",
      "short" : "Einheit",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.quantity.system",
      "path" : "ChargeItem.quantity.system",
      "min" : 1,
      "patternUri" : "http://unitsofmeasure.org",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.quantity.code",
      "path" : "ChargeItem.quantity.code",
      "short" : "Einheit als UCUM-Code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.bodysite",
      "path" : "ChargeItem.bodysite",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.bodysite.extension:ZahnRegion",
      "path" : "ChargeItem.bodysite.extension",
      "sliceName" : "ZahnRegion",
      "short" : "Zahn/Region",
      "comment" : "Im Falle einer GOZ oder BEMA Rechnungsposition, SOLL das Element Zahn/Region vorhanden sein.\n  Im Falle einer GOÄ oder GOÄ-neu Rechnungsposition ist das Element nicht gefordert.\n  Im GOZ-Rechnungsformular zugelassen ist \n  - zwei Ziffern durch Komma und Leerzeichen getrennt\n  - Bereich zugelassen, z.B. 17-27\n  Die Kieferbezeichnung mit 'OK' und 'UK' ist im Formular nicht zulässig, da die Verwendung allerdings die Regel ist, wird der Inhalt des Feldes nicht nach Korrektheit überprüft.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-zahnregion"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.bodysite.extension:ZahnRegion.value[x]",
      "path" : "ChargeItem.bodysite.extension.value[x]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.reason",
      "path" : "ChargeItem.reason",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.reason.text",
      "path" : "ChargeItem.reason.text",
      "short" : "Begründung in Abhängigkeit zur Gebührenziffer",
      "comment" : "Im Falle einer GOÄ, GOÄ-neu oder GOZ Rechnungsposition, SOLL die Begründung in Abhängigkeit zur Gebührenziffer vorhanden sein.\n  Bei einer BEMA Rechnungsposition ist die Begründung in Abhängigkeit zur Gebührenziffer nicht gefordert.\n  Beispiele sind:\n  - obligatorisch bei analoger Rechnungsposition\n  - Angabe zu den behandelten Organen\n  - Überschreitung der Regelsätze",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.product[x]",
      "path" : "ChargeItem.product[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.product[x].coding",
      "path" : "ChargeItem.product[x].coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "ChargeItem.product[x].coding:PZN",
      "path" : "ChargeItem.product[x].coding",
      "sliceName" : "PZN",
      "short" : "Pharmazentralnummer",
      "comment" : "Im Falle einer GOÄ oder GOÄ-neu Rechnungsposition SOLL die Pharmazentralnummer (PZN) vorhanden sein.\n    Im Falle einer GOZ oder BEMA Rechnungsposition wird die PZN nicht gefordert.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding",
        "profile" : ["http://fhir.de/StructureDefinition/CodingPZN"]
      }],
      "patternCoding" : {
        "system" : "http://fhir.de/CodeSystem/ifa/pzn"
      },
      "mustSupport" : true
    },
    {
      "id" : "ChargeItem.product[x].text",
      "path" : "ChargeItem.product[x].text",
      "short" : "Material / Wirkstoffname",
      "comment" : "Das Material oder der Wirkstoffname SOLLEN hier vorhanden sein.",
      "mustSupport" : true
    }]
  }
}

```
