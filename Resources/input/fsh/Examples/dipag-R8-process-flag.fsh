Instance: BeispielParameterProcessFlagInput
InstanceOf: Parameters
// Complete-Replacement-Prinzip: Der Request enthaelt den vollstaendigen, weiterhin gueltigen Markierungssatz.
// Hier zwei Markierungen ('bezahlt' und 'gelesen'); alle nicht enthaltenen Markierungen wuerden entfernt.
// Jede Markierung ist ein mehrteiliger Parameter (Tuple) mit der Markierung selbst und ihren Zusatzinformationen als 'part'.
* parameter[+]
  * name = "markierung"
  * part[+]
    * name = "markierung"
    * valueCoding
      * system = Canonical(DiPagRechnungMarkierungCS)
      * code = #bezahlt
  * part[+]
    * name = "zeitpunkt"
    * valueDateTime = "2024-05-30T13:00:00.001+02:00"
  * part[+]
    * name = "details"
    * valueString = "Bezahlt mit falschem Betreff"
* parameter[+]
  * name = "markierung"
  * part[+]
    * name = "markierung"
    * valueCoding
      * system = Canonical(DiPagRechnungMarkierungCS)
      * code = #gelesen
  * part[+]
    * name = "gelesen"
    * valueBoolean = true


Instance: BeispielParameterProcessFlagOutput
InstanceOf: Parameters
* parameter[+]
  * name = "meta"
  * valueMeta
    * versionId = "2"
    * lastUpdated = "2024-05-31T13:00:00.123+02:00"
    * tag[+]
      * system = "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnungsstatus-cs"
      * code = #erledigt
    * extension[+]
      * url = Canonical(DiPagDocumentReferenceMarkierung)
      * extension[+]
        * url = "markierung"
        * valueCoding
          * system = Canonical(DiPagRechnungMarkierungCS)
          * code = #bezahlt
      * extension[+]
        * url = "zeitpunkt"
        * valueDateTime = "2024-05-30T13:00:00.123+02:00"
      * extension[+]
        * url = "details"
        * valueString = "Bezahlt mit falschem Betreff"
    * extension[+]
      * url = Canonical(DiPagDocumentReferenceMarkierung)
      * extension[+]
        * url = "markierung"
        * valueCoding
          * system = Canonical(DiPagRechnungMarkierungCS)
          * code = #gelesen
      * extension[+]
        * url = "gelesen"
        * valueBoolean = true
