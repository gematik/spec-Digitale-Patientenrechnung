Profile: EABPKVRechnung
Title: "EABPKV Rechnung"
Parent: Invoice
Id: eabpkv-rechnung
* extension contains https://gematik.de/fhir/eabpkv/StructureDefinition/eabpkv-ergaenzendesDokument named ergaenzendesDokument 0..1 MS
* identifier 1.. MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier contains rechnungsnummer 1..1
* identifier[rechnungsnummer].type 1.. MS
* identifier[rechnungsnummer].type = http://fhir.de/CodeSystem/identifier-type-de-basis#invoice
* identifier[rechnungsnummer].system 1.. MS
* identifier[rechnungsnummer].value 1.. MS
* type 1.. MS
* type from https://gematik.de/fhir/ValueSet/eabpkv-rechnung-type-vs (required)
* status MS
* status from https://gematik.de/fhir/ValueSet/eabpkv-rechnung-status-vs (required)
* recipient 1.. MS 
* recipient only Reference(Patient or RelatedPerson)
  * identifier 1.. MS
  * identifier only IdentifierKvid10 or IdentifierPkvVersichertenId10
* date 1.. MS
* issuer 1.. MS
  * identifier 1.. MS 
  * identifier only IdentifierTelematikId
* lineItem MS
* lineItem.chargeItem[x] only Reference
* lineItem.chargeItemReference MS
* totalPriceComponent MS
* totalPriceComponent ^slicing.discriminator.type = #pattern
* totalPriceComponent ^slicing.discriminator.path = "code"
* totalPriceComponent ^slicing.rules = #open
* totalPriceComponent contains tax 0..1 MS // ToDo: Constraint for totalPriceComponent dependant on .type?
* totalPriceComponent[tax].code = #tax
* totalPriceComponent[tax].factor 1..1 MS // Constraint 19% or 7%
* totalPriceComponent[tax].amount 0..1 MS // ToDo: 1..1 or 0..1?
* totalNet MS
* totalGross MS

Extension: EABPKVErgaenzendesDokument
Id: eabpkv-ergaenzendesDokument
Title: "EABPKV Ergänzendes Dokument"
* value[x] only Reference(Binary)
