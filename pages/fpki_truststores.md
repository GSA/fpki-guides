---
layout: default
title: Trust Stores
permalink: /truststores/
---

This guide provides a high-level overview of what **Trust Stores** are, a list of commonly used application trust stores, and where to find them.

## What is a Trust Store?
There are millions of identity (certificates issued to people) and device certificates issued in the world today, and the list constantly changes as some certificates are revoked and others are issued--far too many for your computer to maintain an up-to-date list.  

Instead, applications and operating systems (OSs) keep a list of **root** certificates that they trust.  From this list, the applications and operating systems issue certificates. (This list of trusted root certificates is contained within a **Trust Store** in either the application or the operating system.) When your computer is presented with an identity or device certificate from a PIV credential, website, e-mail, or other digital item, one of your applications or your operating system or will check to see whether the certificate relates ("chains") to one of the trusted root certificates in the Trust Store. Not only do applications and operating systems keep lists of root certificates, but the Trust Store itself may keep its own list of trusted root certificates that comply with the Trust Store's requirements.  <!-- "that comply with the trust store's requirements" = unclear meaning. -->   

## What are commonly used Trust Stores?
The most commonly used Trust Stores are kept by operating systems, browsers, and applications.  They use their Trust Stores to verify whether a certificate should be trusted.  

The most common Trust Stores are:  <!-- COMMON? below -->

Trust Store|Includes COMMON?|Trust Store Manager|Platforms Serviced|Program Information Location
---|---|---|---|---
Microsoft Root Certificate Program|Yes|Microsoft Management Console|Windows OS, Internet Explorer, Outlook|http://aka.ms/RootCert
Apple Root Certificate Program|Yes|Keychain Access Utility|iOS, WatchOS, OS X, Safari Browser|https://www.apple.com/certificateauthority/ca_program.html
Mozilla Network Security Services (NSS)|No (application in progress)|Browser Trust Store|Firefox, Thunderbird, Linux OSs|https://www.mozilla.org/en-US/about/governance/policies/security-group/certs/policy/
Adobe Approved Trust List|Yes|Application Trust Store|Adobe Acrobat|https://www.apple.com/certificateauthority/ca_program.html
Java Root Certificate Program|No (pending application)|Java Applet|Java Distributions|http://www.oracle.com/technetwork/java/javase/javasecarootcertsprogram-1876540.html
Google|No|Google Admin Console|Chrome Browser, Android, and ChromiumOS|https://www.chromium.org/Home/chromium-security/root-ca-policy
Opera|No longer operates its own program and relies upon Mozilla.

>**Note:** Google Chrome uses the underlying Trust Store for the Windows operating system or Apple OS X.  Linux-based systems distribute the Mozilla NSS Library, which each Linux version may modify. Google is currently developing its own program similar to Mozilla's NSS Library.

## How do I manage a Trust Store?

**TODO:  Add the info from the trust store guide from FPKI** 

## How do I check which FPKI certificate policies are trusted by Adobe?

You can read it in Acrobat by opening the Preferences > Signatures > Identities & Trusted Certificates > Trusted Certificates.
Then in the list of certificates, you choose the one from Federal Common Policy CA and select “Certificate details”.
In the Policies tab you can find “Policy Restrictions” with the comma separated list of OIDs in Certificate Policies.
 
This is the current list for Federal **COMMON** Policy CA:

Common Policy                                 | Common OID                | Certificate Use                                                                   |
|-----------------------------------------------|---------------------------|-----------------------------------------------------------------------------------|
| Common Hardware                               | 2.16.840.1.101.3.2.1.3.7  | PIV and Federal Bridge Medium Hardware Token                                      |
| Federal Bridge Medium Hardware Commercial Best Practice* | 2.16.840.1.101.3.2.1.3.15 | Federal Bridge Medium Hardware Token (PKI Trusted Roles may not be U.S. Citizens) |
| Common High                                   | 2.16.840.1.101.3.2.1.3.16 | High Assurance Policy                                                             |
| PIV-I Hardware                                | 2.16.840.1.101.3.2.1.3.18 | PIV-I                                                                             |
| SHA-1 Hardware                                | 2.16.840.1.101.3.2.1.3.24 | CAC and SHA-1 Medium Hardware Tokens through SHA-1 Federal Root CA                |

>**Note:** Commercial Best Practice (CBP) are issued against the same policy requirements as Federal Bridge Medium Hardware except the trusted roles who issue the certificates may not be U.S. Citizens.

## How do I set dynamic path validation in Windows operating systems?

Dynamic path validation differs from static in that the certificate validation software will build the
path based on the AIA entry in the certificate. If the FCPCA Trust Anchor is installed, rather than
importing all intermediate CA certificates, enable dynamic path validation in Microsoft Windows
and let CAPI discover and validate intermediate certificates that are required to validate a
certificate.

To set dynamic path validation, there is a registry setting.  All registry settings for managed government computers should use group policy objects or automated configuration management tools available in your agency.

* Under the HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Cryptography\OID\EncodingType 0\CertDllCreateCertificateChainEngine\Config folder, create a new
DWORD entry.
* Add _MaxAIAUrlRetrievalCertCount_ as the name
* Set the value to “30”
* A reboot is required 

