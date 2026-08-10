## {{page-title}}

### Schlüsselworte

Anforderungen als Ausdruck normativer Festlegungen werden durch die dem [RFC2119](https://tools.ietf.org/html/rfc2119) entsprechenden, in Großbuchstaben geschriebenen deutschen Schlüsselworte MUSS, DARF NICHT, SOLL, SOLL NICHT, KANN sowie ihrer Pluralformen gekennzeichnet.

### Bedeutung von Must-Support-Flags

Für die unterschiedlichen Akteure gelten verschiedene Regeln zur Interpretation der "Must-Support"-Felder in den veröffentlichten FHIR-Profilen:

* Das RE-PS MUSS alle Elemente die als Must-Support gekennzeichnet sind befüllen soweit diese Informationen vorhanden sind und an den FD weitergeben könnnen. Das RE-PS MUSS die Möglichkeit zur Eingabe dieser Informationen vorsehen.

* Das DiPag FDV MUSS alle Elemente die als Must-Support gekennzeichnet sind im Frontend anzeigen und verarbeiten können.

* Der FD MUSS alle Elemente die als Must-Support gekennzeichnet sind entgegennehmen, validieren, verarbeiten und an das RE-PS, sowie ITSys-KTR weitergeben können.

### Begriffe und Abkürzungen

Siehe Abschnitt "1.7.2 Verwendete Begriffe" des Feature-Dokumentes "Digitale Patientenrechnung".

### Größenbeschränkungen

Der DiPag Fachdienst setzt bei allen `string`-Elementen der Dokumentenmetadaten (`DocumentReference`) Größenbeschränkungen durch, auch wenn in den Profilen `maxLength` nicht gesetzt ist. Werden diese Beschränkungen überschritten, wird die Eingabe abgelehnt. Dieselben Beschränkungen gelten für einzelne Elemente der strukturierten Rechnungsdaten, siehe Abschnitt "Elemente in den strukturierten Rechnungsdaten". Für alle übrigen Elemente der strukturierten Rechnungsdaten (`Invoice` und die von dieser referenzierten Ressourcen) gilt ausschließlich ein 512kb-Limit über den gesamten Datensatz, einzelne Elemente sind dort nicht zusätzlich begrenzt.

Die folgenden Tabellen führen die Beschränkungen übersichtlich auf. Für sie gilt:

* Aufgeführt ist jedes Element mit frei wählbarem Textinhalt (`string`, `markdown`, `url` sowie frei wählbare `uri`), das direkt oder über ein übergeordnetes Element als Must-Support gekennzeichnet ist - unabhängig davon, ob im Profil ein `maxLength` gesetzt ist.
* Ist im Profil kein `maxLength` gesetzt, setzt der Fachdienst eine Beschränkung von 1024 Zeichen durch.
* Nicht aufgeführt sind Elemente, deren Wert nicht frei wählbar ist: Elemente mit festem Wert (`fixed[x]`/`pattern[x]`), Elemente vom Typ `code` sowie das `system` eines an ein ValueSet gebundenen `Coding`. Deren zulässige Werte ergeben sich aus dem Profil und liegen sämtlich unterhalb der Beschränkung.
* Slices mit identischer Beschränkung sind unter dem ungeslicten Pfad zusammengefasst (z.B. `DocumentReference.identifier.value` für alle Identifier-Slices). Slices mit abweichender Beschränkung sind zusätzlich einzeln aufgeführt.
* Die Inhalte von Extensions sind unterhalb des jeweiligen Profils mit aufgeführt.

#### Dokumentenmetadaten beim Einreichen (`DiPagDokumentenmetadatenEingang`)

| Element | Typ | Max. Länge | Herkunft |
|-|-|-|-|
| `DocumentReference.meta.extension:markierung.extension:details.valueString` | string | 1024 | `maxLength` im Profil |
| `DocumentReference.identifier:AnhangIdentifier.value` | string | 200 | `maxLength` im Profil |
| `DocumentReference.type.coding.display` | string | 1024 | `maxLength` im Profil |
| `DocumentReference.type.coding.version` | string | 1024 | FD-Default |
| `DocumentReference.description` | string | 5000 | `maxLength` im Profil |

#### Elemente in den strukturierten Rechnungsdaten

Innerhalb der strukturierten Rechnungsdaten gilt eine Zeichenbeschränkung ausschließlich für die folgenden Elemente:

| Element | Profil | Typ | Max. Länge | Herkunft |
|-|-|-|-|-|
| `Invoice.identifier:Rechnungsnummer.system` | `DiPagRechnung` | uri | 1024 | FD-Default |
| `Invoice.identifier:Rechnungsnummer.value` | `DiPagRechnung` | string | 1024 | FD-Default |
| `Patient.name.text` | `DiPagPatient`, referenziert über `Invoice.subject` | string | 1024 | FD-Default |

Alle übrigen Elemente der strukturierten Rechnungsdaten unterliegen keiner Einzelbeschränkung, für sie gilt ausschließlich das 512kb-Limit über den gesamten Datensatz.
