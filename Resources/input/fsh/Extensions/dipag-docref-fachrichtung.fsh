Extension: DiPagDocRefFachrichtung
Id: dipag-docref-fachrichtung
Title: "Digitale Patientenrechnung DocRef Fachrichtung"
Description: "Extension zur Angabe der Fachrichtung zur Steuerung des Abrechungsworkflows"
Context: DocumentReference
* insert Meta(1.0.7)

* value[x] 1.. MS
* value[x] only Coding
* value[x] from http://ihe-d.de/ValueSets/IHEXDSpracticeSettingCode (required)
