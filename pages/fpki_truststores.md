---
layout: default
title: Trust Stores
permalink: /truststores/
---

This guide provides a high-level overview of what **Trust Stores** are, a list of commonly used application trust stores, and where to find them.

## What is a Trust Store?
There are millions of identity (certificates issued to people) and device certificates issued in the world today, and the list constantly changes as some certificates are revoked and others are issued--far too many for your computer to maintain an up-to-date list.  

Instead, each application and the operating system (OS) on your computer keep a list of trusted **root** certificates in a **Trust Store** within the specific application or the OS. From their list of trusted root certificates, the application or the OS issues certificates to people (i.e., identities) and devices. When your computer is presented with an identity or device certificate from a PIV credential, website, e-mail, or other digital item, either an application or the OS will verify whether or not the certificate relates ("chains") to one of the trusted root certificates in the Trust Store. (**Note:** Not only do applications and OSs keep lists of trusted root certificates--Trust Stores themselves sometimes keep a list of trusted root certificates that comply with the Trust Store's requirements.) 

## What are the most commonly used Trust Stores?
The most commonly used Trust Stores are kept by applications, OSs, and browsers. <!-- Best to refer to these in same order as before to reduce confusion.  Browsers are not mentioned or discussed in the previous section --> <!-- Second sentence here (deleted) was essentially a repeat of 3rd sentence above. -->  

## The most common Trust Stores belong to what vendors? 

Trust Store|Includes COMMON?|Trust Store Manager|Platforms Serviced|Program Information Location
---|---|---|---|---
Microsoft Root Certificate Program|Yes|Microsoft Management Console|Windows OS, Internet Explorer, Outlook|http://aka.ms/RootCert
Apple Root Certificate Program|Yes|Keychain Access Utility|iOS, WatchOS, OS X, Safari Browser|https://www.apple.com/certificateauthority/ca_program.html
Mozilla Network Security Services (NSS)|No (application in progress)|Browser Trust Store|Firefox, Thunderbird, Linux OSs|https://www.mozilla.org/en-US/about/governance/policies/security-group/certs/policy/
Adobe Approved Trust List|Yes|Application Trust Store|Adobe Acrobat|https://www.apple.com/certificateauthority/ca_program.html <!--Chunde attempting to find the correct URL for Adobe.  Apple.com is obviously a mistake.-->
Java Root Certificate Program|No (pending application)|Java Applet|Java Distributions|http://www.oracle.com/technetwork/java/javase/javasecarootcertsprogram-1876540.html
Google|No|Google Admin Console|Chrome Browser, Android, and ChromiumOS|https://www.chromium.org/Home/chromium-security/root-ca-policy
Opera|No longer operates its own program; relies on Mozilla

>**Note:** Google Chrome uses the underlying Trust Store for the Windows OS or Apple OS X.  Linux-based systems distribute the Mozilla NSS Library, which each Linux version may modify. Google is currently developing its own program similar to Mozilla's NSS Library.

## How do I manage a Trust Store?

**TODO:  Add the info from the trust store guide from FPKI** 

## How do I find out which FPKI certificate policies are trusted by Adobe? <!--Why is Adobe being highlighted first?  It is listed as the fourth vendor on the table above.  Is Adobe the most common vendor related to FPKI certificates?  If so, we should state that.-->

  1. Go to Adobe Acrobat.  Go to **Edit > Preferences > Signatures > Identities & Trusted Certificates > Trusted Certificates**.
  2. Click on **Trusted Certificates** from the left-hand sidebar.  
  3. Then, click on **Federal Common Policy CA**, and click on the **Certificate Details** tab.
  3. In the **Certificate Viewer** window, click on the **Policies** tab, and you will see a **Policy Restrictions** area. 
  4. In the **Certificate Policies** box, you will see a comma-separated list of Object Identifiers (OIDs). <!-- Is an OID = a "FPKI certificate policy," as mentioned in Heading above? -->
 
This is the current list for the Federal **COMMON** Policy CA:

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

  1. If the **FCPCA Trust Anchor** is installed (rather than importing all intermediate CA certificates), enable **Dynamic Path Validation**.  
  2. Let CAPI discover and validate intermediate certificates that are required to validate a certificate. <!-- Define CAPI.  This sentence sounds redundant. -->

To set dynamic path validation, there is a required registry setting. (**Note:** All registry settings for managed Federal Government computers should use group policy objects or the automated configuration management tools available in your agency.) To change the registry setting, do this: <!-- What is a group policy object?  -->

  1. Under the **HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Cryptography\OID\EncodingType 0\CertDllCreateCertificateChainEngine\Config** folder, create a new DWORD entry.
  2. Add **_MaxAIAUrlRetrievalCertCount_** as the **name.**
  3. Set the value to **30.**
  4. Do a system reboot (required). 

