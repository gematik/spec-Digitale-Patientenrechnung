Extension: DiPagRechnungspositionType
Id: dipag-rechnungsposition-type
Title: "Digitale Patientenrechnung Typ der Rechnungsposition Extension"
Description: "In dieser Extension wird der Typ einer Rechnungsposition im Kontext der Digitalen Patientenrechnung abgebildet."
Context: ChargeItem
* insert Meta
* value[x] only Coding
* valueCoding from DiPagRechnungspositionTypeVS (required)