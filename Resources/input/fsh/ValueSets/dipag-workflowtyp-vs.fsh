ValueSet: DiPagWorkflowtypVS
Id: dipag-workflowtyp-vs
Title: "Digitale Patientenrechnung Workflowtyp VS"
Description: "ValueSet mit den konkreten Workflowtypen der Digitalen Patientenrechnung (zweite Ebene des CodeSystems). Die übergeordneten Adressierungs-Codes (Patientenadressierung, Einrichtungsadressierung) sind nicht enthalten. Das ValueSet ist intensional definiert: Neue Workflowtypen, die im CodeSystem unterhalb der Adressierungs-Codes ergänzt werden, sind automatisch enthalten."
* insert Meta(1.3.0-beta)
* ^date = "2026-09-01"
* include codes from system DiPagWorkflowtypCS where concept descendent-of #patientenadressierung
* include codes from system DiPagWorkflowtypCS where concept descendent-of #einrichtungsadressierung
