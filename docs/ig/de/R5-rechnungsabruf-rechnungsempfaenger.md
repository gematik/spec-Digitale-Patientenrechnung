# R5: Abruf von Rechnungen (Rechnungsempfaenger) - Implementierungsleitfaden Digitale Patientenrechnung v1.0.8

Implementierungsleitfaden Digitale Patientenrechnung

Version 1.0.8 - ci-build 

* [**Table of Contents**](toc.md)
* **R5: Abruf von Rechnungen (Rechnungsempfaenger)**

## R5: Abruf von Rechnungen (Rechnungsempfaenger)

# R5: Abruf von Rechnungen (Rechnungsempfänger)

Die nachfolgende Interaktion ist relevant für den FD als Server, sowie für das DiPag FdV als Client. Anwendungsfall AF_10138 MUSS durch den FD über die spezifizierte API umgesetzt werden. Die Vorgaben aus "Tabelle 18: Use Case Abruf von Rechnungen (Rechnungsempfänger)" des Feature-Dokumentes MÜSSEN eingehalten werden durch den FD.

| | |
| :--- | :--- |
| HTTP-Methode | GET |
| Endpunkt | /DocumentReference |
| Suchparameter`_tag` | Kardinalität: 0..1RechnungsstatusType: tokenDer FD MUSS den Modifier`:not`unterstützen. |
| Suchparameter`subject-display` | Kardinalität: 0..1Name Rechnungsempfänger/Behandelte PersonType: string |
| Suchparameter`author-display` | Kardinalität: 0..1Name des LeistungserbringerType: string |
| Suchparameter`type` | Kardinalität: 0..1Dokumententyp (z.B. Rechnung)Type: tokenDer FD MUSS den Modifier`:not`unterstützen. |
| Suchparameter`dipag-markierung` | Kardinalität: 0..1Manuelle MarkierungenType: token |
| Suchresultatparameter`_sort` | Als Sortierkriterien können die oben genannten Suchparameter inkl. Custom SearchParameter verwendet werden für die Inhalte die als Sortierkriterien in Tabelle 18: Use Case Abruf von Rechnungen (Rechnungsempfänger) - Feature-Dokument Digitale Patientenrechnung genannt sind |
| Suchresultatparameter`_count` | Durch den Client gewünschte Page-Size, der FD KANN Vorgaben für die Maximale Page-Size definieren |
| User-Kontext`KVNR` | Kardinalität: 1..1Hinweis: Die KVNR ist aus dem Claim`urn:telematik:claims:id`des mitzusendenen Access-Token zu extrahieren. |

| | |
| :--- | :--- |
| Erfolgsfall | `200 - OK` |
| Weitere Parameter in HTTP-Anfrage enthalten | `400 - Bad Request` |
| Syntax für Parameter ist nicht korrekt oder Kardinalitäten werden nicht eingehalten | `400 - Bad Request` |
| Kein valides Access-Token wird mitgesendet | `401 - Unauthorized` |
| Autorisierter Benutzer verfügt über keine ausreichende Berechtigung die Interaktion auszuführen | `403 - Forbidden` |
| Andere HTTP-Methode wird verwendet | `405 - Method Not Allowed` |

Als Antwort MUSS der FD ein [FHIR-SearchSet-Bundle](https://www.hl7.org/fhir/r4/bundle.html#searchset) zurückliefern, welches eingegrenzt ist auf die, durch den Client übermittelten Suchparameter.

### Beispiele

Suche anhand der Art des Dokumentes (nur Rechnungen):

```
HTTP GET [fachdienst-endpunkt]/DocumentReference?type=AM010106

```

und/oder anhand des Status

```
HTTP GET [fachdienst-endpunkt]/DocumentReference?_tag=offen

HTTP GET [fachdienst-endpunkt]/DocumentReference?_tag:not=papierkorb

```

Antwort des Endpunktes im Erfolgsfall:

```
HTTP 200 OK

```

mit Body:

[Bundle-ExampleR5Bundle](Bundle-ExampleR5Bundle.md)

### Verarbeitungsschritte im FD

* Der FD MUSS die Suche auf DocumentReference-Ressourcen begrenzen die unter DocumentReference.related auf einen Benutzer verweisen welcher durch die KVNR aus dem Access-Token identifiziert wird, um sicherzustellen, dass nur DocumentReference-Ressourcen aus dem Postfach des angemeldeten Rechnungsempfängers zurückgegeben werden.
* Der FD MUSS die Signatur-Extension an allen Stellen (`DocumentReference.extension:docRef-signature`, `DocumentReference.content.attachment.extension:docRef-signature`) vor der Rückgabe an den Client entfernen.
* Falls es sich bei der DocumentReference um ein Rechnungsdokument handelt, MUSS der FD das Content-Element für das Rechnungspdf entfernen, sodass nur die Content-Elemente für das angereicherte PDF/A, sowie die strukturierten Rechnungsinhalte zurückgegeben werden.
* Der FD MUSS sicherstellen, dass die Abfrage einer Binary-Ressource, welche unter `DocumentReference.content.attachment.url` referenziert wird, nur erfolgen kann, wenn: 
* ein valides Access-Token mitgeliefert wird UND
* `DocumentReference.subject` zeigt auf einen Benutzeraccount mit einer KVNR, die identisch ist mit der KVNR aus dem Access-Token.
 
* Es gelten die Festlegungen der [FHIR-Kernspezifikation zur Handhabung von Binary-Ressourcen](https://www.hl7.org/fhir/r4/binary.html#rest).
* Der FD MUSS unter DocumentReference.context.related:anhaenge Referenzen auf alle Anhänge zurückgeben die im Kontext der initialen Einreichung (vgl. [R1: Rechnung versenden](R1-rechnung-versenden.md)) übergeben wurden an den FD. Die Anhänge MÜSSEN als DocumentReference-Ressourcen im SearchResult-Bundle zurückgegeben werden mit einem Hinweis, dass diese zusätzlich inkludiert wurden (Bundle.entry.search.mode = include).

