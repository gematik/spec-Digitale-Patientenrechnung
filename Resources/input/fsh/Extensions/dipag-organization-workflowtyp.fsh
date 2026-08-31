Extension: DiPagOrganizationWorkflowtyp
Id: dipag-organization-workflowtyp
Title: "Digitale Patientenrechnung Organization Workflowtyp"
Description: "Extension zur Angabe eines von einer Kostenträger-Organisation unterstützten Workflowtyps für den Rechnungsversand an die Organisation."
Context: Organization
* insert Meta(1.2.0-beta)
* ^date = "2026-08-31"

* value[x] 1.. MS
* value[x] only Coding
* value[x] from DiPagWorkflowtypEinrichtungsadressierungVS (required)
