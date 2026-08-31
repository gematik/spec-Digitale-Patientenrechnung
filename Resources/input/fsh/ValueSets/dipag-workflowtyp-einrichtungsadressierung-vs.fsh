ValueSet: DiPagWorkflowtypEinrichtungsadressierungVS
Id: dipag-workflowtyp-einrichtungsadressierung-vs
Title: "Digitale Patientenrechnung Workflowtyp Einrichtungsadressierung VS"
Description: "ValueSet mit allen Workflowtypen unterhalb von 'Einrichtungsadressierung'. Das ValueSet ist intensional definiert: Neue Workflowtypen, die im CodeSystem unter 'Einrichtungsadressierung' ergänzt werden, sind automatisch enthalten. Es wird für den Parameter 'workflow' der Operation SubmitOrganisation verwendet."
* insert Meta(1.2.0-beta)
* ^date = "2026-08-31"
* include codes from system DiPagWorkflowtypCS where concept descendent-of #einrichtungsadressierung
