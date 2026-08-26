Instance: OrganisationenBundle
InstanceOf: Bundle
* type = #searchset
* total = 2
* link[+].relation = "self"
* link[=].url = "https://example.com/fhir/Organization"
* entry[+]
  * fullUrl = "https://example.com/fhir/Organization/BeispielOrganisationKostentraeger"
  * resource = BeispielOrganisationKostentraeger
  * search.mode = #match
* entry[+]
  * fullUrl = "https://example.com/fhir/Organization/BeispielOrganisationKostentraeger2"
  * resource = BeispielOrganisationKostentraeger2
  * search.mode = #match

Instance: BeispielOrganisationKostentraeger
InstanceOf: DiPagOrganisationRechnungsempfaenger
Usage: #example
* identifier[Telematik-ID]
  * type = $v2-0203#PRN
  * system = "https://gematik.de/fhir/sid/telematik-id"
  * value = "8-01-0000000001"
* name = "Beispielkasse Krankenversicherung AG"

Instance: BeispielOrganisationKostentraeger2
InstanceOf: DiPagOrganisationRechnungsempfaenger
Usage: #example
* identifier[Telematik-ID]
  * type = $v2-0203#PRN
  * system = "https://gematik.de/fhir/sid/telematik-id"
  * value = "8-01-0000000002"
* name = "Musterkasse Versicherung VVaG"
