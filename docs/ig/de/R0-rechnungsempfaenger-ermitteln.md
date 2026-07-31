# R0: Abfrage des Rechnungsempfaengers und dessen Einwilligung zum Rechnungsversand - Implementierungsleitfaden Digitale Patientenrechnung v1.1.0

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.1.0 - ci-build 

* [**Table of Contents**](toc.md)
* **R0: Abfrage des Rechnungsempfaengers und dessen Einwilligung zum Rechnungsversand**

## R0: Abfrage des Rechnungsempfaengers und dessen Einwilligung zum Rechnungsversand

# R0: Abfrage des Rechnungsempfängers und dessen Einwilligung zum Rechnungsversand

Die nachfolgende Interaktion ist relevant für den FD als Server, sowie für das RE-PS als Client. Anforderung AF_10132 MUSS durch den FD über die spezifizierte API umgesetzt werden. Die Vorgaben aus "Tabelle 14: Use Case Abfrage des Rechnungsempfängers und dessen Einwilligung zum Rechnungsversand" des Feature-Dokumentes MÜSSEN eingehalten werden durch den FD.

### Abfrage des Rechnungsempfängers (Behandelter ist Rechnungsempfänger)

| | |
| :--- | :--- |
| HTTP-Methode | GET |
| Endpunkt | /Patient |
| Suchparameter`identifier` | Kardinalität: 1..1Type: TokenHinweis: Hierbei handelt es sich immer um eine KVNR, das System`http://fhir.de/sid/gkv/kvid-10`MUSS durch den FD ergänzt werden, falls der Client dies nicht mitliefert. |
| Suchparameter`birthdate` | Kardinalität: 1..1Type: dateDas Geburtsdatum MUSS taggenau übergeben werden. Such-Modifier, wie z.B. 'le', 'ge' sind in diesem Kontext nicht vorgesehen. |
| User-Kontext`Telematik-ID` | Kardinalität: 1..1Hinweis: Die Telematik-ID ist aus dem Claim`idNummer`des mitzusendenen Access-Token zu extrahieren. |

| | |
| :--- | :--- |
| Erfolgsfall | `200 - OK` |
| Weitere Parameter in HTTP-Anfrage enthalten | `400 - Bad Request` |
| Syntax für FHIR-Suchanfrage ist nicht korrekt oder Kardinalitäten werden nicht eingehalten | `400 - Bad Request` |
| KVNR ist syntaktisch nicht korrekt | `400 - Bad Request` |
| Kein valides Access-Token wird mitgesendet | `401 - Unauthorized` |
| Autorisierter Benutzer verfügt über keine ausreichende Berechtigung die Interaktion auszuführen | `403 - Forbidden` |
| Rechnungsempfänger hat dem Rechnungsversand durch diesen Rechnungsersteller widersprochen | `404 - Not Found`. In diesem Fall: OperationOutcome mit Hinweis, dass Einwilligung nicht vorliegt oder Benutzer nicht vorhanden ist. |
| Mehr als ein Postfach unter Angabe der Suchparameter gefunden. | `404 - Not Found`. Dies stellt einen internen Fehler bei der Verwaltung der Postfächer dar. |
| Rechnungsempfänger verfügt über kein Konto | `404 - Not Found`. In diesem Fall: OperationOutcome mit Hinweis, dass Einwilligung nicht vorliegt oder Benutzer nicht vorhanden ist |
| Plausibilisierung zwischen Geburtsdatum und KVNR schlägt fehl | `404 - Not Found` |
| Andere HTTP-Methode wird verwendet | `405 - Method Not Allowed` |

### Optional als Batch

Um mehrere Abfragen zeitgleich durchzuführen, kann auf die batch Funktionalität in der [FHIR Core Spec](https://hl7.org/fhir/R4/http.html#transaction) zurückgegriffen werden.

Beispiel:

```
{
  "resourceType": "Bundle",
  "id": "bundle-request",
  "type": "batch",
  "entry": [
    {
      "request": {
        "method": "GET",
        "url": "/Patient?identifier=A000000000&birthdate=1970-01-01"
      }
    },
    {
      "request": {
        "method": "GET",
        "url": "/Patient?identifier=A000000010&birthdate=1970-01-02"
      }
    }
  ]
}

```

### Beispiele

```
HTTP GET [fachdienst-endpunkt]/Patient?identifier=A000000000&birthdate=1970-01-01

```

Antwort des Endpunktes im Erfolgsfall:

```
HTTP 200 OK

```

mit Body:

[Bundle-PatientenBundle](Bundle-PatientenBundle.md)

Es MUSS durch den FD sichergestellt werden, dass die zurückgegebene Patient-Ressourcen eine stabile id besitzten.

Die zurückgegebene Patient-Ressource MUSS valide gegen das Profil `DiPagPatient` sein.

[Profil StructureDefinition-dipag-patient](StructureDefinition-dipag-patient.md)

Implementierungshinweise zu den einzelnen Feldern (Spalte „Kommentar") finden sich auf der oben verlinkten Profilseite.

