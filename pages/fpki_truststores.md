---
layout: default
title: Trust Stores
permalink: /truststores/
---

This guide provides a high-level overview of what application trust stores are, a list of commonly used application trust stores, and where to find them.

## What is an Application Trust Store?
There are millions of identity (certificates issued to People) and device certificates in the world currently, and the list constantly changes as some certificates are revoked and others are issued - far too many for your computer to maintain an up to date list.  

Instead, applications keeps a list of **root** certificates which it trusts to issue certificates.  When you are presented with an identity or device certificate from a PIV credential, website, email, or some other digital item, your system or application will check to see if the certificate chains to one of the trusted **roots** in the application trust store. The trust store may maintain an indepenet list of trusted root certificates which comply with the individual trust store requirements. 

This list of trusted root certificates are contained within what is known as a **Trust Store** in either an application or operating system. 

## What are commonly used Application Trust Stores?
Operating systems, browsers, and some commercial software use trust stores to verify whether the certificate you are being presented should be trusted.  

There are four trust stores you will most often interact with.

Application Trust Store|Includes COMMON?|Trust Store Manager|Platforms serviced|Program Information Location
---|---|---|---
Microsoft Root Certificate Program|Yes|Microsoft Management Console|Windows OS, Internet Explorer Browser, Outlook|http://aka.ms/RootCert
Apple Root Certificate Program|Yes|Keychain Access utility|iOS, WatchOS, OS X, Safari Browser|https://www.apple.com/certificateauthority/ca_program.html
Mozilla Network Security Services(NSS)|No (application in progress)|Browser Specific|Firefox, Thunderbird, Linux Operating Systems|https://www.mozilla.org/en-US/about/governance/policies/security-group/certs/policy/
Adobe Approved Trust List|Yes|Trust Store Manager|Adobe Acrobat|https://www.apple.com/certificateauthority/ca_program.html
Java Root Certificate Program|No (pending application)|Java Applet|Java Distributions|http://www.oracle.com/technetwork/java/javase/javasecarootcertsprogram-1876540.html
Opera|No longer operates its own program and relies upon Mozilla.
Google|No|Google Admin Console|Chrome Browser, Android, and ChromiumOS|https://www.chromium.org/Home/chromium-security/root-ca-policy

>**Note:** Google Chrome uses the underlying trust library of the operating system on Windows or Apple OS X systems.  Linux-based systems distribute the Mozilla NSS Library which may be modified by each version of Linux. Google is working on developing its own program similar to Mozilla.

## How do I manage a Trust Store?

TODO:  Add the info from the trust store guide from FPKI

## How do I check which FPKI certificate policies are trusted by Adobe?

You can read it in Acrobat by opening the Preferences > Signatures > Identities & Trusted Certificates > Trusted Certificates.
Then in the list of certificates you choose the one from Federal Common Policy CA and select “Certificate details”.
In the Policies tab you can find “Policy Restrictions” with the comma separated list of OIDs in Certificate Policies.
 
This is the current list for Federal **COMMON** Policy CA:
| Common Policy                                 | Common OID                | Certificate Use                                                                   |
|-----------------------------------------------|---------------------------|-----------------------------------------------------------------------------------|
| Common Hardware                               | 2.16.840.1.101.3.2.1.3.7  | PIV and Federal Bridge Medium Hardware Token                                      |
| FBCA Medium Hardware Commercial Best Practice* | 2.16.840.1.101.3.2.1.3.15 | Federal Bridge Medium Hardware Token (PKI Trusted Roles may not be U.S. Citizens) |
| Common High                                   | 2.16.840.1.101.3.2.1.3.16 | High Assurance Policy                                                             |
| PIV-I Hardware                                | 2.16.840.1.101.3.2.1.3.18 | PIV-I                                                                             |
| SHA-1 Hardware                                | 2.16.840.1.101.3.2.1.3.24 | CAC and SHA-1 Medium Hardware Tokens through SHA-1 Federal Root CA                |

*Note: Commercial Best Practice (CBP) are issued against the same policy requirements as Federal Bridge Medium Hardware except the trusted roles who issue the certificates may not be U.S. Citizens.

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

