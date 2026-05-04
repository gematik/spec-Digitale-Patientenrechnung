Instance: BeispielParameterChangeStatusInput
InstanceOf: Parameters
* parameter[+]
  * name = "tag"
  * valueCode = #erledigt

Instance: BeispielParameterChangeStatusOutput
InstanceOf: Parameters
* parameter[+]
  * name = "meta"
  * valueMeta = BeispielMetaChangeStatusOutput

Instance: BeispielMetaChangeStatusOutput
InstanceOf: Meta
Usage: #inline
* versionId = "1"
* lastUpdated = "2024-05-11T13:00:00.123+02:00"
* tag[+]
  * system = "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnungsstatus-cs"
  * code = #erledigt

Instance: BeispielParameterChangeStatusInput2
InstanceOf: Parameters
* parameter[+]
  * name = "tag"
  * valueCode = #gelesen

Instance: BeispielParameterChangeStatusOutput2
InstanceOf: Parameters
* parameter[+]
  * name = "meta"
  * valueMeta = BeispielMetaChangeStatusOutput2

Instance: BeispielMetaChangeStatusOutput2
InstanceOf: Meta
Usage: #inline
* versionId = "1"
* lastUpdated = "2024-05-11T13:01:00.000+02:00"
* tag[+]
  * system = "https://gematik.de/fhir/dipag/CodeSystem/dipag-rechnungsstatus-cs"
  * code = #gelesen

Instance: BulkChangeStatusExampleInput
InstanceOf: Bundle
Usage: #example
* type = #batch
* entry[+]
  * insert BundleRequest(POST, "DocumentReference/a1b2c3d4-1234-5678-abcd-ef1234567890/$change-status")
  * resource = BeispielParameterChangeStatusInput
* entry[+]
  * insert BundleRequest(POST, "DocumentReference/b2c3d4e5-2345-6789-bcde-f12345678901/$change-status")
  * resource = BeispielParameterChangeStatusInput2

Instance: BulkChangeStatusExampleOutput
InstanceOf: Bundle
Usage: #example
* type = #batch-response
* entry[+]
  * fullUrl = "urn:uuid:c3d4e5f6-3456-7890-cdef-123456789012"
  * resource = BeispielParameterChangeStatusOutput
  * response.status = "200"
* entry[+]
  * fullUrl = "urn:uuid:d4e5f6a7-4567-8901-defa-234567890123"
  * resource = BeispielParameterChangeStatusOutput2
  * response.status = "200"