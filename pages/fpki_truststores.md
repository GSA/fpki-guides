---
layout: default
title: Trust Stores
permalink: /truststores/
---

This guide provides a high-level overview of what trust stores are, a list of commonly used trust stores, and where to find them.

## What is a Trust Store?
There are millions of identity certificates in the world currently, and the list constantly changes as some certificates are revoked and others are issued - far too many for your computer to maintain an up to date list.  

Instead, your system keeps a list of **root** certificates which it trusts.  When you are presented with an identity certificate from a PIV credential, website, email, or some other digital item, your system will check to see if the certificate chains to one of the trusted **roots**.  

This list of trusted root certificates is known as a **Trust Store.**

## What are commonly used Trust Stores?
Operating systems, browsers, and some commercial software use trust stores to verify whether the certificate you are being presented should be trusted.  

There are four trust stores you will most often interact with.

Trust Store|Includes COMMON?|Trust Store Manager|Platforms serviced
---|---|---|---
Microsoft Root Certificate Program|Yes|Microsoft Management Console|Windows OS, Internet Explorer Browser, Outlook
Apple Root Certificate Program|Yes|Keychain Access utility|OS X, Safari Browser
Mozilla Network Security Services(NSS)|No (application in progress)|Browser Specific|Firefox, Thunderbird
Adobe Address Book|Yes|Trust Store Manager|Adobe Acrobat

>**Note:** Google Chrome uses the underlying trust library of the operating system on Windows or Apple OS X systems.  Linux-based systems don't have a default trust library built-in, in which case Chrome will use the Mozilla NSS library.

## How do I manage a Trust Store?

TODO:  Add the info from the trust store guide from FPKI

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

