---
layout: page
title: Federal PKI Trust Infrastructure
permalink: /Federal-PKI-Trust-Infrastructure/
---

#1.0 Introduction

The Federal Public Key Infrastructure (Federal PKI) provides the government with a common infrastructure to administer digital certificates and public-private key pairs, including the ability to issue, maintain, and revoke public key certificates.  Key pairs and public key certificates are important underlying elements within the Federal PKI and will be discussed later in this playbook.

The Federal PKI was created out of the E-Government Act of 2002 which directed the General Services Administration to establish and operate the Federal Bridge Certification Authority (sometimes called Federal Bridge or by its acronym FBCA). From this pilot program, the Federal PKI has grown into a diverse PKI ecosystem of hundreds of certification authorities (CAs) for federal and state government agencies as well as foreign and US commercial PKIs. 

The purpose of this document is to help agency relying parties leverage the Federal PKI for their logical and physical identity, credential, and access management (ICAM) requirements by providing a technical overview of the Federal PKI Trust Infrastructure and its PKI operations. 

>Companion material will be collected from agency and industry best practices to provide implementation guidance for relying on Federal PKI certificates. As feedback is collected, more operating system and application instructions will be integrated and updated.

#2.0 So What is Public Key Infrastructure (PKI) Anyway?

In general, a PKI is a comprehensive system that provides public-key encryption and digital signature services. It is implemented as a set of policies, processes, server platforms, software and workstations used for administering public key certificates and public-private key pairs, including the ability to issue, maintain, and revoke public key certificates. A slightly different way to say this is that a PKI binds public keys to entities (such as persons or devices), enables other  entities to verify public key bindings, revokes such bindings, and provides other services critical to managing public keys.  Basic components of a PKI Architecture include:

- **Certification Authority (CA)** - creates, signs, and issues public key certificates.
- **Registration Authority** - collects and verifies each Subscriber’s identity and information for inclusion in the Subscriber’s public key certificate. 
- **Repository** - publicly-accessible database hat holds and allows ((no authentication required) entities to retrieve items such as public key certificates, revocation lists, and certificate policy. 
- **Archive** - database of information to be used in settling future disputes.  Specifically, to store and protect sufficient information to determine if a digital signature on an “old” document should be trusted. 
- **Certificate Status Server** - an optional element that provides status information about certificates on behalf of a CA through online transactions.  
- **Card Management System** - an optional element that manages smart card token content.

Three essential artifacts within a PKI are:

- **Public Key Certificates** - signed data structures that bind attributes of an entity (such as a person or device) with its corresponding public key. Public key certificates are signed by a recognized and trustworthy CA, thus providing a  guarantee that a specific public key belongs to a specific entity, and that the entity possesses the corresponding private key as well.
- **Certificate Revocation Lists** - lists  of certificates that have been revoked and should no longer be relied upon.
- **Certificate Policy** - including a companion Certificate Practice Statement are structured documents that define the practices and procedures to use, administer, and manage certificates in a PKI.

In addition to the basic PKI Architecture componenets and artifacts noted above, there are elements that interact with / leverage the PKI including but not limited to:

- **Relying Party** - a person or non-person entity (e.g., device, process, software application) that has received information that includes a certificate and a digital signature verifiable with reference to a public key listed in the certificate, and will rely on that information.By "rely" we mean use that information to make important decisions such as physical or logical access decisions.
- **Public Key Enabled Applications** - applications that can use PKI, which simply means applications capable of understanding and making use of PKI digital certificates.

##2.1 Why Use PKI?

PKI is a very cost effective, scalable tool to ensure the confidentiality, integrity, and availability of electronic transactions. At its core, PKI provides the following significant business process and security benefits:

- **Strong Authentication** - provides a high degree of confidence that the person. process, or device authenticating is indeed who they say they are.  PKI credentials used in place of traditional forms of identity assertion (e.g., userid/password) strengthen access control. There are no shared secrets or password databases to maintain, and the access control process is based on a cryptographic process that leverages multifactor authentication (for example, something I know – my pin, and something I have - my private key)
- **Strong Digital Signature** – binds the signer to a document and its content or a message such as an eemail message at the time the signature is affixed.  This enhances the ability of business and regulatory transactions to occur in a fully electronic, secure environment, and facilitates the Federal government’s transition to paperless processing.    
- **Technical Non-repudiation** - digital signatures uniquely identify an individual, and provide a chain of trust that links the individual to documents, messages, and other artifacts he/she electronically signs. Because the signer is the only one with access to the private key used to apply the signature, he/she cannot later disavow that he/she applied the signature.
- **Strong Encryption** – provides confidentiality by converting content (e.g., email message, document) into something unreadable to everyine exceot the sender and intended recipient. Since the content is encrypted with an individual’s public key, it can only be decrypted with the individual’s private key, ensuring only the intended recipient can decrypt and view the contents.
- **Integrity** - detects whether content (e.g., a document, information within a message or transaction) has been tampered with accidentally or deliberately. Verifying the content's digital signature includes checking that the received content matches the contet that was there when the signature was applied. Any change to the original content will cause this check to fail and the recipient to be alerted.

##2.2 What is the Technology Underlying PKI?

PKI uses public key cryptography, also called asymmetric cryptography, which is an encryption scheme that uses two mathematically related but not identical keys - a public key and a private key. Very simply put, a key is a string of bits (characters) used by a cryptographic algorithm to transform plain text into an apparently meaningless, random mix of text called cipher text or vice versa.

Unlike symmetric key algorithms that rely on one key to both encrypt and decrypt (essentially a shared secret scheme), each PKI key performs a unique function. The public key is used to encrypt and the private key is used to decrypt.

Given the strength of PKI algorithms, it is extremely difficult, even by brute force, to calculate a private key based on its corresponding public key. In fact, the longer the private key used (length in terms of number of bits), the stronger the protection. That is, the longer the private key, the harder it is to figure out and maliciously use the private key.  As a result, public keys can be shared without concern and used by others to easily encrypt content or verify digital signatures for example. 

Because public keys are very long, they are hard for people to remember.  Accordingly, public keys are stored in and distributed via digital certificates. Private keys, on the other hand, are never shared. They are stored in software, in the operating system, or on hardware devices (e.g., USB token, hardware security module) that have device drivers that allow it to be used with your software or operating system.

The digital certificates themselves are issued by Certification Authorities (frequenlty referred to as CAs), which are a core component of a PKI. In short, a CA is a trusted third party that in addition to issuing digital certificates confirms
the identity of the person associated with a certificate. Think of a CA as the electronic equivalent of a passport office.

##2.3 Hash Algorithms and Hashes

Public key cryptography uses sophisticated mathematical algorithms (also called functions) to create hashes.  A Hash (sometimes referred to as digest) is a hexadecimal number generated from a string of text such that, no two different strings can produce the same hash. Hash Algorithms and their resulting hashes underly all the uses of public key cryptography.

<img src="/img/FPKITI-image2.png"/>

<span id="_Toc430632721" class="anchor"></span>Figure 1. Example of a Hash Function

A hash is a one-way function of the digital data. Any change in the data will change the hash. In the diagram above, notice that each content item the hash algorithm is applied to results in a different hash.  PKI certificates can be used to digitally sign many different types of digital artifacts such as documents, computer code, web sites, application installation packages. The digital signature is an encrypted hash of the data which can be verified to ensure that the data has not changed since it was “signed” by someone in possession of the associated private key. This digital signature offers an easy and scalable method of creating secure transactions that securely identify the parties involved and ensures the data has not been changed in transit.

The simple illustration below ties together the core concepts of PKI private/public key pairs and using hash algorithms to create hashes.  In this basic use case, Bob uses Alice's public key (which has been distributed publicly) as input into a hashing algorithm.  The algorithm then encrypys the message Bob wants to send Alice so as to keep the message confidential. Once the encrypted message is received by Alice, she uses her privat key (that uniquely mathematically corresponds to the public key she distributed publicly) to decrypt the message from Bob.

<img src="/img/FPKITI-image10.png"/>

<span id="_Toc430632721" class="anchor"></span>Figure 2. Simple Example of Encryption/Decryption

#3.0 Federal PKI Overview

The Federal PKI is comprised of Federal government, industry, state and local government, community-of-interest, and other representatives who work collaboratively to leverage the Federal PKI, and to provide trust services for the benefit of the federal government. 

The Federal PKI Policy Authority (sometimes referred to as Policy Authority or by the acronym FPKIPA) was created at the direction of the Federal Chief Information Officers (CIO) Council in 2000 to serve as the Federal PKI governing body. The FPKIPA is an interagency body with voting membership limited to federal agencies who are Shared Service Provider (SSP) customers or who operate federal legacy PKIs.  Other agencies, industry, and state representatives participate in the FPKIPA as observers. The FPKIPA is supported by several policy and technical working groups.

The Federal PKI leverages the technical PKI benefits discussed earlier, such as strong authentication and digital signature, to provide Federal agencies with high-assurance trust services for a wide variety of customers that help improve access to services, improve business processes, improve security posture, increase efficiencies, and ensure compliance with applicable standards. 

Further, the Federal PKI contains the Federal Government's PKI trust anchor, and facilitates trust of PIV, PIV-I, and other government and non-government credentials. It facilitates trusted physical and logical access, document sharing, and communications across Federal agencies, and between Federal agencies and outside bodies. It also facilitates identity/credential federation,  synergy with E-Government and E-Commerce, helps reduce agency costs (e.g., eliminate cost/burden of managing agency-issued credentials, reduce password helpdesk costs), and supports FISMA integrity, confidentiality, and privacy objectives.

So it is clear to see why the Federal PKI is so important to Federal agencies as well as citizens, businesses, and organizations that need access to federal agency services and facilities. It is also clear that the Federal PKI also helps Federal agencies improve program return on investment and meet program objectives 

For all the above technical, business, and compliance reasons, the Federal PKI has become a critical piece of the Federal IT infrastructure, evidenced by its inclusion in FISMA reporting metrics and guidance documents such as NIST Special Publication 800-53 (security controls). That is why it is vital for all agencies to understand the services enabled by the Federal PKI and the part each agency plays in the Federal PKI ecosystem. 

The following highlights four of the many benefits the Federal PKI provides

- **Increased security** through the use of strong authentication, PKI credentials reduce identity theft, data breaches from weak credentials such as username/password, and trust violations. Specifically, PKI closes security gaps of user identification and authentication, encryption of sensitive data, and data integrity.

- **Compliance** - with laws, regulations, and standards as well as resolution of security issues identified in GAO reports. Using the Federal PKI means almost automatic compliance with several executive orders, initiatives, and laws and can be used in contracts to ensure vendor compliance with all government requirements. The Federal PKI compliance team verifies PKI participating CAs are audited and operate in a secure manner.

<img src="/img/FPKITI-fpki_compliance.png"/>

<span id="_Toc430632724" class="anchor"></span>Figure 3. Federal PKI Compliance

- **Improved Interoperability** - with other federal agencies and non-federal entities to trust Federal PKI certificates. The Federal PKI is a federated trust fabric that reduces the need of issuing multiple credentials.

<img src="/img/FPKITI-image5.png"/>

<span id="_Toc430632725" class="anchor"></span>Figure 4. Federal PKI as a Trust Broker

- **Elimination of Redundancy** - the Federal PKI is a trust broker or hub of logical trust, reducing the need for multiple trust agreements and duplicating associated trust agreement tasks.

<img src="/img/FPKITI-image6.png"/>

<span id="_Toc430632726" class="anchor"></span>Figure 5. FPKI Eliminates Redundancy

##3.1 The Federal PKI Trust Infrastructure

The **FPKI Trust Infrastructure** is the technical backbone of the Federal PKI hierarchy. It is the mission-critical PKI owned by the Federal Government that facilitates trust across the Federal PKI fabric. It encompasses CAs, repositories, and other components secured, operated, and maintained on a daily basis by the FPKI Management Authority (FPKIMA) to support Federal PKI operations. Currently, FPKI Trust Infrastructure CAs include:

- **The Federal Common Policy CA** (sometimes referred to as Common, Federal Common CA, Common CA, or as the acronym FCPCA) - 
is the trust anchor for the federal government. Through the Shared Service Provider (SSP) program discussed later in this playbook, authorized CAs under Common CA issue certificates for exclusive use by the federal government for federal employees, contractors, and federal devices to include the PKI certificates on the Personal Identity Verification (PIV) card. Common CA was designed so any certificate issued by a Federal PKI CA can validate to a single point (trust anchor). The Common CA root certificate is distributed in commercial product trust stores, which allows non-federal Relying Parties to trust PKI certificates issued by federal agencies. A root certificate is a self-signed public key certificate that identifies the trust anchor (also referred to as Root CA).

- **The Federal Bridge CA** (sometimes referred to as Federal Bridge, Bridge CA, or as the acronym FBCA) - is the trust hub dedicated to enabling peer-to-peer interoperability among particpating PKIs - both federal and non-federal. The FBCA also supports use and trust of PIV - Interoperable (PIV-I) cards by Federal agencies.  The FBCA may also issue certificates to individuals who operate FPKI Trust Infrastructure CAs. 

- **The SHA-1 Federal Root CA** (sometimes referred to as SHA-1 Root CA or as the acronym SHA1 FRCA) - supports existing Fedeeral PKI participants that still require the deprecated SHA1 signature hash for certificates.

> Any CA in the Federal PKI can be referred to as an “FPKI CA” but only those CAs operated by the FPKIMA are FPKI Trust Infrastructure CAs.

Like all CAs, each FPKI Trust Infrastructure CA has a Certificate Policy defined for it. Accordingly, there is a Common CA Certifcate Policy and there is a Federal Bridge CA Certificate Policy. Each Certificate Policy specifies the different actors for that CA, their roles, and their duties. In addition, each Certificate Policy scopes the applicability of certificates issued under that policy, along with commensurate security requirements, to a particular community and/or class of application.

Operational participation in the Federal PKI is ultimately accomplished via the establishment of a trust relationship between a Particpating PKI and the appropirate FPKI Trust Infrastructure CA. 
- **A trust relationship with the Federal Bridge CA** is manifested by exchanging cross-certificates (CA certificates in general PKI parlance) between the Federal Bridge and one or more CAs designated by the organization operating the Particpating PKI -- this results in a peer-to-peer relationship 
- **A trust relationship with Common CA** is typically manifested by Common CA issuing a cross-certificate to the Participating PKI and not receiving a cross-certificate in return -- this results in the Participating PKI being subordinate to Common CA rather than a peer-to-peer relationship.  In certain scenarios, Common CA engages in a two-way cross-certification with the Participating PKI. 

##3.2 Other PKIs Particpating in the Federal PKI

There are many other PKIs participating in teh Federal PKI - beyond the FPKI Trust Infratsructure.  The remainder of the Federal PKI Community includes participants such as federal and commercial PKIs, SSPs,federal agencies supported by SSPs, non-federal governt PKIS, and community-of-interest external Bridges.  These Federal PKI Affiliates operate their own PKIs or are served by PKIs that have FPKIPA-approved trust relationships with the FPKI Trust Infrastructure.  The approved trust relationships (at specified levels of assurance) allow trusted use of certificates issued by the FPKI Community. More on assurance levels later in this playbook.  The categories of FPKI Affiliates within the Federal PKI include: 

- **Shared Service Providers** - offer out-sourced PKI services to federal agencies (i.e., SSP Customers). SSPs allow Federal agencies to deploy digital credentials without the need to operate and maintain their own PKIs.  SSP PKIs adhere to the Common Policy Certificate Policy and receive a cross-certificate from Common CA with no policy mapping extension, making them subordinate to Common CA. SSPs do not issue Common CA a cross-certificate in return. 
>SSP Customers are part of the Federal PKI because they may operate components of the PKI service on behalf of their own agency, such as Registration Authorities and Card Management Systems. 
>With the release of Office of Management and Budget (OMB) M-05-05, all Federal agencies were required to use SSPs over establishing a PKI unless they were already operating a PKI.

- **Federal Legacy PKIs** – PKIs run by federal government organizations that have successfully completed all steps required to become cross-certified with the Federal Bridge CA,  have been issued a cross-certificate by one of the FPKI Trust Infrastructure CAs, and have issued a cross-certificate back to that FPKI Trust Infrastructure CA. Accordingly, all Federal Legacy CAs operate as two-way cross-certified CAs. 
>Federal Legacy CAs were early adopters of PKI whose systems pre-date Office of OMB Memo M-05-05, which requires the use of SSPs. 
> When a Federal Legacy CA cross-certifies with Common CA rather than the Federal Bridge CA, it operates under a Certificate Policy deemed equivalent to Federal Bridge policies through certificate policy mapping.  Accordingly, a Federal Legacy CA cross-certified with Common CA is also considered a cross-certified CA. When Federal Legacy CAs issue certificates that directly assert Common CA policies, they issue these certificates in accordance with all applicable requirements of Common Certificate Policy.

- **Non-Federal Agency PKIs** -- PKIs operated by commercial vendors; state, local, or tribal governments; and international partners. Non-federal agency PKIs are issued cross-certificates from the Federal Bridge CA that contain policy mappings to one or more Federal Bridge policies. Non-federal Agency PKIs issue a cross-certificate back to the Federal Bridge CA. Non-federal agency PKIs do not assert policies defined in any of the Federal PKI Certificate Policies except in the cross-certificate issued back to the Federal Bridge CA. Rather, Non-federal Agency PKIs operate under their own Certificate Policy.
 
> Note that some commercial PKIs are also approved as SSPs, but must operate under their own Certificate Policy when cross-certified with the Federal Bridge CA and under Federal Common Certificate Policy for their SSP service.

> A commercial PKI that is cross-certified with the Fedeeral Bridge has shown a need to either do business with or provide PKI services to the Federal Government. These PKIs are often referred to as Non-federal Issuers or NFI.

- **External Bridge PKIs** - organizations that operate their own local Bridge CAs that integrate additional external PKIs into their own Bridge CA. External Bridge CAs are typically the trust hub for a particular community of intertest (e.g., education, aerospace).  External Bridge PKIs are issued cross-certificates from the Federal Bridge CA that contain policy mappings to one or more Federal Bridge CA policies. External Bridges issue a cross-certificate back to the Federal Bridge CA. External Bridge PKIs do not assert policies defined in Federal Certificate Policies except in the cross-certificate issued back to Federal Bridge CA. Rather, External Bridges operate under their own Certificate Policy.  External Bridge PKIs are authorized to create further policy mappings to their member PKIs. External Bridge CAs are not intended to be used as trust anchors.

- **Access Certificates for Electronic Services (ACES) PKIs** – PKIs certified by the GSA program operated by a contracted private sector participating CA. Similar to the SSP program of approved vendors issuing certificates with government certificate policies, ACES issue certificates to citizens including authorized business representatives and unaffiliated individuals instead of federal employees.

So now lets look at the big picture. Figure 3 below illustrates how all the PKIs participating in the Federal PKI relate to each other.  Then Figure 4 shows the extent of particpation as of July 2015. Participation is always evolving as PKIs are  added to and on occasion deleted from the Federal PKI. 

<img src="/img/FPKITI-image3.png"/>

<span id="_Toc430632722" class="anchor"></span>Figure 6. FPKI Overview


<img src="/img/FPKITI-image4.png"/>

<span id="_Toc430632723" class="anchor"></span>Figure 7. FPKI Participating PKIs as of July 2015

<span id="_Toc410977225" class="anchor"><span id="_Toc417462913" class="anchor"><span id="_Toc401929211" class="anchor"></span></span></span>

##3.3 Some Things You Need to Understand When Participating in the Federal PKI

The reason why the Federal PKI works so well and particpants as well as relying parties can make well-infomed decisions (like what PKI credentials to accept for what purposes) is because The Federal PKI Policy Authority has established clear technical, operating, and policy concepts, requirements, and best practices.  The following sections highlight some of those core elements.

###3.3.1 Certificate Policies

A PKI certificate is considered trusted at a specific level of assurance based on security requirements for issuance procedures of the certificate and protection of the associated private key. The certificate policy or Object Identifier (OID) asserted in the certificate is associated with the security requirements as defined in a Certificate Policy (CP) and implemented through a Certification Practice Statement (CPS). Figure 7 below is an example of how to identify the criteria of a certificate policy. In this example, the certificate was issued by an FCPCA SSP and asserts policies which are identified in the FCPCA CP. A copy of the CP is publicly available so an individual can verify the trust in the identity and security of that specific OID. It is up to the organization to determine if the security criteria is sufficient to trust the identity being asserted in the PKI certificate based on the level of transaction. Higher assurance credentials should be used for higher risk transactions. The following provides a real-world example of validating a CP:

1.  Bob receives a digitally signed email from John Smith and wants to validate the certificate manually.

2.  Bob clicks on the red ribbon in the email to view the certificate. He finds the root of the certificate is the U.S. Government Common Policy which is the subject name of the Federal Common Policy CA. He can also see the certificate asserts the 2.16.840.1.101.3.2.1.3.7 certificate policy.

3.  Bob finds the Federal Common Policy certificate policy and certification practice statement on the idmanagement.gov website to look up the requirements of this certificate policy. Bob finds that the common hardware certificate is associated with the PIV card meaning the user had to use their PIV card to digitally sign the email. Bob can have a high level of assurance that John Smith from GSA signed this email.

<img src="/img/FPKITI-image7.jpg/">

<span id="_Toc430632727" class="anchor"></span>Figure 8. Manually Validating a Certificate Policy

Luckily for Bob and everyone else, the Federal PKI has taken the work out of manually validating certificates by working with public PKI trust store software and browser vendors to trust certain policies and root certificates.

The FPKI has a total of 25 certificate policies supporting the FBCA and FCPCA for people and non-person (NPE) certificates. The Commercial Best Practices (CBP) identifier on FBCA and SHA1 FRCA certificate policies indicate the trusted roles or individuals assigned a role in certificate issuance do not have to be U.S. citizens. All common (FCPCA) certificate policies denote a US Government (USG) issued and authorized certificate. A hardware (HW) identifier used to signal the private key is generated and protected by a hardware based token for either people or NPE. In the FPKI, SSPs and authorized Federal Agency Legacy PKI are authorized to assert FCPCA OIDs, but no entity is authorized to assert an FBCA policy in subscriber certificates because they are strictly used to map other organizational PKI policies. The risk level referenced in the below table refers to the level of risk associated with transactions accepting certificates issued under the specified certificate policy.

Table 1. List of FPKI Certificate Policies

| Certificate Policy        | OID                        | Purpose                                                                                                                                                             |
|---------------------------|----------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| FBCA-rudimentary          | 2.16.840.1.101.3.2.1.3.1   | Low risk – authentication, signature or encryption of individual person.                                                                                            |
| FBCA-basic                | 2.16.840.1.101.3.2.1.3.2   | Low risk – authentication, signature or encryption of individual person.                                                                                            |
| FBCA-medium               | 2.16.840.1.101.3.2.1.3.3   | Medium risk – authentication, signature or encryption of individual person, group, device, or role.                                                                 |
| FBCA-mediumHW             | 2.16.840.1.101.3.2.1.3.12  | Medium risk – authentication, signature or encryption of individual person, group, device, or role where private key is protected on hardware token.                |
| FBCA-mediumCBP            | 2.16.840.1.101.3.2.1.3.14  | Medium risk – authentication, signature or encryption of individual person, group, device, or role.                                                                 |
| FBCA-mediumHW-CBP         | 2.16.840.1.101.3.2.1.3.15  | Medium risk – authentication, signature or encryption of individual person, group, or role where private key is protected on hardware token.                        |
| FBCA-mediumDevice         | 2.16.840.1.101.3.2.1.3.37  | Medium risk - authentication or encryption of device                                                                                                                |
| FBCA-mediumDevice-HW      | 2.16.840.1.101.3.2.1.3.38  | Medium risk - authentication or encryption of device where private key protected on hardware token.                                                                 |
| FBCA-High                 | 2.16.840.1.101.3.2.1.3.4   | High risk – authentication, signature or encryption of USG individual person, group, role, or device where private key protected on hardware token.                 |
| FBCA-PIVI-HW              | 2.16.840.1.101.3.2.1.3.18  | Medium risk – authentication, signature or encryption of individual person where private key is protected on APL approved smartcard and requires biometric on card. |
| FBCA-PIVI-cardAuth        | 2.16.840.1.101.3.2.1.3.19  | Shows possession of PIV-I card w/o PIN use.                                                                                                                         |
| FBCA-PIVI-contentSigning  | 2.16.840.1.101.3.2.1.3.20  | Signs security objects on PIV-I card.                                                                                                                               |
| SHA1-mediumCBP            | 2.16.840.1.101.3.2.1.3.21  | Medium risk – authentication, signature or encryption of individual person, group, device, or role. (SHA1)                                                          |
| SHA1-mediumHW-CBP         | 2.16.840.1.101.3.2.1.3.22  | Medium risk – authentication, signature or encryption of individual person, group, or role where private key is protected on hardware token. (SHA1)                 |
| SHA1-medium               | 2.16.840.1.101.3.2.1.3.23  | Medium risk – authentication, signature or encryption of individual person, group, device, or role. (SHA1)                                                          |
| SHA1-mediumHW             | 2.16.840.1.101.3.2.1.3.24  | Medium risk – authentication, signature or encryption of individual person, group, or role where private key is protected on hardware token. (SHA1)                 |
| SHA1-devices              | 2.16.840.1.101.3.2.1.3.25  | Medium risk - authentication or encryption of device .(SHA1)                                                                                                        |
| common-policy             | 2.16.840.1.101.3.2.1.3.6   | Medium risk – authentication, signature or encryption of USG individual person, group, device, or role.                                                             |
| common-HW                 | 2.16.840.1.101.3.2.1.3.7   | High risk – authentication, signature or encryption of USG individual person, group, role, or device where private key is protected on hardware token.              |
| common-devices            | 2.16.840.1.101.3.2.1.3.8   | Medium risk – USG authentication or encryption of device.                                                                                                           |
| common-devicesHW          | 2.16.840.1.101.3.2.1.3.36  | Medium risk - authentication or encryption of USG device where private key protected on hardware token.                                                             |
| common-auth               | 2.16.840.1.101.3.2.1.3.13  | High risk - Shows possession of PIV card with PIN use                                                                                                               |
| common-High               | 2.16.840.1.101.3.2.1.3.16  | High risk – authentication, signature or encryption of USG individual person, group, role, or device where private key is protected on hardware token.              |
| common-cardAuth           | 2.16.840.1.101.3.2.1.3.17  | Shows possession of PIV card w/o PIN use.                                                                                                                           |
| common-piv-contentSigning | 2. 16.840.1.101.3.2.1.3.39 | Signs security objects on PIV or Derived PIV.                                                                                                                       |

###3.3.2 Certificate Levels of Assurance

An FPKI certificate can be mapped to an electronic authentication (e-auth) level of assurance. These levels correspond to both the strength of the identity proofing, token, and token and credential management. A higher level of assurance credential can mitigate authentication risk of a higher risk transaction.

Table 2. FPKI Certificate Policies Mapped to E-Auth Assurance Levels (NIST 800-63-2)

| Certificate Policy | ID Proofing | Token | Token and Credential Management | Overall LOA Equivalence |
|--------------------|-------------|-------|---------------------------------|-------------------------|
| Common-Auth PIV-I Auth SHA1 Auth | LOA 4       | LOA 4 | LOA 4                           | LOA 4                   |
| Common –SW         | LOA 4       | LOA 3 | LOA 4                           | LOA 3                   |
| Common-HW  PIV-I HW SHA1-HW             | LOA 4       | LOA 4 | LOA 4                           | LOA 4                   |
| Common-High FBCA-High           | LOA 4       | LOA 4 | LOA 4                           | LOA 4                   |
| FBCA Basic         | LOA 3       | LOA 3 | LOA 3                           | LOA 3                   |
| FBCA Medium FBCA Medium CBP     | LOA 3       | LOA 3 | LOA 4                           | LOA 3                   |
| FBCA MediumHW FBCA MediumHW-CBP   | LOA 3       | LOA 4 | LOA 4                           | LOA 3                   |
| Common-cardAuth PIVI-cardAuth  SHA1-cardAuth       | LOA 4       | LOA 2 | LOA 4                           | LOA 2                   |

Agencies can use the above table to determine which FPKI certificate policy best fit an application’s authentication requirements.

###3.3.3 Certificate Policy Mapping

A certificate policy mapping is when two organizations operating a PKI want to trust each other’s certificates while retaining use of their organizational PKI. They respectively review the other organization’s certificate policies and determine which policies are comparable and then issue a certificate (otherwise known as a cross-certificate) between CAs in their respective PKIs. A cross-certificate will allow a subscriber certificate issued under one CA to be trusted by an application using a root from the other PKI. In the FPKI, policy mapping certifies comparable certificate polices, resolves any comparability issue, facilitates interoperability between government and participating PKIs and is conducted by Agency PKI Subject Matter Experts (SMEs) at the FPKI Policy Authority Certificate Policy Working Group (CPWG). Even though a policy is not mapped, it may validate if it is listed in the certificate policies of one of the CA certificates in the trust path.

Table 3. FCPCA – FBCA Policy Mapping

| FCPCA Policy     | FCPCA OID                 | FBCA OID                  | FBCA Policy          |
|------------------|---------------------------|---------------------------|----------------------|
| common-policy    | 2.16.840.1.101.3.2.1.3.6  | 2.16.840.1.101.3.2.1.3.3  | FBCA-medium          |
| common-High      | 2.16.840.1.101.3.2.1.3.16 | 2.16.840.1.101.3.2.1.3.4  | FBCA-High            |
| common-HW        | 2.16.840.1.101.3.2.1.3.7  | 2.16.840.1.101.3.2.1.3.12 | FBCA-mediumHW        |
| common-devices   | 2.16.840.1.101.3.2.1.3.8  | 2.16.840.1.101.3.2.1.3.37 | FBCA-mediumDevice    |
| common-devicesHW | 2.16.840.1.101.3.2.1.3.36 | 2.16.840.1.101.3.2.1.3.38 | FBCA-mediumDevice-HW |


###3.3.4 How to Identify a Cross-Certificate in the FPKI

The most common cross-certificates in the FPKI are with certificates of the Federal Bridge and Federal Agency Legacy PKI under FCPCA. Figure 8 has an example of a certificate issued by the Federal Bridge which contains a policy mapping so that FPKI participating CA OIDs can validate to FCPCA. Even though there is no mapping for the first policy it will still validate to FCPCA because the policy is asserted in the certificate policy extension.

<img src="/img/FPKITI-image8.jpg"/>

<span id="_Toc430632728" class="anchor"></span>Figure 9. Certificate Policy Mapping in a Certificate

###3.3.5 Certificate Path Validation

Certificate path validation is the process of validating a certificate trust path from the end entity certificate to a trust anchor. Applications use path validation to ensure digitally signed artifacts maintain integrity after being signed and the signature certificate was issued from a trusted CA.

<img src="/img/FPKITI-image9.png"/>

<span id="_Toc430632729" class="anchor"></span>Figure 10. Certificate Path Characteristics

The three most common path validation tools in Windows are the Microsoft Crypto API (CAPI), Online Certificate Service Protocol (OCSP) service or a Server-Based Certificate Validation Protocol (SCVP) service. Approved OCSP and SCVP software can be found on the FICAM Approved Product List (<http://www.idmanagement.gov/approved-products-list>).

1.  **Microsoft CAPI** is the standard tool used when opening a certificate on a Windows OS and is proprietary to Microsoft. It takes the certificate path which has the most information as the most secure path to a Trust Anchor and uses the trusted root certificates in the Microsoft Trust Store. CAPI verifies certificate validation through the Certificate Revocation List (CRL) published by the CA. The CRL publishing is set in the Certificate Policy and can be anything from hours to an end entity issuing CA to a month for trust anchors.

2.  An **OCSP Service** implements an IETF standard with companies creating open source and proprietary products. It is a real-time revocation check of an individual certificate against a revocation list on an OCSP responder. This is a much more efficient check of a certificate’s revocation status than pulling down an entire CRL.

3.  An **SCVP Service** also implements an IETF standard and is similar to Microsoft CAPI, but can be set up as a standalone service for any operating system. It can be set with custom parameters and can also conduct dynamic path discovery and validation. Dynamic path discovery is building the certificate trust path in real-time rather than against the static certificates in a trust store. Dynamic path validation is validating the path as it is discovered. Using static or dynamic path validation and discovery will depend on the system needs and requirements.

<span id="_Toc430633669" class="anchor"><span id="_Toc430692176" class="anchor"></span></span>Resiliency in Certificate and ###5.3.6 Certificate Path Validation

####3.3.5.1 Validation Overview

Central to the trust created by a Public Key Infrastructure is the requirement to check the validity of a given certificate and the validity of the entire certificate path. If an application fails to validate both, the application is subject to a number of potential risks:

-   The certificate having been revoked.

-   The certificate not being valid for the intended use through missing or inappropriate key usage or policy OIDs, e.g., attempt to use an encryption certificate for digital signing.

-   The authority of any of the certification authorities in the certificate’s path having been revoked.

Certificates can be revoked for many reasons, e.g., they were reported lost or stolen or because of a compromise of the certification authority. In any case, certificates that fail validation or path validation should not be trusted.

The ability to perform certificate and certificate path validation depends on an application having access to one or more of the following:

-   The CRLs for the certification authority that issued the certificate and of the certification authorities in the certificate’s path. A CRL contains a list of any certificates issued by the certification authority that have been revoked. This list is often small for root certification authorities, but can become very large for certification authorities that issue end entity (user) certificates for large organizations or organizations with a large turnover. CRL are described in IETF RFC 5280.

> Note that CRLs are typically published on a set schedule by each certification authority. The interval between CRLs can be from hours to many days, in the case of a CA that is normally kept off-line. The CRLs published by the FPKI Root CAs are typically updated twice daily. This publishing schedule lends itself to caching the FPKI CRL data within an organization’s network.

-   OCSP responders for the certification authority that issued the certificate and of the certification authorities in the certificate’s path. To address the issue of transmitting and processing large CRLs, OCSP provides a method to determine the current status of one or more digital certificates by transmitting the identifier of the certificate(s) in question to the OCSP responder which in turn has access to CRL data. The OCSP is described in IETF RFC 6960.

> Depending on the CA and OCSP responder implementation, the OCSP responder may also be able to determine if the certificate in question was never issued by the CA. An application checking only CRLs can only determine if a CA has issued **and** revoked a given certificate. This distinction is important to potentially detect a fraudulently issued certificate.

-   An SCVP server can offload much or all of the validation process by performing either delegated path discovery (DPD) or delegated path validation (DPV) on the behalf of clients. Delegated path discovery is the process of constructing a valid certification path. Delegated path validation is DPD combined with validating the certificates against specified criteria. The SCVP is described in IETF RFC 5055.

> SCVP servers will require access to CRL data and/or OCSP responders to perform their processing.

####3.3.5.2 Validation Resiliency

Using any of the validation technologies implies that applications have access to CRL Repositories, OCSP Responders or SCVP Servers either within or external to the organization. Organizations therefore need to consider the resiliency of their networks along with the resiliency of internal or external CRL Repositories, OCSP Responders or SCVP Servers in order to be able to properly validate certificates. As noted above, CRL data lends itself to caching within an organization’s network vs. making real time requests to the CA’s CRL Repository. OCSP and SCVP are protocols implying real time requests and responses; many OCSP Responders and SCVP Servers will cache CRL data to improve resiliency and performance.

In addition, an organization will have to make policy decisions on whether to allow access to a given physical or logical resource should a certificate not be able to be validated due to an outage of the network or internal or external CRL Repositories, OCSP Responders or SCVP Servers. That is, does the application fail safe/secure or fail open/insecure?

The Federal PKI Management Authority has taken many steps to ensure the resiliency of the FPKIMA’s CRL Repositories including geographically diverse facilities, diverse facility vendors, diverse network vendors and automated failover technologies. However, this only addresses the Federal Root CAs. An organization needs to consider the resiliency of other certification authorities in the path between the Federal Root CAs and their end entity certificates, combined with the resiliency of the organization’s networks used to access validation data.

Some organization will choose to cache CRL data at their organization’s network edge or the edge of a campus or building network. Organizations can implement OCSP Responders or SCVP Servers centralized to the organization or within a campus or building network. These types of architectural decisions can mitigate the impact of network outages that isolate a building or campus.



Appendix A - Acronyms
=====================

**APL** – Approved Products List

**ATO** – Authority to Operate

**CA** – Certification Authority

**CAC** – Common Access Card

**CAPI** – Microsoft Crypto Application Programming Interface

**CBP** – Commercial Best Practice

**CP** – Certificate Policy

**CPS** – Certification Practice Statement

**CRL** – Certificate Revocation List

**CPWG** – Certificate Policy Working Group

**EGCA** – E-Governance Certification Authority

**FBCA** – Federal Bridge Certification Authority

**FCPCA** – Federal Common Policy Certification Authority

**FICAM** – Federal Identity, Credential, and Access Management

**FPKI** – Federal Public Key Infrastructure

**FPKIMA** – Federal PKI Management Authority

**FPKIPA** – Federal PKI Policy Authority

**GPO** – Group Policy Object

**GSA**- General Services Administration

**HW** – Hardware

**ICAM** – Identity, Credential, and Access Management

**NPE** – Non-Person Entity

**OCSP** – Online Certificate Status Protocol

**OID** – Object Identifier

**PIV** – Personal Identity Verification

**SAN** – Subject Alternate Name

**SCVP** – Server-Based Certificate Validation Protocol

**SHA1 FRCA** – SHA-1 Federal Root Certification Authority

**SME** – Subject Matter Expert

**SSP** – Shared Service Provider

**TFS** – Trust Framework Solutions

**UPN** – User Principal Name

**USG** – U.S. Government

[1] A trust anchor will be explained in more detail later in the guide.

[2] Cross-certification will be explained later in this guide, but is a method to show comparable security between organizational PKI policies.

[3] A more thorough description will be provided later in this guide.
