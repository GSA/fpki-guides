---
layout: default
title: Trust Stores
collection: truststores
permalink: /truststores/
---

This is a high-level overview of what application trust stores are and a list of commonly used trust stores and settings.  

* [What is a Trust Store?](#what-is-a-trust-store)
* [What are the most commonly used Trust Stores?](#what-are-the-most-commonly-used-trust-stores)
* [How do I set dynamic path validation for the Trust Store in Windows operating systems?](#how-do-i-set-dynamic-path-validation-for-the-trust-store-in-windows-operating-systems)
* [How do I check for which Federal PKI certificate policies are trusted by Adobe?](#how-do-i-check-which-federal-pki-certificate-policies-are-trusted-by-adobe)


### What is a Trust Store?
There are millions of identity certificates issued to people and devices around the world.  Certificates constantly change as some are revoked and others are issued&mdash;far too many for your computer to maintain an up-to-date list.  

Instead, a list of **trusted root certificates** is maintained.  When you are presented with a person or device certificate from a PIV credential, website, email, or some other digital item, your operating system or application will check to see whether the presented certificate has a valid path to one of the trusted root certificates in its trust store. (_Certificate store_ is another term used for trust store.)

### What are the most commonly used Trust Stores?
Operating systems, browsers, and some commercial software use trust stores to verify whether a certificate with which you are being presented should be trusted.  

Here are some common trust stores, and whether the Federal Common Policy CA (COMMON) root certificate is included and distributed by _default_.

{% include alert-info.html content="The Federal Common Policy CA root certificate will be removed from both the Microsoft and Apple Trust Stores.  Please see the Announcements section for more information. " %} 

Trust Store|Includes FCPCA?<br>(COMMON)|Trust Store Manager|Platforms Serviced|Program Information Location
---|---|---|---|---
Microsoft Trusted Root Certificate Program|Yes|Microsoft Management Console|Windows OS, Internet Explorer Browser, Outlook|http://aka.ms/RootCert
Apple Root Certificate Program|Yes|Keychain Access Utility|macOS, iOS, tvOS, WatchOS, Safari Browser|https://www.apple.com/certificateauthority/ca_program.html
Mozilla Network Security Services (NSS)|No |Browser Trust Store|Firefox, Thunderbird, Linux Operating Systems|https://www.mozilla.org/en-US/about/governance/policies/security-group/certs/policy/
Adobe Approved Trust List|Yes|Application Trust Store|Adobe Acrobat|https://helpx.adobe.com/acrobat/kb/approved-trust-list2.html
Java Root Certificate Program|No (pending application)|Java Applet|Java Distributions|http://www.oracle.com/technetwork/java/javase/javasecarootcertsprogram-1876540.html
Google|No|Google Admin Console|Chrome Browser, Android OS, Chromium OS|https://www.chromium.org/Home/chromium-security/root-ca-policy
Opera|No longer operates its own program and relies on Mozilla

{% include alert-info.html content="Google Chrome uses the Trust Store of the operating system on Microsoft, Apple, and Android systems. Linux-based systems distribute the Mozilla NSS Library, which may be modified by each version of Linux." %}


### How do I set dynamic path validation for the Trust Store in Windows operating systems?

With dynamic path validation (as opposed to static path validation), the certificate validation libraries will build the certificate chain based on the Authority Information Access (AIA) entry in the certificate.  

Dynamic path validation is a registry setting:

  1. HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Cryptography\OID\EncodingType 0\ CertDllCreateCertificateChainEngine\Config
  1. Create a new DWORD entry.
  2. Add **_MaxAIAUrlRetrievalCertCount_** as the **name**.
  3. Set the value to **30**.
  4. Reboot your system (required). 

All registry settings for managed Federal Government computers should use group policy objects or the automated configuration management tools available in your agency. 

### How do I see which Federal PKI certificate policies are trusted by Adobe?

Federal PKI certificates may be used for digitally signing documents between federal agencies and with business partners.  Adobe is just one option used for digital signatures.

A common question is "which certificate policies are trusted?" You can view the certificate policies that are trusted in Adobe Acrobat:

  1. Open Adobe Acrobat.  
  1. _Edit_ > _Preferences_ > _Signatures_ > _Identities & Trusted Certificates_.
  2. Choose _Trusted Certificates_ from the left-hand sidebar.  
  3. Choose _Federal Common Policy CA_ and then the _Certificate Details_ tab.
  3. Choose the _Certificate Viewer_ window, and click the _Policies_ tab to see _Policy Restrictions_. 
  4. In _Certificate Policies_, you will see a comma-separated list of policy Object Identifiers (OIDs).


The current policy OIDs list for the Federal Common Policy CA is:

| Common Policy                                 | Common OID                | Certificate Use                                                                   |
|-----------------------------------------------|---------------------------|-----------------------------------------------------------------------------------|
| Common Hardware                               | 2.16.840.1.101.3.2.1.3.7  | PIV and Federal Bridge Medium Hardware Token                                      |
| Federal Bridge Medium Hardware Commercial Best Practice* | 2.16.840.1.101.3.2.1.3.15 | Federal Bridge Medium Hardware Token (PKI Trusted Roles may not be U.S. citizens) |
| Common High                                   | 2.16.840.1.101.3.2.1.3.16 | High Assurance Policy                                                             |
| PIV-I Hardware                                | 2.16.840.1.101.3.2.1.3.18 | PIV-Interoperable                                                                 |
| SHA-1 Hardware                                | 2.16.840.1.101.3.2.1.3.24 | SHA-1 Medium Hardware Tokens through SHA-1 Federal Root CA                |

