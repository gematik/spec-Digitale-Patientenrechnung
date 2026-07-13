Extension: DiPagTaskRequestedPerformer
Id: dipag-task-requestedPerformer
Title: "Digitale Patientenrechnung Task RequestedPerformer"
Description: "Backport des Elements Task.requestedPerformer aus FHIR R5. Referenziert die versicherte Person (per KVNR), an die sich der Task richtet."
Context: Task
* insert Meta(1.0.7)
* ^url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Task.requestedPerformer"
* value[x] only Reference(Patient)
* valueReference 1.. MS
  * reference 1..1 MS
  * identifier 1.. MS
  * identifier only IdentifierKvid10