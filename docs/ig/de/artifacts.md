# Artefaktübersicht - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* **Artefaktübersicht**

## Artefaktübersicht

Diese Seite bietet eine Liste der FHIR-Artefakte, die in diesem Implementierungsleitfaden definiert sind.

### Verhalten: CapabilityStatements 

Die folgenden Artefakte definieren die spezifischen Fähigkeiten, die verschiedene Systemtypen haben müssen, um diesem Implementierungsleitfaden zu entsprechen. Von Systemen, die mit dem Implementierungsleitfaden konform sind, wird erwartet, dass sie die Konformität mit einem oder mehreren der folgenden Capability Statements deklarieren.

| | |
| :--- | :--- |
| [ CapabilityStatement Fachdienst E-Rechnnung  ](CapabilityStatement-DiPagCapabilityStatementFD.md) | Dieses CapabilityStatement beschreibt alle Interaktionen, die ein DiPag-konformer Fachdienst unterstützen MUSS bzw. KANN. |

### Strukturen: Ressourcenprofile 

Diese definieren Einschränkungen für FHIR-Ressourcen für Systeme, die mit dem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ DiPagPatient  ](StructureDefinition-dipag-patient.md) |  |
| [ Digitale Patientenrechnung - Rechnungsinhalte Bundle  ](StructureDefinition-dipag-rechnungsbundle.md) | Dieses Profil stellt das collection-Bundle dar, mit welchem die strukturierten Rechnungsinhalte zusammengefasst und als base64-kodiertes Binary in der DocumentReference referenziert werden. |
| [ Digitale Patientenrechnung Dokumentenmetadaten Eingang  ](StructureDefinition-dipag-dokumentenmetadaten-eingang.md) |  |
| [ Digitale Patientenrechnung Dokumentenmetadaten Intern  ](StructureDefinition-dipag-dokumentenmetadaten-intern.md) |  |
| [ Digitale Patientenrechnung Institution  ](StructureDefinition-dipag-institution.md) |  |
| [ Digitale Patientenrechnung Nutzungsprotokoll  ](StructureDefinition-dipag-nutzungsprotokoll.md) |  |
| [ Digitale Patientenrechnung Person  ](StructureDefinition-dipag-person.md) | Das Profil DiPagPerson wird in für die Rolle 'Behandelnder Leistungserbringer' oder 'Abweichender Forderungsinhaber' verwendet. |
| [ Digitale Patientenrechnung Rechnung  ](StructureDefinition-dipag-rechnung.md) |  |
| [ Digitale Patientenrechnung Rechnungsdiagnose  ](StructureDefinition-dipag-rechnungsdiagnose.md) |  |
| [ Digitale Patientenrechnung Rechnungsdokument  ](StructureDefinition-dipag-rechnungsdokument.md) |  |
| [ Digitale Patientenrechnung Rechnungsposition  ](StructureDefinition-dipag-rechnungsposition.md) |  |
| [ Digitale Patientenrechnung Rechnungsprozedur  ](StructureDefinition-dipag-rechnungsprozedur.md) |  |

### Strukturen: Extension-Definitionen 

Diese definieren Einschränkungen für FHIR-Datentypen für Systeme, die mit diesem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ Abrechnungsrelevanz von Diagnosen und Prozeduren  ](StructureDefinition-DiPagAbrechnungsDiagnoseProzedur.md) | Diese Extension erlaubt es einer Invoice Diagnosen oder Prozeduren, incl. Qualifier wie bspw: "Primär-DRG" zuzuordnen. Dies ermöglicht unter anderem das Zuordnen von Haupt- und Nebendiagnosen zu einem Account zum Zweck der DRG Erstellung. |
| [ Abrechnungsrelevanz von Diagnosen und Prozeduren als Freitext  ](StructureDefinition-DiPagAbrechnungsDiagnoseProzedurFreitext.md) |  |
| [ DiPag BEMA Punktsumme  ](StructureDefinition-DiPagBemaPunktsumme.md) |  |
| [ DiPag PaymentTo Extension (MVP – basiert auf HL7 FM WG Draft)  ](StructureDefinition-DiPagPaymentTo.md) | Diese Extension basiert auf dem **DRAFT** der HL7 Financial Management Working Group (FM WG) für die Standard-Extension **PaymentTo**.Die Struktur entspricht dem aktuellen Entwurf der FM WG:* **paymentType**: Art der Zahlungsverbindung (z. B. IBAN, SWIFT, Kontonummer)
* **account**: Kontonummer / IBAN
* **bank**: Name der Bank
* **branch**: Bankleitzahl / BIC
* **reference**: Verwendungszweck (typischerweise die Rechnungsnummer)
* **accountHolderName**: Name des Kontoinhabers (MVP-spezifische Ergänzung, im HL7-Draft noch nicht enthalten)
* **contact**: Kontaktdaten des Zahlungsempfängers
* **notes**: Weitere Hinweise zur Zahlung
**Hinweis zur Nutzung:** Die HL7 FM WG wird diese Extension im offiziellen HL7 Extension Package veröffentlichen. Die Verwendung dieser Extension ist daher **ausschließlich im Rahmen dieses MVP** vorgesehen und wird sich mit der Fertigstellung der offiziellen HL7-Standard-Extension ändern. |
| [ Digitale Patientenrechnung Angaben bei Gebührenordnungen bei einer Rechnungsposition  ](StructureDefinition-dipag-rechnungsposition-go-angaben.md) |  |
| [ Digitale Patientenrechnung BasedOn Extension  ](StructureDefinition-DiPagInvoiceBasedOn.md) | Fügt die Extension basedOn hinzu, die es in R4 bereits für Invoice gab (https://hl7.org/fhir/R4/extension-event-basedon.html) leider im aktuellen Extension Pack aber nicht mehr den Context Invoice hat. |
| [ Digitale Patientenrechnung DocRef Fachrichtung  ](StructureDefinition-dipag-docref-fachrichtung.md) | Extension zur Angabe der Fachrichtung zur Steuerung des Abrechungsworkflows |
| [ Digitale Patientenrechnung DocRef Signature  ](StructureDefinition-dipag-docref-signature.md) | Extension zur Abbildung einer Digitalen Signatur über die Rechnungsrepräsentation, sowie den strukturierten Rechnungsinhalten |
| [ Digitale Patientenrechnung DocumentReference Gesamtbetrag  ](StructureDefinition-dipag-documentreference-gesamtbetrag.md) |  |
| [ Digitale Patientenrechnung DocumentReference Markierung  ](StructureDefinition-dipag-documentreference-markierung.md) |  |
| [ Digitale Patientenrechnung DocumentReference Rechnungsdatum  ](StructureDefinition-dipag-documentreference-rechnungsdatum.md) |  |
| [ Digitale Patientenrechnung Extension Abzug Kassenanteil in Prozent  ](StructureDefinition-dipag-abzug-kassenanteil.md) |  |
| [ Digitale Patientenrechnung Extension Behandlungsart  ](StructureDefinition-dipag-behandlungsart.md) |  |
| [ Digitale Patientenrechnung Extension Fachrichtung  ](StructureDefinition-dipag-fachrichtung.md) |  |
| [ Digitale Patientenrechnung Rechnungsposition Behandlungsdatum  ](StructureDefinition-DiPagRechnungspositionBehandlungsdatum.md) |  |
| [ Digitale Patientenrechnung Rechnungsposition Zusatz Extension  ](StructureDefinition-DiPagRechnungspositionZusatz.md) | In dieser Extension wird der Zusatz zu einer Rechnungsposition im Kontext der Digitalen Patientenrechnung abgebildet. |
| [ Digitale Patientenrechnung Replaces Extension  ](StructureDefinition-DiPagInvoiceReplaces.md) | Fügt die Extension replaces hinzu, die es in R4 bereits für Invoice gab (https://hl7.org/fhir/R4/extension-request-replaces.html) leider im aktuellen Extension Pack aber nicht mehr den Context Invoice hat. |
| [ Digitale Patientenrechnung Task RequestedPerformer  ](StructureDefinition-dipag-task-requestedPerformer.md) |  |
| [ Digitale Patientenrechnung Teilsumme  ](StructureDefinition-DiPagTeilsumme.md) |  |
| [ Digitale Patientenrechnung Token der stornierten Rechnung  ](StructureDefinition-DiPagTokenStornierteRechnung.md) |  |
| [ Digitale Patientenrechnung Typ der Rechnungsposition Extension  ](StructureDefinition-dipag-rechnungsposition-type.md) | In dieser Extension wird der Typ einer Rechnungsposition im Kontext der Digitalen Patientenrechnung abgebildet. |
| [ Digitale Patientenrechnung Wegegeld/Reiseentschädigung Extension  ](StructureDefinition-dipag-wegegeld-reiseentschaedigung.md) |  |
| [ Digitale Patientenrechnung Zahlungsziel  ](StructureDefinition-dipag-zahlungsziel.md) |  |
| [ Digitale Patientenrechnung Zahn/Region Extension  ](StructureDefinition-dipag-zahnregion.md) | In dieser Extension wird die Angabe der Zahn/Region an einer Rechnungsposition der Digitalen Patientenrechnung abgebildet. |
| [ Invoice.period als Backport aus R5  ](StructureDefinition-InvoicePeriod.md) |  |
| [ Zusatzinformation zur Abrechnungsart  ](StructureDefinition-DiPagZusatzinformationZurAbrechnungsart.md) | Die Abrechnung nach §13 kann ergänzend zu den grundsätzlichen Ausrichtungen der Abrechnung aufgeführt werden. Diese Extension erlaubt es, die Ausrichtung der Rechnung entsprechend zu flaggen. |

### Terminologie: ValueSets 

Diese definieren Wertemengen, die von Systemen verwendet werden, die mit dem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ Digitale Patientenrechnung Abrechnungsdiagnose Use ValueSet  ](ValueSet-dipag-abrechnungs-diagnose-use-vs.md) |  |
| [ Digitale Patientenrechnung Art des Abzugs von der Summe der gesamten Rechnungspositionen  ](ValueSet-dipag-total-price-component-deduction-type-vs.md) |  |
| [ Digitale Patientenrechnung Audit Event Agent Type  ](ValueSet-dipag-audit-event-agent-type-vs.md) |  |
| [ Digitale Patientenrechnung Audit Event Detail  ](ValueSet-dipag-audit-event-detail-vs.md) |  |
| [ Digitale Patientenrechnung Audit Event Sub-Type  ](ValueSet-dipag-audit-event-sub-type-vs.md) |  |
| [ Digitale Patientenrechnung Audit Event Type  ](ValueSet-dipag-audit-event-type-vs.md) |  |
| [ Digitale Patientenrechnung Dokument ArtDerArchivierung VS  ](ValueSet-dipag-dokument-artderarchivierung-vs.md) | ValueSet für die Differenzierung von verschiedenen Arten von Markierungen eines Dokumentes |
| [ Digitale Patientenrechnung Rechnung Abrechnungsart VS  ](ValueSet-dipag-rechnung-abrechnungsart-vs.md) | ValueSet zur Klassifizierung von Abrechnungsarten |
| [ Digitale Patientenrechnung Rechnung Behandlungsart VS  ](ValueSet-dipag-rechnung-behandlungsart-vs.md) | ValueSet zur Klassifizierung von Behandlungsarten |
| [ Digitale Patientenrechnung Rechnung Markierung VS  ](ValueSet-dipag-rechnung-markierung-vs.md) | ValueSet für die Differenzierung von verschiedenen Arten von Markierungen eines Dokumentes |
| [ Digitale Patientenrechnung Rechnung Type VS  ](ValueSet-dipag-rechnung-submit-modus-vs.md) | ValueSet für die Differenzierung von der Verarbeitungsmodi für $erchnung-submit |
| [ Digitale Patientenrechnung Rechnungsart VS  ](ValueSet-dipag-rechnungsart-vs.md) | ValueSet zur Klassifizierung von Rechnungsarten |
| [ Digitale Patientenrechnung Rechnungsposition Faktor Gründe ValueSet  ](ValueSet-dipag-rechnungsposition-faktor-gruende-auspraegungen-VS.md) |  |
| [ Digitale Patientenrechnung Rechnungsposition Zusatz ValueSet  ](ValueSet-dipag-rechnungsposition-zusatz-VS.md) |  |
| [ Digitale Patientenrechnung Rechnungsstatus  ](ValueSet-dipag-rechnungsstatus-vs.md) |  |
| [ Digitale Patientenrechnung Restricted Mime Types in Binary  ](ValueSet-dipag-restricted-mime-types-in-binary-vs.md) |  |
| [ Digitale Patientenrechnung Sonstiges Dokument Type VS  ](ValueSet-dipag-sonstigesdokument-type-vs.md) | ValueSet zur Klassifizierung von weiteren Dokumenten |
| [ Digitale Patientenrechnung Teilnehmer Rolle  ](ValueSet-dipag-participant-role-VS.md) | Diese Codes enthalten Teilnehmer Rollen der Digitalen Patientenrechnung |
| [ Digitale Patientenrechnung Typ der Rechnungsposition ValueSet  ](ValueSet-dipag-chargeitem-type-VS.md) |  |
| [ Digitale PatientenrechnungVerkehrsmittel  ](ValueSet-DiPagVerkehrsmittel.md) | Dieses ValueSet bietet eine Auswahl an Verkehrsmitteln, die im Rahmen einer Reisekostenentschädigung ausgewählt werden können. |

### Terminologie: CodeSysteme 

Diese definieren neue CodeSysteme, die von Systemen verwendet werden, die mit diesem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ Digitale Patientenrechnung Abrechnungsdiagnose Use CodeSystem  ](CodeSystem-dipag-abrechnungs-diagnose-use-cs.md) |  |
| [ Digitale Patientenrechnung Art der Rechnungssumme  ](CodeSystem-dipag-total-price-component-type-cs.md) |  |
| [ Digitale Patientenrechnung Attachment Format CS  ](CodeSystem-dipag-attachment-format-cs.md) | CodeSystem für die Abbildung von verschieden Formatinhalten eines Dokuments |
| [ Digitale Patientenrechnung Audit Event Detail  ](CodeSystem-dipag-audit-event-detail-cs.md) |  |
| [ Digitale Patientenrechnung Dokument ArtDerArchivierung CS  ](CodeSystem-dipag-dokument-artderarchivierung-cs.md) | CodeSystem für die Differenzierung von verschiedenen Arten von Markierungen eines Dokumentes |
| [ Digitale Patientenrechnung Operationen  ](CodeSystem-dipag-operationen-cs.md) |  |
| [ Digitale Patientenrechnung Rechnung Abrechnungsart CS  ](CodeSystem-dipag-rechnung-abrechnungsart-cs.md) | CodeSystem für die verschiedenen Abrechnungsarten innerhalb einer E-Rechnnung |
| [ Digitale Patientenrechnung Rechnung Identifier Type CS  ](CodeSystem-dipag-rechnung-identifier-type-cs.md) |  |
| [ Digitale Patientenrechnung Rechnung Markierung CS  ](CodeSystem-dipag-rechnung-markierung-cs.md) | CodeSystem für die Differenzierung von verschiedenen Arten von Markierungen eines Dokumentes |
| [ Digitale Patientenrechnung Rechnung Submit Modus CS  ](CodeSystem-dipag-rechnung-submit-modus-cs.md) | CodeSystem für die Differenzierung von der Verarbeitungsmodi für $erchnung-submit |
| [ Digitale Patientenrechnung Rechnung Type CS  ](CodeSystem-dipag-rechnung-type-cs.md) | CodeSystem für die Differenzierung von verschiedenen Typen einer E-Rechnnung |
| [ Digitale Patientenrechnung Rechnungsart CS  ](CodeSystem-dipag-rechnungsart-cs.md) | CodeSystem für die verschiedenen Rechnungsarten innerhalb einer E-Rechnnung |
| [ Digitale Patientenrechnung Rechnungsposition Faktor Gründe CodeSystem  ](CodeSystem-dipag-rechnungsposition-faktor-gruende-cs.md) |  |
| [ Digitale Patientenrechnung Rechnungsposition Zusatz CodeSystem  ](CodeSystem-dipag-rechnungsposition-zusatz-cs.md) |  |
| [ Digitale Patientenrechnung Rechnungsstatus CS  ](CodeSystem-dipag-rechnungsstatus-cs.md) | CodeSystem für die Abbildung von verschieden Status eines Rechnungungsdokuments |
| [ Digitale Patientenrechnung Teilnehmer Rolle  ](CodeSystem-dipag-participant-role-cs.md) |  |
| [ Digitale Patientenrechnung Typ der Rechnungsposition CodeSystem  ](CodeSystem-dipag-chargeitem-type-cs.md) |  |

### Beispiel: Beispielinstanzen 

Dies sind Beispielinstanzen, die zeigen, wie Daten aussehen könnten, die von Systemen produziert und konsumiert werden, die mit diesem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ Assistierender Arzt - Dr. Mueller  ](Practitioner-d2e3f4a5-3c4d-5e6f-0a1b-2c3d4e5f6a7b.md) | **Hinweis:** Alle Daten in diesem Beispiel sind fiktiv und dienen ausschließlich zu Demonstrations- und Testzwecken.Assistierender Zahnarzt |
| [ Beispiel Bundle - Vollständige Rechnung  ](Bundle-BundleExample.md) | **Hinweis:** Alle Daten in diesem Beispiel sind fiktiv und dienen ausschließlich zu Demonstrations- und Testzwecken.Bundle mit allen Ressourcen der digitalen Patientenrechnung |
| [ Beispiel Patient  ](Patient-8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c.md) | **Hinweis:** Alle Daten in diesem Beispiel sind fiktiv und dienen ausschließlich zu Demonstrations- und Testzwecken.Ein Beispielpatient für die Rechnung |
| [ BeispielBinarySubmitOutput3-FD  ](Binary-BeispielBinarySubmitOutput3-FD.md) |  |
| [ BeispielDocumentReferenceRechnung3-FD  ](DocumentReference-BeispielDocumentReferenceRechnung3-FD.md) | Rechnung Reiseimpfung vom 10.01.2024 |
| [ BeispielDocumentReferenceRechnung3-LE  ](DocumentReference-BeispielDocumentReferenceRechnung3-LE.md) | Rechnung Reiseimpfung vom 10.01.2024 |
| [ BeispielDocumentReferenceRechnung3.1-FD  ](DocumentReference-BeispielDocumentReferenceRechnung3.1-FD.md) | Rechnung Reiseimpfung vom 10.01.2024 |
| [ BeispielDocumentReferenceRechnung3.1-LE  ](DocumentReference-BeispielDocumentReferenceRechnung3.1-LE.md) | Rechnung Reiseimpfung vom 10.01.2024 |
| [ BeispielDocumentReferenceRechnungRetrieve  ](DocumentReference-BeispielDocumentReferenceRechnungRetrieve.md) | Rechnung Reiseimpfung vom 10.01.2024 |
| [ BeispielDocumentReferenceRechnungRetrieve2  ](DocumentReference-BeispielDocumentReferenceRechnungRetrieve2.md) | Der Einfachheit halber wurden hier nur die relevanten Felder dargestellt. Die Extensions sind als befüllt anzunehmen. |
| [ BeispielDocumentReferenceSonstigesDokument3-FD  ](DocumentReference-BeispielDocumentReferenceSonstigesDokument3-FD.md) | Molekularpathologiebefund vom 31.12.21 |
| [ BeispielDocumentReferenceSonstigesDokument3-LE  ](DocumentReference-BeispielDocumentReferenceSonstigesDokument3-LE.md) | Molekularpathologiebefund vom 31.12.21 |
| [ BeispielDocumentReferenceSonstigesDokument3.1-FD  ](DocumentReference-BeispielDocumentReferenceSonstigesDokument3.1-FD.md) | Molekularpathologiebefund vom 31.12.21 |
| [ BeispielDocumentReferenceSonstigesDokument3.1-LE  ](DocumentReference-BeispielDocumentReferenceSonstigesDokument3.1-LE.md) | Molekularpathologiebefund vom 30.12.21 |
| [ BeispielNutzungsprotokoll  ](AuditEvent-BeispielNutzungsprotokoll.md) |  |
| [ BeispielNutzungsprotokollAutomatischLoeschen  ](AuditEvent-BeispielNutzungsprotokollAutomatischLoeschen.md) |  |
| [ BeispielNutzungsprotokollAutomatischMarkierung  ](AuditEvent-BeispielNutzungsprotokollAutomatischMarkierung.md) |  |
| [ BeispielNutzungsprotokollAutomatischPapierkorb  ](AuditEvent-BeispielNutzungsprotokollAutomatischPapierkorb.md) |  |
| [ BeispielNutzungsprotokollBerechtigungAbfragen  ](AuditEvent-BeispielNutzungsprotokollBerechtigungAbfragen.md) |  |
| [ BeispielNutzungsprotokollBerechtigungAnlegen  ](AuditEvent-BeispielNutzungsprotokollBerechtigungAnlegen.md) |  |
| [ BeispielNutzungsprotokollBerechtigungBestaetigen  ](AuditEvent-BeispielNutzungsprotokollBerechtigungBestaetigen.md) |  |
| [ BeispielNutzungsprotokollChangeStatus  ](AuditEvent-BeispielNutzungsprotokollChangeStatus.md) |  |
| [ BeispielNutzungsprotokollEinreichenFrontend  ](AuditEvent-BeispielNutzungsprotokollEinreichenFrontend.md) |  |
| [ BeispielNutzungsprotokollErase  ](AuditEvent-BeispielNutzungsprotokollErase.md) |  |
| [ BeispielNutzungsprotokollNutzerkontoEinrichten  ](AuditEvent-BeispielNutzungsprotokollNutzerkontoEinrichten.md) |  |
| [ BeispielNutzungsprotokollProcessFlag  ](AuditEvent-BeispielNutzungsprotokollProcessFlag.md) |  |
| [ BeispielNutzungsprotokollResultBundle  ](Bundle-BeispielNutzungsprotokollResultBundle.md) |  |
| [ BeispielNutzungsprotokollRetrieve  ](AuditEvent-BeispielNutzungsprotokollRetrieve.md) |  |
| [ BeispielOperationOutcomeRechnung3.1-FD  ](OperationOutcome-BeispielOperationOutcomeRechnung3.1-FD.md) |  |
| [ BeispielParameterChangeStatusInput  ](Parameters-BeispielParameterChangeStatusInput.md) |  |
| [ BeispielParameterChangeStatusInput2  ](Parameters-BeispielParameterChangeStatusInput2.md) |  |
| [ BeispielParameterChangeStatusOutput  ](Parameters-BeispielParameterChangeStatusOutput.md) |  |
| [ BeispielParameterChangeStatusOutput2  ](Parameters-BeispielParameterChangeStatusOutput2.md) |  |
| [ BeispielParameterProcessFlagInput  ](Parameters-BeispielParameterProcessFlagInput.md) |  |
| [ BeispielParameterProcessFlagOutput  ](Parameters-BeispielParameterProcessFlagOutput.md) |  |
| [ BeispielParameterRetrieveInput  ](Parameters-BeispielParameterRetrieveInput.md) |  |
| [ BeispielParameterRetrieveInput2  ](Parameters-BeispielParameterRetrieveInput2.md) |  |
| [ BeispielParameterRetrieveOutput  ](Parameters-BeispielParameterRetrieveOutput.md) |  |
| [ BeispielParameterSubmitInput3-FD  ](Parameters-BeispielParameterSubmitInput3-FD.md) |  |
| [ BeispielParameterSubmitInput3-LE  ](Parameters-BeispielParameterSubmitInput3-LE.md) |  |
| [ BeispielParameterSubmitInput3.1-LE  ](Parameters-BeispielParameterSubmitInput3.1-LE.md) |  |
| [ BeispielParameterSubmitOutput3-FD  ](Parameters-BeispielParameterSubmitOutput3-FD.md) |  |
| [ BeispielParameterSubmitOutput3.1-FD  ](Parameters-BeispielParameterSubmitOutput3.1-FD.md) |  |
| [ BeispielPatient3-FD  ](Patient-BeispielPatient3-FD.md) |  |
| [ Beispielrechnung - Zahnärztliche Behandlung  ](Invoice-c3d4e5f6-4b5c-6d7e-1f2a-3b4c5d6e7f8a.md) | **Hinweis:** Alle Daten in diesem Beispiel sind fiktiv und dienen ausschließlich zu Demonstrations- und Testzwecken.Komplettes Beispiel einer Digitalen Patientenrechnung mit GOÄ und GOZ |
| [ BulkChangeStatusExampleInput  ](Bundle-BulkChangeStatusExampleInput.md) |  |
| [ BulkChangeStatusExampleOutput  ](Bundle-BulkChangeStatusExampleOutput.md) |  |
| [ BulkRetrieveExampleInput  ](Bundle-BulkRetrieveExampleInput.md) |  |
| [ BulkRetrieveExampleOutput  ](Bundle-BulkRetrieveExampleOutput.md) |  |
| [ BulkSubmitExample  ](Bundle-BulkSubmitExample.md) |  |
| [ BulkSubmitExampleOutput  ](Bundle-BulkSubmitExampleOutput.md) |  |
| [ Diagnose - Karies  ](Condition-f0a1b2c3-1e2f-3a4b-8c9d-0e1f2a3b4c5d.md) | **Hinweis:** Alle Daten in diesem Beispiel sind fiktiv und dienen ausschließlich zu Demonstrations- und Testzwecken.Zahnkaries als Hauptdiagnose für die Rechnung |
| [ Diagnose - Parodontitis  ](Condition-a1b2c3d4-2f3a-4b5c-9d0e-1f2a3b4c5d6e.md) | **Hinweis:** Alle Daten in diesem Beispiel sind fiktiv und dienen ausschließlich zu Demonstrations- und Testzwecken.Parodontitis als Nebendiagnose |
| [ Digitale Patientenrechnung Operation ChangeStatus  ](OperationDefinition-DiPagOperationChangeStatus.md) | Änderung des Bearbeitungsstatus eines Dokumentes |
| [ Digitale Patientenrechnung Operation Erase  ](OperationDefinition-DiPagOperationErase.md) | Permanente Löschung eines Dokumentes. Gelöscht werden können nur DocumentReference-Ressourcen, die als KDL-type = 'AM010106' (Rechnungsdokument) gekennzeichnet sind. Es werden alle zugehörigen Anhang-Dokument (KDL-type != 'AM010106') mit gelöscht. Es erfolgt eine permanente Löschung der Ressourcen, d.h. die Ressourcen sind nach der Operation nicht mehr auffindbar und es werden keine Historie oder Versionen der Ressourcen angelegt. |
| [ Digitale Patientenrechnung Operation Invoice-Submit  ](OperationDefinition-DiPagOperationSubmit.md) | Rechnung einreichen durch die Leistungserbringer:in |
| [ Digitale Patientenrechnung Operation ProcessFlag  ](OperationDefinition-DiPagOperationProcessFlag.md) | Setzt die Markierungen eines Rechnungsdokuments (DocumentReference) nach dem Complete-Replacement-Prinzip: Die übermittelten Markierungen ersetzen vollständig den bisherigen Markierungssatz des Dokuments. Markierungen, die nicht im Request enthalten sind, werden entfernt; Änderungen an bestehenden Markierungen erfolgen durch erneutes Übermitteln mit aktualisierten Werten. Der Request muss daher stets alle weiterhin gültigen Markierungen inklusive ihrer jeweiligen Zusatzinformationen vollständig enthalten. Wird kein 'markierung'-Parameter übergeben (leerer Markierungssatz), werden alle änderbaren Markierungen des Dokuments entfernt. Da dies der einzige Endpunkt zur Pflege der Markierungen ist, wird hierüber auch das vollständige Löschen der Markierungen unterstützt.Ausnahmen: Die Markierungen 'persönlich' und 'abgerufen durch KTR' können über diese Operation weder gesetzt noch entfernt werden und werden ignoriert, falls sie übermittelt werden. Sie bleiben sowohl von der Ersetzung als auch von der Löschung unberührt. |
| [ Digitale Patientenrechnung Operation Retrieve  ](OperationDefinition-DiPagOperationRetrieve.md) | Abrufen von Digitalen Patientenrechnungen, strukturierten Rechnungsinhalten und Dokumenten |
| [ Example DiPag Document Reference  ](DocumentReference-ExampleR5DocumentReference.md) | Laborbefund vom 28.9.2023 |
| [ ExampleR5Bundle  ](Bundle-ExampleR5Bundle.md) |  |
| [ ExampleR5DocumentReferenceSonstigesDokument  ](DocumentReference-ExampleR5DocumentReferenceSonstigesDokument.md) | Molekularpathologiebefund vom 31.12.21 |
| [ GOZ Position: Professionelle Zahnreinigung  ](ChargeItem-b6c7d8e9-7a8b-9c0d-4e5f-6a7b8c9d0e1f.md) | **Hinweis:** Alle Daten in diesem Beispiel sind fiktiv und dienen ausschließlich zu Demonstrations- und Testzwecken.Zahnsteinentfernung und Politur nach GOZ |
| [ GOÄ Position 1: Ärztliche Konsultation  ](ChargeItem-a5b6c7d8-6f7a-8b9c-3d4e-5f6a7b8c9d0e.md) | **Hinweis:** Alle Daten in diesem Beispiel sind fiktiv und dienen ausschließlich zu Demonstrations- und Testzwecken.Eingehende Konsultation mit Befund nach GOÄ |
| [ Hauptbehandler - Dr. Schulz  ](Practitioner-c1d2e3f4-2b3c-4d5e-9f0a-1b2c3d4e5f6a.md) | **Hinweis:** Alle Daten in diesem Beispiel sind fiktiv und dienen ausschließlich zu Demonstrations- und Testzwecken.Hauptbehandelnder Zahnarzt |
| [ KFO-GKV-Abrechnung Q3/2024 – ARZ ZB GmbH  ](Invoice-KfoMehrkosten3Rechnung.md) |  |
| [ KFO-Mehrkosten Rechnung Q3/2024  ](Invoice-KfoMehrkosten1Rechnung.md) |  |
| [ KFO-Mehrkosten Rechnung Q3/2025 – Büdingen Dent  ](Invoice-KfoMehrkosten2Rechnung.md) |  |
| [ KFO-Mehrkosten Rechnung Q3/2025 – KIG 3-5 Mehrkostenvereinbarung  ](Invoice-KfoMehrkosten4Rechnung.md) |  |
| [ KfoMehrkosten1 Rechnungsposition 1 – GOZ 6100 Klebebracket (01.07.24)  ](ChargeItem-KfoMehrkosten1-P1.md) |  |
| [ KfoMehrkosten1 Rechnungsposition 10 – BEMA 128a Abzug zu P9 (16.09.24)  ](ChargeItem-KfoMehrkosten1-P10.md) |  |
| [ KfoMehrkosten1 Rechnungsposition 2 – BEMA 126a Abzug zu P1 (01.07.24)  ](ChargeItem-KfoMehrkosten1-P2.md) |  |
| [ KfoMehrkosten1 Rechnungsposition 3 – GOZ 2000 Fissurenversiegelung (01.07.24)  ](ChargeItem-KfoMehrkosten1-P3.md) |  |
| [ KfoMehrkosten1 Rechnungsposition 4 – GOZ 6100 Klebebracket (20.08.24)  ](ChargeItem-KfoMehrkosten1-P4.md) |  |
| [ KfoMehrkosten1 Rechnungsposition 5 – BEMA 126a Abzug zu P4 (20.08.24)  ](ChargeItem-KfoMehrkosten1-P5.md) |  |
| [ KfoMehrkosten1 Rechnungsposition 6 – GOZ 6150 Bogen (20.08.24)  ](ChargeItem-KfoMehrkosten1-P6.md) |  |
| [ KfoMehrkosten1 Rechnungsposition 7 – BEMA 128a Abzug zu P6 (20.08.24)  ](ChargeItem-KfoMehrkosten1-P7.md) |  |
| [ KfoMehrkosten1 Rechnungsposition 8 – GOZ 2000 Fissurenversiegelung (20.08.24)  ](ChargeItem-KfoMehrkosten1-P8.md) |  |
| [ KfoMehrkosten1 Rechnungsposition 9 – GOZ 6150 Bogen (16.09.24)  ](ChargeItem-KfoMehrkosten1-P9.md) |  |
| [ KfoMehrkosten2 Rechnungsposition 1 – GOZ 2110A Minibracket (04.08.25)  ](ChargeItem-KfoMehrkosten2-P1.md) |  |
| [ KfoMehrkosten2 Rechnungsposition 2 – BEMA 126A Abzug zu P1 (04.08.25)  ](ChargeItem-KfoMehrkosten2-P2.md) |  |
| [ KfoMehrkosten2 Rechnungsposition 3 – GOZ 6150A Superelastischer Bogen (04.08.25)  ](ChargeItem-KfoMehrkosten2-P3.md) |  |
| [ KfoMehrkosten2 Rechnungsposition 4 – BEMA 128A Abzug zu P3 (04.08.25)  ](ChargeItem-KfoMehrkosten2-P4.md) |  |
| [ KfoMehrkosten2 Rechnungsposition 5 – GOZ 2000 Fissurenversiegelung (04.08.25)  ](ChargeItem-KfoMehrkosten2-P5.md) |  |
| [ KfoMehrkosten2 Rechnungsposition 6 – GOZ 2110A Minibracket (24.09.25)  ](ChargeItem-KfoMehrkosten2-P6.md) |  |
| [ KfoMehrkosten2 Rechnungsposition 7 – BEMA 126A Abzug zu P6 (24.09.25)  ](ChargeItem-KfoMehrkosten2-P7.md) |  |
| [ KfoMehrkosten2 Rechnungsposition 8 – GOZ 2000 Fissurenversiegelung (24.09.25)  ](ChargeItem-KfoMehrkosten2-P8.md) |  |
| [ KfoMehrkosten3 Behandler – ARZ ZB GmbH  ](Organization-KfoMehrkosten3Behandler.md) |  |
| [ KfoMehrkosten3 Rechnungsposition 1 – KONS 106 Beseitigen scharfer Zahnkanten (23.09.24)  ](ChargeItem-KfoMehrkosten3-P1.md) |  |
| [ KfoMehrkosten3 Rechnungsposition 10 – Labor 710-0 Aufsatz (16.09.24)  ](ChargeItem-KfoMehrkosten3-P10.md) |  |
| [ KfoMehrkosten3 Rechnungsposition 11 – Labor 732-0 Labialbogen intermaxillar (16.09.24)  ](ChargeItem-KfoMehrkosten3-P11.md) |  |
| [ KfoMehrkosten3 Rechnungsposition 12 – Labor 734-0 Feder, geschlossen (16.09.24)  ](ChargeItem-KfoMehrkosten3-P12.md) |  |
| [ KfoMehrkosten3 Rechnungsposition 13 – Labor 740-0 Verbindungselemente/inframaxillar (16.09.24)  ](ChargeItem-KfoMehrkosten3-P13.md) |  |
| [ KfoMehrkosten3 Rechnungsposition 14 – Labor 711-0 Abschirmelement (16.09.24)  ](ChargeItem-KfoMehrkosten3-P14.md) |  |
| [ KfoMehrkosten3 Rechnungsposition 15 – Labor 750-0 Einarmiges H-/A-Element (16.09.24)  ](ChargeItem-KfoMehrkosten3-P15.md) |  |
| [ KfoMehrkosten3 Rechnungsposition 2 – BEMA 119d Umformung OK besonders schwierig (29.07.24)  ](ChargeItem-KfoMehrkosten3-P2.md) |  |
| [ KfoMehrkosten3 Rechnungsposition 3 – BEMA 119d Umformung UK besonders schwierig (29.07.24)  ](ChargeItem-KfoMehrkosten3-P3.md) |  |
| [ KfoMehrkosten3 Rechnungsposition 4 – BEMA 120d Einstellung B/B besonders schwierig (29.07.24)  ](ChargeItem-KfoMehrkosten3-P4.md) |  |
| [ KfoMehrkosten3 Rechnungsposition 5 – Labor MAT Abdruckpauschale (29.07.24)  ](ChargeItem-KfoMehrkosten3-P5.md) |  |
| [ KfoMehrkosten3 Rechnungsposition 6 – Labor 001-0 Modell (16.09.24)  ](ChargeItem-KfoMehrkosten3-P6.md) |  |
| [ KfoMehrkosten3 Rechnungsposition 7 – Labor 011-1 Modellpaar trimmen (16.09.24)  ](ChargeItem-KfoMehrkosten3-P7.md) |  |
| [ KfoMehrkosten3 Rechnungsposition 8 – Labor 020-2 Basis für Konstruktionsbiss (16.09.24)  ](ChargeItem-KfoMehrkosten3-P8.md) |  |
| [ KfoMehrkosten3 Rechnungsposition 9 – Labor 702-0 Basis bi/maxillares Gerät (16.09.24)  ](ChargeItem-KfoMehrkosten3-P9.md) |  |
| [ KfoMehrkosten4 Rechnungsposition 1 – GOZ 6100 Klebebracket 3,70-fach (23.07.25)  ](ChargeItem-KfoMehrkosten4-P1.md) |  |
| [ KfoMehrkosten4 Rechnungsposition 2 – GOZ 6150 Ungeteilter Bogen 3,50-fach (23.07.25)  ](ChargeItem-KfoMehrkosten4-P2.md) |  |
| [ Laborleistung: Zahnersatz  ](ChargeItem-c7d8e9f0-8b9c-0d1e-5f6a-7b8c9d0e1f2a.md) | **Hinweis:** Alle Daten in diesem Beispiel sind fiktiv und dienen ausschließlich zu Demonstrations- und Testzwecken.Anfertigung einer Teilprothese durch Fremdlabor |
| [ Musterrechnung - Dr. A. Arzt  ](Practitioner-2b3c4d5e-6f7a-8b9c-0d1e-2f3a4b5c6d7e.md) | Behandelnder Arzt aus der Musterrechnung |
| [ Musterrechnung - Patient B. Patient  ](Patient-1a2b3c4d-5e6f-7a8b-9c0d-1e2f3a4b5c6d.md) | Patient aus der Musterrechnung Arztbehandlung |
| [ Musterrechnung - Praxis Dr. A. Arzt  ](Organization-3c4d5e6f-7a8b-9c0d-1e2f-3a4b5c6d7e8f.md) | Arztpraxis aus der Musterrechnung |
| [ Musterrechnung Arztbehandlung  ](Invoice-a0b1c2d3-e4f5-6a7b-8c9d-0e1f2a3b4c5d.md) | Rechnung Nr. 1425 vom 24.10.2018 |
| [ Musterrechnung Bundle  ](Bundle-MusterrechnungBundle.md) | Bundle mit allen Ressourcen der Musterrechnung Arztbehandlung |
| [ Musterrechnung Position 1 - GOÄ Nr. 1 (04.10.18)  ](ChargeItem-4d5e6f7a-8b9c-0d1e-2f3a-4b5c6d7e8f9a.md) | Beratung, auch telefonisch |
| [ Musterrechnung Position 2 - GOÄ Nr. 5 (04.10.18)  ](ChargeItem-5e6f7a8b-9c0d-1e2f-3a4b-5c6d7e8f9a0b.md) | Symptombezogene Untersuchung |
| [ Musterrechnung Position 3 - GOÄ Nr. 70 (04.10.18)  ](ChargeItem-6f7a8b9c-0d1e-2f3a-4b5c-6d7e8f9a0b1c.md) | Arbeitsunfähigkeitsbescheinigung |
| [ Musterrechnung Position 4 - GOÄ Nr. 1 (19.10.18)  ](ChargeItem-7a8b9c0d-1e2f-3a4b-5c6d-7e8f9a0b1c2d.md) | Beratung, auch telefonisch |
| [ Musterrechnung Position 5 - GOÄ Nr. 5 (19.10.18)  ](ChargeItem-8b9c0d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e.md) | Symptombezogene Untersuchung |
| [ Musterrechnung Position 6 - GOÄ Nr. 3501 (19.10.18)  ](ChargeItem-9c0d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f.md) | Blutsenkung |
| [ Musterrechnung Position 7 - GOÄ Nr. 3597.H1 (19.10.18)  ](ChargeItem-0d1e2f3a-4b5c-6d7e-8f9a-0b1c2d3e4f5a.md) | Laktatdehydrogenase (LDH) |
| [ PatientVater  ](Patient-PatientVater.md) |  |
| [ PatientenBundle  ](Bundle-PatientenBundle.md) |  |
| [ Prozedur - Zahnimplantat  ](Procedure-b2c3d4e5-3a4b-5c6d-0e1f-2a3b4c5d6e7f.md) | **Hinweis:** Alle Daten in diesem Beispiel sind fiktiv und dienen ausschließlich zu Demonstrations- und Testzwecken.Zahnimplantat-Einsetzung als Prozedur |
| [ Sachkosten: Dentalmaterial  ](ChargeItem-d8e9f0a1-9c0d-1e2f-6a7b-8c9d0e1f2a3b.md) | **Hinweis:** Alle Daten in diesem Beispiel sind fiktiv und dienen ausschließlich zu Demonstrations- und Testzwecken.Verbrauchsmaterial für Behandlung |
| [ Suchparameter AuditEvent.agent.who.display  ](SearchParameter-dipag-auditEvent-agent-who-display.md) | Ein SearchParameter auf der Ressource AuditEvent, der die Suche nach dem Text in agent.who.display ermöglicht. |
| [ Suchparameter DocumentReference dipag-markierung  ](SearchParameter-dipag-markierung.md) | Ein SearchParameter auf der Ressource DocumentReference, der die Suche nach einer manuellen Markierung ermöglicht. |
| [ Suchparameter DocumentReference.author.display  ](SearchParameter-dipag-docRef-author-display.md) | Ein SearchParameter auf der Ressource DocumentReference, der die Suche nach dem Text in author.display ermöglicht. |
| [ Suchparameter DocumentReference.subject.display  ](SearchParameter-dipag-docRef-subject-display.md) | Ein SearchParameter auf der Ressource DocumentReference, der die Suche nach dem Text in subject.display ermöglicht. |
| [ Wegegeld/Reiseentschädigung: Hausbesuch  ](ChargeItem-e9f0a1b2-0d1e-2f3a-7b8c-9d0e1f2a3b4c.md) | **Hinweis:** Alle Daten in diesem Beispiel sind fiktiv und dienen ausschließlich zu Demonstrations- und Testzwecken.Reiseentschädigung für Hausbesuch über 25 km |
| [ Zahnarztpraxis Dr. Schulz  ](Organization-e3f4a5b6-4d5e-6f7a-1b2c-3d4e5f6a7b8c.md) | **Hinweis:** Alle Daten in diesem Beispiel sind fiktiv und dienen ausschließlich zu Demonstrations- und Testzwecken.Die Praxis, die die Rechnung ausstellt |
| [ Zahnlabor Müller  ](Organization-f4a5b6c7-5e6f-7a8b-2c3d-4e5f6a7b8c9d.md) | **Hinweis:** Alle Daten in diesem Beispiel sind fiktiv und dienen ausschließlich zu Demonstrations- und Testzwecken.Labor für Zahnersatz und Prothesen |

