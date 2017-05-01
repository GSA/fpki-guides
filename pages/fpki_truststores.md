---
layout: default
title: Trust Stores
permalink: /truststores/
---

This **Trust Stores** guide provides a high-level overview of what **Trust Stores** are, a list of commonly used Trust Stores, and how to view the certificates in a Trust Store. 

{% include alert-info.html heading = "Network Domain Trust Store Configurations" content="You can find information specific to Trust Stores and how to configure your network domain to trust your users and their Personal Identity Verification (PIV) credentials on the [Network Authentication Trust Stores](https://piv.idmanagement.gov/networkconfig/trustedroots) page." %}


## What is a Trust Store?
In order to understand what a Trust Store is and its purpose, it is important to understand certificate trust and how it works. You can learn about certificate trust, certificate chains, and revocation by reviewing [this certificate trust page](https://piv.idmanagement.gov/pivcertchains/).

There are millions of identity (certificates issued to people) and device certificates issued in the world today, and the list constantly changes as some certificates are revoked and others are issued--far too many for your computer to maintain an up-to-date list.  

Instead, your operating system (OS) or application on your computer keep a list of **trusted root certificates** in a **Trust Store**. When your computer is presented with an identity or device certificate from a PIV credential, website, e-mail, or other digital item, either your OS or an application will verify whether or not the certificate relates ("chains") to one of the trusted root certificates in the Trust Store.  


## What are the most commonly used Trust Stores?
The most commonly used Trust Stores are kept by applications, OSs, and browsers. Below is a table of commonly used Trust Stores, if they support the Federal Common Policy Certification Authority (COMMON) out-of-the-box, and examples of services utilizing the specified type of Trust Store.

Trust Store|Includes COMMON?|Examples of Services Utilizing this Trust Store
---|---|---|---
[Microsoft Root Certificate Program](http://aka.ms/RootCert)|Yes|Windows OS, Internet Explorer, Outlook
[Apple Root Certificate Program](https://www.apple.com/certificateauthority/ca_program.html)|Yes|iOS, WatchOS, OS X, Safari Browser
[Mozilla Network Security Services (NSS)](https://www.mozilla.org/en-US/about/governance/policies/security-group/certs/policy/)|No (application in progress)|Firefox, Thunderbird, Linux OSs
[Adobe Approved Trust List](https://helpx.adobe.com/acrobat/kb/approved-trust-list2.html)|Yes|Adobe Acrobat
[Java Root Certificate Program](http://www.oracle.com/technetwork/java/javase/javasecarootcertsprogram-1876540.html)|No (pending application)|Java Distributions
[Google](https://www.chromium.org/Home/chromium-security/root-ca-policy)|No|Chrome Browser, Android, and ChromiumOS
Opera|No longer operates its own program; relies on Mozilla

{% include alert-info.html heading = "Google Chrome" content="Google Chrome uses the underlying Trust Store for the Windows OS or Apple OS X.  Linux-based systems distribute the Mozilla NSS Library, which each Linux version may modify. Google is currently developing its own program similar to Mozilla's NSS Library." %}


## How do I view the certificates in my Trust Store?

Instructions for viewing certificates in a Trust Store can be reviewed [on this page](https://piv.idmanagement.gov/details/#viewing-your-piv-credential-certificates). This is specifically for viewing PIV certificates, but is the general process for viewing any certificates in your Trust Store.
