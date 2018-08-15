---
layout: default 
title: Federal PKI Trust Store Management Script
collection: tools
permalink: tools/trust_store_management/
---

{% include alert-info.html content="Did you know the Federal Common Policy Root CA, often referred to as \"COMMON,\" is being removed from the Microsoft and Apple operating system trust stores? This change will impact PIV authentication processes. See the Announcements and Trust Stores pages on the left navigation for details and solutions." %} 

The Trust Store Management Script (TSMS) is a convenient way to update your agency's Microsoft and Apple trust stores (also called _certificate stores_) with the Certification Authority (CA) certificates for all known PIV/CAC issuers (both Federal PKI and DoD PKI). 

- [How Does This Work?](#how-does-this-work)
- [Application Requirements](#application-requirements)
- [Using the Script](#using-the-script)
     - [Download Script Package](#download-script-package)
     - [Verify Script Package SHA-256 Hash](#verify-script-package-sha-256-hash)
     - [Unpack and Verify Script Package Contents](#unpack-and-verify-script-package-contents)
     - [Run the Script](#run-the-script)
     - [Distribute or Install Script Output](#distribute-or-install-script-output)
- [FAQs](#faqs)

{% include alert-info.html content="This script is intended for Enterprise Administrators and Network Engineers." %}

{% include alert-warning.html content="Many systems rely on Certificate Revocation Lists or Online Certificate Status Protocol responses to validate certificates. After you install the CA certificates from the script output, you may need to adjust firewall rules to obtain certificate revocation statuses from the issuing CAs. If you have questions, please email us at fpki@gsa.gov." %}

<br>

## How Does This Work?
The Trust Store Management Script (TSMS) will help you easily select and bundle CA certificates for all known PIV/CAC issuers. By default, the script will produce a .p7b (Windows) or .mobileconfig Apple Configuration Profile (macOS) containing all PIV issuer CA certificates. Administrators can use the included configuration file (targets.json) to exclude specific certification authority certificates from being included in the output file. 

The script package contains three artifacts:

**1. targets.json**
* This is a JavaScript Object Notation (JSON) formatted configuration file. Eligible CAs for installation are presented in this file, along with several attributes (e.g., subject, issuer, validity dates, serial number, etc.). Any entry with an install status of "TRUE" will be bundled in the output file. 

The example below shows a sample CA entry.

<p align="center">
<b>
TARGETS.JSON - EXAMPLE OF CA CERTIFICATE ATTRIBUTES
</b>
</p>

```
  {
    "ID": "00001",
    "SUBJECT": "Betrusted Production SSP CA A1",
    "ISSUER": "Federal Common Policy CA",
    "VALIDFROM": "12/9/2010 19:55",
    "VALIDTO": "12/9/2020 19:49",
    "SERIAL": "19A",
    "FILENAME": "Betrusted_Production_SSP_CA_A1.cer",
    "THUMBPRINT": "0601bbdad5a28231bc9436750b4f3a484bab06c3",
    "INSTALL": "TRUE"
  },
```

**2. certLoader.py**
* The **certLoader.py** script reads the _targets.json_ file and bundles all CA certificates with an **INSTALL** status set to **TRUE** into the output file.


**3. id-fpki-common-auth** 
* This directory contains the actual CA certificates eligible for installation. These CAs assert the id-fpki-common-auth (2.16.840.1.101.3.2.1.3.13) policy object identifier (OID), required for PIV authentication. See detailed CA certificate information [here]({{ site.baseurl }}/tsmseligiblecacerts/){:target="_blank"}. (**Note:** This is not a configuration file.) 


## Application Requirements

* **Microsoft Windows:** _Python v3.x_ and _OpenSSL_ (**Note:** You'll need to set an OpenSSL environment path variable for the script to work properly.)<br> 
* **Apple macOS:** _Python v3.x_

## Using the Script 

### Download Script Package

Download the script installation package (.zip)&nbsp;&mdash;&nbsp;[Trust Store Management Script](../../tools/TSMS-V1/Trust_Store_Mangagement_Script_V1.zip){:target="_blank"}.

### Verify Script Package SHA-256 Hash

{% include alert-warning.html content="You should never open a .zip file without first verifying its SHA-256 hash." %} 

Verify that the SHA-256 hash of the .zip package matches this one:

   ```
    EC2A7159E42CCA958190E50B18C6B35009234FD23B160731245239A09B36751A
   ```

* **Microsoft Windows**:

    ```
    > certutil -hashfile [DOWNLOAD_LOCATION]\Trust_Store_Mangagement_Script_V1.zip SHA256
    ```
* **Apple macOS**:
    
    ```
    $ shasum -a 256 [DOWNLOAD_LOCATION]/Trust_Store_Mangagement_Script_V1.zip
    ```

### Unpack and Verify Script Package Contents

1. Double-click the .zip package to reveal the **Trust_Store_Mangagement_Script_V1** directory.

1. Unpack the directory to your Desktop. (Update paths in **certLoader.py** if you select a different directory.)

### Run the Script

1. View and optionally edit CA certificate **INSTALL** statuses in the **targets.json** file.

1. Run the script:

     - **Microsoft Windows**:

         ```
         > cd Desktop\Trust_Store_Mangagement_Script_V1
         > certLoader.py
         ```
     - **Apple macOS**:

         ```
         $ cd Desktop/Trust_Store_Mangagement_Script_V1
         $ certLoader.py
         ```
         
1. The command line window will display the certificate details as the script creates the output file.

1. The output file appears on your Desktop (or chosen location). Here are 2 example output files:

     * [Sample .p7b output file](../../tools/TSMS-V1/sample-tsmt-output.p7b){:target="_blank"}
     * [Sample .mobileconfig output file](../../tools/TSMS-V1/sample-tsmt-output.mobileconfig){:target="_blank"}

### Distribute or Install Script Output         
Use your agency's network configuration procedures to distribute or install your selected CA certificates bundle.

- **Microsoft Windows**&nbsp;&mdash;&nbsp;Use _certutil_ or a Group Policy Object to distribute the .p7b file to agency Microsoft domain controllers or share it via an agency intranet website.                     
- **Apple macOS and iOS**&nbsp;&mdash;&nbsp;Use your agency's configuration procedures to distribute the .mobileconfig file to agency Apple devices or share it via an agency intranet website. 

## FAQs

### How often will this script be updated?

Quarterly or as often as needed. 

### How can I give feedback or suggestions?

We welcome your feedback and contributions! Please comment or contribute through GSA's GitHub [FPKI Guides Issues](https://github.com/GSA/fpki-guides/issues){:target="_blank"} or email us at **fpki@gsa.gov**.

### Where can I get help?

We're here for you: email us at **fpki@gsa.gov**.
