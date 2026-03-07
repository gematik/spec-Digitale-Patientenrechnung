---
canonical1: https://gematik.de/fhir/dipag/StructureDefinition/dipag-institution
canonical2: https://gematik.de/fhir/dipag/StructureDefinition/dipag-person
canonical3: https://gematik.de/fhir/dipag/StructureDefinition/dipag-patient
canonical4: https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnung
canonical5: https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsposition
canonical6: https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsdiagnose
canonical7: https://gematik.de/fhir/dipag/StructureDefinition/dipag-rechnungsprozedur
---
## {{page-title}}

{{index:current}}

## Beispiele

Im IG sind zwei Musterbeispiele für die Rechnungsinhalte enthalten:

Dieses stellt ein Maximalbeispiel dar, welches alle möglichen Elemente befüllt. Es basiert auf keiner real existierenden Rechnung, sondern dient ausschließlich der Veranschaulichung aller möglichen Elemente und deren Befüllung.

<tabs>
    <tab title="Bundle-Example">      
        {{render:Resources/fsh-generated/resources/Bundle-BundleExample.json}}
    </tab>
    <tab title="XML">      
        {{xml:Resources/fsh-generated/resources/Bundle-BundleExample.json}}
    </tab>
    <tab title="JSON">
        {{json:Resources/fsh-generated/resources/Bundle-BundleExample.json}}
    </tab>
    <tab title="Link">
        {{link:Resources/fsh-generated/resources/Bundle-BundleExample.json}}
    </tab>
</tabs>

Dieses wurde auf Basis einer realen Rechnung erstellt

<tabs>
    <tab title="Bundle-Musterrechnung">      
        {{render:Resources/fsh-generated/resources/Bundle-MusterrechnungBundle.json}}
    </tab>
    <tab title="XML">      
        {{xml:Resources/fsh-generated/resources/Bundle-MusterrechnungBundle.json}}
    </tab>
    <tab title="JSON">
        {{json:Resources/fsh-generated/resources/Bundle-MusterrechnungBundle.json}}
    </tab>
    <tab title="Link">
        {{link:Resources/fsh-generated/resources/Bundle-MusterrechnungBundle.json}}
    </tab>
</tabs>

Die Rechnung:

{{render:Material/Musterrechnung_Arztbehandlung.png}} 

## Zuordnung Rechnungsinhalte zum FHIR Element

<fql>
from
	StructureDefinition
where 
    url = %canonical1
or
    url = %canonical2
or
    url = %canonical3
or
    url = %canonical4
or
    url = %canonical5
or
    url = %canonical6
or
    url = %canonical7
for differential.element
where mustSupport = true
and short.exists()
select
	Kurzbeschreibung: short, Feldname: id, Hinweise: comment
</fql>