# Rechnungsinhalt

Der strukturierte Rechnungsinhalt einer Digitalen Patientenrechnung wird über die folgenden Profile abgebildet: `DiPagInstitution`, `DiPagPerson`, `DiPagPatient`, `DiPagRechnung`, `DiPagRechnungsposition`, `DiPagRechnungsdiagnose` und `DiPagRechnungsprozedur`. Diese Seite zeigt zwei Musterbeispiele sowie die Zuordnung der fachlichen Rechnungsinhalte zu den jeweiligen FHIR-Elementen.

## Beispiele

Im IG sind zwei Musterbeispiele für die Rechnungsinhalte enthalten.

### Maximalbeispiel

Dieses stellt ein Maximalbeispiel dar, welches alle möglichen Elemente befüllt. Es basiert auf keiner real existierenden Rechnung, sondern dient ausschließlich der Veranschaulichung aller möglichen Elemente und deren Befüllung.

[Bundle-BundleExample](Bundle-BundleExample.html)

### Beispiel auf Basis einer realen Rechnung

Dieses wurde auf Basis einer realen Rechnung erstellt.

[Bundle-MusterrechnungBundle](Bundle-MusterrechnungBundle.html)

Die zugrunde liegende Rechnung:

<div>
  <img src="Musterrechnung_Arztbehandlung.png" alt="Musterrechnung Arztbehandlung" style="max-width:100%;"/>
</div>

## Zuordnung Rechnungsinhalte zum FHIR-Element

Die folgende Tabelle ordnet – je Profil des strukturierten Rechnungsinhalts – die fachlichen Rechnungsinhalte (Kurzbeschreibung) den jeweiligen FHIR-Elementen (Feldname) zu. Aufgeführt sind alle Must-Support-Elemente mit Kurzbeschreibung; ergänzende Implementierungshinweise stehen in der Spalte „Hinweise". Die Tabelle wird beim Build automatisch aus den Profilen erzeugt (SQL-on-FHIR).

<table class="grid">
<colgroup>
<col style="width:16%"/>
<col style="width:22%"/>
<col style="width:16%"/>
<col style="width:46%"/>
</colgroup>
<thead><tr><th>Profil</th><th>Kurzbeschreibung</th><th>Feldname</th><th>Hinweise</th></tr></thead>
<tbody>
{% for row in site.data.rechnungsinhalt %}<tr><td>{{ row.ProfileName }}</td><td>{{ row.Short }}</td><td style="word-break:break-word"><code>{{ row.Element }}</code></td><td>{{ row.Comment | markdownify }}</td></tr>
{% endfor %}</tbody>
</table>
