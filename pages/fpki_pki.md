---
layout: default
title: About Public Key Infrastructure
permalink: /pki/
---

The topics contained in these Federal Public Key Infrastructure (FPKI) Guides will help program managers and engineers understand both Public Key Infrastructure (PKI) and FPKI--what they are and how they work.

* [What is Public Key Infrastructure?](#what-is-public-key-infrastructure?)
* [Why Use PKI?](#why-use-pki?)
* [What are the Components of a PKI?](#what-are-the-components-of-a-pki?)
* [What is a Digital Signature?](#what-is-a-digital-signature?)
* [What is Encryption?](#what-is-encryption?)
* [What are the Different Types of Certificates and their Purpose?](#What-are-the-different-types-of-certificates-and-their-purpose?)


## What is Public Key Infrastructure (PKI)?
PKI provides for public key encryption of data and digital signature services. <!-- This paragraph needs a more complete, concise definion of PKI.  The most important factor appears to be "encryption" since it appears first...? Will a program manager understand what "digital signature services" entail? --> It is implemented through specific policies, processes, server platforms, software, and workstations. This "system" is used to administer public key certificates and public-private "key pairs" and includes services that issue, maintain, and revoke public key certificates.

PKI uses public key (PK) cryptography, which uses public and private key pairs to encrypt and decrypt data. Public keys may be disseminated widely; however, a private key is known only to the owner (senders and receivers). A sender uses a private key to encrypt unprotected information (i.e., transform plaintext to ciphertext). A receiver uses a corresponding private key to either: (a) transform the ciphertext back into plaintext, (b) verify the sender’s identity, or (c) verify the data’s integrity, or some combination of these options. <!-- Doesn't say how the data is encrypted, decrypted, etc. -->

![Example of Public Key Infrastructure]({{site.baseurl}}/img/PKI-image1.jpg){:style="float:center"}

## Why Use PKI?
PKI is "high assurance," which means that **Relying Parties** <!-- Need to define "Relying Party." --> can have a high degree of confidence in its ability to secure data. For example, PKI provides much stronger authentication method than a userID and password. As a result, PKI helps organizations meet their security, business, and compliance needs.<!-- "compliance" relates to what? -->

|Benefit| Description|
|-------|------------|
|Enhanced Security|PKI helps to meet four core aspects of security: data integrity, confidentiality, identification and authentication, and non-repudiation.|
|Increased Compliance|PKI helps organizations to comply with laws and mandates, such as Federal Information Security Modernization Act (FISMA), E-Gov Act, Government Paperwork Elimination Act (GPEA), and Health Insurance Portability and Accountability Act (HIPAA).|
|Improved Business Capabilities|PKI helps to reduce costs/burdens and increase efficiency through electronic processes and capabilities.|

## What are the Components of PKI?
The four components of PKI include **Certificate Authorities (CAs)**, **Registration Authorities**, **repositories**, and **archives**. <!-- How do components differ from the "system" described in "What is PKI" above? Only 4 components? -->There are two types of PKI users: **Certificate Holders** and **Relying Parties**. A fifth, optional component is the **Attribute Authority**. These components and related functions are described in detail in the following table.

|PKI Component| Description|
|-------|------------|
|Certificate Authority (CA)|Issues a public key certificate for each identity, confirming that the identity has the appropriate credentials.|
|Registration Authority (RA)|Trusted by the CA to register or vouch for the identity of users to the CA.|
|Repository|Store of active public key certificates and Certificate Revocation Lists for a CA system.|
|Archive|Database of information to be used in settling future disputes. The business of the archive is to store and protect sufficient information to determine if a digital signature on an “old” document should be trusted.|
|Public Key Certificate|For each identity, confirms that the identity has the appropriate credentials. A digital certificate typically includes the public key, information about the identity of the party holding the corresponding private key, the operational period for the certificate, and the CA’s own digital signature.|
|Certificate Revocation List| List of certificates that have been revoked, and should no longer be relied upon.|
|PKI Users|Organizations or individuals that use the PKI, but do not issue certificates. This includes the relying party who relies on the certificate to know, with certainty, the public key of another entity; and the certificate holder that is issued a certificate and can sign digital documents.|

## What is a Digital Signature?
A digital signature is the electronic equivalent of a written signature. A digital signature can be used to provide assurance that the claimed signatory signed the information. In addition, a digital signature may be used to detect whether the information was modified after it was signed (i.e., to detect the integrity of the signed data). These assurances may be obtained whether the data was received in a transmission or retrieved from storage.

The digital signature algorithm includes a signature generation process and a signature verification process. A signatory uses his/her private key to generate a digital signature on data. A recipient uses the corresponding public key to verify the authenticity of the signature. Each signatory has a public and private key and is the owner of that key pair.

Digital signatures uses cryptographic transformation of data that, when properly implemented, provides a mechanism for verifying origin authentication, data integrity and signatory non-repudiation.

![Example of digital signature process]({{site.baseurl}}/img/PKI-image2.jpg){:style="float:center"}

## What is Encryption?
Encryption allows a user to hide information from others. It uses a complex mathematical algorithm to convert readable information (plaintext) into a seemingly random set of characters (ciphertext) that is unreadable by those without a special key in which to decrypt it. Those that possess the key can decrypt the ciphertext to view the plaintext again.
PKI-based encryption is a very strong way to meet information confidentiality and privacy objectives.

![Example of encryption process]({{site.baseurl}}/img/PKI-image3.jpg){:style="float:center"}

## What are the Different Types of Certificates and their Purpose?
In PKI, digital certificates are assigned specific uses. Some of the different certificate types are:

|Certificate Type|Purpose|
|-------|------------|
|Digital Signature Certificate|Used for digitally signing artifacts such as documents or messages.|
|Digital Encryption Certificate|Used for encrypting artifacts such as documents or messages.|
|Content Signing Certificate|Used for signing objects on cards such as PIV Cards.|
|Authentication Certificate|Used to establish confidence of authenticity such as the validity of a person’s identity.|
|Card Authentication Certificate|Used to authenticate a card (e.g., a PIV or PIV-I Card) for an interoperable environment.|
|Key Management Certificate|Used to support key establishment and transport.|
