# Digitale Patientenrechnung Operation Invoice-Submit - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale Patientenrechnung Operation Invoice-Submit**

## OperationDefinition: Digitale Patientenrechnung Operation Invoice-Submit 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/OperationDefinition/Submit | *Version*:1.1.0 |
| Active Stand: 2026-07-29 | *Maschinenlesbarer Name*:DiPagSubmit |

 
Rechnung einreichen durch die Leistungserbringer:in 



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "Submit",
  "url" : "https://gematik.de/fhir/dipag/OperationDefinition/Submit",
  "version" : "1.1.0",
  "name" : "DiPagSubmit",
  "title" : "Digitale Patientenrechnung Operation Invoice-Submit",
  "status" : "active",
  "kind" : "operation",
  "experimental" : false,
  "date" : "2026-07-29",
  "publisher" : "gematik GmbH",
  "contact" : [{
    "name" : "gematik GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.gematik.de"
    }]
  }],
  "description" : "Rechnung einreichen durch die Leistungserbringer:in",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "affectsState" : true,
  "code" : "invoice-submit",
  "resource" : ["Patient"],
  "system" : false,
  "type" : false,
  "instance" : true,
  "parameter" : [{
    "name" : "rechnung",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "Vollständige Digitale Patientenrechnung mit verschiedenen Attachments: 1) Rechnungs-PDF 2) Strukturierte Daten OHNE Signatur. Besteht aus dem Dokument selbst sowie optional der übersteuernden Position des Datamatrix-Codes (barcodePosition in pt).",
    "part" : [{
      "name" : "dokument",
      "use" : "in",
      "min" : 1,
      "max" : "1",
      "documentation" : "Die Digitale Patientenrechnung als DocumentReference. Extensions, die in der Ressource über die profilierten Extensions hinausgehend vorhanden sind, werden abgelehnt (strikte Validierung).",
      "type" : "DocumentReference",
      "targetProfile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-dokumentenmetadaten-eingang"]
    },
    {
      "name" : "barcodePosition",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "documentation" : "Optionale Übersteuerung der Position des Datamatrix-Codes auf dem Dokument. Übersteuert die Default-Position des Fachdienstes. Besteht aus den Sub-Parts x und y (jeweils Quantity in der Einheit pt / typografischer Punkt).",
      "part" : [{
        "name" : "x",
        "use" : "in",
        "min" : 1,
        "max" : "1",
        "documentation" : "X-Position des Datamatrix-Codes in pt (typografischer Punkt).",
        "type" : "decimal"
      },
      {
        "name" : "y",
        "use" : "in",
        "min" : 1,
        "max" : "1",
        "documentation" : "Y-Position des Datamatrix-Codes in pt (typografischer Punkt).",
        "type" : "decimal"
      }]
    }]
  },
  {
    "name" : "anhang",
    "use" : "in",
    "min" : 0,
    "max" : "*",
    "documentation" : "Weitere Anhänge zur Digitalen Patientenrechnung als PDF. Besteht aus dem Dokument selbst sowie optional der übersteuernden Position des Datamatrix-Codes (barcodePosition in pt).",
    "part" : [{
      "name" : "dokument",
      "use" : "in",
      "min" : 1,
      "max" : "1",
      "documentation" : "Der Anhang als DocumentReference. Extensions, die in der Ressource über die profilierten Extensions hinausgehend vorhanden sind, werden abgelehnt (strikte Validierung).",
      "type" : "DocumentReference",
      "targetProfile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-dokumentenmetadaten-eingang"]
    },
    {
      "name" : "barcodePosition",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "documentation" : "Optionale Übersteuerung der Position des Datamatrix-Codes auf dem Anhang. Übersteuert die Default-Position des Fachdienstes. Besteht aus den Sub-Parts x und y (jeweils Quantity in der Einheit pt / typografischer Punkt).",
      "part" : [{
        "name" : "x",
        "use" : "in",
        "min" : 1,
        "max" : "1",
        "documentation" : "X-Position des Datamatrix-Codes in pt (typografischer Punkt).",
        "type" : "decimal"
      },
      {
        "name" : "y",
        "use" : "in",
        "min" : 1,
        "max" : "1",
        "documentation" : "Y-Position des Datamatrix-Codes in pt (typografischer Punkt).",
        "type" : "decimal"
      }]
    }]
  },
  {
    "name" : "modus",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "documentation" : "Verarbeitungshinweis für die Digitale Patientenrechnung. Default: normal.",
    "type" : "code",
    "binding" : {
      "strength" : "required",
      "valueSet" : "https://gematik.de/fhir/dipag/ValueSet/dipag-rechnung-submit-modus-vs"
    }
  },
  {
    "name" : "angereichertesPDF",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "documentation" : "Indikation ob nur das durch den FD erstellte Dokumententoken zurückgegeben werden soll oder das gesamte PDF inkl. Dokumententoken. Default: false.",
    "type" : "boolean"
  },
  {
    "name" : "token",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "documentation" : "Token(s) zur eineindeutigen Identifizierung der Rechnungsdokumente/-anhänge (unabhängig von returnTokenPDF). Dieser Parameter ist NUR optional falls modus = 'test'.",
    "part" : [{
      "name" : "id",
      "use" : "out",
      "min" : 1,
      "max" : "1",
      "documentation" : "Randomisiertes Token zur Identifikation eines Dokumentes.",
      "type" : "id"
    },
    {
      "name" : "docRef",
      "use" : "out",
      "min" : 1,
      "max" : "1",
      "documentation" : "Eindeutiger Identifikatior der Rechnung und Anhänge auf welche sich das Token bezieht.",
      "type" : "Identifier"
    },
    {
      "name" : "angereichertesPDF",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "documentation" : "PDF mit eingebetteten Token und strukturierten Daten, in Abhängigkeit vom angereichertesPDF-Parameter. Vgl. 4.1 Einreichung per Post des Feature-Dokumentes Digitale Patientenrechnung.",
      "type" : "Binary"
    }]
  },
  {
    "name" : "warnungen",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "documentation" : "Warnhinweise und Fehlern zur Validierung der Digitalen Patientenrechnung. Diese MÜSSEN in jedem Verarbeitungsmodus ausgegeben werden.",
    "type" : "OperationOutcome"
  }]
}

```
