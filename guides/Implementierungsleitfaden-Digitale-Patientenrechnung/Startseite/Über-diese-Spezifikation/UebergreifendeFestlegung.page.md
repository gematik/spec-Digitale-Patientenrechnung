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
| `DocumentReference.meta.extension:markierung.extension:markierung.valueCoding.version` | string | 1024 | FD-Default |
| `DocumentReference.meta.extension:markierung.extension:markierung.valueCoding.display` | string | 1024 | FD-Default |
| `DocumentReference.meta.extension:markierung.extension:details.valueString` | string | 1024 | `maxLength` im Profil |
| `DocumentReference.meta.extension:markierung.extension:artDerArchivierung.valueCoding.version` | string | 1024 | FD-Default |
| `DocumentReference.meta.extension:markierung.extension:artDerArchivierung.valueCoding.display` | string | 1024 | FD-Default |
| `DocumentReference.meta.extension:markierung.extension:kostentraeger.valueReference.reference` | string | 1024 | FD-Default |
| `DocumentReference.meta.extension:markierung.extension:kostentraeger.valueReference.identifier.system` | uri | 1024 | FD-Default |
| `DocumentReference.meta.extension:markierung.extension:kostentraeger.valueReference.identifier.value` | string | 1024 | FD-Default |
| `DocumentReference.meta.extension:markierung.extension:kostentraeger.valueReference.display` | string | 1024 | `maxLength` im Profil |
| `DocumentReference.identifier.type.coding.version` | string | 1024 | FD-Default |
| `DocumentReference.identifier.type.coding.display` | string | 1024 | FD-Default |
| `DocumentReference.identifier.type.text` | string | 1024 | FD-Default |
| `DocumentReference.identifier.system` | uri | 1024 | FD-Default |
| `DocumentReference.identifier.value` | string | 1024 | FD-Default |
| `DocumentReference.identifier:AnhangIdentifier.value` | string | 200 | `maxLength` im Profil |
| `DocumentReference.type.coding.version` | string | 1024 | FD-Default |
| `DocumentReference.type.coding.display` | string | 1024 | FD-Default |
| `DocumentReference.type.text` | string | 1024 | FD-Default |
| `DocumentReference.type.coding:DokumentenKlassifizierung.display` | string | 1024 | `maxLength` im Profil |
| `DocumentReference.type.coding:Rechnungstyp.display` | string | 1024 | FD-Default |
| `DocumentReference.description` | string | 5000 | `maxLength` im Profil |
| `DocumentReference.content.attachment.url` | url | 1024 | FD-Default |
| `DocumentReference.content.attachment.title` | string | 1024 | FD-Default |
| `DocumentReference.content.format.version` | string | 1024 | FD-Default |
| `DocumentReference.content.format.display` | string | 1024 | FD-Default |

#### Dokumentenmetadaten im Fachdienst (`DiPagDokumentenmetadatenIntern`)

| Element | Typ | Max. Länge | Herkunft |
|-|-|-|-|
| `DocumentReference.meta.extension:markierung.extension:markierung.valueCoding.version` | string | 1024 | FD-Default |
| `DocumentReference.meta.extension:markierung.extension:markierung.valueCoding.display` | string | 1024 | FD-Default |
| `DocumentReference.meta.extension:markierung.extension:details.valueString` | string | 1024 | `maxLength` im Profil |
| `DocumentReference.meta.extension:markierung.extension:artDerArchivierung.valueCoding.version` | string | 1024 | FD-Default |
| `DocumentReference.meta.extension:markierung.extension:artDerArchivierung.valueCoding.display` | string | 1024 | FD-Default |
| `DocumentReference.meta.extension:markierung.extension:kostentraeger.valueReference.reference` | string | 1024 | FD-Default |
| `DocumentReference.meta.extension:markierung.extension:kostentraeger.valueReference.identifier.system` | uri | 1024 | FD-Default |
| `DocumentReference.meta.extension:markierung.extension:kostentraeger.valueReference.identifier.value` | string | 1024 | FD-Default |
| `DocumentReference.meta.extension:markierung.extension:kostentraeger.valueReference.display` | string | 1024 | `maxLength` im Profil |
| `DocumentReference.meta.tag.version` | string | 1024 | FD-Default |
| `DocumentReference.meta.tag.display` | string | 1024 | FD-Default |
| `DocumentReference.extension:docRef-signature.valueSignature.type.version` | string | 1024 | FD-Default |
| `DocumentReference.extension:docRef-signature.valueSignature.type.display` | string | 1024 | FD-Default |
| `DocumentReference.extension:docRef-signature.valueSignature.who.reference` | string | 1024 | FD-Default |
| `DocumentReference.extension:docRef-signature.valueSignature.who.display` | string | 1024 | FD-Default |
| `DocumentReference.extension:docRef-signature.valueSignature.onBehalfOf.reference` | string | 1024 | FD-Default |
| `DocumentReference.extension:docRef-signature.valueSignature.onBehalfOf.display` | string | 1024 | FD-Default |
| `DocumentReference.identifier.type.coding.version` | string | 1024 | FD-Default |
| `DocumentReference.identifier.type.coding.display` | string | 1024 | FD-Default |
| `DocumentReference.identifier.type.text` | string | 1024 | FD-Default |
| `DocumentReference.identifier.system` | uri | 1024 | FD-Default |
| `DocumentReference.identifier.value` | string | 1024 | FD-Default |
| `DocumentReference.type.coding.version` | string | 1024 | FD-Default |
| `DocumentReference.type.coding.display` | string | 1024 | FD-Default |
| `DocumentReference.type.text` | string | 1024 | FD-Default |
| `DocumentReference.type.coding:DokumentenKlassifizierung.display` | string | 1024 | `maxLength` im Profil |
| `DocumentReference.type.coding:Rechnungstyp.display` | string | 1024 | FD-Default |
| `DocumentReference.subject.reference` | string | 1024 | FD-Default |
| `DocumentReference.subject.identifier.type.text` | string | 1024 | FD-Default |
| `DocumentReference.subject.identifier.system` | uri | 1024 | FD-Default |
| `DocumentReference.subject.identifier.value` | string | 1024 | FD-Default |
| `DocumentReference.subject.display` | string | 1024 | `maxLength` im Profil |
| `DocumentReference.author.reference` | string | 1024 | FD-Default |
| `DocumentReference.author.identifier.type.text` | string | 1024 | FD-Default |
| `DocumentReference.author.identifier.value` | string | 1024 | FD-Default |
| `DocumentReference.author.display` | string | 1024 | `maxLength` im Profil |
| `DocumentReference.author.identifier.type.coding.version` | string | 1024 | FD-Default |
| `DocumentReference.author.identifier.type.coding.display` | string | 1024 | FD-Default |
| `DocumentReference.description` | string | 1024 | FD-Default |
| `DocumentReference.content.attachment.url` | url | 1024 | FD-Default |
| `DocumentReference.content.attachment.title` | string | 1024 | FD-Default |
| `DocumentReference.content.attachment.extension:signature.valueSignature.type.version` | string | 1024 | FD-Default |
| `DocumentReference.content.attachment.extension:signature.valueSignature.type.display` | string | 1024 | FD-Default |
| `DocumentReference.content.attachment.extension:signature.valueSignature.who.reference` | string | 1024 | FD-Default |
| `DocumentReference.content.attachment.extension:signature.valueSignature.who.display` | string | 1024 | FD-Default |
| `DocumentReference.content.attachment.extension:signature.valueSignature.onBehalfOf.reference` | string | 1024 | FD-Default |
| `DocumentReference.content.attachment.extension:signature.valueSignature.onBehalfOf.display` | string | 1024 | FD-Default |
| `DocumentReference.content.format.version` | string | 1024 | FD-Default |
| `DocumentReference.content.format.display` | string | 1024 | FD-Default |
| `DocumentReference.context.encounter.reference` | string | 1024 | FD-Default |
| `DocumentReference.context.encounter.identifier.type.text` | string | 1024 | FD-Default |
| `DocumentReference.context.encounter.identifier.system` | uri | 1024 | FD-Default |
| `DocumentReference.context.encounter.identifier.value` | string | 1024 | FD-Default |
| `DocumentReference.context.encounter.display` | string | 1024 | FD-Default |
| `DocumentReference.context.event.coding.version` | string | 1024 | FD-Default |
| `DocumentReference.context.event.coding.display` | string | 1024 | FD-Default |
| `DocumentReference.context.event.text` | string | 1024 | FD-Default |
| `DocumentReference.context.facilityType.coding.version` | string | 1024 | FD-Default |
| `DocumentReference.context.facilityType.coding.display` | string | 1024 | FD-Default |
| `DocumentReference.context.facilityType.text` | string | 1024 | FD-Default |
| `DocumentReference.context.practiceSetting.coding.version` | string | 1024 | FD-Default |
| `DocumentReference.context.practiceSetting.coding.display` | string | 1024 | FD-Default |
| `DocumentReference.context.practiceSetting.text` | string | 1024 | FD-Default |
| `DocumentReference.context.sourcePatientInfo.reference` | string | 1024 | FD-Default |
| `DocumentReference.context.sourcePatientInfo.identifier.type.text` | string | 1024 | FD-Default |
| `DocumentReference.context.sourcePatientInfo.identifier.system` | uri | 1024 | FD-Default |
| `DocumentReference.context.sourcePatientInfo.identifier.value` | string | 1024 | FD-Default |
| `DocumentReference.context.sourcePatientInfo.display` | string | 1024 | FD-Default |
| `DocumentReference.context.related.reference` | string | 1024 | FD-Default |
| `DocumentReference.context.related.identifier.type.text` | string | 1024 | FD-Default |
| `DocumentReference.context.related.identifier.system` | uri | 1024 | FD-Default |
| `DocumentReference.context.related.identifier.value` | string | 1024 | FD-Default |
| `DocumentReference.context.related.display` | string | 1024 | FD-Default |
| `DocumentReference.extension:fachrichtung.valueCoding.version` | string | 1024 | FD-Default |
| `DocumentReference.extension:fachrichtung.valueCoding.display` | string | 1024 | FD-Default |
| `DocumentReference.extension:behandlungsart.valueCoding.version` | string | 1024 | FD-Default |
| `DocumentReference.extension:behandlungsart.valueCoding.display` | string | 1024 | FD-Default |
#### Elemente in den strukturierten Rechnungsdaten

Innerhalb der strukturierten Rechnungsdaten gilt eine Zeichenbeschränkung ausschließlich für die folgenden Elemente:

| Element | Profil | Typ | Max. Länge | Herkunft |
|-|-|-|-|-|
| `Invoice.identifier:Rechnungsnummer.system` | `DiPagRechnung` | uri | 1024 | FD-Default |
| `Invoice.identifier:Rechnungsnummer.value` | `DiPagRechnung` | string | 1024 | FD-Default |
| `Patient.name.text` | `DiPagPatient`, referenziert über `Invoice.subject` | string | 1024 | FD-Default |

Alle übrigen Elemente der strukturierten Rechnungsdaten unterliegen keiner Einzelbeschränkung, für sie gilt ausschließlich das 512kb-Limit über den gesamten Datensatz.
