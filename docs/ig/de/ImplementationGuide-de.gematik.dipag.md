# Resource Implementierungsleitfaden Digitale Patientenrechnung



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "de.gematik.dipag",
  "language" : "de",
  "url" : "https://gematik.de/fhir/dipag/ImplementationGuide/de.gematik.dipag",
  "version" : "1.0.8",
  "name" : "DigitalePatientenrechnung",
  "title" : "Implementierungsleitfaden Digitale Patientenrechnung",
  "status" : "draft",
  "date" : "2026-07-13T08:15:48+00:00",
  "publisher" : "gematik GmbH",
  "contact" : [{
    "name" : "gematik GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.gematik.de"
    }]
  }],
  "description" : "Implementierungsleitfaden der TI-Anwendung Digitale Patientenrechnung (DiPag): FHIR-Spezifikation fuer den standardisierten Austausch von Rechnungen ueber nicht dem Sachleistungsprinzip unterliegende Leistungen zwischen Leistungserbringern, versicherten Personen und Kostentraegern (vgl. § 359a SGB V).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "packageId" : "de.gematik.dipag",
  "license" : "Apache-2.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [{
    "id" : "hl7tx",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
    }],
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r4",
    "version" : "7.2.0"
  },
  {
    "id" : "hl7ext",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
    }],
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r4",
    "version" : "5.3.0"
  },
  {
    "id" : "de_basisprofil_r4",
    "uri" : "http://fhir.org/packages/de.basisprofil.r4/ImplementationGuide/de.basisprofil.r4",
    "packageId" : "de.basisprofil.r4",
    "version" : "1.5.4"
  },
  {
    "id" : "dvmd_kdl_r4",
    "uri" : "http://fhir.org/packages/dvmd.kdl.r4/ImplementationGuide/dvmd.kdl.r4",
    "packageId" : "dvmd.kdl.r4",
    "version" : "2025.0.1"
  },
  {
    "id" : "de_ihe_d_terminology",
    "uri" : "http://fhir.de/packages/de.ihe-d.terminology/ImplementationGuide/de.ihe-d.terminology",
    "packageId" : "de.ihe-d.terminology",
    "version" : "3.0.1"
  }],
  "definition" : {
    "extension" : [{
      "extension" : [{
        "url" : "code",
        "valueString" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2025+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "ci-build"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "i18n-default-lang"
      },
      {
        "url" : "value",
        "valueString" : "de"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Invoice.period[x]"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Task.requestedPerformer"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://gematik.de/fhir/dipag/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r4#1.1.2"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2025+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "ci-build"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "i18n-default-lang"
      },
      {
        "url" : "value",
        "valueString" : "de"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Invoice.period[x]"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Task.requestedPerformer"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://gematik.de/fhir/dipag/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DiPagAbrechnungsDiagnoseProzedur"
      },
      "name" : "Abrechnungsrelevanz von Diagnosen und Prozeduren",
      "description" : "Diese Extension erlaubt es einer Invoice Diagnosen oder Prozeduren, incl. Qualifier wie bspw: \"Primär-DRG\" zuzuordnen. Dies ermöglicht unter anderem das Zuordnen von Haupt- und Nebendiagnosen zu einem Account zum Zweck der DRG Erstellung.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DiPagAbrechnungsDiagnoseProzedurFreitext"
      },
      "name" : "Abrechnungsrelevanz von Diagnosen und Prozeduren als Freitext",
      "description" : "Diese Extension erlaubt die Angabe von abrechnungsrelevanten Diagnosen und Prozeduren als Freitext an einer Invoice.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      }],
      "reference" : {
        "reference" : "Practitioner/d2e3f4a5-3c4d-5e6f-0a1b-2c3d4e5f6a7b"
      },
      "name" : "Assistierender Arzt - Dr. Mueller",
      "description" : "**Hinweis:** Alle Daten in diesem Beispiel sind fiktiv und dienen ausschließlich zu Demonstrations- und Testzwecken.\n\nAssistierender Zahnarzt",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-person"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/BundleExample"
      },
      "name" : "Beispiel Bundle - Vollständige Rechnung",
      "description" : "**Hinweis:** Alle Daten in diesem Beispiel sind fiktiv und dienen ausschließlich zu Demonstrations- und Testzwecken.\n\nBundle mit allen Ressourcen der digitalen Patientenrechnung",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsbundle"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c"
      },
      "name" : "Beispiel Patient",
      "description" : "**Hinweis:** Alle Daten in diesem Beispiel sind fiktiv und dienen ausschließlich zu Demonstrations- und Testzwecken.\n\nEin Beispielpatient für die Rechnung",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-patient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Binary"
      }],
      "reference" : {
        "reference" : "Binary/BeispielBinarySubmitOutput3-FD"
      },
      "name" : "BeispielBinarySubmitOutput3-FD",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DocumentReference"
      }],
      "reference" : {
        "reference" : "DocumentReference/BeispielDocumentReferenceRechnung3-FD"
      },
      "name" : "BeispielDocumentReferenceRechnung3-FD",
      "description" : "Rechnung Reiseimpfung vom 10.01.2024",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-dokumentenmetadaten-eingang"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DocumentReference"
      }],
      "reference" : {
        "reference" : "DocumentReference/BeispielDocumentReferenceRechnung3-LE"
      },
      "name" : "BeispielDocumentReferenceRechnung3-LE",
      "description" : "Rechnung Reiseimpfung vom 10.01.2024",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-dokumentenmetadaten-eingang"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DocumentReference"
      }],
      "reference" : {
        "reference" : "DocumentReference/BeispielDocumentReferenceRechnung3.1-FD"
      },
      "name" : "BeispielDocumentReferenceRechnung3.1-FD",
      "description" : "Rechnung Reiseimpfung vom 10.01.2024",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-dokumentenmetadaten-eingang"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DocumentReference"
      }],
      "reference" : {
        "reference" : "DocumentReference/BeispielDocumentReferenceRechnung3.1-LE"
      },
      "name" : "BeispielDocumentReferenceRechnung3.1-LE",
      "description" : "Rechnung Reiseimpfung vom 10.01.2024",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-dokumentenmetadaten-eingang"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DocumentReference"
      }],
      "reference" : {
        "reference" : "DocumentReference/BeispielDocumentReferenceRechnungRetrieve"
      },
      "name" : "BeispielDocumentReferenceRechnungRetrieve",
      "description" : "Rechnung Reiseimpfung vom 10.01.2024",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-dokumentenmetadaten-intern"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DocumentReference"
      }],
      "reference" : {
        "reference" : "DocumentReference/BeispielDocumentReferenceRechnungRetrieve2"
      },
      "name" : "BeispielDocumentReferenceRechnungRetrieve2",
      "description" : "Der Einfachheit halber wurden hier nur die relevanten Felder dargestellt. Die Extensions sind als befüllt anzunehmen.",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-dokumentenmetadaten-intern"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DocumentReference"
      }],
      "reference" : {
        "reference" : "DocumentReference/BeispielDocumentReferenceSonstigesDokument3-FD"
      },
      "name" : "BeispielDocumentReferenceSonstigesDokument3-FD",
      "description" : "Molekularpathologiebefund vom 31.12.21",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-dokumentenmetadaten-eingang"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DocumentReference"
      }],
      "reference" : {
        "reference" : "DocumentReference/BeispielDocumentReferenceSonstigesDokument3-LE"
      },
      "name" : "BeispielDocumentReferenceSonstigesDokument3-LE",
      "description" : "Molekularpathologiebefund vom 31.12.21",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-dokumentenmetadaten-eingang"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DocumentReference"
      }],
      "reference" : {
        "reference" : "DocumentReference/BeispielDocumentReferenceSonstigesDokument3.1-FD"
      },
      "name" : "BeispielDocumentReferenceSonstigesDokument3.1-FD",
      "description" : "Molekularpathologiebefund vom 31.12.21",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-dokumentenmetadaten-eingang"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DocumentReference"
      }],
      "reference" : {
        "reference" : "DocumentReference/BeispielDocumentReferenceSonstigesDokument3.1-LE"
      },
      "name" : "BeispielDocumentReferenceSonstigesDokument3.1-LE",
      "description" : "Molekularpathologiebefund vom 30.12.21",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-dokumentenmetadaten-eingang"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AuditEvent"
      }],
      "reference" : {
        "reference" : "AuditEvent/BeispielNutzungsprotokoll"
      },
      "name" : "BeispielNutzungsprotokoll",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-nutzungsprotokoll"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AuditEvent"
      }],
      "reference" : {
        "reference" : "AuditEvent/BeispielNutzungsprotokollAutomatischLoeschen"
      },
      "name" : "BeispielNutzungsprotokollAutomatischLoeschen",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-nutzungsprotokoll"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AuditEvent"
      }],
      "reference" : {
        "reference" : "AuditEvent/BeispielNutzungsprotokollAutomatischMarkierung"
      },
      "name" : "BeispielNutzungsprotokollAutomatischMarkierung",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-nutzungsprotokoll"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AuditEvent"
      }],
      "reference" : {
        "reference" : "AuditEvent/BeispielNutzungsprotokollAutomatischPapierkorb"
      },
      "name" : "BeispielNutzungsprotokollAutomatischPapierkorb",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-nutzungsprotokoll"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AuditEvent"
      }],
      "reference" : {
        "reference" : "AuditEvent/BeispielNutzungsprotokollBerechtigungAbfragen"
      },
      "name" : "BeispielNutzungsprotokollBerechtigungAbfragen",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-nutzungsprotokoll"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AuditEvent"
      }],
      "reference" : {
        "reference" : "AuditEvent/BeispielNutzungsprotokollBerechtigungAnlegen"
      },
      "name" : "BeispielNutzungsprotokollBerechtigungAnlegen",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-nutzungsprotokoll"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AuditEvent"
      }],
      "reference" : {
        "reference" : "AuditEvent/BeispielNutzungsprotokollBerechtigungBestaetigen"
      },
      "name" : "BeispielNutzungsprotokollBerechtigungBestaetigen",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-nutzungsprotokoll"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AuditEvent"
      }],
      "reference" : {
        "reference" : "AuditEvent/BeispielNutzungsprotokollChangeStatus"
      },
      "name" : "BeispielNutzungsprotokollChangeStatus",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-nutzungsprotokoll"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AuditEvent"
      }],
      "reference" : {
        "reference" : "AuditEvent/BeispielNutzungsprotokollEinreichenFrontend"
      },
      "name" : "BeispielNutzungsprotokollEinreichenFrontend",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-nutzungsprotokoll"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AuditEvent"
      }],
      "reference" : {
        "reference" : "AuditEvent/BeispielNutzungsprotokollErase"
      },
      "name" : "BeispielNutzungsprotokollErase",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-nutzungsprotokoll"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AuditEvent"
      }],
      "reference" : {
        "reference" : "AuditEvent/BeispielNutzungsprotokollNutzerkontoEinrichten"
      },
      "name" : "BeispielNutzungsprotokollNutzerkontoEinrichten",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-nutzungsprotokoll"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AuditEvent"
      }],
      "reference" : {
        "reference" : "AuditEvent/BeispielNutzungsprotokollProcessFlag"
      },
      "name" : "BeispielNutzungsprotokollProcessFlag",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-nutzungsprotokoll"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/BeispielNutzungsprotokollResultBundle"
      },
      "name" : "BeispielNutzungsprotokollResultBundle",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AuditEvent"
      }],
      "reference" : {
        "reference" : "AuditEvent/BeispielNutzungsprotokollRetrieve"
      },
      "name" : "BeispielNutzungsprotokollRetrieve",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-nutzungsprotokoll"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationOutcome"
      }],
      "reference" : {
        "reference" : "OperationOutcome/BeispielOperationOutcomeRechnung3.1-FD"
      },
      "name" : "BeispielOperationOutcomeRechnung3.1-FD",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Parameters"
      }],
      "reference" : {
        "reference" : "Parameters/BeispielParameterChangeStatusInput"
      },
      "name" : "BeispielParameterChangeStatusInput",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Parameters"
      }],
      "reference" : {
        "reference" : "Parameters/BeispielParameterChangeStatusInput2"
      },
      "name" : "BeispielParameterChangeStatusInput2",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Parameters"
      }],
      "reference" : {
        "reference" : "Parameters/BeispielParameterChangeStatusOutput"
      },
      "name" : "BeispielParameterChangeStatusOutput",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Parameters"
      }],
      "reference" : {
        "reference" : "Parameters/BeispielParameterChangeStatusOutput2"
      },
      "name" : "BeispielParameterChangeStatusOutput2",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Parameters"
      }],
      "reference" : {
        "reference" : "Parameters/BeispielParameterProcessFlagInput"
      },
      "name" : "BeispielParameterProcessFlagInput",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Parameters"
      }],
      "reference" : {
        "reference" : "Parameters/BeispielParameterProcessFlagOutput"
      },
      "name" : "BeispielParameterProcessFlagOutput",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Parameters"
      }],
      "reference" : {
        "reference" : "Parameters/BeispielParameterRetrieveInput"
      },
      "name" : "BeispielParameterRetrieveInput",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Parameters"
      }],
      "reference" : {
        "reference" : "Parameters/BeispielParameterRetrieveInput2"
      },
      "name" : "BeispielParameterRetrieveInput2",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Parameters"
      }],
      "reference" : {
        "reference" : "Parameters/BeispielParameterRetrieveOutput"
      },
      "name" : "BeispielParameterRetrieveOutput",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Parameters"
      }],
      "reference" : {
        "reference" : "Parameters/BeispielParameterSubmitInput3-FD"
      },
      "name" : "BeispielParameterSubmitInput3-FD",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Parameters"
      }],
      "reference" : {
        "reference" : "Parameters/BeispielParameterSubmitInput3-LE"
      },
      "name" : "BeispielParameterSubmitInput3-LE",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Parameters"
      }],
      "reference" : {
        "reference" : "Parameters/BeispielParameterSubmitInput3.1-LE"
      },
      "name" : "BeispielParameterSubmitInput3.1-LE",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Parameters"
      }],
      "reference" : {
        "reference" : "Parameters/BeispielParameterSubmitOutput3-FD"
      },
      "name" : "BeispielParameterSubmitOutput3-FD",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Parameters"
      }],
      "reference" : {
        "reference" : "Parameters/BeispielParameterSubmitOutput3.1-FD"
      },
      "name" : "BeispielParameterSubmitOutput3.1-FD",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/BeispielPatient3-FD"
      },
      "name" : "BeispielPatient3-FD",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Invoice"
      }],
      "reference" : {
        "reference" : "Invoice/c3d4e5f6-4b5c-6d7e-1f2a-3b4c5d6e7f8a"
      },
      "name" : "Beispielrechnung - Zahnärztliche Behandlung",
      "description" : "**Hinweis:** Alle Daten in diesem Beispiel sind fiktiv und dienen ausschließlich zu Demonstrations- und Testzwecken.\n\nKomplettes Beispiel einer Digitalen Patientenrechnung mit GOÄ und GOZ",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnung"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/BulkChangeStatusExampleInput"
      },
      "name" : "BulkChangeStatusExampleInput",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/BulkChangeStatusExampleOutput"
      },
      "name" : "BulkChangeStatusExampleOutput",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/BulkRetrieveExampleInput"
      },
      "name" : "BulkRetrieveExampleInput",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/BulkRetrieveExampleOutput"
      },
      "name" : "BulkRetrieveExampleOutput",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/BulkSubmitExample"
      },
      "name" : "BulkSubmitExample",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/BulkSubmitExampleOutput"
      },
      "name" : "BulkSubmitExampleOutput",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CapabilityStatement"
      }],
      "reference" : {
        "reference" : "CapabilityStatement/DiPagCapabilityStatementFD"
      },
      "name" : "CapabilityStatement Fachdienst E-Rechnung",
      "description" : "Dieses CapabilityStatement beschreibt alle Interaktionen, \n  die ein DiPag-konformer Fachdienst unterstützen MUSS bzw. KANN.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      }],
      "reference" : {
        "reference" : "Condition/f0a1b2c3-1e2f-3a4b-8c9d-0e1f2a3b4c5d"
      },
      "name" : "Diagnose - Karies",
      "description" : "**Hinweis:** Alle Daten in diesem Beispiel sind fiktiv und dienen ausschließlich zu Demonstrations- und Testzwecken.\n\nZahnkaries als Hauptdiagnose für die Rechnung",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsdiagnose"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      }],
      "reference" : {
        "reference" : "Condition/a1b2c3d4-2f3a-4b5c-9d0e-1f2a3b4c5d6e"
      },
      "name" : "Diagnose - Parodontitis",
      "description" : "**Hinweis:** Alle Daten in diesem Beispiel sind fiktiv und dienen ausschließlich zu Demonstrations- und Testzwecken.\n\nParodontitis als Nebendiagnose",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsdiagnose"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/dipag-rechnungsbundle"
      },
      "name" : "Digitale Patientenrechnung - Rechnungsinhalte Bundle",
      "description" : "Dieses Profil stellt das collection-Bundle dar, mit welchem die strukturierten Rechnungsinhalte zusammengefasst und als base64-kodiertes Binary in der DocumentReference referenziert werden.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/dipag-abrechnungs-diagnose-use-cs"
      },
      "name" : "Digitale Patientenrechnung Abrechnungsdiagnose Use CodeSystem",
      "description" : "CodeSystem für die Qualifizierung von abrechnungsrelevanten Diagnosen, z. B. als Hauptdiagnose",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/dipag-abrechnungs-diagnose-use-vs"
      },
      "name" : "Digitale Patientenrechnung Abrechnungsdiagnose Use ValueSet",
      "description" : "ValueSet für die Qualifizierung von abrechnungsrelevanten Diagnosen, z. B. als Hauptdiagnose",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/dipag-rechnungsposition-go-angaben"
      },
      "name" : "Digitale Patientenrechnung Angaben bei Gebührenordnungen bei einer Rechnungsposition",
      "description" : "In dieser Extension werden gebührenordnungsspezifische Angaben einer Rechnungsposition abgebildet: Einfachsatz, Punktzahl, Steigerungsfaktor mit Begründung sowie eine prozentuale Minderung nach GOÄ.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/dipag-total-price-component-type-cs"
      },
      "name" : "Digitale Patientenrechnung Art der Rechnungssumme",
      "description" : "CodeSystem für die Arten von Summenbestandteilen einer Rechnung, z. B. Summe der Rechnungspositionen, Minderungen nach §7 GOZ oder Abzüge wie der Festzuschuss der Kasse",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/dipag-total-price-component-deduction-type-vs"
      },
      "name" : "Digitale Patientenrechnung Art des Abzugs von der Summe der gesamten Rechnungspositionen",
      "description" : "ValueSet für die Arten von Abzügen von der Summe der Rechnungspositionen (Festzuschuss Kasse, Vorleistungen anderer Kostenträger, Kosten gem. den BEMA-Pos. 13a - d)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/dipag-attachment-format-cs"
      },
      "name" : "Digitale Patientenrechnung Attachment Format CS",
      "description" : "CodeSystem für die Abbildung von verschiedenen Formatinhalten eines Dokuments",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/dipag-audit-event-agent-type-vs"
      },
      "name" : "Digitale Patientenrechnung Audit Event Agent Type",
      "description" : "ValueSet zur Unterscheidung, ob ein Zugriff durch einen menschlichen Nutzer oder automatisiert durch den Fachdienst erfolgt ist",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/dipag-audit-event-detail-vs"
      },
      "name" : "Digitale Patientenrechnung Audit Event Detail",
      "description" : "ValueSet für die Kodierung der Details eines Protokolleintrags im Nutzungsprotokoll",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/dipag-audit-event-detail-cs"
      },
      "name" : "Digitale Patientenrechnung Audit Event Detail",
      "description" : "CodeSystem für die Kodierung der Details eines Protokolleintrags im Nutzungsprotokoll, z. B. Änderungen an Rechnungsstatus oder Markierung",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/dipag-audit-event-sub-type-vs"
      },
      "name" : "Digitale Patientenrechnung Audit Event Sub-Type",
      "description" : "ValueSet zur Kodierung der protokollierten Interaktion: RESTful-Interaktionen sowie die Operationen der Digitalen Patientenrechnung",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/dipag-audit-event-type-vs"
      },
      "name" : "Digitale Patientenrechnung Audit Event Type",
      "description" : "ValueSet zur Unterscheidung, ob ein Protokolleintrag eine Applikationsaktivität oder eine REST-API-Interaktion protokolliert",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DiPagInvoiceBasedOn"
      },
      "name" : "Digitale Patientenrechnung BasedOn Extension",
      "description" : "Fügt die Extension basedOn hinzu, die es in R4 bereits für Invoice gab (https://hl7.org/fhir/R4/extension-event-basedon.html) leider im aktuellen Extension Pack aber nicht mehr den Context Invoice hat.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/dipag-docref-fachrichtung"
      },
      "name" : "Digitale Patientenrechnung DocRef Fachrichtung",
      "description" : "Extension zur Angabe der Fachrichtung zur Steuerung des Abrechungsworkflows",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/dipag-docref-signature"
      },
      "name" : "Digitale Patientenrechnung DocRef Signature",
      "description" : "Extension zur Abbildung einer Digitalen Signatur über die Rechnungsrepräsentation, sowie den strukturierten Rechnungsinhalten",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/dipag-documentreference-gesamtbetrag"
      },
      "name" : "Digitale Patientenrechnung DocumentReference Gesamtbetrag",
      "description" : "In dieser Extension wird der Gesamtbetrag der Rechnung an den Dokumentenmetadaten abgebildet. Er wird durch den Fachdienst aus den strukturierten Rechnungsinhalten extrahiert.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/dipag-documentreference-markierung"
      },
      "name" : "Digitale Patientenrechnung DocumentReference Markierung",
      "description" : "In dieser Extension wird eine Markierung eines Dokumentes abgebildet (z. B. 'Eingereicht', 'Bezahlt' oder 'Archiviert'), inklusive Zeitpunkt, optionalem Freitext sowie ggf. Art der Archivierung und Kostenträger-Referenz.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/dipag-documentreference-rechnungsdatum"
      },
      "name" : "Digitale Patientenrechnung DocumentReference Rechnungsdatum",
      "description" : "In dieser Extension wird das Rechnungsdatum an den Dokumentenmetadaten abgebildet. Es wird durch den Fachdienst aus den strukturierten Rechnungsinhalten extrahiert.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/dipag-dokument-artderarchivierung-cs"
      },
      "name" : "Digitale Patientenrechnung Dokument ArtDerArchivierung CS",
      "description" : "CodeSystem für die Angabe der Art der Archivierung eines Dokumentes (ePA oder persönliche Ablage)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/dipag-dokument-artderarchivierung-vs"
      },
      "name" : "Digitale Patientenrechnung Dokument ArtDerArchivierung VS",
      "description" : "ValueSet für die Angabe der Art der Archivierung eines Dokumentes (ePA oder persönliche Ablage)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/dipag-dokumentenmetadaten-eingang"
      },
      "name" : "Digitale Patientenrechnung Dokumentenmetadaten Eingang",
      "description" : "Dieses Profil beschreibt die Dokumentenmetadaten, wie sie beim Einreichen von Rechnungen und Anhängen durch das Primärsystem der Leistungserbringer:in (RE-PS) an den Fachdienst übermittelt werden.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/dipag-dokumentenmetadaten-intern"
      },
      "name" : "Digitale Patientenrechnung Dokumentenmetadaten Intern",
      "description" : "Dieses Profil beschreibt die Dokumentenmetadaten, wie sie im Fachdienst gehalten und an abrufende Akteure ausgeliefert werden. Es ergänzt die eingereichten Metadaten u. a. um das Rechnungs-Token, den Rechnungsstatus, Markierungen sowie die aus den strukturierten Rechnungsinhalten extrahierten Angaben (z. B. Rechnungsdatum, Gesamtbetrag, Zahlungsziel).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/dipag-abzug-kassenanteil"
      },
      "name" : "Digitale Patientenrechnung Extension Abzug Kassenanteil in Prozent",
      "description" : "In dieser Extension wird der prozentuale Abzug des Kassenanteils an einem Summenbestandteil der Rechnung abgebildet.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/dipag-behandlungsart"
      },
      "name" : "Digitale Patientenrechnung Extension Behandlungsart",
      "description" : "In dieser Extension wird die Behandlungsart einer Rechnung abgebildet, z. B. ambulant.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/dipag-fachrichtung"
      },
      "name" : "Digitale Patientenrechnung Extension Fachrichtung",
      "description" : "In dieser Extension wird die Fachrichtung der Leistungserbringer:in an der Rechnung abgebildet, u. a. zur Steuerung des Abrechnungsworkflows.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/dipag-institution"
      },
      "name" : "Digitale Patientenrechnung Institution",
      "description" : "Das Profil DiPagInstitution bildet eine Institution (z. B. Praxis, MVZ oder Krankenhaus) in den Rollen 'Rechnungsersteller' oder 'Abweichender Forderungsinhaber' ab.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/dipag-nutzungsprotokoll"
      },
      "name" : "Digitale Patientenrechnung Nutzungsprotokoll",
      "description" : "Dieses Profil bildet einen Eintrag des Nutzungsprotokolls ab, mit dem Zugriffe und Interaktionen auf Rechnungen und Dokumente im Fachdienst protokolliert werden.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationDefinition"
      }],
      "reference" : {
        "reference" : "OperationDefinition/ChangeStatus"
      },
      "name" : "Digitale Patientenrechnung Operation ChangeStatus",
      "description" : "Änderung des Bearbeitungsstatus eines Dokumentes",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationDefinition"
      }],
      "reference" : {
        "reference" : "OperationDefinition/Erase"
      },
      "name" : "Digitale Patientenrechnung Operation Erase",
      "description" : "Permanente Löschung eines Dokumentes. \nGelöscht werden können nur DocumentReference-Ressourcen, die als KDL-type = 'AM010106' (Rechnungsdokument) gekennzeichnet sind. Es werden alle zugehörigen Anhang-Dokument (KDL-type != 'AM010106') mit gelöscht. Es erfolgt eine permanente Löschung der Ressourcen, d.h. die Ressourcen sind nach der Operation nicht mehr auffindbar und es werden keine Historie oder Versionen der Ressourcen angelegt.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationDefinition"
      }],
      "reference" : {
        "reference" : "OperationDefinition/Submit"
      },
      "name" : "Digitale Patientenrechnung Operation Invoice-Submit",
      "description" : "Rechnung einreichen durch die Leistungserbringer:in",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationDefinition"
      }],
      "reference" : {
        "reference" : "OperationDefinition/ProcessFlag"
      },
      "name" : "Digitale Patientenrechnung Operation ProcessFlag",
      "description" : "Setzt die Markierungen eines Rechnungsdokuments (DocumentReference) nach dem Complete-Replacement-Prinzip: Die übermittelten Markierungen ersetzen vollständig den bisherigen Markierungssatz des Dokuments. Markierungen, die nicht im Request enthalten sind, werden entfernt; Änderungen an bestehenden Markierungen erfolgen durch erneutes Übermitteln mit aktualisierten Werten. Der Request muss daher stets alle weiterhin gültigen Markierungen inklusive ihrer jeweiligen Zusatzinformationen vollständig enthalten. Wird kein 'markierung'-Parameter übergeben (leerer Markierungssatz), werden alle änderbaren Markierungen des Dokuments entfernt. Da dies der einzige Endpunkt zur Pflege der Markierungen ist, wird hierüber auch das vollständige Löschen der Markierungen unterstützt.\n\nAusnahmen: Die Markierungen 'persönlich' und 'abgerufen durch KTR' können über diese Operation weder gesetzt noch entfernt werden und werden ignoriert, falls sie übermittelt werden. Sie bleiben sowohl von der Ersetzung als auch von der Löschung unberührt.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationDefinition"
      }],
      "reference" : {
        "reference" : "OperationDefinition/Retrieve"
      },
      "name" : "Digitale Patientenrechnung Operation Retrieve",
      "description" : "Abrufen von Digitalen Patientenrechnungen, strukturierten Rechnungsinhalten und Dokumenten",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/dipag-operationen-cs"
      },
      "name" : "Digitale Patientenrechnung Operationen",
      "description" : "CodeSystem für die Operationen der Digitalen Patientenrechnung zur Kodierung von Interaktionen im Nutzungsprotokoll",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/dipag-patient"
      },
      "name" : "Digitale Patientenrechnung Patient",
      "description" : "Das Profil DiPagPatient bildet eine versicherte Person in den Rollen 'Behandelte Person' oder 'Rechnungsempfänger' ab.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/dipag-person"
      },
      "name" : "Digitale Patientenrechnung Person",
      "description" : "Das Profil DiPagPerson wird in für die Rolle 'Behandelnder Leistungserbringer' oder 'Abweichender Forderungsinhaber' verwendet.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/dipag-rechnung"
      },
      "name" : "Digitale Patientenrechnung Rechnung",
      "description" : "Dieses Profil bildet die strukturierten Rechnungsinhalte einer Digitalen Patientenrechnung ab, inklusive Angaben zu Behandlungszeitraum, Diagnosen und Prozeduren, Behandlungsart, Fachrichtung, Rechnungspositionen und Zusammensetzung des Rechnungsbetrags.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/dipag-rechnung-abrechnungsart-cs"
      },
      "name" : "Digitale Patientenrechnung Rechnung Abrechnungsart CS",
      "description" : "CodeSystem für die verschiedenen Abrechnungsarten (BEMA, GOÄ, GOZ) innerhalb einer Digitalen Patientenrechnung",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/dipag-rechnung-abrechnungsart-vs"
      },
      "name" : "Digitale Patientenrechnung Rechnung Abrechnungsart VS",
      "description" : "ValueSet zur Klassifizierung von Abrechnungsarten",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/dipag-rechnung-behandlungsart-vs"
      },
      "name" : "Digitale Patientenrechnung Rechnung Behandlungsart VS",
      "description" : "ValueSet zur Klassifizierung von Behandlungsarten",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/dipag-rechnung-identifier-type-cs"
      },
      "name" : "Digitale Patientenrechnung Rechnung Identifier Type CS",
      "description" : "CodeSystem für die verschiedenen Identifier-Typen der Digitalen Patientenrechnung (Rechnungsnummer, Antragsreferenz, Anhangsidentifikator, USt-ID-Nr)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/dipag-rechnung-markierung-cs"
      },
      "name" : "Digitale Patientenrechnung Rechnung Markierung CS",
      "description" : "CodeSystem für die Differenzierung von verschiedenen Arten von Markierungen eines Dokumentes",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/dipag-rechnung-markierung-vs"
      },
      "name" : "Digitale Patientenrechnung Rechnung Markierung VS",
      "description" : "ValueSet für die Differenzierung von verschiedenen Arten von Markierungen eines Dokumentes",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/dipag-rechnung-submit-modus-cs"
      },
      "name" : "Digitale Patientenrechnung Rechnung Submit Modus CS",
      "description" : "CodeSystem für die Differenzierung der Verarbeitungsmodi für $invoice-submit",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/dipag-rechnung-submit-modus-vs"
      },
      "name" : "Digitale Patientenrechnung Rechnung Submit Modus VS",
      "description" : "ValueSet für die Differenzierung der Verarbeitungsmodi für $invoice-submit",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/dipag-rechnung-type-cs"
      },
      "name" : "Digitale Patientenrechnung Rechnung Type CS",
      "description" : "CodeSystem für die Differenzierung von verschiedenen Typen einer Digitalen Patientenrechnung",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/dipag-rechnungsart-cs"
      },
      "name" : "Digitale Patientenrechnung Rechnungsart CS",
      "description" : "CodeSystem für die verschiedenen Rechnungsarten (Abschluss- und Teilrechnung) innerhalb einer Digitalen Patientenrechnung",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/dipag-rechnungsart-vs"
      },
      "name" : "Digitale Patientenrechnung Rechnungsart VS",
      "description" : "ValueSet zur Klassifizierung von Rechnungsarten",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/dipag-rechnungsdiagnose"
      },
      "name" : "Digitale Patientenrechnung Rechnungsdiagnose",
      "description" : "Dieses Profil bildet eine abrechnungsrelevante Diagnose nach ICD-10-GM ab, die einer Digitalen Patientenrechnung zugeordnet werden kann.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/dipag-rechnungsdokument"
      },
      "name" : "Digitale Patientenrechnung Rechnungsdokument",
      "description" : "Dieses Profil bildet die Binärdaten eines Dokumentes der Digitalen Patientenrechnung ab: das PDF der Rechnung bzw. eines Anhangs oder die strukturierten Rechnungsinhalte, jeweils als base64-kodierte Daten.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/dipag-rechnungsposition"
      },
      "name" : "Digitale Patientenrechnung Rechnungsposition",
      "description" : "Dieses Profil bildet eine einzelne Rechnungsposition einer Digitalen Patientenrechnung ab, z. B. Leistungen nach GOÄ, GOZ oder BEMA sowie Laborleistungen, Sachkosten/Auslagen und Wegegeld/Reiseentschädigung.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DiPagRechnungspositionBehandlungsdatum"
      },
      "name" : "Digitale Patientenrechnung Rechnungsposition Behandlungsdatum",
      "description" : "In dieser Extension wird das Behandlungsdatum einer Rechnungsposition der Digitalen Patientenrechnung abgebildet.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/dipag-rechnungsposition-faktor-gruende-cs"
      },
      "name" : "Digitale Patientenrechnung Rechnungsposition Faktor Gründe CodeSystem",
      "description" : "CodeSystem für die Gründe eines abweichenden Steigerungsfaktors einer Rechnungsposition (z. B. Honorarvereinbarung oder Basistarif)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/dipag-rechnungsposition-faktor-gruende-auspraegungen-VS"
      },
      "name" : "Digitale Patientenrechnung Rechnungsposition Faktor Gründe ValueSet",
      "description" : "ValueSet für die Gründe eines abweichenden Steigerungsfaktors einer Rechnungsposition",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/dipag-rechnungsposition-zusatz-cs"
      },
      "name" : "Digitale Patientenrechnung Rechnungsposition Zusatz CodeSystem",
      "description" : "CodeSystem für die Zusatzkennzeichen einer Rechnungsposition: auf Verlangen erbrachte Leistung, Leistung zur Früherkennung und analoge Leistung",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DiPagRechnungspositionZusatz"
      },
      "name" : "Digitale Patientenrechnung Rechnungsposition Zusatz Extension",
      "description" : "In dieser Extension wird der Zusatz zu einer Rechnungsposition im Kontext der Digitalen Patientenrechnung abgebildet.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/dipag-rechnungsposition-zusatz-VS"
      },
      "name" : "Digitale Patientenrechnung Rechnungsposition Zusatz ValueSet",
      "description" : "ValueSet für die Zusatzkennzeichen einer Rechnungsposition",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/dipag-rechnungsprozedur"
      },
      "name" : "Digitale Patientenrechnung Rechnungsprozedur",
      "description" : "Dieses Profil bildet eine abrechnungsrelevante Prozedur nach OPS ab, die einer Digitalen Patientenrechnung zugeordnet werden kann.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/dipag-rechnungsstatus-vs"
      },
      "name" : "Digitale Patientenrechnung Rechnungsstatus",
      "description" : "ValueSet für den Bearbeitungsstatus eines Rechnungsdokuments (offen, erledigt, papierkorb)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/dipag-rechnungsstatus-cs"
      },
      "name" : "Digitale Patientenrechnung Rechnungsstatus CS",
      "description" : "CodeSystem für die Abbildung der verschiedenen Bearbeitungsstatus eines Rechnungsdokuments",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DiPagInvoiceReplaces"
      },
      "name" : "Digitale Patientenrechnung Replaces Extension",
      "description" : "Fügt die Extension replaces hinzu, die es in R4 bereits für Invoice gab (https://hl7.org/fhir/R4/extension-request-replaces.html) leider im aktuellen Extension Pack aber nicht mehr den Context Invoice hat.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/dipag-restricted-mime-types-in-binary-vs"
      },
      "name" : "Digitale Patientenrechnung Restricted Mime Types in Binary",
      "description" : "ValueSet der zulässigen MIME-Types für Dokumente der Digitalen Patientenrechnung (PDF und FHIR-JSON)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/dipag-sonstigesdokument-type-vs"
      },
      "name" : "Digitale Patientenrechnung Sonstiges Dokument Type VS",
      "description" : "ValueSet zur Klassifizierung von weiteren Dokumenten",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/dipag-task-requestedPerformer"
      },
      "name" : "Digitale Patientenrechnung Task RequestedPerformer",
      "description" : "Backport des Elements Task.requestedPerformer aus FHIR R5. Referenziert die versicherte Person (per KVNR), an die sich der Task richtet.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/dipag-participant-role-VS"
      },
      "name" : "Digitale Patientenrechnung Teilnehmer Rolle",
      "description" : "Diese Codes enthalten Teilnehmer Rollen der Digitalen Patientenrechnung",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/dipag-participant-role-cs"
      },
      "name" : "Digitale Patientenrechnung Teilnehmer Rolle",
      "description" : "CodeSystem für die Rollen von Beteiligten an einer Digitalen Patientenrechnung (Leistungserbringer, Forderungsinhaber)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DiPagTeilsumme"
      },
      "name" : "Digitale Patientenrechnung Teilsumme",
      "description" : "In dieser Extension wird eine Teilsumme der Rechnung je Rechnungspositionstyp abgebildet, inklusive Umsatzsteuersatz und Umsatzsteuerbetrag.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DiPagTokenStornierteRechnung"
      },
      "name" : "Digitale Patientenrechnung Token der stornierten Rechnung",
      "description" : "In dieser Extension wird bei einer Korrekturrechnung das Rechnungs-Token der stornierten bzw. ersetzten Rechnung abgebildet.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/dipag-chargeitem-type-cs"
      },
      "name" : "Digitale Patientenrechnung Typ der Rechnungsposition CodeSystem",
      "description" : "CodeSystem für die verschiedenen Typen einer Rechnungsposition (z. B. GOÄ-, GOZ- oder BEMA-Leistung, Laborleistung, Sachkosten/Auslagen, Wegegeld/Reiseentschädigung)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/dipag-rechnungsposition-type"
      },
      "name" : "Digitale Patientenrechnung Typ der Rechnungsposition Extension",
      "description" : "In dieser Extension wird der Typ einer Rechnungsposition im Kontext der Digitalen Patientenrechnung abgebildet.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/dipag-chargeitem-type-VS"
      },
      "name" : "Digitale Patientenrechnung Typ der Rechnungsposition ValueSet",
      "description" : "ValueSet für die verschiedenen Typen einer Rechnungsposition",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/dipag-wegegeld-reiseentschaedigung"
      },
      "name" : "Digitale Patientenrechnung Wegegeld/Reiseentschädigung Extension",
      "description" : "In dieser Extension werden Wegegeld (bis 25 km) und Reiseentschädigung (ab 25 km) zu einer Rechnungsposition abgebildet, inklusive Entfernung, Abwesenheit, Übernachtungskosten und Verkehrsmittel.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/dipag-zahlungsziel"
      },
      "name" : "Digitale Patientenrechnung Zahlungsziel",
      "description" : "In dieser Extension wird das Zahlungsziel (Datum) einer Rechnung abgebildet.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/dipag-zahnregion"
      },
      "name" : "Digitale Patientenrechnung Zahn/Region Extension",
      "description" : "In dieser Extension wird die Angabe der Zahn/Region an einer Rechnungsposition der Digitalen Patientenrechnung abgebildet.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/DiPagVerkehrsmittel"
      },
      "name" : "Digitale PatientenrechnungVerkehrsmittel",
      "description" : "Dieses ValueSet bietet eine Auswahl an Verkehrsmitteln, die im Rahmen einer Reisekostenentschädigung ausgewählt werden können.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DiPagBemaPunktsumme"
      },
      "name" : "DiPag BEMA Punktsumme",
      "description" : "In dieser Extension werden die Summe der Punktzahlen und der Punktwert der BEMA-Leistungen einer Rechnung abgebildet.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DiPagPaymentTo"
      },
      "name" : "DiPag PaymentTo Extension (MVP – basiert auf HL7 FM WG Draft)",
      "description" : "Diese Extension basiert auf dem **DRAFT** der HL7 Financial Management Working Group (FM WG) für die Standard-Extension *PaymentTo*.\n\nDie Struktur entspricht dem aktuellen Entwurf der FM WG:\n\n- **paymentType**: Art der Zahlungsverbindung (z. B. IBAN, SWIFT, Kontonummer)\n- **account**: Kontonummer / IBAN\n- **bank**: Name der Bank\n- **branch**: Bankleitzahl / BIC\n- **reference**: Verwendungszweck (typischerweise die Rechnungsnummer)\n- **accountHolderName**: Name des Kontoinhabers (MVP-spezifische Ergänzung, im HL7-Draft noch nicht enthalten)\n- **contact**: Kontaktdaten des Zahlungsempfängers\n- **notes**: Weitere Hinweise zur Zahlung\n\n**Hinweis zur Nutzung:** Die HL7 FM WG wird diese Extension im offiziellen HL7 Extension Package veröffentlichen. Die Verwendung dieser Extension ist daher **ausschließlich im Rahmen dieses MVP** vorgesehen und wird sich mit der Fertigstellung der offiziellen HL7-Standard-Extension ändern.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DocumentReference"
      }],
      "reference" : {
        "reference" : "DocumentReference/ExampleR5DocumentReference"
      },
      "name" : "Example DiPag Document Reference",
      "description" : "Laborbefund vom 28.9.2023",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-dokumentenmetadaten-intern"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/ExampleR5Bundle"
      },
      "name" : "ExampleR5Bundle",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DocumentReference"
      }],
      "reference" : {
        "reference" : "DocumentReference/ExampleR5DocumentReferenceSonstigesDokument"
      },
      "name" : "ExampleR5DocumentReferenceSonstigesDokument",
      "description" : "Molekularpathologiebefund vom 31.12.21",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-dokumentenmetadaten-intern"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/b6c7d8e9-7a8b-9c0d-4e5f-6a7b8c9d0e1f"
      },
      "name" : "GOZ Position: Professionelle Zahnreinigung",
      "description" : "**Hinweis:** Alle Daten in diesem Beispiel sind fiktiv und dienen ausschließlich zu Demonstrations- und Testzwecken.\n\nZahnsteinentfernung und Politur nach GOZ",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/a5b6c7d8-6f7a-8b9c-3d4e-5f6a7b8c9d0e"
      },
      "name" : "GOÄ Position 1: Ärztliche Konsultation",
      "description" : "**Hinweis:** Alle Daten in diesem Beispiel sind fiktiv und dienen ausschließlich zu Demonstrations- und Testzwecken.\n\nEingehende Konsultation mit Befund nach GOÄ",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      }],
      "reference" : {
        "reference" : "Practitioner/c1d2e3f4-2b3c-4d5e-9f0a-1b2c3d4e5f6a"
      },
      "name" : "Hauptbehandler - Dr. Schulz",
      "description" : "**Hinweis:** Alle Daten in diesem Beispiel sind fiktiv und dienen ausschließlich zu Demonstrations- und Testzwecken.\n\nHauptbehandelnder Zahnarzt",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-person"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/InvoicePeriod"
      },
      "name" : "Invoice.period als Backport aus R5",
      "description" : "Backport des Elements Invoice.period[x] aus FHIR R5 zur Angabe des Behandlungsdatums bzw. -zeitraums einer Rechnung.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Invoice"
      }],
      "reference" : {
        "reference" : "Invoice/KfoMehrkosten3Rechnung"
      },
      "name" : "KFO-GKV-Abrechnung Q3/2024 – ARZ ZB GmbH",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnung"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Invoice"
      }],
      "reference" : {
        "reference" : "Invoice/KfoMehrkosten1Rechnung"
      },
      "name" : "KFO-Mehrkosten Rechnung Q3/2024",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnung"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Invoice"
      }],
      "reference" : {
        "reference" : "Invoice/KfoMehrkosten2Rechnung"
      },
      "name" : "KFO-Mehrkosten Rechnung Q3/2025 – Büdingen Dent",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnung"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Invoice"
      }],
      "reference" : {
        "reference" : "Invoice/KfoMehrkosten4Rechnung"
      },
      "name" : "KFO-Mehrkosten Rechnung Q3/2025 – KIG 3-5 Mehrkostenvereinbarung",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnung"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/KfoMehrkosten1-P1"
      },
      "name" : "KfoMehrkosten1 Rechnungsposition 1 – GOZ 6100 Klebebracket (01.07.24)",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/KfoMehrkosten1-P10"
      },
      "name" : "KfoMehrkosten1 Rechnungsposition 10 – BEMA 128a Abzug zu P9 (16.09.24)",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/KfoMehrkosten1-P2"
      },
      "name" : "KfoMehrkosten1 Rechnungsposition 2 – BEMA 126a Abzug zu P1 (01.07.24)",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/KfoMehrkosten1-P3"
      },
      "name" : "KfoMehrkosten1 Rechnungsposition 3 – GOZ 2000 Fissurenversiegelung (01.07.24)",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/KfoMehrkosten1-P4"
      },
      "name" : "KfoMehrkosten1 Rechnungsposition 4 – GOZ 6100 Klebebracket (20.08.24)",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/KfoMehrkosten1-P5"
      },
      "name" : "KfoMehrkosten1 Rechnungsposition 5 – BEMA 126a Abzug zu P4 (20.08.24)",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/KfoMehrkosten1-P6"
      },
      "name" : "KfoMehrkosten1 Rechnungsposition 6 – GOZ 6150 Bogen (20.08.24)",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/KfoMehrkosten1-P7"
      },
      "name" : "KfoMehrkosten1 Rechnungsposition 7 – BEMA 128a Abzug zu P6 (20.08.24)",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/KfoMehrkosten1-P8"
      },
      "name" : "KfoMehrkosten1 Rechnungsposition 8 – GOZ 2000 Fissurenversiegelung (20.08.24)",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/KfoMehrkosten1-P9"
      },
      "name" : "KfoMehrkosten1 Rechnungsposition 9 – GOZ 6150 Bogen (16.09.24)",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/KfoMehrkosten2-P1"
      },
      "name" : "KfoMehrkosten2 Rechnungsposition 1 – GOZ 2110A Minibracket (04.08.25)",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/KfoMehrkosten2-P2"
      },
      "name" : "KfoMehrkosten2 Rechnungsposition 2 – BEMA 126A Abzug zu P1 (04.08.25)",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/KfoMehrkosten2-P3"
      },
      "name" : "KfoMehrkosten2 Rechnungsposition 3 – GOZ 6150A Superelastischer Bogen (04.08.25)",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/KfoMehrkosten2-P4"
      },
      "name" : "KfoMehrkosten2 Rechnungsposition 4 – BEMA 128A Abzug zu P3 (04.08.25)",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/KfoMehrkosten2-P5"
      },
      "name" : "KfoMehrkosten2 Rechnungsposition 5 – GOZ 2000 Fissurenversiegelung (04.08.25)",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/KfoMehrkosten2-P6"
      },
      "name" : "KfoMehrkosten2 Rechnungsposition 6 – GOZ 2110A Minibracket (24.09.25)",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/KfoMehrkosten2-P7"
      },
      "name" : "KfoMehrkosten2 Rechnungsposition 7 – BEMA 126A Abzug zu P6 (24.09.25)",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/KfoMehrkosten2-P8"
      },
      "name" : "KfoMehrkosten2 Rechnungsposition 8 – GOZ 2000 Fissurenversiegelung (24.09.25)",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/KfoMehrkosten3Behandler"
      },
      "name" : "KfoMehrkosten3 Behandler – ARZ ZB GmbH",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-institution"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/KfoMehrkosten3-P1"
      },
      "name" : "KfoMehrkosten3 Rechnungsposition 1 – KONS 106 Beseitigen scharfer Zahnkanten (23.09.24)",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/KfoMehrkosten3-P10"
      },
      "name" : "KfoMehrkosten3 Rechnungsposition 10 – Labor 710-0 Aufsatz (16.09.24)",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/KfoMehrkosten3-P11"
      },
      "name" : "KfoMehrkosten3 Rechnungsposition 11 – Labor 732-0 Labialbogen intermaxillar (16.09.24)",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/KfoMehrkosten3-P12"
      },
      "name" : "KfoMehrkosten3 Rechnungsposition 12 – Labor 734-0 Feder, geschlossen (16.09.24)",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/KfoMehrkosten3-P13"
      },
      "name" : "KfoMehrkosten3 Rechnungsposition 13 – Labor 740-0 Verbindungselemente/inframaxillar (16.09.24)",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/KfoMehrkosten3-P14"
      },
      "name" : "KfoMehrkosten3 Rechnungsposition 14 – Labor 711-0 Abschirmelement (16.09.24)",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/KfoMehrkosten3-P15"
      },
      "name" : "KfoMehrkosten3 Rechnungsposition 15 – Labor 750-0 Einarmiges H-/A-Element (16.09.24)",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/KfoMehrkosten3-P2"
      },
      "name" : "KfoMehrkosten3 Rechnungsposition 2 – BEMA 119d Umformung OK besonders schwierig (29.07.24)",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/KfoMehrkosten3-P3"
      },
      "name" : "KfoMehrkosten3 Rechnungsposition 3 – BEMA 119d Umformung UK besonders schwierig (29.07.24)",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/KfoMehrkosten3-P4"
      },
      "name" : "KfoMehrkosten3 Rechnungsposition 4 – BEMA 120d Einstellung B/B besonders schwierig (29.07.24)",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/KfoMehrkosten3-P5"
      },
      "name" : "KfoMehrkosten3 Rechnungsposition 5 – Labor MAT Abdruckpauschale (29.07.24)",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/KfoMehrkosten3-P6"
      },
      "name" : "KfoMehrkosten3 Rechnungsposition 6 – Labor 001-0 Modell (16.09.24)",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/KfoMehrkosten3-P7"
      },
      "name" : "KfoMehrkosten3 Rechnungsposition 7 – Labor 011-1 Modellpaar trimmen (16.09.24)",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/KfoMehrkosten3-P8"
      },
      "name" : "KfoMehrkosten3 Rechnungsposition 8 – Labor 020-2 Basis für Konstruktionsbiss (16.09.24)",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/KfoMehrkosten3-P9"
      },
      "name" : "KfoMehrkosten3 Rechnungsposition 9 – Labor 702-0 Basis bi/maxillares Gerät (16.09.24)",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/KfoMehrkosten4-P1"
      },
      "name" : "KfoMehrkosten4 Rechnungsposition 1 – GOZ 6100 Klebebracket 3,70-fach (23.07.25)",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/KfoMehrkosten4-P2"
      },
      "name" : "KfoMehrkosten4 Rechnungsposition 2 – GOZ 6150 Ungeteilter Bogen 3,50-fach (23.07.25)",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/c7d8e9f0-8b9c-0d1e-5f6a-7b8c9d0e1f2a"
      },
      "name" : "Laborleistung: Zahnersatz",
      "description" : "**Hinweis:** Alle Daten in diesem Beispiel sind fiktiv und dienen ausschließlich zu Demonstrations- und Testzwecken.\n\nAnfertigung einer Teilprothese durch Fremdlabor",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      }],
      "reference" : {
        "reference" : "Practitioner/2b3c4d5e-6f7a-8b9c-0d1e-2f3a4b5c6d7e"
      },
      "name" : "Musterrechnung - Dr. A. Arzt",
      "description" : "Behandelnder Arzt aus der Musterrechnung",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-person"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/1a2b3c4d-5e6f-7a8b-9c0d-1e2f3a4b5c6d"
      },
      "name" : "Musterrechnung - Patient B. Patient",
      "description" : "Patient aus der Musterrechnung Arztbehandlung",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-patient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/3c4d5e6f-7a8b-9c0d-1e2f-3a4b5c6d7e8f"
      },
      "name" : "Musterrechnung - Praxis Dr. A. Arzt",
      "description" : "Arztpraxis aus der Musterrechnung",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-institution"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Invoice"
      }],
      "reference" : {
        "reference" : "Invoice/a0b1c2d3-e4f5-6a7b-8c9d-0e1f2a3b4c5d"
      },
      "name" : "Musterrechnung Arztbehandlung",
      "description" : "Rechnung Nr. 1425 vom 24.10.2018",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnung"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/MusterrechnungBundle"
      },
      "name" : "Musterrechnung Bundle",
      "description" : "Bundle mit allen Ressourcen der Musterrechnung Arztbehandlung",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsbundle"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/4d5e6f7a-8b9c-0d1e-2f3a-4b5c6d7e8f9a"
      },
      "name" : "Musterrechnung Position 1 - GOÄ Nr. 1 (04.10.18)",
      "description" : "Beratung, auch telefonisch",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/5e6f7a8b-9c0d-1e2f-3a4b-5c6d7e8f9a0b"
      },
      "name" : "Musterrechnung Position 2 - GOÄ Nr. 5 (04.10.18)",
      "description" : "Symptombezogene Untersuchung",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/6f7a8b9c-0d1e-2f3a-4b5c-6d7e8f9a0b1c"
      },
      "name" : "Musterrechnung Position 3 - GOÄ Nr. 70 (04.10.18)",
      "description" : "Arbeitsunfähigkeitsbescheinigung",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/7a8b9c0d-1e2f-3a4b-5c6d-7e8f9a0b1c2d"
      },
      "name" : "Musterrechnung Position 4 - GOÄ Nr. 1 (19.10.18)",
      "description" : "Beratung, auch telefonisch",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/8b9c0d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e"
      },
      "name" : "Musterrechnung Position 5 - GOÄ Nr. 5 (19.10.18)",
      "description" : "Symptombezogene Untersuchung",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/9c0d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f"
      },
      "name" : "Musterrechnung Position 6 - GOÄ Nr. 3501 (19.10.18)",
      "description" : "Blutsenkung",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/0d1e2f3a-4b5c-6d7e-8f9a-0b1c2d3e4f5a"
      },
      "name" : "Musterrechnung Position 7 - GOÄ Nr. 3597.H1 (19.10.18)",
      "description" : "Laktatdehydrogenase (LDH)",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/PatientenBundle"
      },
      "name" : "PatientenBundle",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/PatientVater"
      },
      "name" : "PatientVater",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      }],
      "reference" : {
        "reference" : "Procedure/b2c3d4e5-3a4b-5c6d-0e1f-2a3b4c5d6e7f"
      },
      "name" : "Prozedur - Zahnimplantat",
      "description" : "**Hinweis:** Alle Daten in diesem Beispiel sind fiktiv und dienen ausschließlich zu Demonstrations- und Testzwecken.\n\nZahnimplantat-Einsetzung als Prozedur",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsprozedur"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/d8e9f0a1-9c0d-1e2f-6a7b-8c9d0e1f2a3b"
      },
      "name" : "Sachkosten: Dentalmaterial",
      "description" : "**Hinweis:** Alle Daten in diesem Beispiel sind fiktiv und dienen ausschließlich zu Demonstrations- und Testzwecken.\n\nVerbrauchsmaterial für Behandlung",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/dipag-auditEvent-agent-who-display"
      },
      "name" : "Suchparameter AuditEvent.agent.who.display",
      "description" : "Ein SearchParameter auf der Ressource AuditEvent, der die Suche nach dem Text in agent.who.display ermöglicht.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/dipag-markierung"
      },
      "name" : "Suchparameter DocumentReference dipag-markierung",
      "description" : "Ein SearchParameter auf der Ressource DocumentReference, der die Suche nach einer manuellen Markierung ermöglicht.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/dipag-docRef-author-display"
      },
      "name" : "Suchparameter DocumentReference.author.display",
      "description" : "Ein SearchParameter auf der Ressource DocumentReference, der die Suche nach dem Text in author.display ermöglicht.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/dipag-docRef-subject-display"
      },
      "name" : "Suchparameter DocumentReference.subject.display",
      "description" : "Ein SearchParameter auf der Ressource DocumentReference, der die Suche nach dem Text in subject.display ermöglicht.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItem"
      }],
      "reference" : {
        "reference" : "ChargeItem/e9f0a1b2-0d1e-2f3a-7b8c-9d0e1f2a3b4c"
      },
      "name" : "Wegegeld/Reiseentschädigung: Hausbesuch",
      "description" : "**Hinweis:** Alle Daten in diesem Beispiel sind fiktiv und dienen ausschließlich zu Demonstrations- und Testzwecken.\n\nReiseentschädigung für Hausbesuch über 25 km",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/e3f4a5b6-4d5e-6f7a-1b2c-3d4e5f6a7b8c"
      },
      "name" : "Zahnarztpraxis Dr. Schulz",
      "description" : "**Hinweis:** Alle Daten in diesem Beispiel sind fiktiv und dienen ausschließlich zu Demonstrations- und Testzwecken.\n\nDie Praxis, die die Rechnung ausstellt",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-institution"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/f4a5b6c7-5e6f-7a8b-2c3d-4e5f6a7b8c9d"
      },
      "name" : "Zahnlabor Müller",
      "description" : "**Hinweis:** Alle Daten in diesem Beispiel sind fiktiv und dienen ausschließlich zu Demonstrations- und Testzwecken.\n\nLabor für Zahnersatz und Prothesen",
      "exampleCanonical" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-institution"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DiPagZusatzinformationZurAbrechnungsart"
      },
      "name" : "Zusatzinformation zur Abrechnungsart",
      "description" : "Die Abrechnung nach §13 kann ergänzend zu den grundsätzlichen Ausrichtungen der Abrechnung aufgeführt werden. Diese Extension erlaubt es, die Ausrichtung der Rechnung entsprechend zu flaggen.",
      "exampleBoolean" : false
    }],
    "page" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
        "valueUrl" : "toc.html"
      }],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "index.html"
        }],
        "nameUrl" : "index.html",
        "title" : "Einfuehrung",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "release-notes.html"
        }],
        "nameUrl" : "release-notes.html",
        "title" : "Release Notes",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "zweckbestimmung.html"
        }],
        "nameUrl" : "zweckbestimmung.html",
        "title" : "Zweckbestimmung",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "hinweis-zu-versionen.html"
        }],
        "nameUrl" : "hinweis-zu-versionen.html",
        "title" : "Hinweis zu Artefakt-Versionen",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "use-cases.html"
        }],
        "nameUrl" : "use-cases.html",
        "title" : "Use Cases",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "akteure-und-interaktionen.html"
        }],
        "nameUrl" : "akteure-und-interaktionen.html",
        "title" : "Akteure und Interaktionen",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "informationsmodell.html"
        }],
        "nameUrl" : "informationsmodell.html",
        "title" : "Informationsmodell",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "begriffsdefinitionen.html"
        }],
        "nameUrl" : "begriffsdefinitionen.html",
        "title" : "Begriffsdefinitionen",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "szenarien.html"
        }],
        "nameUrl" : "szenarien.html",
        "title" : "Szenarien",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "R0-rechnungsempfaenger-ermitteln.html"
        }],
        "nameUrl" : "R0-rechnungsempfaenger-ermitteln.html",
        "title" : "R0: Abfrage des Rechnungsempfaengers und dessen Einwilligung zum Rechnungsversand",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "R1-rechnung-versenden.html"
        }],
        "nameUrl" : "R1-rechnung-versenden.html",
        "title" : "R1: Rechnung mit Dokumenten validieren und versenden",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "R2-rechnung-einreichen-bulk.html"
        }],
        "nameUrl" : "R2-rechnung-einreichen-bulk.html",
        "title" : "R2: Rechnung validieren/einreichen (Bulk)",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "R3-pdf-abruf-rechnungsersteller.html"
        }],
        "nameUrl" : "R3-pdf-abruf-rechnungsersteller.html",
        "title" : "R3: Abfrage von angereicherten PDF/A per Token (Rechnungsersteller)",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "R4-pdf-abruf-rechnungsersteller-bulk.html"
        }],
        "nameUrl" : "R4-pdf-abruf-rechnungsersteller-bulk.html",
        "title" : "R4: Abfrage von angereicherten PDF/A per Token (Rechnungsersteller, Bulk)",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "R5-rechnungsabruf-rechnungsempfaenger.html"
        }],
        "nameUrl" : "R5-rechnungsabruf-rechnungsempfaenger.html",
        "title" : "R5: Abruf von Rechnungen (Rechnungsempfaenger)",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "R6-abfrage-token-rechnungsempfaenger.html"
        }],
        "nameUrl" : "R6-abfrage-token-rechnungsempfaenger.html",
        "title" : "R6: Abfrage von Daten zu Rechnungen und Dokumenten per Token (Rechnungsempfaenger)",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "R7-status-aendern.html"
        }],
        "nameUrl" : "R7-status-aendern.html",
        "title" : "R7: Manuelles Aendern des Bearbeitungsstatus von Rechnungen",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "R8-markieren.html"
        }],
        "nameUrl" : "R8-markieren.html",
        "title" : "R8: Manuelles Markieren von Rechnungen und Dokumenten",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "R9-loeschen.html"
        }],
        "nameUrl" : "R9-loeschen.html",
        "title" : "R9: Loeschen eines Rechnungsvorganges",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "R10-nutzungsprotokoll.html"
        }],
        "nameUrl" : "R10-nutzungsprotokoll.html",
        "title" : "R10: Nutzerprotokoll einsehen",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "R11-abfrage-token-kostentraeger.html"
        }],
        "nameUrl" : "R11-abfrage-token-kostentraeger.html",
        "title" : "R11: Abfrage von Daten zu Rechnungen und Dokumenten per Token (Kostentraeger)",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "rechnungsinhalt.html"
        }],
        "nameUrl" : "rechnungsinhalt.html",
        "title" : "Rechnungsinhalt",
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
      "code" : "path-resource",
      "value" : "input/capabilities"
    },
    {
      "code" : "path-resource",
      "value" : "input/examples"
    },
    {
      "code" : "path-resource",
      "value" : "input/extensions"
    },
    {
      "code" : "path-resource",
      "value" : "input/models"
    },
    {
      "code" : "path-resource",
      "value" : "input/operations"
    },
    {
      "code" : "path-resource",
      "value" : "input/profiles"
    },
    {
      "code" : "path-resource",
      "value" : "input/resources"
    },
    {
      "code" : "path-resource",
      "value" : "input/vocabulary"
    },
    {
      "code" : "path-resource",
      "value" : "input/maps"
    },
    {
      "code" : "path-resource",
      "value" : "input/testing"
    },
    {
      "code" : "path-resource",
      "value" : "input/history"
    },
    {
      "code" : "path-resource",
      "value" : "fsh-generated/resources"
    },
    {
      "code" : "path-pages",
      "value" : "template/config"
    },
    {
      "code" : "path-pages",
      "value" : "input/images"
    },
    {
      "code" : "path-tx-cache",
      "value" : "input-cache/txcache"
    }]
  }
}

```
