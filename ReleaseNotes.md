# Release 1.0.7

## Änderungen

- **DiPagRechnung**: `DiPagTeilsumme`-Extension auf `totalPriceComponent[SummeRechnungspositionen]` erneut hinzugefügt (versehentlich entfernt)
- **DiPagZahlungsziel**: Extension in eigene Datei ausgelagert; Kontext um `DocumentReference` erweitert
- **DiPagRechnungsBundle**: Pflicht-Slices für `DiPagRechnung` (1..1) und `DiPagPatient` (1..) als Bundle-Einträge hinzugefügt
- **DiPagPatient**: `name.text` auf 1..1 (Pflichtfeld) geändert
- **DiPagDokumentenmetadatenIntern**: Identifier-Slicing mit Slices `Rechnungsnummer` und `AnhangIdentifier` eingeführt; Extension `leistungsart` entfernt; `zahlungszieldatum` nutzt nun `DiPagZahlungsziel` (Typ `date` statt `dateTime`)
- **DiPagDokumentenmetadatenEingang**: `subject` entfernt; Identifier-Slicing mit Slice `AnhangIdentifier` eingeführt; Max-Length-Einschränkungen für `description` (5000) und `details.valueString` (1024) ergänzt; Hinweis auf 512 kB-Limit für strukturierten Rechnungsinhalt
- **CapabilityStatementFD**: SearchParameter `subject` und `author` (Referenz-Typ) aus CapabilityStatement entfernt
- **SearchParameter**: Beschreibung der SearchParameter `author-display` und `subject-display` um Hinweis auf 200-Zeichen-Limit erweitert
- **DiPagRechnungIdentifierTypeCS**: Neuer Code `anhang` (Anhangidentifikator) hinzugefügt
- **DiPagSonstigesDokumentTypeVS**: KDL-Filterung auf `child Exists true` entfernt
- **DiPagTeilsumme**: Slicenamen auf camelCase vereinheitlicht (`type`, `summe`, `uStProzent`, `uStBetrag`)
- **IG**: Seite zur `leistungsart`-Extension entfernt; Beschreibung für R7 Bulk-Change-Status ergänzt
