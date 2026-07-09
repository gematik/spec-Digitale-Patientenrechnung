# DiPag PaymentTo Extension (MVP – basiert auf HL7 FM WG Draft) - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **DiPag PaymentTo Extension (MVP – basiert auf HL7 FM WG Draft)**

## Extension: DiPag PaymentTo Extension (MVP – basiert auf HL7 FM WG Draft) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/StructureDefinition/DiPagPaymentTo | *Version*:1.0.8 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagPaymentTo |

Diese Extension basiert auf dem **DRAFT** der HL7 Financial Management Working Group (FM WG) für die Standard-Extension **PaymentTo**.

Die Struktur entspricht dem aktuellen Entwurf der FM WG:

* **paymentType**: Art der Zahlungsverbindung (z. B. IBAN, SWIFT, Kontonummer)
* **account**: Kontonummer / IBAN
* **bank**: Name der Bank
* **branch**: Bankleitzahl / BIC
* **reference**: Verwendungszweck (typischerweise die Rechnungsnummer)
* **accountHolderName**: Name des Kontoinhabers (MVP-spezifische Ergänzung, im HL7-Draft noch nicht enthalten)
* **contact**: Kontaktdaten des Zahlungsempfängers
* **notes**: Weitere Hinweise zur Zahlung

**Hinweis zur Nutzung:** Die HL7 FM WG wird diese Extension im offiziellen HL7 Extension Package veröffentlichen. Die Verwendung dieser Extension ist daher **ausschließlich im Rahmen dieses MVP** vorgesehen und wird sich mit der Fertigstellung der offiziellen HL7-Standard-Extension ändern.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Digitale Patientenrechnung Rechnung](StructureDefinition-dipag-rechnung.md)
* Examples for this Extension: [Bundle/BundleExample](Bundle-BundleExample.md) and [Invoice/c3d4e5f6-4b5c-6d7e-1f2a-3b4c5d6e7f8a](Invoice-c3d4e5f6-4b5c-6d7e-1f2a-3b4c5d6e7f8a.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.gematik.dipag|current/StructureDefinition/StructureDefinition-DiPagPaymentTo.json)

### Formale Ansichten des Extension-Inhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [AlleAll](#tabs-all) 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Complex Extension: Diese Extension basiert auf dem **DRAFT** der HL7 Financial Management Working Group (FM WG) für die Standard-Extension **PaymentTo**. Die Struktur entspricht dem aktuellen Entwurf der FM WG: 
* **paymentType**: Art der Zahlungsverbindung (z. B. IBAN, SWIFT, Kontonummer)
* **account**: Kontonummer / IBAN
* **bank**: Name der Bank
* **branch**: Bankleitzahl / BIC
* **reference**: Verwendungszweck (typischerweise die Rechnungsnummer)
* **accountHolderName**: Name des Kontoinhabers (MVP-spezifische Ergänzung, im HL7-Draft noch nicht enthalten)
* **contact**: Kontaktdaten des Zahlungsempfängers
* **notes**: Weitere Hinweise zur Zahlung
 **Hinweis zur Nutzung:** Die HL7 FM WG wird diese Extension im offiziellen HL7 Extension Package veröffentlichen. Die Verwendung dieser Extension ist daher **ausschließlich im Rahmen dieses MVP** vorgesehen und wird sich mit der Fertigstellung der offiziellen HL7-Standard-Extension ändern.

 **Differential-AnsichtDifferential View** 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Snapshot-Ansicht** 

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Complex Extension: Diese Extension basiert auf dem **DRAFT** der HL7 Financial Management Working Group (FM WG) für die Standard-Extension **PaymentTo**. Die Struktur entspricht dem aktuellen Entwurf der FM WG: 
* **paymentType**: Art der Zahlungsverbindung (z. B. IBAN, SWIFT, Kontonummer)
* **account**: Kontonummer / IBAN
* **bank**: Name der Bank
* **branch**: Bankleitzahl / BIC
* **reference**: Verwendungszweck (typischerweise die Rechnungsnummer)
* **accountHolderName**: Name des Kontoinhabers (MVP-spezifische Ergänzung, im HL7-Draft noch nicht enthalten)
* **contact**: Kontaktdaten des Zahlungsempfängers
* **notes**: Weitere Hinweise zur Zahlung
 **Hinweis zur Nutzung:** Die HL7 FM WG wird diese Extension im offiziellen HL7 Extension Package veröffentlichen. Die Verwendung dieser Extension ist daher **ausschließlich im Rahmen dieses MVP** vorgesehen und wird sich mit der Fertigstellung der offiziellen HL7-Standard-Extension ändern.

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-DiPagPaymentTo.csv), [Excel](../StructureDefinition-DiPagPaymentTo.xlsx), [Schematron](../StructureDefinition-DiPagPaymentTo.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DiPagPaymentTo",
  "url" : "https://gematik.de/fhir/dipag/StructureDefinition/DiPagPaymentTo",
  "version" : "1.0.8",
  "name" : "DiPagPaymentTo",
  "title" : "DiPag PaymentTo Extension (MVP – basiert auf HL7 FM WG Draft)",
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
  "description" : "Diese Extension basiert auf dem **DRAFT** der HL7 Financial Management Working Group (FM WG) für die Standard-Extension *PaymentTo*.\n\nDie Struktur entspricht dem aktuellen Entwurf der FM WG:\n\n- **paymentType**: Art der Zahlungsverbindung (z. B. IBAN, SWIFT, Kontonummer)\n- **account**: Kontonummer / IBAN\n- **bank**: Name der Bank\n- **branch**: Bankleitzahl / BIC\n- **reference**: Verwendungszweck (typischerweise die Rechnungsnummer)\n- **accountHolderName**: Name des Kontoinhabers (MVP-spezifische Ergänzung, im HL7-Draft noch nicht enthalten)\n- **contact**: Kontaktdaten des Zahlungsempfängers\n- **notes**: Weitere Hinweise zur Zahlung\n\n**Hinweis zur Nutzung:** Die HL7 FM WG wird diese Extension im offiziellen HL7 Extension Package veröffentlichen. Die Verwendung dieser Extension ist daher **ausschließlich im Rahmen dieses MVP** vorgesehen und wird sich mit der Fertigstellung der offiziellen HL7-Standard-Extension ändern.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Invoice.paymentTerms"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension"
    },
    {
      "id" : "Extension.extension:paymentType",
      "path" : "Extension.extension",
      "sliceName" : "paymentType",
      "short" : "Art der Zahlungsverbindung",
      "comment" : "Gibt die Art der Zahlungsverbindung an, z. B. IBAN, SWIFT, Kontonummer.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:paymentType.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:paymentType.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "paymentType"
    },
    {
      "id" : "Extension.extension:paymentType.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Extension.extension:account",
      "path" : "Extension.extension",
      "sliceName" : "account",
      "short" : "Kontonummer / IBAN",
      "comment" : "Die Kontonummer, z. B. die IBAN für SEPA-Überweisungen oder eine andere Kontokennung.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:account.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:account.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "account"
    },
    {
      "id" : "Extension.extension:account.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:bank",
      "path" : "Extension.extension",
      "sliceName" : "bank",
      "short" : "Name der Bank",
      "comment" : "Der Name der Bank / des Kreditinstituts.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:bank.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:bank.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "bank"
    },
    {
      "id" : "Extension.extension:bank.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:branch",
      "path" : "Extension.extension",
      "sliceName" : "branch",
      "short" : "Bankleitzahl / BIC / Routing-Code",
      "comment" : "Bankleitzahl, BIC (Business Identifier Code) oder ein anderer Routing-Code des Kreditinstituts.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:branch.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:branch.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "branch"
    },
    {
      "id" : "Extension.extension:branch.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:reference",
      "path" : "Extension.extension",
      "sliceName" : "reference",
      "short" : "Verwendungszweck / Referenz",
      "comment" : "Verwendungszweck der Zahlung, typischerweise die Rechnungsnummer.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:reference.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:reference.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "reference"
    },
    {
      "id" : "Extension.extension:reference.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:accountHolderName",
      "path" : "Extension.extension",
      "sliceName" : "accountHolderName",
      "short" : "Name of the account holder",
      "comment" : "Name des Kontoinhabers. MVP-spezifische Ergänzung – im aktuellen HL7-FM-WG-Draft noch nicht vorgesehen. Die Abbildung kann sich mit der Veröffentlichung der offiziellen HL7-Standard-Extension ändern.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:accountHolderName.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:accountHolderName.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "accountHolderName"
    },
    {
      "id" : "Extension.extension:accountHolderName.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:contact",
      "path" : "Extension.extension",
      "sliceName" : "contact",
      "short" : "Kontaktdaten des Zahlungsempfängers",
      "comment" : "Kontaktdaten des Zahlungsempfängers, z. B. Telefonnummer oder E-Mail.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:contact.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:contact.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "contact"
    },
    {
      "id" : "Extension.extension:contact.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "ContactPoint"
      }]
    },
    {
      "id" : "Extension.extension:notes",
      "path" : "Extension.extension",
      "sliceName" : "notes",
      "short" : "Hinweise zur Zahlung",
      "comment" : "Weitere Hinweise zur Zahlung in Markdown-Format.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:notes.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:notes.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "notes"
    },
    {
      "id" : "Extension.extension:notes.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "markdown"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://gematik.de/fhir/dipag/StructureDefinition/DiPagPaymentTo"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
