Extension: DiPagFachrichtung
Id: dipag-fachrichtung
Title: "Digitale Patientenrechnung Extension Fachrichtung"
Description: "In dieser Extension wird die Fachrichtung der Leistungserbringer:in an der Rechnung abgebildet, u. a. zur Steuerung des Abrechnungsworkflows."
* insert Meta(1.0.7)
* ^context.type = #element
* ^context.expression = "Invoice"
* value[x] only Coding
* valueCoding from $ihe-practiceSettingCode (required)