Instance: PatientenBundle
InstanceOf: Bundle
* type = #searchset
* total = 1
* link[+].relation = "self"
* link[=].url = "https://example.com/fhir/Patient?name=Mustermann"
* entry[+]
  * fullUrl = "https://example.com/fhir/Patient/PatientVater"
  * resource = PatientVater
  * search.mode = #match

Instance: PatientVater
InstanceOf: Patient
Usage: #example
* active = true
* name
  * given = "Manfred"
  * family = "Mustermann"
* identifier
  * type = http://fhir.de/CodeSystem/identifier-type-de-basis#KVZ10
  * system = "http://fhir.de/sid/gkv/kvid-10"
  * value = "A000000000"
* gender = #male
* birthDate = "1970-01-01"