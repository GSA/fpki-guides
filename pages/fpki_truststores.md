---
layout: default
title: Trust Stores
permalink: /truststores/
---

## Introduction
This guide provides a high-level overview of what trust stores are, a list of commonly used trust stores, and where to find them.

### Overview
The FPKI operates on the basis of trust.  You probably interact with things on a daily basis which require trust.  Accessing websites, emails, signed documents, and identity credentials all rely on what you are presented with being authentic.  In the FPKI infrastucture, this trust is accomplished through the use of certificates, which verify an entity's identity, known as end entity certificates or identity certificates.  These certificates are issued by Certification Authorities.  For an overview on certificates and Certificate Authorities, see [Certificate Trust for a PIV Credential](http://gsa.github.io/piv-guides/pivcertchains/).

### What is a Trust Store
There are millions of identity certificates in the world currently and the list constantly changes when certificates are revoked or more are issued, far too many for your computer to maintain an up to date list.  Instead, each identity certificate can be traced through the Certificate Authority that issued it, back to a **Root Certificate**.  Your system keeps a list of root certificates which it trusts.  When you are presented with an identity certificate, your system will check to see if it can be traced back to one of the trusted "roots."  This list of trusted root certificates is known as a **Trust Store**

### Commonly Used Trust Stores
Operating systems, browsers, and some programs use trust stores to verify whether the certificate you are being presented should be trusted.  For this guide, we list the five trust stores you will most often deal with:

Trust Library|Includes COMMON?|Trust Store Manager|Platforms serviced
---|---|---|---
Microsoft Root Certificate Program|Yes|Microsoft Management Console|Windows OS, Internet Explorer Browser, Outlook
Apple Root Certificate Program|Yes|Keychain Access utility|OS X, Safari Browser
Mozilla Network Security Services(NSS)|No (application in progress)|Browser Specific|Firefox, Thunderbird
Adobe Address Book|Yes|Trust Store Manager|Adobe Acrobat

>**Note:** Google Chrome uses the underlying trust library of the operating system on Windows or Apple OS X systems.  Linux-based systems don't have a default trust library built-in, in which case Chrome will use the Mozilla NSS library.
<!-- TODO: Add information on trust store management suggestions.  Include all: microsoft, nss, java, etc -->
