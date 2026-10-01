CodeSystem: DiPagTotalPriceComponentTypeCS
Id: dipag-total-price-component-type-cs
Title: "Digitale Patientenrechnung Art der Rechnungssumme"
* insert Meta(1.0.7)
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* #SummeRechnungspositionen "Summe aller Rechnungspositionen"
* #Minderung7GOZ "Minderungen nach §7 GOZ"
* #Fremdlaborleistungen "Fremdlaborleistungen"
* #Abzug "Übergeordnete Abzug-Kategorie"
* #Abzug #FestzuschussKasse "Festzuschuss Kasse"
* #Abzug #VorleistungKst "Vorleistungen anderer Kostenträger"
* #Abzug #KostenBema13AtoD "Kosten gem. den BEMA-Pos. 13a - d"

ValueSet: DiPagTotalPriceComponentDeductionTypeVS
Id: dipag-total-price-component-deduction-type-vs
Title: "Digitale Patientenrechnung Art des Abzugs von der Summe der gesamten Rechnungspositionen"
* insert Meta(1.0.7)
* DiPagTotalPriceComponentTypeCS#FestzuschussKasse "Festzuschuss Kasse"
* DiPagTotalPriceComponentTypeCS#VorleistungKst "Vorleistungen anderer Kostenträger"
* DiPagTotalPriceComponentTypeCS#KostenBema13AtoD "Kosten gem. den BEMA-Pos. 13a - d"