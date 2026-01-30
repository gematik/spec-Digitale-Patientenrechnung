RuleSet: BundleRequest(method, url)
* request
  * method = #{method}
  * url = {url}

RuleSet: Expectation (expectation)
* extension[+]
  * url = $capabilitystatement-expectation
  * valueCode = {expectation}

RuleSet: Meta
* ^status = #active
* ^version = "1.0.3"
* ^experimental = false
* ^date = "2025-10-06"
* ^publisher = "gematik GmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://gematik.de/"

RuleSet: MetaInstance
* version = "1.0.3"
* status = #active
* experimental = false
* publisher = "gematik GmbH"
* contact.telecom.system = #url
* contact.telecom.value = "http://gematik.de/"
* date = "2025-10-06"