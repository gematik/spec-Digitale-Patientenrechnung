---
topic: Workflows
---

## {{page-title}}

| |  |
|---------|---------------------|
| <img src="https://raw.githubusercontent.com/gematik/spec-Digitale-Patientenrechnung/master/Material/piktogramme/Betriebskoordination_Gruen_gematik.svg" alt="gematik logo" width="75"/> | **Hinweis:** Das Workflow-Konzept und der Rechnungsversand an Kostenträger-Organisationen werden zunächst als Beta-Version veröffentlicht. Die Festlegungen auf dieser Seite – insbesondere der Workflowtyp `demo` – sind daher als vorläufig zu verstehen und können sich in kommenden Versionen noch ändern. |

Jede Rechnung wird bei der Einreichung genau einem Workflow zugeordnet. Der Workflowtyp bestimmt, wie die Rechnung im FD verarbeitet wird: welche Rechnungsstatus (`meta.tag:dipag-rechnungsstatus`) im Lebenszyklus der Rechnung vorkommen, durch welche Interaktionen sie gesetzt werden und welche Funktionen zur Verfügung stehen. Der FD MUSS den Workflowtyp einer Rechnung als `meta.tag:dipag-workflowtyp` an den Dokumentenmetadaten abbilden.

Die Zuordnung erfolgt abhängig vom Endpunkt der Einreichung:

* Bei der Einreichung auf dem Patient-Endpunkt ({{pagelink:AF_10136}}) setzt der FD automatisch den Workflowtyp `patientenrechnung`.
* Bei der Einreichung auf dem Organization-Endpunkt ({{pagelink:AF_TBD_R13}}) wählt das RE-PS über den Pflicht-Parameter `workflow` einen Workflowtyp aus, den die Ziel-Organisation unterstützt (vgl. {{pagelink:AF_TBD_R12}}).

Das Verzeichnis der Workflowtypen ist im CodeSystem {{pagelink:DiPagWorkflowtypCS}} hinterlegt. Zukünftige Workflowtypen können abweichende Status und Automatismen definieren; maßgeblich sind die Festlegungen des jeweiligen Workflowtyps in den nachfolgenden Abschnitten.

### Workflowtyp `patientenrechnung`

Workflow der Digitalen Patientenrechnung an Versicherte: Die Rechnung wird durch den FD gespeichert und der/dem Versicherten zur Prüfung und weiteren Verarbeitung bereitgestellt.

|Auslöser|Status|
|-|-|
|`$invoice-submit` auf dem Patient-Endpunkt ({{pagelink:AF_10136}})|"Offen" (initial, durch den FD gesetzt)|
|Manueller Statuswechsel durch Versicherte (`$change-status`, {{pagelink:AF_10245}})|"Offen", "Erledigt", "Papierkorb"|

### Workflowtyp `demo`

Demo-Workflow für den Rechnungsversand an Kostenträger-Organisationen: Die Rechnung wird durch den FD gespeichert und der Organisation zum Abruf bereitgestellt.

|Auslöser|Status|
|-|-|
|`$invoice-submit` auf dem Organization-Endpunkt ({{pagelink:AF_TBD_R13}})|"Übermittelt" (initial, durch den FD gesetzt)|
|Erfolgreicher Abruf per `$retrieve` durch die Organisation ({{pagelink:AF_TBD_R14}})|"Abgerufen" (durch den FD gesetzt)|

Der Workflowtyp `demo` kennt ausschließlich die Statuswerte "Übermittelt" und "Abgerufen"; ein manuelles Ändern des Status (`$change-status`) ist nicht vorgesehen. Die weiteren in diesem Workflow nicht unterstützten Funktionen sowie die Fristen des automatischen Löschens sind in {{pagelink:AF_TBD_R14}} beschrieben.

----
