# Beispiel Bundle - Vollständige Rechnung - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Beispiel Bundle - Vollständige Rechnung**

## Beispiel Bundle: Beispiel Bundle - Vollständige Rechnung



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "BundleExample",
  "meta" : {
    "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsbundle"]
  },
  "type" : "collection",
  "timestamp" : "2024-03-15T14:30:00+01:00",
  "entry" : [{
    "fullUrl" : "urn:uuid:c3d4e5f6-4b5c-6d7e-1f2a-3b4c5d6e7f8a",
    "resource" : {
      "resourceType" : "Invoice",
      "id" : "c3d4e5f6-4b5c-6d7e-1f2a-3b4c5d6e7f8a",
      "meta" : {
        "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnung"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Invoice_c3d4e5f6-4b5c-6d7e-1f2a-3b4c5d6e7f8a\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Invoice c3d4e5f6-4b5c-6d7e-1f2a-3b4c5d6e7f8a</b></p><a name=\"c3d4e5f6-4b5c-6d7e-1f2a-3b4c5d6e7f8a\"> </a><a name=\"hcc3d4e5f6-4b5c-6d7e-1f2a-3b4c5d6e7f8a\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-dipag-rechnung.html\">Digitale Patientenrechnung Rechnung</a></p></div><p><b>Digitale Patientenrechnung Extension Behandlungsart</b>: <a href=\"http://terminology.hl7.org/7.2.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB\">ActCode: AMB</a> (ambulatory)</p><p><b>Digitale Patientenrechnung Extension Fachrichtung</b>: <a href=\"https://simplifier.net/resolve?scope=de.ihe-d.terminology@3.0.1&amp;canonical=http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen#AerztlicheFachrichtungen-MZKH\">Aerztliche Fachrichtungen: MZKH</a> (Zahnmedizin)</p><p><b>Invoice.period als Backport aus R5</b>: 2024-01-15 --&gt; 2024-03-10</p><blockquote><p><b>Abrechnungsrelevanz von Diagnosen und Prozeduren</b></p><ul><li>Referenz: <a href=\"Condition-f0a1b2c3-1e2f-3a4b-8c9d-0e1f2a3b4c5d.html\">Condition Zahnkaries, nicht näher bezeichnet</a></li><li>Use: <a href=\"CodeSystem-dipag-abrechnungs-diagnose-use-cs.html#dipag-abrechnungs-diagnose-use-cs-main-diagnosis\">Digitale Patientenrechnung Abrechnungsdiagnose Use CodeSystem: main-diagnosis</a> (Hauptdiagnose)</li></ul></blockquote><blockquote><p><b>Abrechnungsrelevanz von Diagnosen und Prozeduren</b></p><ul><li>Referenz: <a href=\"Condition-a1b2c3d4-2f3a-4b5c-9d0e-1f2a3b4c5d6e.html\">Condition Chronische Parodontitis</a></li><li>Referenz: <a href=\"Procedure-b2c3d4e5-3a4b-5c6d-0e1f-2a3b4c5d6e7f.html\">Procedure Implantation alloplastisches Material, Zahn</a></li></ul></blockquote><p><b>Abrechnungsrelevanz von Diagnosen und Prozeduren als Freitext</b>: Behandlung von Karies und Parodontitis mit Implantation</p><p><b>Digitale Patientenrechnung BasedOn Extension</b>: Antragsreferenz/HKP-2024-001-123456</p><p><b>identifier</b>: Rechnungsnummer/RG-2024-001234</p><p><b>status</b>: issued</p><p><b>type</b>: <span title=\"Codes:{https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-abrechnungsart-cs GOÄ}, {https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnungsart-cs ABSCHLUSS}\">Gebührenordnung für Ärzte</span></p><p><b>subject</b>: <a href=\"Patient-8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c.html\">Max Mustermann(official) Male, DoB: 1980-05-15 ( Krankenversichertennummer)</a></p><p><b>recipient</b>: <a href=\"Patient-8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c.html\">Max Mustermann</a></p><p><b>date</b>: 2024-03-15</p><blockquote><p><b>participant</b></p><p><b>role</b>: <span title=\"Codes:{https://gematik.de/fhir/dipag/CodeSystem/dipag-participant-role-cs leistungserbringer}\">Leistungserbringer</span></p><p><b>actor</b>: <a href=\"Practitioner-d2e3f4a5-3c4d-5e6f-0a1b-2c3d4e5f6a7b.html\">Practitioner Dr. Anna Mueller(official)</a></p></blockquote><blockquote><p><b>participant</b></p><p><b>role</b>: <span title=\"Codes:{https://gematik.de/fhir/dipag/CodeSystem/dipag-participant-role-cs forderungsinhaber}\">Forderungsinhaber</span></p><p><b>actor</b>: <a href=\"Organization-e3f4a5b6-4d5e-6f7a-1b2c-3d4e5f6a7b8c.html\">Organization Zahnarztpraxis Dr. Schulz</a></p></blockquote><p><b>issuer</b>: <a href=\"Organization-e3f4a5b6-4d5e-6f7a-1b2c-3d4e5f6a7b8c.html\">Organization Zahnarztpraxis Dr. Schulz</a></p><blockquote><p><b>lineItem</b></p><p><b>sequence</b>: 1</p><p><b>chargeItem</b>: <a href=\"ChargeItem-a5b6c7d8-6f7a-8b9c-3d4e-5f6a7b8c9d0e.html\">ChargeItem Beratung</a></p><blockquote><p><b>priceComponent</b></p><p><b>type</b>: base price</p><h3>Amounts</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Value</b></td><td><b>Currency</b></td></tr><tr><td style=\"display: none\">*</td><td>29.35</td><td>Euro</td></tr></table></blockquote><blockquote><p><b>priceComponent</b></p><p><b>type</b>: tax</p><h3>Amounts</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Value</b></td><td><b>Currency</b></td></tr><tr><td style=\"display: none\">*</td><td>4.69</td><td>Euro</td></tr></table></blockquote></blockquote><blockquote><p><b>lineItem</b></p><p><b>sequence</b>: 3</p><p><b>chargeItem</b>: <a href=\"ChargeItem-b6c7d8e9-7a8b-9c0d-4e5f-6a7b8c9d0e1f.html\">ChargeItem Professionelle Zahnreinigung</a></p><blockquote><p><b>priceComponent</b></p><p><b>type</b>: base price</p><h3>Amounts</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Value</b></td><td><b>Currency</b></td></tr><tr><td style=\"display: none\">*</td><td>142.8</td><td>Euro</td></tr></table></blockquote><blockquote><p><b>priceComponent</b></p><p><b>type</b>: tax</p><h3>Amounts</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Value</b></td><td><b>Currency</b></td></tr><tr><td style=\"display: none\">*</td><td>22.8</td><td>Euro</td></tr></table></blockquote></blockquote><blockquote><p><b>lineItem</b></p><p><b>sequence</b>: 4</p><p><b>chargeItem</b>: <a href=\"ChargeItem-c7d8e9f0-8b9c-0d1e-5f6a-7b8c9d0e1f2a.html\">ChargeItem </a></p><blockquote><p><b>priceComponent</b></p><p><b>type</b>: base price</p><h3>Amounts</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Value</b></td><td><b>Currency</b></td></tr><tr><td style=\"display: none\">*</td><td>952</td><td>Euro</td></tr></table></blockquote><blockquote><p><b>priceComponent</b></p><p><b>type</b>: tax</p><h3>Amounts</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Value</b></td><td><b>Currency</b></td></tr><tr><td style=\"display: none\">*</td><td>152</td><td>Euro</td></tr></table></blockquote></blockquote><blockquote><p><b>lineItem</b></p><p><b>sequence</b>: 5</p><p><b>chargeItem</b>: <a href=\"ChargeItem-d8e9f0a1-9c0d-1e2f-6a7b-8c9d0e1f2a3b.html\">ChargeItem </a></p><blockquote><p><b>priceComponent</b></p><p><b>type</b>: base price</p><h3>Amounts</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Value</b></td><td><b>Currency</b></td></tr><tr><td style=\"display: none\">*</td><td>53.55</td><td>Euro</td></tr></table></blockquote><blockquote><p><b>priceComponent</b></p><p><b>type</b>: tax</p><h3>Amounts</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Value</b></td><td><b>Currency</b></td></tr><tr><td style=\"display: none\">*</td><td>8.55</td><td>Euro</td></tr></table></blockquote></blockquote><blockquote><p><b>lineItem</b></p><p><b>sequence</b>: 6</p><p><b>chargeItem</b>: <a href=\"ChargeItem-e9f0a1b2-0d1e-2f3a-7b8c-9d0e1f2a3b4c.html\">ChargeItem </a></p><blockquote><p><b>priceComponent</b></p><p><b>type</b>: base price</p><h3>Amounts</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Value</b></td><td><b>Currency</b></td></tr><tr><td style=\"display: none\">*</td><td>238</td><td>Euro</td></tr></table></blockquote><blockquote><p><b>priceComponent</b></p><p><b>type</b>: tax</p><h3>Amounts</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Value</b></td><td><b>Currency</b></td></tr><tr><td style=\"display: none\">*</td><td>45.22</td><td>Euro</td></tr></table></blockquote></blockquote><blockquote><p><b>totalPriceComponent</b></p><p><b>type</b>: base price</p><p><b>code</b>: <span title=\"Codes:{https://gematik.de/fhir/dipag/CodeSystem/dipag-total-price-component-type-cs SummeRechnungspositionen}\">Summe aller Rechnungspositionen</span></p><h3>Amounts</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Value</b></td><td><b>Currency</b></td></tr><tr><td style=\"display: none\">*</td><td>1415.7</td><td>Euro</td></tr></table></blockquote><blockquote><p><b>totalPriceComponent</b></p><p><b>type</b>: base price</p><p><b>code</b>: <span title=\"Codes:{https://gematik.de/fhir/dipag/CodeSystem/dipag-total-price-component-type-cs Fremdlaborleistungen}\">Fremdlaborleistungen</span></p><h3>Amounts</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Value</b></td><td><b>Currency</b></td></tr><tr><td style=\"display: none\">*</td><td>800</td><td>Euro</td></tr></table></blockquote><blockquote><p><b>totalPriceComponent</b></p><p><b>type</b>: deduction</p><p><b>code</b>: <span title=\"Codes:{https://gematik.de/fhir/dipag/CodeSystem/dipag-total-price-component-type-cs FestzuschussKasse}\">Festzuschuss Kasse</span></p><h3>Amounts</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Value</b></td><td><b>Currency</b></td></tr><tr><td style=\"display: none\">*</td><td>-250</td><td>Euro</td></tr></table></blockquote><h3>TotalNets</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Value</b></td><td><b>Currency</b></td></tr><tr><td style=\"display: none\">*</td><td>1415.7</td><td>Euro</td></tr></table><h3>TotalGrosses</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Value</b></td><td><b>Currency</b></td></tr><tr><td style=\"display: none\">*</td><td>1648.96</td><td>Euro</td></tr></table><p><b>paymentTerms</b>: </p><div><p>Bitte überweisen Sie den Rechnungsbetrag bis zum 30.04.2024 auf folgendes Konto.</p>\n</div><p><b>note</b>: </p><blockquote><div><p>Gemäß §1 Abs. 2 GOÄ werden diese Leistungen nach dieser Gebührenordnung für Ärzte berechnet. Bitte überweisen Sie den Betrag innerhalb von 14 Tagen.</p>\n</div></blockquote></div>"
      },
      "extension" : [{
        "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-behandlungsart",
        "valueCoding" : {
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
          "code" : "AMB",
          "display" : "ambulatory"
        }
      },
      {
        "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-fachrichtung",
        "valueCoding" : {
          "system" : "http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen",
          "code" : "MZKH",
          "display" : "Zahnmedizin"
        }
      },
      {
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Invoice.period[x]",
        "valuePeriod" : {
          "start" : "2024-01-15",
          "end" : "2024-03-10"
        }
      },
      {
        "extension" : [{
          "url" : "Referenz",
          "valueReference" : {
            "reference" : "Condition/f0a1b2c3-1e2f-3a4b-8c9d-0e1f2a3b4c5d"
          }
        },
        {
          "url" : "Use",
          "valueCoding" : {
            "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-abrechnungs-diagnose-use-cs",
            "code" : "main-diagnosis",
            "display" : "Hauptdiagnose"
          }
        }],
        "url" : "https://gematik.de/fhir/dipag/StructureDefinition/DiPagAbrechnungsDiagnoseProzedur"
      },
      {
        "extension" : [{
          "url" : "Referenz",
          "valueReference" : {
            "reference" : "Condition/a1b2c3d4-2f3a-4b5c-9d0e-1f2a3b4c5d6e"
          }
        },
        {
          "url" : "Referenz",
          "valueReference" : {
            "reference" : "Procedure/b2c3d4e5-3a4b-5c6d-0e1f-2a3b4c5d6e7f"
          }
        }],
        "url" : "https://gematik.de/fhir/dipag/StructureDefinition/DiPagAbrechnungsDiagnoseProzedur"
      },
      {
        "url" : "https://gematik.de/fhir/dipag/StructureDefinition/DiPagAbrechnungsDiagnoseProzedurFreitext",
        "valueString" : "Behandlung von Karies und Parodontitis mit Implantation"
      },
      {
        "url" : "https://gematik.de/fhir/dipag/StructureDefinition/DiPagInvoiceBasedOn",
        "valueIdentifier" : {
          "type" : {
            "coding" : [{
              "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-identifier-type-cs",
              "code" : "antragsreferenz"
            }]
          },
          "system" : "https://example.org/fhir/sid/kostenplan",
          "value" : "HKP-2024-001-123456"
        }
      }],
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-identifier-type-cs",
            "code" : "invoice"
          }]
        },
        "system" : "https://zahnarzt-schulz.de/fhir/sid/rechnungsnummer",
        "value" : "RG-2024-001234"
      }],
      "status" : "issued",
      "type" : {
        "coding" : [{
          "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-abrechnungsart-cs",
          "code" : "GOÄ",
          "display" : "Gebührenordnung für Ärzte"
        },
        {
          "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnungsart-cs",
          "code" : "ABSCHLUSS",
          "display" : "Abschlussrechnung"
        }]
      },
      "subject" : {
        "reference" : "Patient/8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c"
      },
      "recipient" : {
        "reference" : "Patient/8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c",
        "identifier" : {
          "type" : {
            "coding" : [{
              "system" : "http://fhir.de/CodeSystem/identifier-type-de-basis",
              "code" : "KVZ10"
            }]
          },
          "system" : "http://fhir.de/sid/gkv/kvid-10",
          "value" : "K123456789"
        },
        "display" : "Max Mustermann"
      },
      "date" : "2024-03-15",
      "participant" : [{
        "role" : {
          "coding" : [{
            "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-participant-role-cs",
            "code" : "leistungserbringer"
          }]
        },
        "actor" : {
          "reference" : "Practitioner/d2e3f4a5-3c4d-5e6f-0a1b-2c3d4e5f6a7b"
        }
      },
      {
        "role" : {
          "coding" : [{
            "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-participant-role-cs",
            "code" : "forderungsinhaber"
          }]
        },
        "actor" : {
          "reference" : "Organization/e3f4a5b6-4d5e-6f7a-1b2c-3d4e5f6a7b8c"
        }
      }],
      "issuer" : {
        "reference" : "Organization/e3f4a5b6-4d5e-6f7a-1b2c-3d4e5f6a7b8c"
      },
      "lineItem" : [{
        "sequence" : 1,
        "chargeItemReference" : {
          "reference" : "ChargeItem/a5b6c7d8-6f7a-8b9c-3d4e-5f6a7b8c9d0e"
        },
        "priceComponent" : [{
          "type" : "base",
          "amount" : {
            "value" : 29.35,
            "currency" : "EUR"
          }
        },
        {
          "type" : "tax",
          "amount" : {
            "value" : 4.69,
            "currency" : "EUR"
          }
        }]
      },
      {
        "sequence" : 3,
        "chargeItemReference" : {
          "reference" : "ChargeItem/b6c7d8e9-7a8b-9c0d-4e5f-6a7b8c9d0e1f"
        },
        "priceComponent" : [{
          "type" : "base",
          "amount" : {
            "value" : 142.8,
            "currency" : "EUR"
          }
        },
        {
          "type" : "tax",
          "amount" : {
            "value" : 22.8,
            "currency" : "EUR"
          }
        }]
      },
      {
        "sequence" : 4,
        "chargeItemReference" : {
          "reference" : "ChargeItem/c7d8e9f0-8b9c-0d1e-5f6a-7b8c9d0e1f2a"
        },
        "priceComponent" : [{
          "type" : "base",
          "amount" : {
            "value" : 952,
            "currency" : "EUR"
          }
        },
        {
          "type" : "tax",
          "amount" : {
            "value" : 152,
            "currency" : "EUR"
          }
        }]
      },
      {
        "sequence" : 5,
        "chargeItemReference" : {
          "reference" : "ChargeItem/d8e9f0a1-9c0d-1e2f-6a7b-8c9d0e1f2a3b"
        },
        "priceComponent" : [{
          "type" : "base",
          "amount" : {
            "value" : 53.55,
            "currency" : "EUR"
          }
        },
        {
          "type" : "tax",
          "amount" : {
            "value" : 8.55,
            "currency" : "EUR"
          }
        }]
      },
      {
        "sequence" : 6,
        "chargeItemReference" : {
          "reference" : "ChargeItem/e9f0a1b2-0d1e-2f3a-7b8c-9d0e1f2a3b4c"
        },
        "priceComponent" : [{
          "type" : "base",
          "amount" : {
            "value" : 238,
            "currency" : "EUR"
          }
        },
        {
          "type" : "tax",
          "amount" : {
            "value" : 45.22,
            "currency" : "EUR"
          }
        }]
      }],
      "totalPriceComponent" : [{
        "type" : "base",
        "code" : {
          "coding" : [{
            "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-total-price-component-type-cs",
            "code" : "SummeRechnungspositionen",
            "display" : "Summe aller Rechnungspositionen"
          }]
        },
        "amount" : {
          "value" : 1415.7,
          "currency" : "EUR"
        }
      },
      {
        "type" : "base",
        "code" : {
          "coding" : [{
            "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-total-price-component-type-cs",
            "code" : "Fremdlaborleistungen",
            "display" : "Fremdlaborleistungen"
          }]
        },
        "amount" : {
          "value" : 800,
          "currency" : "EUR"
        }
      },
      {
        "type" : "deduction",
        "code" : {
          "coding" : [{
            "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-total-price-component-type-cs",
            "code" : "FestzuschussKasse",
            "display" : "Festzuschuss Kasse"
          }]
        },
        "amount" : {
          "value" : -250,
          "currency" : "EUR"
        }
      }],
      "totalNet" : {
        "value" : 1415.7,
        "currency" : "EUR"
      },
      "totalGross" : {
        "value" : 1648.96,
        "currency" : "EUR"
      },
      "paymentTerms" : "Bitte überweisen Sie den Rechnungsbetrag bis zum 30.04.2024 auf folgendes Konto.",
      "_paymentTerms" : {
        "extension" : [{
          "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-zahlungsziel",
          "valueDate" : "2024-04-30"
        },
        {
          "extension" : [{
            "url" : "paymentType",
            "valueCodeableConcept" : {
              "text" : "IBAN"
            }
          },
          {
            "url" : "account",
            "valueString" : "DE89370400440532013000"
          },
          {
            "url" : "bank",
            "valueString" : "Commerzbank AG"
          },
          {
            "url" : "branch",
            "valueString" : "COBADEFFXXX"
          },
          {
            "url" : "accountHolderName",
            "valueString" : "Zahnarztpraxis Dr. Schulz"
          },
          {
            "url" : "reference",
            "valueString" : "RG-2024-001234"
          }],
          "url" : "https://gematik.de/fhir/dipag/StructureDefinition/DiPagPaymentTo"
        }]
      },
      "note" : [{
        "text" : "Gemäß §1 Abs. 2 GOÄ werden diese Leistungen nach dieser Gebührenordnung für Ärzte berechnet. Bitte überweisen Sie den Betrag innerhalb von 14 Tagen."
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c",
      "meta" : {
        "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-patient"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Patient 8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c</b></p><a name=\"8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c\"> </a><a name=\"hc8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-dipag-patient.html\">DiPagPatient</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Max Mustermann(official) Male, DoB: 1980-05-15 ( Krankenversichertennummer)</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Ways to contact the Patient\">Contact Detail</td><td colspan=\"3\"><ul><li>Musterstraße 42 Berlin 10115 DE (home)</li><li>Postfach 123456 Berlin 10115 DE </li></ul></td></tr></table></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://fhir.de/CodeSystem/identifier-type-de-basis",
            "code" : "KVZ10"
          }]
        },
        "system" : "http://fhir.de/sid/gkv/kvid-10",
        "value" : "K123456789",
        "assigner" : {
          "identifier" : {
            "type" : {
              "coding" : [{
                "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
                "code" : "XX"
              }]
            },
            "system" : "http://fhir.de/sid/arge-ik/iknr",
            "value" : "109500969"
          }
        }
      }],
      "name" : [{
        "use" : "official",
        "text" : "Max Mustermann",
        "family" : "Mustermann",
        "given" : ["Max"]
      }],
      "gender" : "male",
      "birthDate" : "1980-05-15",
      "address" : [{
        "use" : "home",
        "type" : "both",
        "line" : ["Musterstraße 42"],
        "_line" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
            "valueString" : "Musterstraße"
          },
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
            "valueString" : "42"
          }]
        }],
        "city" : "Berlin",
        "postalCode" : "10115",
        "country" : "DE"
      },
      {
        "type" : "postal",
        "line" : ["Postfach 123456"],
        "_line" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-postBox",
            "valueString" : "123456"
          }]
        }],
        "city" : "Berlin",
        "postalCode" : "10115",
        "country" : "DE"
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:c1d2e3f4-2b3c-4d5e-9f0a-1b2c3d4e5f6a",
    "resource" : {
      "resourceType" : "Practitioner",
      "id" : "c1d2e3f4-2b3c-4d5e-9f0a-1b2c3d4e5f6a",
      "meta" : {
        "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-person"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_c1d2e3f4-2b3c-4d5e-9f0a-1b2c3d4e5f6a\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Practitioner c1d2e3f4-2b3c-4d5e-9f0a-1b2c3d4e5f6a</b></p><a name=\"c1d2e3f4-2b3c-4d5e-9f0a-1b2c3d4e5f6a\"> </a><a name=\"hcc1d2e3f4-2b3c-4d5e-9f0a-1b2c3d4e5f6a\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-dipag-person.html\">Digitale Patientenrechnung Person</a></p></div><p><b>identifier</b>: Provider number/1-HBA-Testkarte-883110000123465</p><p><b>name</b>: Dr. Hans Schulz(Official)</p><p><b>telecom</b>: <a href=\"tel:+4930123456\">+49 30 123456</a></p><p><b>address</b>: Praxisstraße 10 Berlin 10115 DE </p><h3>Qualifications</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Code</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen MZKH}\">Zahnmedizin</span></td></tr></table></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "PRN"
          }]
        },
        "system" : "https://gematik.de/fhir/sid/telematik-id",
        "value" : "1-HBA-Testkarte-883110000123465"
      }],
      "name" : [{
        "use" : "official",
        "text" : "Dr. Hans Schulz",
        "family" : "Schulz",
        "given" : ["Hans"],
        "prefix" : ["Dr."],
        "_prefix" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier",
            "valueCode" : "AC"
          }]
        }]
      }],
      "telecom" : [{
        "system" : "phone",
        "value" : "+49 30 123456"
      }],
      "address" : [{
        "type" : "both",
        "line" : ["Praxisstraße 10"],
        "_line" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
            "valueString" : "Praxisstraße"
          },
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
            "valueString" : "10"
          }]
        }],
        "city" : "Berlin",
        "postalCode" : "10115",
        "country" : "DE"
      }],
      "qualification" : [{
        "code" : {
          "coding" : [{
            "system" : "http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen",
            "code" : "MZKH",
            "display" : "Zahnmedizin"
          }]
        }
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:d2e3f4a5-3c4d-5e6f-0a1b-2c3d4e5f6a7b",
    "resource" : {
      "resourceType" : "Practitioner",
      "id" : "d2e3f4a5-3c4d-5e6f-0a1b-2c3d4e5f6a7b",
      "meta" : {
        "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-person"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_d2e3f4a5-3c4d-5e6f-0a1b-2c3d4e5f6a7b\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Practitioner d2e3f4a5-3c4d-5e6f-0a1b-2c3d4e5f6a7b</b></p><a name=\"d2e3f4a5-3c4d-5e6f-0a1b-2c3d4e5f6a7b\"> </a><a name=\"hcd2e3f4a5-3c4d-5e6f-0a1b-2c3d4e5f6a7b\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-dipag-person.html\">Digitale Patientenrechnung Person</a></p></div><p><b>identifier</b>: Provider number/1-HBA-Testkarte-883110000123466</p><p><b>name</b>: Dr. Anna Mueller(Official)</p><p><b>telecom</b>: <a href=\"tel:+4930123457\">+49 30 123457</a></p><p><b>address</b>: Praxisstraße 10 Berlin 10115 DE </p><h3>Qualifications</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Code</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen MZKH}\">Zahnmedizin</span></td></tr></table></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "PRN"
          }]
        },
        "system" : "https://gematik.de/fhir/sid/telematik-id",
        "value" : "1-HBA-Testkarte-883110000123466"
      }],
      "name" : [{
        "use" : "official",
        "text" : "Dr. Anna Mueller",
        "family" : "Mueller",
        "given" : ["Anna"],
        "prefix" : ["Dr."],
        "_prefix" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier",
            "valueCode" : "AC"
          }]
        }]
      }],
      "telecom" : [{
        "system" : "phone",
        "value" : "+49 30 123457"
      }],
      "address" : [{
        "type" : "both",
        "line" : ["Praxisstraße 10"],
        "_line" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
            "valueString" : "Praxisstraße"
          },
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
            "valueString" : "10"
          }]
        }],
        "city" : "Berlin",
        "postalCode" : "10115",
        "country" : "DE"
      }],
      "qualification" : [{
        "code" : {
          "coding" : [{
            "system" : "http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen",
            "code" : "MZKH",
            "display" : "Zahnmedizin"
          }]
        }
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:e3f4a5b6-4d5e-6f7a-1b2c-3d4e5f6a7b8c",
    "resource" : {
      "resourceType" : "Organization",
      "id" : "e3f4a5b6-4d5e-6f7a-1b2c-3d4e5f6a7b8c",
      "meta" : {
        "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-institution"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_e3f4a5b6-4d5e-6f7a-1b2c-3d4e5f6a7b8c\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Organization e3f4a5b6-4d5e-6f7a-1b2c-3d4e5f6a7b8c</b></p><a name=\"e3f4a5b6-4d5e-6f7a-1b2c-3d4e5f6a7b8c\"> </a><a name=\"hce3f4a5b6-4d5e-6f7a-1b2c-3d4e5f6a7b8c\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-dipag-institution.html\">Digitale Patientenrechnung Institution</a></p></div><p><b>identifier</b>: Provider number/1-SMC-B-Testkarte-883110000123465, Primary physician office number/123456789, KZVAbrechnungsnummer/987654321, Umsatzsteuer-ID Nummer (USt-ID-Nr)/DE123456789</p><p><b>type</b>: <span title=\"Codes:{http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen MZKH}\">Zahnmedizin</span></p><p><b>name</b>: Zahnarztpraxis Dr. Schulz</p><p><b>telecom</b>: <a href=\"tel:+4930123456\">+49 30 123456</a></p><p><b>address</b>: Praxisstraße 10 Berlin 10115 DE </p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "PRN"
          }]
        },
        "system" : "https://gematik.de/fhir/sid/telematik-id",
        "value" : "1-SMC-B-Testkarte-883110000123465"
      },
      {
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "BSNR"
          }]
        },
        "system" : "https://fhir.kbv.de/NamingSystem/KBV_NS_Base_BSNR",
        "value" : "123456789"
      },
      {
        "type" : {
          "coding" : [{
            "system" : "http://fhir.de/CodeSystem/identifier-type-de-basis",
            "code" : "KZVA"
          }]
        },
        "system" : "http://fhir.de/sid/kzbv/kzvabrechnungsnummer",
        "value" : "987654321"
      },
      {
        "type" : {
          "coding" : [{
            "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnung-identifier-type-cs",
            "code" : "ustid"
          }]
        },
        "value" : "DE123456789"
      }],
      "type" : [{
        "coding" : [{
          "system" : "http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen",
          "code" : "MZKH",
          "display" : "Zahnmedizin"
        }]
      }],
      "name" : "Zahnarztpraxis Dr. Schulz",
      "telecom" : [{
        "system" : "phone",
        "value" : "+49 30 123456"
      }],
      "address" : [{
        "type" : "both",
        "line" : ["Praxisstraße 10"],
        "_line" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
            "valueString" : "Praxisstraße"
          },
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
            "valueString" : "10"
          }]
        }],
        "city" : "Berlin",
        "postalCode" : "10115",
        "country" : "DE"
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:f4a5b6c7-5e6f-7a8b-2c3d-4e5f6a7b8c9d",
    "resource" : {
      "resourceType" : "Organization",
      "id" : "f4a5b6c7-5e6f-7a8b-2c3d-4e5f6a7b8c9d",
      "meta" : {
        "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-institution"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_f4a5b6c7-5e6f-7a8b-2c3d-4e5f6a7b8c9d\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Organization f4a5b6c7-5e6f-7a8b-2c3d-4e5f6a7b8c9d</b></p><a name=\"f4a5b6c7-5e6f-7a8b-2c3d-4e5f6a7b8c9d\"> </a><a name=\"hcf4a5b6c7-5e6f-7a8b-2c3d-4e5f6a7b8c9d\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-dipag-institution.html\">Digitale Patientenrechnung Institution</a></p></div><p><b>identifier</b>: Provider number/1-SMC-B-Testkarte-883110000987654, Organisations-ID/109876543</p><p><b>type</b>: <span title=\"Codes:{http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen MZKH}\">Zahnmedizin</span></p><p><b>name</b>: Zahnlabor Müller GmbH</p><p><b>telecom</b>: <a href=\"tel:+4930987654\">+49 30 987654</a></p><p><b>address</b>: Laborstraße 5 Berlin 10116 DE </p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "PRN"
          }]
        },
        "system" : "https://gematik.de/fhir/sid/telematik-id",
        "value" : "1-SMC-B-Testkarte-883110000987654"
      },
      {
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "XX"
          }]
        },
        "system" : "http://fhir.de/sid/arge-ik/iknr",
        "value" : "109876543"
      }],
      "type" : [{
        "coding" : [{
          "system" : "http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen",
          "code" : "MZKH",
          "display" : "Zahnmedizin"
        }]
      }],
      "name" : "Zahnlabor Müller GmbH",
      "telecom" : [{
        "system" : "phone",
        "value" : "+49 30 987654"
      }],
      "address" : [{
        "type" : "both",
        "line" : ["Laborstraße 5"],
        "_line" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
            "valueString" : "Laborstraße"
          },
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
            "valueString" : "5"
          }]
        }],
        "city" : "Berlin",
        "postalCode" : "10116",
        "country" : "DE"
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:a5b6c7d8-6f7a-8b9c-3d4e-5f6a7b8c9d0e",
    "resource" : {
      "resourceType" : "ChargeItem",
      "id" : "a5b6c7d8-6f7a-8b9c-3d4e-5f6a7b8c9d0e",
      "meta" : {
        "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ChargeItem_a5b6c7d8-6f7a-8b9c-3d4e-5f6a7b8c9d0e\"> </a><p class=\"res-header-id\"><b>Generated Narrative: ChargeItem a5b6c7d8-6f7a-8b9c-3d4e-5f6a7b8c9d0e</b></p><a name=\"a5b6c7d8-6f7a-8b9c-3d4e-5f6a7b8c9d0e\"> </a><a name=\"hca5b6c7d8-6f7a-8b9c-3d4e-5f6a7b8c9d0e\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-dipag-rechnungsposition.html\">Digitale Patientenrechnung Rechnungsposition</a></p></div><p><b>Digitale Patientenrechnung Typ der Rechnungsposition Extension</b>: <a href=\"CodeSystem-dipag-chargeitem-type-cs.html#dipag-chargeitem-type-cs-GO.196\">Digitale Patientenrechnung Typ der Rechnungsposition CodeSystem: GOÄ</a> (Leistung nach Gebührenordnung GOÄ)</p><p><b>Digitale Patientenrechnung Rechnungsposition Zusatz Extension</b>: <a href=\"CodeSystem-dipag-rechnungsposition-zusatz-cs.html#dipag-rechnungsposition-zusatz-cs-V\">Digitale Patientenrechnung Rechnungsposition Zusatz CodeSystem: V</a> (auf Verlangen erbrachte Leistung)</p><blockquote><p><b>Digitale Patientenrechnung Wegegeld/Reiseentschädigung Extension</b></p><p><b>Entfernung</b>: 15 km<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codekm = 'km')</span></p><p><b>Nacht</b>: false</p><blockquote><p><b>url</b></p><a href=\"https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&amp;canonical=http://fhir.org/packages/de.basisprofil.r4/Wegegeld\">Wegegeld</a></blockquote></blockquote><blockquote><p><b>Digitale Patientenrechnung Angaben bei Gebührenordnungen bei einer Rechnungsposition</b></p><blockquote><p><b>url</b></p><a href=\"https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&amp;canonical=http://fhir.org/packages/de.basisprofil.r4/Einfachsatz\">Einfachsatz</a></blockquote><p><b>value</b>: <span title=\"Euro\">€10,72</span> (EUR)</p><blockquote><p><b>url</b></p><a href=\"https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&amp;canonical=http://fhir.org/packages/de.basisprofil.r4/Punktzahl\">Punktzahl</a></blockquote><p><b>value</b>: 100</p><p><b>Value</b>: 2.3</p><p><b>FaktorGrund</b>: <a href=\"CodeSystem-dipag-rechnungsposition-faktor-gruende-cs.html#dipag-rechnungsposition-faktor-gruende-cs-AB\">Digitale Patientenrechnung Rechnungsposition Faktor Gründe CodeSystem: AB</a> (Allgemeine Bestimmung)</p><blockquote><p><b>url</b></p><a href=\"https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&amp;canonical=http://fhir.org/packages/de.basisprofil.r4/Faktor\">Faktor</a></blockquote></blockquote><p><b>Digitale Patientenrechnung Rechnungsposition Behandlungsdatum</b>: 2024-01-15</p><p><b>status</b>: Billable</p><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bäk/goä 1}\">Beratung</span></p><p><b>subject</b>: <a href=\"Patient-8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c.html\">Max Mustermann(official) Male, DoB: 1980-05-15 ( Krankenversichertennummer)</a></p><p><b>occurrence</b>: 2024-01-15 --&gt; 2024-01-15</p><h3>Performers</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Actor</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Practitioner-c1d2e3f4-2b3c-4d5e-9f0a-1b2c3d4e5f6a.html\">Practitioner Dr. Hans Schulz(official)</a></td></tr></table><p><b>quantity</b>: 1 Anzahl<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code{count} = '{count}')</span></p><p><b>reason</b>: <span title=\"Codes:\">Beispiel für Begründung bei Beratung mit Faktorerhöhung: Erheblicher zusätzlicher Zeitaufwand aufgrund komplexer Fragestellung und ausführlicher Erläuterung der Behandlungsmöglichkeiten.</span></p></div>"
      },
      "extension" : [{
        "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition-type",
        "valueCoding" : {
          "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-chargeitem-type-cs",
          "code" : "GOÄ"
        }
      },
      {
        "url" : "https://gematik.de/fhir/dipag/StructureDefinition/DiPagRechnungspositionZusatz",
        "valueCoding" : {
          "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnungsposition-zusatz-cs",
          "code" : "V",
          "display" : "auf Verlangen erbrachte Leistung"
        }
      },
      {
        "extension" : [{
          "extension" : [{
            "url" : "Entfernung",
            "valueQuantity" : {
              "value" : 15,
              "unit" : "km",
              "system" : "http://unitsofmeasure.org",
              "code" : "km"
            }
          },
          {
            "url" : "Nacht",
            "valueBoolean" : false
          }],
          "url" : "Wegegeld"
        }],
        "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-wegegeld-reiseentschaedigung"
      },
      {
        "extension" : [{
          "url" : "Einfachsatz",
          "valueMoney" : {
            "value" : 10.72,
            "currency" : "EUR"
          }
        },
        {
          "url" : "Punktzahl",
          "valueDecimal" : 100
        },
        {
          "extension" : [{
            "url" : "Value",
            "valueDecimal" : 2.3
          },
          {
            "url" : "FaktorGrund",
            "valueCoding" : {
              "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnungsposition-faktor-gruende-cs",
              "code" : "AB",
              "display" : "Allgemeine Bestimmung"
            }
          }],
          "url" : "Faktor"
        }],
        "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition-go-angaben"
      },
      {
        "url" : "https://gematik.de/fhir/dipag/StructureDefinition/DiPagRechnungspositionBehandlungsdatum",
        "valueDate" : "2024-01-15"
      }],
      "status" : "billable",
      "code" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bäk/goä",
          "code" : "1",
          "display" : "Beratung"
        }]
      },
      "subject" : {
        "reference" : "Patient/8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c"
      },
      "occurrencePeriod" : {
        "start" : "2024-01-15",
        "end" : "2024-01-15"
      },
      "performer" : [{
        "actor" : {
          "reference" : "Practitioner/c1d2e3f4-2b3c-4d5e-9f0a-1b2c3d4e5f6a"
        }
      }],
      "quantity" : {
        "value" : 1,
        "unit" : "Anzahl",
        "system" : "http://unitsofmeasure.org",
        "code" : "{count}"
      },
      "reason" : [{
        "text" : "Beispiel für Begründung bei Beratung mit Faktorerhöhung: Erheblicher zusätzlicher Zeitaufwand aufgrund komplexer Fragestellung und ausführlicher Erläuterung der Behandlungsmöglichkeiten."
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:b6c7d8e9-7a8b-9c0d-4e5f-6a7b8c9d0e1f",
    "resource" : {
      "resourceType" : "ChargeItem",
      "id" : "b6c7d8e9-7a8b-9c0d-4e5f-6a7b8c9d0e1f",
      "meta" : {
        "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ChargeItem_b6c7d8e9-7a8b-9c0d-4e5f-6a7b8c9d0e1f\"> </a><p class=\"res-header-id\"><b>Generated Narrative: ChargeItem b6c7d8e9-7a8b-9c0d-4e5f-6a7b8c9d0e1f</b></p><a name=\"b6c7d8e9-7a8b-9c0d-4e5f-6a7b8c9d0e1f\"> </a><a name=\"hcb6c7d8e9-7a8b-9c0d-4e5f-6a7b8c9d0e1f\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-dipag-rechnungsposition.html\">Digitale Patientenrechnung Rechnungsposition</a></p></div><p><b>Digitale Patientenrechnung Typ der Rechnungsposition Extension</b>: <a href=\"CodeSystem-dipag-chargeitem-type-cs.html#dipag-chargeitem-type-cs-GOZ\">Digitale Patientenrechnung Typ der Rechnungsposition CodeSystem: GOZ</a> (Leistung nach Gebührenordnung GOZ)</p><p><b>Digitale Patientenrechnung Rechnungsposition Zusatz Extension</b>: <a href=\"CodeSystem-dipag-rechnungsposition-zusatz-cs.html#dipag-rechnungsposition-zusatz-cs-V\">Digitale Patientenrechnung Rechnungsposition Zusatz CodeSystem: V</a> (auf Verlangen erbrachte Leistung)</p><blockquote><p><b>Digitale Patientenrechnung Angaben bei Gebührenordnungen bei einer Rechnungsposition</b></p><blockquote><p><b>url</b></p><a href=\"https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&amp;canonical=http://fhir.org/packages/de.basisprofil.r4/Einfachsatz\">Einfachsatz</a></blockquote><p><b>value</b>: <span title=\"Euro\">€60,00</span> (EUR)</p><blockquote><p><b>url</b></p><a href=\"https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&amp;canonical=http://fhir.org/packages/de.basisprofil.r4/Punktzahl\">Punktzahl</a></blockquote><p><b>value</b>: 28</p><p><b>Value</b>: 2</p><blockquote><p><b>url</b></p><a href=\"https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&amp;canonical=http://fhir.org/packages/de.basisprofil.r4/Faktor\">Faktor</a></blockquote></blockquote><p><b>Digitale Patientenrechnung Rechnungsposition Behandlungsdatum</b>: 2024-02-25</p><p><b>status</b>: Billable</p><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bäk/gzä 1040}\">Professionelle Zahnreinigung</span></p><p><b>subject</b>: <a href=\"Patient-8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c.html\">Max Mustermann(official) Male, DoB: 1980-05-15 ( Krankenversichertennummer)</a></p><p><b>occurrence</b>: 2024-02-25 --&gt; 2024-02-25</p><h3>Performers</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Actor</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Practitioner-c1d2e3f4-2b3c-4d5e-9f0a-1b2c3d4e5f6a.html\">Practitioner Dr. Hans Schulz(official)</a></td></tr></table><p><b>bodysite</b>: <span title=\"Codes:\"></span></p></div>"
      },
      "extension" : [{
        "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition-type",
        "valueCoding" : {
          "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-chargeitem-type-cs",
          "code" : "GOZ"
        }
      },
      {
        "url" : "https://gematik.de/fhir/dipag/StructureDefinition/DiPagRechnungspositionZusatz",
        "valueCoding" : {
          "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnungsposition-zusatz-cs",
          "code" : "V",
          "display" : "auf Verlangen erbrachte Leistung"
        }
      },
      {
        "extension" : [{
          "url" : "Einfachsatz",
          "valueMoney" : {
            "value" : 60,
            "currency" : "EUR"
          }
        },
        {
          "url" : "Punktzahl",
          "valueDecimal" : 28
        },
        {
          "extension" : [{
            "url" : "Value",
            "valueDecimal" : 2
          }],
          "url" : "Faktor"
        }],
        "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition-go-angaben"
      },
      {
        "url" : "https://gematik.de/fhir/dipag/StructureDefinition/DiPagRechnungspositionBehandlungsdatum",
        "valueDate" : "2024-02-25"
      }],
      "status" : "billable",
      "code" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bäk/gzä",
          "code" : "1040",
          "display" : "Professionelle Zahnreinigung"
        }]
      },
      "subject" : {
        "reference" : "Patient/8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c"
      },
      "occurrencePeriod" : {
        "start" : "2024-02-25",
        "end" : "2024-02-25"
      },
      "performer" : [{
        "actor" : {
          "reference" : "Practitioner/c1d2e3f4-2b3c-4d5e-9f0a-1b2c3d4e5f6a"
        }
      }],
      "bodysite" : [{
        "extension" : [{
          "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-zahnregion",
          "valueString" : "11-48"
        }]
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:c7d8e9f0-8b9c-0d1e-5f6a-7b8c9d0e1f2a",
    "resource" : {
      "resourceType" : "ChargeItem",
      "id" : "c7d8e9f0-8b9c-0d1e-5f6a-7b8c9d0e1f2a",
      "meta" : {
        "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ChargeItem_c7d8e9f0-8b9c-0d1e-5f6a-7b8c9d0e1f2a\"> </a><p class=\"res-header-id\"><b>Generated Narrative: ChargeItem c7d8e9f0-8b9c-0d1e-5f6a-7b8c9d0e1f2a</b></p><a name=\"c7d8e9f0-8b9c-0d1e-5f6a-7b8c9d0e1f2a\"> </a><a name=\"hcc7d8e9f0-8b9c-0d1e-5f6a-7b8c9d0e1f2a\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-dipag-rechnungsposition.html\">Digitale Patientenrechnung Rechnungsposition</a></p></div><p><b>Digitale Patientenrechnung Typ der Rechnungsposition Extension</b>: <a href=\"CodeSystem-dipag-chargeitem-type-cs.html#dipag-chargeitem-type-cs-Fremdlaborleistung\">Digitale Patientenrechnung Typ der Rechnungsposition CodeSystem: Fremdlaborleistung</a> (Fremdlaborleistung)</p><p><b>Digitale Patientenrechnung Rechnungsposition Behandlungsdatum</b>: 2024-03-01</p><p><b>status</b>: Billable</p><p><b>code</b>: <span title=\"Codes:\">Teilprothese Oberkiefer</span></p><p><b>subject</b>: <a href=\"Patient-8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c.html\">Max Mustermann(official) Male, DoB: 1980-05-15 ( Krankenversichertennummer)</a></p><p><b>occurrence</b>: 2024-03-01 --&gt; 2024-03-10</p><h3>Performers</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Actor</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Organization-f4a5b6c7-5e6f-7a8b-2c3d-4e5f6a7b8c9d.html\">Organization Zahnlabor Müller GmbH</a></td></tr></table><p><b>quantity</b>: 1 Anzahl<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code{count} = '{count}')</span></p></div>"
      },
      "extension" : [{
        "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition-type",
        "valueCoding" : {
          "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-chargeitem-type-cs",
          "code" : "Fremdlaborleistung"
        }
      },
      {
        "url" : "https://gematik.de/fhir/dipag/StructureDefinition/DiPagRechnungspositionBehandlungsdatum",
        "valueDate" : "2024-03-01"
      }],
      "status" : "billable",
      "code" : {
        "text" : "Teilprothese Oberkiefer"
      },
      "subject" : {
        "reference" : "Patient/8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c"
      },
      "occurrencePeriod" : {
        "start" : "2024-03-01",
        "end" : "2024-03-10"
      },
      "performer" : [{
        "actor" : {
          "reference" : "Organization/f4a5b6c7-5e6f-7a8b-2c3d-4e5f6a7b8c9d"
        }
      }],
      "quantity" : {
        "value" : 1,
        "unit" : "Anzahl",
        "system" : "http://unitsofmeasure.org",
        "code" : "{count}"
      }
    }
  },
  {
    "fullUrl" : "urn:uuid:d8e9f0a1-9c0d-1e2f-6a7b-8c9d0e1f2a3b",
    "resource" : {
      "resourceType" : "ChargeItem",
      "id" : "d8e9f0a1-9c0d-1e2f-6a7b-8c9d0e1f2a3b",
      "meta" : {
        "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ChargeItem_d8e9f0a1-9c0d-1e2f-6a7b-8c9d0e1f2a3b\"> </a><p class=\"res-header-id\"><b>Generated Narrative: ChargeItem d8e9f0a1-9c0d-1e2f-6a7b-8c9d0e1f2a3b</b></p><a name=\"d8e9f0a1-9c0d-1e2f-6a7b-8c9d0e1f2a3b\"> </a><a name=\"hcd8e9f0a1-9c0d-1e2f-6a7b-8c9d0e1f2a3b\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-dipag-rechnungsposition.html\">Digitale Patientenrechnung Rechnungsposition</a></p></div><p><b>Digitale Patientenrechnung Typ der Rechnungsposition Extension</b>: <a href=\"CodeSystem-dipag-chargeitem-type-cs.html#dipag-chargeitem-type-cs-SachkostenAuslagen\">Digitale Patientenrechnung Typ der Rechnungsposition CodeSystem: SachkostenAuslagen</a> (Sachkosten/Auslagen)</p><p><b>Digitale Patientenrechnung Rechnungsposition Behandlungsdatum</b>: 2024-02-20</p><p><b>status</b>: Billable</p><p><b>code</b>: <span title=\"Codes:\">Dentalmaterial</span></p><p><b>subject</b>: <a href=\"Patient-8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c.html\">Max Mustermann(official) Male, DoB: 1980-05-15 ( Krankenversichertennummer)</a></p><p><b>occurrence</b>: 2024-02-20 --&gt; 2024-02-20</p><h3>Performers</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Actor</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Organization-e3f4a5b6-4d5e-6f7a-1b2c-3d4e5f6a7b8c.html\">Organization Zahnarztpraxis Dr. Schulz</a></td></tr></table><p><b>quantity</b>: 2 Anzahl<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code{count} = '{count}')</span></p><p><b>product</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/ifa/pzn 12345678}\">Komposit-Füllungsmaterial</span></p></div>"
      },
      "extension" : [{
        "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition-type",
        "valueCoding" : {
          "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-chargeitem-type-cs",
          "code" : "SachkostenAuslagen"
        }
      },
      {
        "url" : "https://gematik.de/fhir/dipag/StructureDefinition/DiPagRechnungspositionBehandlungsdatum",
        "valueDate" : "2024-02-20"
      }],
      "status" : "billable",
      "code" : {
        "text" : "Dentalmaterial"
      },
      "subject" : {
        "reference" : "Patient/8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c"
      },
      "occurrencePeriod" : {
        "start" : "2024-02-20",
        "end" : "2024-02-20"
      },
      "performer" : [{
        "actor" : {
          "reference" : "Organization/e3f4a5b6-4d5e-6f7a-1b2c-3d4e5f6a7b8c"
        }
      }],
      "quantity" : {
        "value" : 2,
        "unit" : "Anzahl",
        "system" : "http://unitsofmeasure.org",
        "code" : "{count}"
      },
      "productCodeableConcept" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/ifa/pzn",
          "code" : "12345678",
          "display" : "Komposit XYZ"
        }],
        "text" : "Komposit-Füllungsmaterial"
      }
    }
  },
  {
    "fullUrl" : "urn:uuid:e9f0a1b2-0d1e-2f3a-7b8c-9d0e1f2a3b4c",
    "resource" : {
      "resourceType" : "ChargeItem",
      "id" : "e9f0a1b2-0d1e-2f3a-7b8c-9d0e1f2a3b4c",
      "meta" : {
        "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ChargeItem_e9f0a1b2-0d1e-2f3a-7b8c-9d0e1f2a3b4c\"> </a><p class=\"res-header-id\"><b>Generated Narrative: ChargeItem e9f0a1b2-0d1e-2f3a-7b8c-9d0e1f2a3b4c</b></p><a name=\"e9f0a1b2-0d1e-2f3a-7b8c-9d0e1f2a3b4c\"> </a><a name=\"hce9f0a1b2-0d1e-2f3a-7b8c-9d0e1f2a3b4c\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-dipag-rechnungsposition.html\">Digitale Patientenrechnung Rechnungsposition</a></p></div><p><b>Digitale Patientenrechnung Typ der Rechnungsposition Extension</b>: <a href=\"CodeSystem-dipag-chargeitem-type-cs.html#dipag-chargeitem-type-cs-WegegeldReiseentschaedigung\">Digitale Patientenrechnung Typ der Rechnungsposition CodeSystem: WegegeldReiseentschaedigung</a> (Wegegeld/Reiseentschädigung)</p><blockquote><p><b>Digitale Patientenrechnung Wegegeld/Reiseentschädigung Extension</b></p><p><b>Abwesenheit</b>: 3 h<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codeh = 'h')</span></p><p><b>Entfernung</b>: 50 km<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codekm = 'km')</span></p><p><b>Uebernachtung</b>: <span title=\"Euro\">€80,00</span> (EUR)</p><p><b>Verkehrsmittel</b>: <a href=\"http://snomed.info/id/46160005\">SNOMED CT: 46160005</a> (Motor vehicle)</p><blockquote><p><b>url</b></p><a href=\"https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&amp;canonical=http://fhir.org/packages/de.basisprofil.r4/Reiseentschaedigung\">Reiseentschaedigung</a></blockquote></blockquote><p><b>Digitale Patientenrechnung Rechnungsposition Behandlungsdatum</b>: 2024-03-05</p><p><b>status</b>: Billable</p><p><b>code</b>: <span title=\"Codes:\">Reiseentschädigung für Hausbesuch</span></p><p><b>subject</b>: <a href=\"Patient-8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c.html\">Max Mustermann(official) Male, DoB: 1980-05-15 ( Krankenversichertennummer)</a></p><p><b>occurrence</b>: 2024-03-05 --&gt; 2024-03-05</p><h3>Performers</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Actor</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Practitioner-c1d2e3f4-2b3c-4d5e-9f0a-1b2c3d4e5f6a.html\">Practitioner Dr. Hans Schulz(official)</a></td></tr></table></div>"
      },
      "extension" : [{
        "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition-type",
        "valueCoding" : {
          "system" : "https://gematik.de/fhir/dipag/CodeSystem/dipag-chargeitem-type-cs",
          "code" : "WegegeldReiseentschaedigung"
        }
      },
      {
        "extension" : [{
          "extension" : [{
            "url" : "Abwesenheit",
            "valueQuantity" : {
              "value" : 3,
              "unit" : "h",
              "system" : "http://unitsofmeasure.org",
              "code" : "h"
            }
          },
          {
            "url" : "Entfernung",
            "valueQuantity" : {
              "value" : 50,
              "unit" : "km",
              "system" : "http://unitsofmeasure.org",
              "code" : "km"
            }
          },
          {
            "url" : "Uebernachtung",
            "valueMoney" : {
              "value" : 80,
              "currency" : "EUR"
            }
          },
          {
            "url" : "Verkehrsmittel",
            "valueCoding" : {
              "system" : "http://snomed.info/sct",
              "code" : "46160005",
              "display" : "Motor vehicle"
            }
          }],
          "url" : "Reiseentschaedigung"
        }],
        "url" : "https://gematik.de/fhir/dipag/StructureDefinition/dipag-wegegeld-reiseentschaedigung"
      },
      {
        "url" : "https://gematik.de/fhir/dipag/StructureDefinition/DiPagRechnungspositionBehandlungsdatum",
        "valueDate" : "2024-03-05"
      }],
      "status" : "billable",
      "code" : {
        "text" : "Reiseentschädigung für Hausbesuch"
      },
      "subject" : {
        "reference" : "Patient/8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c"
      },
      "occurrencePeriod" : {
        "start" : "2024-03-05",
        "end" : "2024-03-05"
      },
      "performer" : [{
        "actor" : {
          "reference" : "Practitioner/c1d2e3f4-2b3c-4d5e-9f0a-1b2c3d4e5f6a"
        }
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:f0a1b2c3-1e2f-3a4b-8c9d-0e1f2a3b4c5d",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "f0a1b2c3-1e2f-3a4b-8c9d-0e1f2a3b4c5d",
      "meta" : {
        "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsdiagnose"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_f0a1b2c3-1e2f-3a4b-8c9d-0e1f2a3b4c5d\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition f0a1b2c3-1e2f-3a4b-8c9d-0e1f2a3b4c5d</b></p><a name=\"f0a1b2c3-1e2f-3a4b-8c9d-0e1f2a3b4c5d\"> </a><a name=\"hcf0a1b2c3-1e2f-3a4b-8c9d-0e1f2a3b4c5d\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-dipag-rechnungsdiagnose.html\">Digitale Patientenrechnung Rechnungsdiagnose</a></p></div><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/icd-10-gm K02.9}\">Zahnkaries, nicht näher bezeichnet</span></p><p><b>subject</b>: <a href=\"Patient-8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c.html\">Max Mustermann(official) Male, DoB: 1980-05-15 ( Krankenversichertennummer)</a></p><p><b>onset</b>: 2024-01-15</p></div>"
      },
      "code" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
          "version" : "2024",
          "code" : "K02.9",
          "display" : "Zahnkaries, nicht näher bezeichnet"
        }]
      },
      "subject" : {
        "reference" : "Patient/8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c"
      },
      "onsetDateTime" : "2024-01-15"
    }
  },
  {
    "fullUrl" : "urn:uuid:a1b2c3d4-2f3a-4b5c-9d0e-1f2a3b4c5d6e",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "a1b2c3d4-2f3a-4b5c-9d0e-1f2a3b4c5d6e",
      "meta" : {
        "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsdiagnose"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_a1b2c3d4-2f3a-4b5c-9d0e-1f2a3b4c5d6e\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition a1b2c3d4-2f3a-4b5c-9d0e-1f2a3b4c5d6e</b></p><a name=\"a1b2c3d4-2f3a-4b5c-9d0e-1f2a3b4c5d6e\"> </a><a name=\"hca1b2c3d4-2f3a-4b5c-9d0e-1f2a3b4c5d6e\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-dipag-rechnungsdiagnose.html\">Digitale Patientenrechnung Rechnungsdiagnose</a></p></div><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/icd-10-gm K05.3}\">Chronische Parodontitis</span></p><p><b>subject</b>: <a href=\"Patient-8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c.html\">Max Mustermann(official) Male, DoB: 1980-05-15 ( Krankenversichertennummer)</a></p><p><b>onset</b>: 2024-01-15</p></div>"
      },
      "code" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
          "version" : "2024",
          "code" : "K05.3",
          "display" : "Chronische Parodontitis"
        }]
      },
      "subject" : {
        "reference" : "Patient/8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c"
      },
      "onsetDateTime" : "2024-01-15"
    }
  },
  {
    "fullUrl" : "urn:uuid:b2c3d4e5-3a4b-5c6d-0e1f-2a3b4c5d6e7f",
    "resource" : {
      "resourceType" : "Procedure",
      "id" : "b2c3d4e5-3a4b-5c6d-0e1f-2a3b4c5d6e7f",
      "meta" : {
        "profile" : ["https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsprozedur"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Procedure_b2c3d4e5-3a4b-5c6d-0e1f-2a3b4c5d6e7f\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedure b2c3d4e5-3a4b-5c6d-0e1f-2a3b4c5d6e7f</b></p><a name=\"b2c3d4e5-3a4b-5c6d-0e1f-2a3b4c5d6e7f\"> </a><a name=\"hcb2c3d4e5-3a4b-5c6d-0e1f-2a3b4c5d6e7f\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-dipag-rechnungsprozedur.html\">Digitale Patientenrechnung Rechnungsprozedur</a></p></div><p><b>status</b>: Completed</p><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/ops 5-232.00}\">Implantation alloplastisches Material, Zahn</span></p><p><b>subject</b>: <a href=\"Patient-8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c.html\">Max Mustermann(official) Male, DoB: 1980-05-15 ( Krankenversichertennummer)</a></p><p><b>performed</b>: 2024-02-20</p></div>"
      },
      "status" : "completed",
      "code" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/ops",
          "version" : "2024",
          "code" : "5-232.00",
          "display" : "Implantation alloplastisches Material, Zahn"
        }]
      },
      "subject" : {
        "reference" : "Patient/8e2b7c2a-4f3a-4e7a-9c1a-2d6b8f7e1a3c"
      },
      "performedDateTime" : "2024-02-20"
    }
  }]
}

```
