<img align="right" width="200" height="37" src="Gematik_Logo_Flag.png"/> <br/>
  
# Digitale Patientenrechnung FHIR Conformance Artifacts 

The following FHIR conformance resources support the exchange of FHIR-based representations of invoices between practitioners, patients, and private insurances within the Telematik infrastructure based on the "Digitale Patientenrechnung" workflow.
 
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
       <ul>
        <li><a href="#release-notes">Release Notes</a></li>
      </ul>     
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>


## About The Project  
This Repo contains the fsh files to the published \Digitale Patientenrechnung files on <[https://simplifier.net/DigitalePatientenrechnung](https://simplifier.net/DigitalePatientenrechnung)> and a script to validate them.
 
### Release Notes
See [ReleaseNotes.md](./ReleaseNotes.md) for all information regarding the (newest) releases.
  
### Prerequisites
1. Clone this project to your local machine.
2. Install the dependencies listed below.
3. Work on the FHIR Profiles, run SUSHI, build and validate them.
 
### Installation
The following tools are recommended when working with the current project:

- Sushi from <https://github.com/FHIR/sushi>
- dotnet-sdk-8.0 from <https://dotnet.microsoft.com/en-us/download/dotnet/8.0>
- firely.terminal from <https://fire.ly/products/firely-terminal/>

We highly recommend you use the VSCode [codfsh Extension](https://marketplace.visualstudio.com/items?itemName=gematikde.codfsh) to validate the ressources locally. 
This extension wraps SUSHI (FHIR Shorthand) and the HAPI Validator, providing comprehensive warning and error messages. It allows you to "run" your .fsh shorthand files to both generate FHIR .json files and validate them simultaneously.
 
## Contributing
If you want to contribute, please check our [CONTRIBUTING.md](./CONTRIBUTING.md).
 
## License
 
Copyright [2025] gematik GmbH
 
Licensed under the **Apache License, Version 2.0** (the "License"); you may not use this file except in compliance with the License.
 
Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the [LICENSE](./LICENSE) for the specific language governing permissions and limitations under the License.

## Additional Notes and Disclaimer from gematik GmbH

1. Copyright notice: Each published work result is accompanied by an explicit statement of the license conditions for use. These are regularly typical conditions in connection with open source or free software. Programs described/provided/linked here are free software, unless otherwise stated.
2. Permission notice: Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
    1. The copyright notice (Item 1) and the permission notice (Item 2) shall be included in all copies or substantial portions of the Software.
    2. The software is provided "as is" without warranty of any kind, either express or implied, including, but not limited to, the warranties of fitness for a particular purpose, merchantability, and/or non-infringement. The authors or copyright holders shall not be liable in any manner whatsoever for any damages or other claims arising from, out of or in connection with the software or the use or other dealings with the software, whether in an action of contract, tort, or otherwise.
    3. We take open source license compliance very seriously. We are always striving to achieve compliance at all times and to improve our processes. If you find any issues or have any suggestions or comments, or if you see any other ways in which we can improve, please reach out to: ospo@gematik.de
3. Please note: Parts of this code may have been generated using AI-supported technology. Please take this into account, especially when troubleshooting, for security analyses and possible adjustments.
 
## Contact
- Techical lead: Peter Menze
- Project lead: Frank Weber 
