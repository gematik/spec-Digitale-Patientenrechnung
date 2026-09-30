# Digitale Patientenrechnung Operation Retrieve - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Operation Retrieve**

## OperationDefinition: Digitale Patientenrechnung Operation Retrieve 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/OperationDefinition/Retrieve | *Version*:1.1.0 |
| Active Stand: 2026-07-08 | *Maschinenlesbarer Name*:DiPagRetrieve |

 
Abrufen von Digitalen Patientenrechnungen, strukturierten Rechnungsinhalten und Dokumenten 



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "Retrieve",
  "url" : "https://gematik.de/fhir/dipag/OperationDefinition/Retrieve",
  "version" : "1.1.0",
  "name" : "DiPagRetrieve",
  "title" : "Digitale Patientenrechnung Operation Retrieve",
  "status" : "active",
  "kind" : "operation",
  "experimental" : false,
  "date" : "2026-07-08",
  "publisher" : "gematik GmbH",
  "contact" : [{
    "name" : "gematik GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.gematik.de"
    }]
  }],
  "description" : "Abrufen von Digitalen Patientenrechnungen, strukturierten Rechnungsinhalten und Dokumenten",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "affectsState" : false,
  "code" : "retrieve",
  "resource" : ["DocumentReference"],
  "system" : false,
  "type" : true,
  "instance" : false,
  "parameter" : [{
    "name" : "token",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "Dokumenttoken zur Identifikation des Dokuments, welches abgerufen werden soll. Das Token entspricht dem Identifier der DocumentReference mit dem System 'https://gematik.de/fhir/sid/dipag-token' (siehe Slice 'Token' im Profil DiPagDokumentenmetadatenIntern) und ist NICHT mit der technischen DocumentReference-id identisch. Im Default wird nur die DocumentReference Ressource zurückgegeben. Durch die Angabe weiterer Parameter können zusätzlich das angereicherte PDF (bzw. der Anhang), die strukturierten Rechnungsinhalte und/oder die originale Rechnung mit Signatur zurückgegeben werden.",
    "type" : "string"
  },
  {
    "name" : "pdf",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "documentation" : "Angabe, ob das angereicherte Rechnungsdokument oder der Anhang als PDF im Output enthalten sein soll. Default: false",
    "type" : "boolean"
  },
  {
    "name" : "strukturierterRechnungsinhalt",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "documentation" : "Angabe, ob die strukturierten Rechnungsinhalte neben dem angereicherten Rechnungsdokument als zusätzliche Binary Ressorce im Output enthalten sein sollen. Hat bei Anhängen keine Funktion. Default: false",
    "type" : "boolean"
  },
  {
    "name" : "originaleRechnung",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "documentation" : "Angabe ob die originale Rechnung inkl. Signatur neben dem angereicherten Rechnungsdokument als zusätzliche Binary Ressource im Output enthalten sein soll. Hat bei Anhängen keine Funktion. Default: false. \n  Die originale Rechnung ist nur vom FdV an das ITSys-KTR direkt weiterzugeben. Falls das Rechnungsdokument ausgedruckt werden sollte durch immer das angereicherte PDF inkl. Barcode zu verwenden.",
    "type" : "boolean"
  },
  {
    "name" : "dokument",
    "use" : "out",
    "min" : 1,
    "max" : "1",
    "documentation" : "DocumentReference-Ressource zum angefragten Dokumenttoken.",
    "type" : "DocumentReference",
    "targetProfile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-dokumentenmetadaten-intern"]
  },
  {
    "name" : "dokument.pdf",
    "use" : "out",
    "min" : 1,
    "max" : "1",
    "documentation" : "Binary-Ressource mit dem angereicherten PDF (inkl. Barcode) der Digitalen Patientenrechnung ODER dem angefragten Anhang (abhängig von der Art des angefragten Dokuments).",
    "type" : "Binary"
  },
  {
    "name" : "dokument.strukturierteRechnungsinhalte",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "documentation" : "Binary-Ressource mit den strukturierten Rechnungsinhalten der Digitalen Patientenrechnung (abhängig vom strukturierterRechnungsinhalt-Parameter).",
    "type" : "Binary"
  },
  {
    "name" : "dokument.originaleRechnung",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "documentation" : "Binary-Ressource mit der originalen Rechnung inkl. Signatur (abhängig vom originaleRechnung-Parameter).",
    "type" : "Binary"
  }]
}

```
