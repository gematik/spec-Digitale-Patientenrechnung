# Digitale PatientenrechnungVerkehrsmittel - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Digitale PatientenrechnungVerkehrsmittel**

## ValueSet: Digitale PatientenrechnungVerkehrsmittel 

| | |
| :--- | :--- |
| *Offizielle URL*:https://gematik.de/fhir/dipag/ValueSet/DiPagVerkehrsmittel | *Version*:1.1.0 |
| Active Stand: 2026-03-26 | *Maschinenlesbarer Name*:DiPagVerkehrsmittel |

 
Dieses ValueSet bietet eine Auswahl an Verkehrsmitteln, die im Rahmen einer Reisekostenentschädigung ausgewählt werden können. 

 **References** 

* [Digitale Patientenrechnung Wegegeld/Reiseentschädigung Extension](StructureDefinition-dipag-wegegeld-reiseentschaedigung.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "DiPagVerkehrsmittel",
  "url" : "https://gematik.de/fhir/dipag/ValueSet/DiPagVerkehrsmittel",
  "version" : "1.1.0",
  "name" : "DiPagVerkehrsmittel",
  "title" : "Digitale PatientenrechnungVerkehrsmittel",
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
  "description" : "Dieses ValueSet bietet eine Auswahl an Verkehrsmitteln, die im Rahmen einer Reisekostenentschädigung ausgewählt werden können.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "46160005",
        "display" : "Motor vehicle"
      },
      {
        "code" : "52387005",
        "display" : "Taxi"
      },
      {
        "code" : "716367000",
        "display" : "Transportation by public transport"
      },
      {
        "code" : "46274009",
        "display" : "Jet airplane"
      }]
    }]
  }
}

```
