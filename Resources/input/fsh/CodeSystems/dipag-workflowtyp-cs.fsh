CodeSystem: DiPagWorkflowtypCS
Id: dipag-workflowtyp-cs
Title: "Digitale Patientenrechnung Workflowtyp CS"
Description: "CodeSystem für die Workflowtypen der Digitalen Patientenrechnung. Jeder Code beschreibt einen fachlichen Workflow, der bei der Einreichung einer Rechnung ausgelöst wird. Das CodeSystem ist zweistufig aufgebaut: Auf oberster Ebene wird nach der Adressierung der Rechnung unterschieden (Patientenadressierung, Einrichtungsadressierung), darunter hängen die konkreten Workflows. Beim Rechnungsversand an Kostenträger-Organisationen wählt das RE-PS beim $invoice-submit einen von der Ziel-Organisation unterstützten Workflowtyp aus."
* insert Meta(1.3.0-beta)
* ^date = "2026-09-01"
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* #patientenadressierung "Patientenadressierung" "Workflows, bei denen die Rechnung an eine:n Versicherte:n adressiert ist (Einreichung auf dem Patient-Endpunkt)."
  * #patientenrechnung "Patientenrechnung" "Workflow der Digitalen Patientenrechnung, der bei der Einreichung auf dem Patient-Endpunkt ausgelöst wird: Die Rechnung wird durch den Fachdienst gespeichert und der/dem Versicherten zur Prüfung und weiteren Verarbeitung bereitgestellt."
* #einrichtungsadressierung "Einrichtungsadressierung" "Workflows, bei denen die Rechnung an eine Einrichtung (z.B. eine Kostenträger-Organisation) adressiert ist (Einreichung auf dem Organization-Endpunkt)."
  * #demo "Demo" "Demo-Workflow für den Rechnungsversand an Kostenträger-Organisationen: Die Rechnung wird durch den Fachdienst gespeichert und der Organisation zum Abruf bereitgestellt. Der Workflow kennt genau zwei Status: 'Übermittelt' (durch den FD nach erfolgreichem $invoice-submit gesetzt) und 'Abgerufen' (durch den FD nach erfolgreichem Abruf per $retrieve gesetzt)."
