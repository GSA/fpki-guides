---
layout: default
title: Trust Stores
permalink: /truststores/
---

This **Trust Stores** guide provides a high-level overview of what **Trust Stores** are, a list of commonly used application trust stores, and where to find them.


## What is a Trust Store?
There are millions of identity (certificates issued to people) and device certificates issued in the world today, and the list constantly changes as some certificates are revoked and others are issued--far too many for your computer to maintain an up-to-date list.  

Instead, each application and the operating system (OS) on your computer keep a list of **trusted root certificates** in a **Trust Store** within the specific application or the OS. When your computer is presented with an identity or device certificate from a PIV credential, website, e-mail, or other digital item, either an application or the OS will verify whether or not the certificate relates ("chains") to one of the trusted root certificates in the Trust Store.  


## What are the most commonly used Trust Stores?
The most commonly used Trust Stores are kept by applications, OSs, and browsers. <!-- Best to refer to these in same order as before to reduce confusion.  Browsers are not mentioned or discussed in the previous section --> <!-- Second sentence here (deleted) was essentially a repeat of 3rd sentence above. -->  


## The most common Trust Stores belong to what vendors? 

Trust Store|Includes COMMON?|Trust Store Manager|Platforms Serviced|Program Information Location
---|---|---|---|---
Microsoft Root Certificate Program|Yes|Microsoft Management Console|Windows OS, Internet Explorer, Outlook|http://aka.ms/RootCert
Apple Root Certificate Program|Yes|Keychain Access Utility|iOS, WatchOS, OS X, Safari Browser|https://www.apple.com/certificateauthority/ca_program.html
Mozilla Network Security Services (NSS)|No (application in progress)|Browser Trust Store|Firefox, Thunderbird, Linux OSs|https://www.mozilla.org/en-US/about/governance/policies/security-group/certs/policy/
Adobe Approved Trust List|Yes|Application Trust Store|Adobe Acrobat|https://helpx.adobe.com/acrobat/kb/approved-trust-list2.html <!--Chunde attempting to find the correct URL for Adobe.  Apple.com is obviously a mistake.-->
Java Root Certificate Program|No (pending application)|Java Applet|Java Distributions|http://www.oracle.com/technetwork/java/javase/javasecarootcertsprogram-1876540.html
Google|No|Google Admin Console|Chrome Browser, Android, and ChromiumOS|https://www.chromium.org/Home/chromium-security/root-ca-policy
Opera|No longer operates its own program; relies on Mozilla

>**Note:** Google Chrome uses the underlying Trust Store for the Windows OS or Apple OS X.  Linux-based systems distribute the Mozilla NSS Library, which each Linux version may modify. Google is currently developing its own program similar to Mozilla's NSS Library.


## How do I manage a Trust Store?

This section will be added in a future update to the FPKI Guides. <!-- Clarify audience and add instructions based on audience.-->


## How do I find out which FPKI certificate policies are trusted by Adobe? <!-- Adobe is highlighted because Adobe is the most common vendor related to FPKI certificates?  If so, we should state that.  I captured the extra steps using Adobe Reader DC. -->

  1. Go to Adobe Acrobat.  Go to **Edit > Preferences > Signatures > Identities & Trusted Certificates**.
  2. Click on **Trusted Certificates** from the left-hand sidebar.  
  3. Then, click on **Federal Common Policy CA**, and click on the **Certificate Details** tab.
  3. In the **Certificate Viewer** window, click on the **Policies** tab, and you will see a **Policy Restrictions** area. 
  4. In the **Certificate Policies** box, you will see a comma-separated list of Object Identifiers (OIDs). <!-- Is an OID = a "FPKI certificate policy," as mentioned in Heading above? -->
 

This is the current list for the **Federal COMMON Policy CA**:


Common Policy                                 | Common OID                | Certificate Use                                                                   |
|-----------------------------------------------|---------------------------|-----------------------------------------------------------------------------------|
| Common Hardware                               | 2.16.840.1.101.3.2.1.3.7  | PIV and Federal Bridge Medium Hardware Token                                      |
| Federal Bridge Medium Hardware Commercial Best Practice* | 2.16.840.1.101.3.2.1.3.15 | Federal Bridge Medium Hardware Token (PKI Trusted Roles may not be U.S. Citizens) |
| Common High                                   | 2.16.840.1.101.3.2.1.3.16 | High Assurance Policy                                                             |
| PIV-I Hardware                                | 2.16.840.1.101.3.2.1.3.18 | PIV-I                                                                             |
| SHA-1 Hardware                                | 2.16.840.1.101.3.2.1.3.24 | CAC and SHA-1 Medium Hardware Tokens through SHA-1 Federal Root CA                |

>**Note:** Commercial Best Practices (CBPs) are issued against the same policy requirements as **Federal Bridge Medium Hardware**, except the trusted roles who issue the certificates may not be U.S. citizens.


## How do I set dynamic path validation in Windows operating systems? <!-- We should explain what dynamic path validation is. -->

With dynamic path validation (as opposed to static path validation), the certificate validation software will build the path based on the Authority Information Access (AIA) entry in the certificate.  For Microsoft Windows OSs, do this: 

  1. If the **FCPCA Trust Anchor** is installed (rather than importing all Intermediate CA Certificates), enable **Dynamic Path Validation**.  
  2. Let Microsoft Cryptographic Application Programming Interface (CAPI) discover and validate Intermediate Certificates that are required to validate a certificate. <!-- This sentence sounds redundant. -->

To set dynamic path validation, you must instate a required registry setting. (**Note:** All registry settings for managed Federal Government computers should use group policy objects or the automated configuration management tools available in your agency.) To change the registry setting, do this: <!-- What is a group policy object?  -->

  1. Under the **HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Cryptography\OID\EncodingType 0\ CertDllCreateCertificateChainEngine\Config** folder, create a new DWORD entry.
  2. Add **_MaxAIAUrlRetrievalCertCount_** as the **name.**
  3. Set the value to **30.**
  4. Do a system reboot (required). 
  

## How do I download and install the FCPCA Trust Anchor?

  1. Download the **FCPCA Trust Anchor** from http://http.fpki.gov/fcpca/fcpca.crt
  2. Click on the downloaded **fcpca.crt** file, and click on the **Details** tab. 
  3. Scroll to the bottom of the page and verify the thumbprint matches: **90 5f 94 2f d9 f2 8f 67 9b 37 81 80 fd 4f 84 63 47 f6 45 c1**.
  4. Then, verify the subject matches: **cn=Federal Common Policy CA, ou=FPKI, o=U.S. Government, c=US**.
  4. Click on the **General** tab, and then click the **install certificate** button.
  5. Select the **user** or **local machine**, depending on your need.  (If you are unsure, select **user**.)
  6. To ensure that the FCPCA Trust Anchor is installed in the Trusted Root Store, select **place in the following store** and select **trust root certification authorities**.
  7. Review the details to ensure that everything is correct. Then, click **Finish**.
  
  
## How do I download and install the FPKI Intermediate and Issuing CA Certificates?

  1. Download the following **P7** files: 
     * http://http.fpki.gov/fcpca/caCertsIssuedByfcpca.p7c
     * http://http.fpki.gov/bridge/caCertsIssuedByfbca2013.p7c
     * http://http.fpki.gov/sha1frca/caCertsIssuedBysha1frca.p7c
  2. Then, do a Windows search for **mmc.exe** (Microsoft Management Console). 
  3. Once the **mmc.exe** opens, click on **CTRL + M** to open the snap-in menu.
  4. Click on **Certificates** and **Add**.  Then, click on **OK**.  (A tree hierarchy appears with the different certificate folders.)
  5. Click on the **Intermediate Certificate Authorities** folder, and then click on the **Certificates** subfolder.
  6. Click on the **Action** tab from the the top navigation bar and then **Import**. 
  7. Follow the prompts to import the downloaded FPKI P7 files from Step 1.

To view a list of more FPKI CA certificates, click **here**. <!-- broken link; question out to Chunde -->


## How do I manage a Trust Store on a Domain Controller?

First, you will need to add a **Root CA certificate** to the **Domain Controller Trust Store**.  Do this:

  1. Follow the steps in the previous section to download and install an **FCPCA Trust Anchor**.
  2. Open a command-line prompt as an Administrator on the **Forest Domain Controller**. 
  3. Type: **certutil –f –dspublish .crt2 RootCA** 
  4. View the **Enterprise Trusted Root.**  Then, type: **certutil –viewstore –enterprise root**

  Once the FCPCA Trust Anchor has been installed in the Active Directory (AD) Forest’s Trusted Root CA Store, the Issuing CAs will be published in the **Network Authentication (NTAuth) Store**.  This will prevent the ability of a fraudulent user’s smartcard with a valid userPrincipalName (UPN) within the Subject Alternative Name (SAN) field from being issued by a non-trusted Issuing CA.

  5. Open a command-line prompt as an Administrator on the **Forest Domain Controller**. 
  2. Type:  **certutil –dspublish –f .cer NTAuthCA** 
  3. Repeat Step 2 for all Issuing CAs.
  4. View the **NTAuth Trusted Root**, and then type: **certutil –viewstore –enterprise NTAuth** 

While not required, you can improve the speed of certificate validation by publishing the **Intermediate CAs** to the domain’s **Intermediate Certificate Store**.  Do this:

  1. Open a command prompt as an Administrator on the **Forest Domain Controller**. 
  2. Type: **certutil –dspublish –f .cer subCA** 
  3. Repeat Step 2 for all Intermediate CAs 
  4. View the **NTAuth Trusted Root**, and type: **certutil –viewstore –enterprise**
  5. Finally, to propagate the domain controller change, type: **gpupdate /force** 
  

## How do I fix certificate validation looping in the Windows operating systems?

**Certificate validation looping** occurs when a certificate validates past the FCPCA Trust Anchor.  This issue can be caused by a misconfigured Trust Store and may be OS-specific (e.g., Microsoft CAPI uses the certificate path with the most information against which certificates are validated in the Microsoft Trust Store). Because the FCPCA is cross-certified with the Federal Bridge Certificate Authority, it is possible that a Federal Government certificate could validate to a commercial Trust Store.  

To fix certificate validation looping, do this:

  1. Do a Windows search for **mmc.exe** (Microsoft Management Console). 
  2. Once the **mmc.exe** opens, click on **CRTL + M** to open the snap-in menu.
  3. Click on **Certificates** and **Add**.  Then, click on **OK**.  (A tree hierarchy appears with the different certificate folders.) 
  4. Click on the **Intermediate Certificate Authorities** folder, and then click on the **Certificates** subfolder.
  5. Sort on the **Issued To** field. 
  6. Delete all certificates **issued to** the Federal Bridge (i.e., Federal Bridge CA and Federal Bridge CA 2013).  **Do NOT delete the ones issued “by” the Federal Common Policy CA**.
  7. Delete all certificates **issued to** the Federal Common Policy CA.
