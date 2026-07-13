# CapabilityStatement Fachdienst E-Rechnung - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **CapabilityStatement Fachdienst E-Rechnung**

## CapabilityStatement: CapabilityStatement Fachdienst E-Rechnung 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/CapabilityStatement/DiPagCapabilityStatementFD | *Version*:1.0.8 |
| Active Stand: 2026-07-08 | *Maschinenlesbarer Name*:CapabilityStatementFD |

 
Dieses CapabilityStatement beschreibt alle Interaktionen, die ein DiPag-konformer Fachdienst unterstützen MUSS bzw. KANN. 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "DiPagCapabilityStatementFD",
  "url" : "https://gematik.de/fhir/dipag/CapabilityStatement/DiPagCapabilityStatementFD",
  "version" : "1.0.8",
  "name" : "CapabilityStatementFD",
  "title" : "CapabilityStatement Fachdienst E-Rechnung",
  "status" : "active",
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
  "description" : "Dieses CapabilityStatement beschreibt alle Interaktionen, \n  die ein DiPag-konformer Fachdienst unterstützen MUSS bzw. KANN.\n",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["application/fhir+xml", "application/fhir+json"],
  "rest" : [{
    "mode" : "server",
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHALL"
      }],
      "type" : "Patient",
      "supportedProfile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-patient"],
      "interaction" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "search-type"
      }],
      "searchParam" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/Patient-identifier",
        "type" : "token"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "birthdate",
        "definition" : "http://hl7.org/fhir/SearchParameter/individual-birthdate",
        "type" : "date"
      }],
      "operation" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "invoice-submit",
        "definition" : "https://gematik.de/fhir/dipag/OperationDefinition/Submit"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHALL"
      }],
      "type" : "DocumentReference",
      "supportedProfile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-dokumentenmetadaten-intern"],
      "interaction" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "search-type"
      }],
      "searchParam" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "_tag",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-tag",
        "type" : "token"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "type",
        "definition" : "http://hl7.org/fhir/SearchParameter/clinical-type",
        "type" : "token"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "dipag-markierung",
        "definition" : "https://gematik.de/fhir/dipag/SearchParameter/dipag-markierung",
        "type" : "token"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "subject-display",
        "definition" : "https://gematik.de/fhir/dipag/SearchParameter/dipag-docRef-subject-display",
        "type" : "string"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "author-display",
        "definition" : "https://gematik.de/fhir/dipag/SearchParameter/dipag-docRef-author-display",
        "type" : "string"
      }],
      "operation" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "retrieve",
        "definition" : "https://gematik.de/fhir/dipag/OperationDefinition/Retrieve"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "change-status",
        "definition" : "https://gematik.de/fhir/dipag/OperationDefinition/ChangeStatus"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "process-flag",
        "definition" : "https://gematik.de/fhir/dipag/OperationDefinition/ProcessFlag"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "erase",
        "definition" : "https://gematik.de/fhir/dipag/OperationDefinition/Erase"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHALL"
      }],
      "type" : "AuditEvent",
      "supportedProfile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-nutzungsprotokoll"],
      "interaction" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "read"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "search-type"
      }],
      "searchParam" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "_id",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id",
        "type" : "token"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "agent-display",
        "definition" : "https://gematik.de/fhir/dipag/SearchParameter/dipag-auditEvent-agent-who-display",
        "type" : "string"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "date",
        "definition" : "http://hl7.org/fhir/SearchParameter/AuditEvent-date",
        "type" : "date"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHALL"
      }],
      "type" : "Binary",
      "supportedProfile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsdokument"],
      "interaction" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "read"
      }]
    }]
  }]
}

```
