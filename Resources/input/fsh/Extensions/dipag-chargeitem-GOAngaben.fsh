Extension: DiPagRechnungspositionGOAngaben
Id: dipag-rechnungsposition-go-angaben
Title: "Digitale Patientenrechnung Angaben bei Gebührenordnungen bei einer Rechnungsposition"
Description: "In dieser Extension werden gebührenordnungsspezifische Angaben einer Rechnungsposition abgebildet: Einfachsatz, Punktzahl, Steigerungsfaktor mit Begründung sowie eine prozentuale Minderung nach GOÄ."
Context: ChargeItem
* insert Meta(1.0.7)
* extension contains
  Einfachsatz ..1 and
  Punktzahl ..1 and
  Faktor ..1 and
  FaktorGrund ..1 and
  MinderungP6GOAE ..1
* extension[Einfachsatz]
  * value[x] only Money
  * valueMoney.currency = #EUR
* extension[Punktzahl].value[x] only decimal
* extension[Faktor]
  * extension contains 
    Value ..1 and
    FaktorGrund ..1
  * extension[Value].value[x] only decimal
  * extension[FaktorGrund]
    * value[x] only Coding
    * valueCoding from DiPagRechnungspositionFaktorGruendeVS (required)  
* extension[MinderungP6GOAE]
  * value[x] only Quantity
  * valueQuantity
    * unit = "%"
    * code = #%
    * system = "http://unitsofmeasure.org"