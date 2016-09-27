---
layout: page
title: Federal PKI Trust Infrastructure
permalink: /Federal-PKI-Trust-Infrastructure/
---

#1.0 Introduction

The Federal Public Key Infrastructure (Federal PKI) provides the government with a common infrastructure to administer digital certificates and public-private key pairs, including the ability to issue, maintain, and revoke public key certificates.  Key pairs and public key certificates are important underlying elements within the Federal PKI and will be discussed later in this playbook.

The essential idea of the Federal PKI is to facilitate end users getting digital certificates that strongly represent their online identity so they can conduct business at web sites (e.g., at Federal public-facing web sites) that trust those certificates as well as perform other tasks such as digitally signing things. 

The Federal PKI has become so essential to the Federal Government it is explictely cited in various authoritative documents issued by the Office of Management and Budget (OMB) and the National Institute of Standards and Technology (NIST).  For example, 2016 OMB Circular A-130 includes, the following statment:

 > *"Ensure that all public key infrastructure (PKI) certificates used by an agency and issued in accordance with Federal PKI policy validate to the Federal PKI trust anchor when being used for user signing, encrypting purposes, authentication and authorization."*

The Federal PKI was created out of the E-Government Act of 2002 which directed the General Services Administration to establish and operate the Federal Bridge Certification Authority (sometimes called Federal Bridge or by its acronym FBCA). From this pilot program, the Federal PKI has grown into a diverse PKI ecosystem of hundreds of certification authorities (CAs) for federal and state government agencies as well as foreign and US commercial PKIs. 

The Federal CIO Council comprises the Chief Information Officers of all cabinet level departments and other independent agencies. It has established the framework for the interoperable Federal PKI and oversees the operation of the organizations responsible for governing and promoting its use. In addition, the certificate processes and policies that underly the Federal PKI were established under the authority of and with the approval of the Federal CIO Council.

The purpose of this document is to help agency relying parties leverage the Federal PKI for their logical and physical identity, credential, and access management (ICAM) requirements by providing a technical overview of the Federal PKI Trust Infrastructure and its PKI operations. 

>Companion material will be collected from agency and industry best practices to provide implementation guidance for relying on Federal PKI certificates. As feedback is collected, more operating system and application instructions will be integrated and updated.

#2.0 So What is Public Key Infrastructure (PKI) Anyway?

In general, a PKI is a comprehensive system that provides public-key encryption and digital signature services. It is implemented as a set of policies, processes, server platforms, software and workstations used for administering public key certificates and public-private key pairs, including the ability to issue, maintain, and revoke public key certificates. A slightly different way to say this is that a PKI binds public keys to entities (such as persons or devices), enables other entities to verify public key bindings, revokes such bindings, and provides other services critical to managing public keys.  Basic components of a PKI Architecture include:

- **Certification Authority (CA)** - creates, signs, and issues public key certificates.
- **Registration Authority** - collects and verifies each Subscriber’s identity and information for inclusion in the Subscriber’s public key certificate. 
- **Repository** - publicly-accessible database that holds and allows (those accessing the repository do not need to be authenticated) entities to retrieve items such as public key certificates, revocation lists, and certificate policy. 
- **Archive** - database of information to be used in settling future disputes.  Specifically, to store and protect sufficient information to determine if a digital signature on an “old” document should be trusted. 
- **Certificate Status Server** - an optional component that provides status information about certificates on behalf of a CA through online transactions.  
- **Card Management System** - an optional component that manages smart card token content.

Three essential artifacts within a PKI are:

- **Public Key Certificates** - signed data structures that bind attributes of an entity (such as a person or device) with its corresponding public key. Public key certificates are signed by a recognized and trustworthy CA, thus providing a guarantee that a specific public key belongs to a specific entity, and that the entity possesses the corresponding private key as well.

 > There are two primary kinds of certificates.  One type is called a CA Certificate, which one Certification Authority issues to another Certification Authority to establish a trust relationship between the two.  The second kind of certificate is called an End-entity Certificate, which a Certification Authority issues to an end user that allows that end user to perform actions such as digital signing, encryption, or authentication. 
 
 > An End-entity is also referred to as an end user or subscriber.  In general, an end-entity is a non-CA, such as a human, process, or device, to whom or to which a certificate is issued and whose name appears as the subject in an end-entity certificate; (b) agrees to use its key and certificate in accordance with the policy asserted in the certificate; and (c) does not itself issue certificates.  Where certificates are issued to devices, the device has a human Sponsor who is responsible for carrying out subscriber duties.
 
- **Certificate Revocation List** - list of certificates that have been revoked and should no longer be relied upon.
- **Certificate Policy** - including a companion Certificate Practice Statement are structured documents that define the practices and procedures to use, administer, and manage certificates in a PKI.

In addition to the basic PKI Architecture components and artifacts noted above, there are elements that interact with / leverage a PKI including but not limited to:

- **Relying Party (RP)** - an entity (e.g., person, device, process, software application, web application) that has received a PKI certificate and a digital signature verifiable with reference to a public key listed in the certificate, and will rely on that information to make decisions (e.g., whether to grant the physical or logical access request) or perform other security/confidentiality/reliability actions (e.g., verify the integrity of a digitally-signed message’s content; identify the creator of a message; establish confidential communications with the end user).
> The Relying Party is responsible for deciding whether and how to check the validity of the certificate by checking the appropriate certificate status information. Not checking the status means the Relying Party accepts a risk that the certificate, and therefore the binding, may no longer be valid. A Relying Party may use information in the certificate (such as certificate policy identifiers) to determine the suitability of the certificate for a particular use.
> Relying Parties are not required to have an established relationship with any Certification Authorities within the Federal PKI. Certification Authorities merely provide Relying Parties the tools (i.e., certificates and CRLs) needed to perform tasks such as trust path creation, certificate validation, and certificate policy mapping that the Relying Party may wish to employ in its determination.

- **Public Key Enabled (PK-enabled) Applications** - applications that can use PKI, which simply means applications capable of understanding and making use of PKI digital certificates.

##2.1 Why Use PKI?

PKI is a very cost effective, scalable tool to ensure the confidentiality, integrity, and availability of electronic transactions. At its core, PKI provides the following significant business process and security benefits:

- **Strong Authentication** - provides a high degree of confidence that the person. process, or device authenticating is indeed who they say they are.  PKI credentials used in place of traditional forms of identity assertion (e.g., userid/password) strengthen access control. There are no shared secrets or password databases to maintain, and the access control process is based on a cryptographic process that leverages multifactor authentication (for example, something I know – my pin, and something I have - my private key)
- **Strong Digital Signature** – binds the signer to a document and its content or a message such as an email message at the time the signature is affixed.  This enhances the ability of business and regulatory transactions to occur in a fully electronic, secure environment, and facilitates the Federal government’s transition to paperless processing.    
- **Technical Non-repudiation** - digital signatures uniquely identify an individual, and provide a chain of trust that links the individual to documents, messages, and other artifacts he/she electronically signs. Because the signer is the only one with access to the private key used to apply the signature, he/she cannot later disavow that he/she applied the signature.
- **Strong Encryption** – provides confidentiality by converting content (e.g., email message, document) into something unreadable to everyone except the sender and intended recipient. Since the content is encrypted with an individual’s public key, it can only be decrypted with the individual’s private key, ensuring only the intended recipient can decrypt and view the contents.
- **Integrity** - detects whether content (e.g., a document, information within a message or transaction) has been tampered with accidentally or deliberately. Verifying the content's digital signature includes checking that the received content matches the content that was there when the signature was applied. Any change to the original content will cause this check to fail and the recipient to be alerted.

##2.2 What is the Technology Underlying PKI?

PKI uses public key cryptography, also called asymmetric cryptography, which is an encryption scheme that uses two mathematically related but not identical keys - a public key and a private key. Very simply put, a key is a string of bits (characters) used by a cryptographic algorithm to transform plain text into an apparently meaningless, random mix of text called cipher text or vice versa.

Unlike symmetric key algorithms that rely on one key to both encrypt and decrypt (essentially a shared secret scheme), each PKI key performs a unique function. The public key is used to encrypt and the private key is used to decrypt.

Given the strength of PKI algorithms, it is extremely difficult, even by brute force, to calculate a private key based on its corresponding public key. In fact, the longer the private key used (length in terms of number of bits), the stronger the protection. That is, the longer the private key, the harder it is to figure out and maliciously use the private key.  As a result, public keys can be shared without concern and used by others to easily encrypt content or verify digital signatures for example. 

Because public keys are very long, they are hard for people to remember.  Accordingly, public keys are stored in and distributed via digital certificates. Private keys, on the other hand, are never shared. They are stored in software, in the operating system, or on hardware devices (e.g., USB token, hardware security module) that have device drivers that allow it to be used with your software or operating system.

The digital certificates themselves are issued by Certification Authorities (frequently referred to as CAs), which are a core component of a PKI. In short, a CA is a trusted third party that in addition to issuing digital certificates confirms
the identity of the person associated with a certificate. Think of a CA as the electronic equivalent of a passport office.

##2.3 Hash Algorithms and Hashes

Public key cryptography uses sophisticated mathematical algorithms (also called functions) to create hashes.  A Hash (sometimes referred to as digest) is a hexadecimal number generated from a string of text such that, no two different strings can produce the same hash. Hash Algorithms and their resulting hashes underlie all the uses of public key cryptography.

<img src="/img/FPKITI-image2.png"/>

<span id="_Toc430632721" class="anchor"></span>Figure 1. Example of a Hash Function

A hash is a one-way function of the digital data. Any change in the data will change the hash. In the diagram above, notice that each content item the hash algorithm is applied to results in a different hash.  PKI certificates can be used to digitally sign many different types of digital artifacts such as documents, computer code, web sites, application installation packages. The digital signature is an encrypted hash of the data which can be verified to ensure that the data has not changed since it was “signed” by someone in possession of the associated private key. This digital signature offers an easy and scalable method of creating secure transactions that securely identify the parties involved and ensures the data has not been changed in transit.

The simple illustration below ties together the core concepts of PKI private/public key pairs and using hash algorithms to create hashes.  In this basic use case, Bob uses Alice's public key (which has been distributed publicly) as input into a hashing algorithm.  The algorithm then encrypts the message Bob wants to send Alice so as to keep the message confidential. Once the encrypted message is received by Alice, she uses her private key (that uniquely mathematically corresponds to the public key she distributed publicly) to decrypt the message from Bob.

<img src="/img/FPKITI-image10.png"/>

<span id="_Toc430632721" class="anchor"></span>Figure 2. Simple Example of Encryption/Decryption

#3.0 Federal PKI Overview

The Federal PKI is comprised of Federal government, industry, state and local government, community-of-interest, and other representatives who work collaboratively to leverage the Federal PKI, and to provide trust services for the benefit of the federal government. 

The Federal PKI Policy Authority (sometimes referred to as Policy Authority or by the acronym FPKIPA) was created at the direction of the Federal Chief Information Officers (CIO) Council in 2000 to serve as the Federal PKI governing body. The FPKIPA is an interagency body with voting membership limited to federal agencies who are Shared Service Provider (SSP) customers or who operate federal legacy PKIs.  Other agencies, industry, and state representatives participate in the FPKIPA as observers. The FPKIPA is supported by several policy and technical working groups such as the Certificate Policy Working Group (CPWG).
> Among other things, the FPKIPA establishes Federal PKI processes and policies, reviews and approves applications for participation in the Federal PKI, ensures ongoing conformance of existing particpants, and executes Memoranda of Agreement or Contracts (as applicable) with participants.

The Federal PKI Management Authority (sometimes referred to as Management Authority or by the acronym FPKIMA) is the organization that operates and maintains the Federal PKI Trust Infrastructure CAs on behalf of the U.S. Federal Government, subject to the direction of the Federal PKI Policy Authority. 

The Federal PKI leverages the technical PKI benefits discussed earlier, such as strong authentication and digital signature, to provide Federal agencies with high-assurance trust services for a wide variety of customers that help improve access to services, improve business processes, improve security posture, increase efficiencies, and ensure compliance with applicable standards. 

Further, the Federal PKI contains the Federal Government's PKI trust anchor, and facilitates trust of PIV, PIV-I, and other government and non-government credentials. It facilitates trusted physical and logical access, document sharing, and communications across Federal agencies, and between Federal agencies and outside bodies. It also facilitates identity/credential federation, synergy with E-Government and E-Commerce, helps reduce agency costs (e.g., eliminate cost/burden of managing agency-issued credentials, reduce password helpdesk costs), and supports FISMA integrity, confidentiality, and privacy objectives.

So it is clear to see why the Federal PKI is so important to Federal agencies as well as citizens, businesses, and organizations that need access to federal agency services and facilities. It is also clear that the Federal PKI also helps Federal agencies improve program return on investment and meet program objectives 

For all the above technical, business, and compliance reasons, the Federal PKI has become a critical piece of the Federal IT infrastructure, evidenced by its inclusion in FISMA reporting metrics and guidance documents such as NIST Special Publication 800-53 (security controls). That is why it is vital for all agencies to understand the services enabled by the Federal PKI and the part each agency plays in the Federal PKI ecosystem. 

The following highlights four of the many benefits the Federal PKI provides

- **Increased security** through the use of strong authentication, PKI credentials reduce identity theft, data breaches from weak credentials such as username/password, and trust violations. Specifically, PKI closes security gaps of user identification and authentication, encryption of sensitive data, and data integrity.

- **Compliance** - with laws, regulations, and standards as well as resolution of security issues identified in GAO reports. Using the Federal PKI means almost automatic compliance with several executive orders, initiatives, and laws and can be used in contracts to ensure vendor compliance with all government requirements. The Federal PKI compliance team verifies PKI participating CAs are audited and operate in a secure manner.

<img src="/img/FPKITI-fpki_compliance.jpg"/>

<span id="_Toc430632724" class="anchor"></span>Figure 3. Federal PKI Compliance

- **Improved Interoperability** - with other federal agencies and non-federal entities to trust Federal PKI certificates. The Federal PKI is a federated trust fabric that reduces the need of issuing multiple credentials.

<img src="/img/FPKITI-image5.png"/>

<span id="_Toc430632725" class="anchor"></span>Figure 4. Federal PKI as a Trust Broker

- **Elimination of Redundancy** - the Federal PKI is a trust broker or hub of logical trust, reducing the need for multiple trust agreements and duplicating associated trust agreement tasks.

<img src="/img/FPKITI-image6.png"/>

<span id="_Toc430632726" class="anchor"></span>Figure 5. FPKI Eliminates Redundancy

##3.1 The Federal PKI Trust Infrastructure

The **FPKI Trust Infrastructure** is the technical backbone of the Federal PKI. It is the mission-critical PKI owned by the Federal Government that facilitates trust across the Federal PKI fabric. It encompasses CAs, repositories, and other components secured, operated, and maintained on a daily basis by the FPKI Management Authority (FPKIMA) to support Federal PKI operations. Currently, FPKI Trust Infrastructure CAs include:

- **The Federal Common Policy CA** (sometimes referred to as Common, Federal Common CA, Common CA, or as the acronym FCPCA) -  is the Federal PKI Root CA for federal agency CAs in support of Homeland Security Presidential Directive 12 (HSPD-12) and PIV Cards, as well as for other Common policies that can be used across the federal government. In other words, the Federal Common CA is the Federal Government’s trust anchor.

 >Through the Shared Service Provider (SSP) program discussed later in this playbook, authorized CAs under Common CA issue certificates for exclusive use by the federal government for federal employees, contractors, and federal devices to include the PKI certificates on the Personal Identity Verification (PIV) card. Common CA was designed so any certificate issued by a Federal PKI CA can validate to a single point. 

 >A Trust Anchor is a certificate signed by a Certification Authority that is presumed trustworthy by other entities. Any certificate that can be tied back to a Trust Anchor can be de facto trusted merely due to the chain of trust back to the Trust Anchor. A Trust Anchor is also referred to as a Root Certificate. The Certification Authority that issues such a trust anchor is referred to as a Root CA.
 
 >The Federal Common CA Trust Anchor (Federal Common CA Root Certificate) is distributed in commercial product trust stores, which allows non-federal Relying Parties to trust PKI certificates issued by Federal agencies.  

- **The Federal Bridge CA** (sometimes referred to as Federal Bridge, Bridge CA, or as the acronym FBCA) - is the trust hub dedicated to enabling peer-to-peer interoperability among participating PKIs - both federal and non-federal. The Federal Bridge also supports use and trust of PIV - Interoperable (PIV-I) cards by Federal agencies.  The Federal Bridge may also issue certificates to individuals (end users) who operate FPKI Trust Infrastructure CAs. 

- **The SHA-1 Federal Root CA** (sometimes referred to as SHA-1 Root CA or as the acronym SHA1 FRCA) - supports existing Federal PKI participants that still require the deprecated SHA1 signature hash for certificates.

> Any CA in the Federal PKI can be referred to as an “FPKI CA” but only those CAs operated by the FPKIMA are FPKI Trust Infrastructure CAs.

Like all CAs, each FPKI Trust Infrastructure CA has a Certificate Policy defined for it. Accordingly, there is a Common CA Certificate Policy and there is a Federal Bridge CA Certificate Policy. Each Certificate Policy specifies the different actors for that CA, their roles, and their duties. In addition, each Certificate Policy scopes the applicability of certificates issued under that policy, along with commensurate security requirements, to a particular community and/or class of application.

Operational participation in the Federal PKI is ultimately accomplished via the establishment of a trust relationship between a Participating PKI and the appropriate FPKI Trust Infrastructure CA. 
- **A trust relationship with the Federal Bridge CA** is manifested by exchanging cross-certificates (CA certificates in general PKI parlance) between the Federal Bridge and one or more CAs designated by the organization operating the Participating PKI -- this results in a peer-to-peer relationship. 
- **A trust relationship with Common CA** is typically manifested by Common CA issuing a cross-certificate to the Participating PKI but not receiving a cross-certificate in return -- this results in the Participating PKI being subordinate to Common CA rather than a peer-to-peer relationship.  In some instances, Common CA engages in two-way cross-certification with other PKIs (e.g., with the Federal Bridge, with Federal Legacy PKIs).

##3.2 Other PKIs Participating in the Federal PKI

There are many other PKIs participating in the Federal PKI - beyond the FPKI Trust Infrastructure.  The remainder of the Federal PKI Community includes participants such as federal and commercial PKIs, SSPs, federal agencies supported by SSPs, non-federal government PKIs, and community-of-interest external Bridges.  These Federal PKI Affiliates operate their own PKIs or are served by PKIs that have FPKIPA-approved trust relationships with the FPKI Trust Infrastructure.  The approved trust relationships (at specified levels of assurance) allow trusted use of certificates issued by the FPKI Community. More on assurance levels later in this playbook.  The categories of FPKI Affiliates within the Federal PKI include: 

- **Shared Service Providers (SSPs)** - offer out-sourced PKI services to federal agencies (i.e., SSP Customers). SSPs allow Federal agencies to deploy digital credentials without the need to operate and maintain their own PKIs.  SSP PKIs adhere to the Common Policy Certificate Policy and receive a cross-certificate from Common CA with no policy mapping extension, making them subordinate to Common CA. SSPs do not issue Common CA a cross-certificate in return. 
>SSP Customers are part of the Federal PKI because they may operate components of the PKI service on behalf of their own agency, such as Registration Authorities and Card Management Systems. 
>With the release of Office of Management and Budget (OMB) M-05-05, all Federal agencies were required to use SSPs over establishing a PKI unless they were already operating a PKI.

- **Federal Legacy PKIs** – PKIs run by federal government organizations that have successfully completed all steps required to become cross-certified with the Federal Bridge CA, have been issued a cross-certificate by one of the FPKI Trust Infrastructure CAs, and have issued a cross-certificate back to that FPKI Trust Infrastructure CA. Accordingly, all Federal Legacy CAs operate as two-way cross-certified CAs. 
>Federal Legacy PKIs were early adopters of PKI whose systems pre-date Office of OMB Memo M-05-05, which requires the use of SSPs. 
> When a Federal Legacy CA cross-certifies with Common CA rather than the Federal Bridge CA, it operates under a Certificate Policy deemed equivalent to Federal Bridge policies through certificate policy mapping.  Accordingly, a Federal Legacy CA cross-certified with Common CA is also considered a cross-certified CA. When Federal Legacy CAs issue certificates that directly assert Common CA policies, they issue these certificates in accordance with all applicable requirements of Common Certificate Policy.

- **Non-Federal Agency PKIs** -- PKIs operated by commercial vendors; state, local, or tribal governments; and international partners. Non-federal agency PKIs are issued cross-certificates from the Federal Bridge CA that contain policy mappings to one or more Federal Bridge policies. Non-federal Agency PKIs issue a cross-certificate back to the Federal Bridge CA. Non-federal agency PKIs do not assert policies defined in any of the Federal PKI Certificate Policies except in the cross-certificate issued back to the Federal Bridge CA. Rather, Non-federal Agency PKIs operate under their own Certificate Policy.
 > Note that some commercial PKIs are also approved as SSPs, but must operate under their own Certificate Policy when cross-certified with the Federal Bridge CA and under Federal Common Certificate Policy for their SSP service.
 > A commercial PKI that is cross-certified with the Federal Bridge CA has shown a need to either do business with or provide PKI services to the Federal Government. These PKIs are often referred to as Non-federal Issuers or NFI.

- **External Bridge PKIs** - organizations that operate their own local Bridge CAs that integrate additional external PKIs into their own Bridge CA. External Bridge CAs are typically the trust hub for a particular community of interest (e.g., education, aerospace).  External Bridge PKIs are issued cross-certificates from the Federal Bridge CA that contain policy mappings to one or more Federal Bridge CA policies. External Bridges issue a cross-certificate back to the Federal Bridge CA. External Bridge PKIs do not assert policies defined in Federal Certificate Policies except in the cross-certificate issued back to Federal Bridge CA. Rather, External Bridges operate under their own Certificate Policy.  External Bridge PKIs are authorized to create further policy mappings to their member PKIs. External Bridge CAs are not intended to be used as trust anchors.

- **Access Certificates for Electronic Services (ACES) PKIs** – PKIs certified by the GSA program operated by a contracted private sector participating CA. Similar to the SSP program of approved vendors issuing certificates with government certificate policies, ACES issue certificates to citizens including authorized business representatives and unaffiliated individuals instead of federal employees.

So now let’s look at the big picture. Figure 3 below illustrates how all the PKIs participating in the Federal PKI relate to each other.  Then Figure 4 shows the extent of participation as of July 2015. Participation is always evolving as PKIs are added to and on occasion deleted from the Federal PKI. 

<img src="/img/FPKITI-image3.jpg"/>

<span id="_Toc430632722" class="anchor"></span>Figure 6. FPKI Overview


<img src="/img/FPKITI-image4.png"/>

<span id="_Toc430632723" class="anchor"></span>Figure 7. FPKI Participating PKIs as of July 2015

<span id="_Toc410977225" class="anchor"><span id="_Toc417462913" class="anchor"><span id="_Toc401929211" class="anchor"></span></span></span>

##3.3 Some Things You Need to Understand When Participating in the Federal PKI

The reason why the Federal PKI works so well and participants as well as relying parties can make well-informed decisions (like what PKI credentials to accept for what purposes) is because the Federal PKI Policy Authority has established clear technical, operating, and policy requirements and best practices.  The following sections highlight some of those core elements.

###3.3.1 Certificate Policies

A certificate policy defines the set of rules that indicate the applicability of a PKI certificate to a particular community and/or class of applications with common security requirements. As such, each certificate policy represents a unique set of parameters for certificate issuance and the binding of the specified subject of a certificate with its associated private/public key pair. Differentiation may be based on assurance level, subject type (e.g., human, device, federal employee), use cases (e.g., authentication, code signing, signature, key management), key storage, and/or issuer.  

So, a PKI certificate is considered trusted at a specific level of assurance based on security requirements for various aspects including but not limited to certificate issuance procedures, certificate maintenance, and protection of the associated private key. The higher the assurance level, the greater the confidence in the identity asserted in the certificate.

A PKI certificate specifies the certificate policy upon which it was issued via an Object Identifier (OID) included in the certificate itself. Figure 8 below is an example of how to identify the criteria of a certificate policy. In this example, the certificate was issued by a Shared Service Provider (SSP) participating in the Federal PKI -- so the SSP is Subordinate to Common CA via a cross-certificate issued to it by Common CA.  Since SSPs issuer certificates under the Common CA Certificate Policy, the SSP certificates asserts policies that are specified in the Common CA Certificate Policy. A copy of the Common CA Certificate Policy is publicly available so anyone can verify the trust in the identity and security of the specific OID asserted in the certificate issued by the SSP. 

Approved SSPs and some Federal Legacy PKIs operate using the Common CA Certificate Policy as their Certificate Policy.  Other Federal PKI participants use their own Certificate Policy documents that have been deemed comparable to the Federal Bridge Certificate Policy – but more on that in a little bit. 

> Regardless, and as always, it is up to the relying party organization to determine if the level of security in the policy used to issuer and protect a certificate is sufficient for a particular transaction. In general, higher-assurance credentials should be used for higher-risk transactions. By “higher-risk” we mean the consequences of a bad actor successfully using a certificate are more severe (e.g., financial impact, breach of personal information).

The following provides a real-world example of manually validating a certificate policy.

1.  Bob receives a digitally signed email from John Smith and wants to validate the certificate manually.

2.  Bob clicks on the red ribbon in the email to view the certificate. He finds the root of the certificate is the U.S. Government Common Policy, which is the subject name of the Federal Common Policy CA. He can also see the certificate asserts the 2.16.840.1.101.3.2.1.3.7 certificate policy OID.

3.  Bob finds the Common Policy CA Certificate Policy and corresponding Certification Practice Statement on the IDManagement.gov website to look up the requirements of this particular certificate policy. Bob finds that the common hardware certificate policy is associated with PIV Cards, which means the user had to use their PIV Card to digitally sign the email. Bob can now have a high level of assurance that John Smith from GSA indeed signed this email.

<img src="/img/FPKITI-image7.jpg/">

<span id="_Toc430632727" class="anchor"></span>Figure 8. Manually Validating a Certificate Policy

> ***But luckily for Bob and everyone else***, the Federal PKI has taken the work out of manually validating certificates by working with public PKI trust store software and browser vendors to trust certain policies and CA Root Certificates.

Currently, the Federal PKI has a total of 27 certificate policies supporting the Federal Bridge CA, Federal Common CA, and Federal SHA1 Root CA for people and non-person entity (NPE) certificates. 

The Commercial Best Practices (CBP) identifier on Federal Bridge CA and Federal SHA1 Root CA certificate policies indicate the trusted roles or individuals assigned a role in certificate issuance do not have to be U.S. citizens. 

All Federal Common CA certificate policies denote a US Government (USG) issued and authorized certificate. 

A hardware (HW) identifier is used to signal the private key is generated and protected by a hardware based token for either people or NPE, which adds to the confidence level of the asserted identity. 

In the Federal PKI, SSPs and Federal Legacy PKIs are authorized to assert Federal Common CA policy OIDs in the certificates they issue.  However, no participant is authorized to assert Federal Bridge CA policy OIDs in certificates issued to end users (e.g., people, devices) because those polices are strictly used to map other organizational PKI policies to the Federal Bridge CA to determine comparability of certificate policies. 

The risk level referenced in the table below refers to the level of risk associated with transactions accepting certificates issued under the specified certificate policy.

Table 1. List of FPKI Certificate Policies

| Certificate Policy        | Policy OID                        | Purpose                                                                                                                                                             |
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
| FBCA-PIVI-HW              | 2.16.840.1.101.3.2.1.3.18  | Medium risk – authentication, signature or encryption of individual person where private key is protected on Approved Product List (APL)-approved smartcard and requires biometric on card. |
| FBCA-PIVI-cardAuth        | 2.16.840.1.101.3.2.1.3.19  | Shows possession of PIV-I card w/o PIN use.                                                                                                                         |
| FBCA-PIVI-contentSigning  | 2.16.840.1.101.3.2.1.3.20  | Signs security objects on PIV-I card.                                                                                                                               |
| common-policy             | 2.16.840.1.101.3.2.1.3.6   | Medium risk – authentication, signature or encryption of USG individual person, group, device, or role.                                                             |
| common-HW                 | 2.16.840.1.101.3.2.1.3.7   | High risk – authentication, signature or encryption of USG individual person, group, role, or device where private key is protected on hardware token.              |
| common-devices            | 2.16.840.1.101.3.2.1.3.8   | Medium risk – USG authentication or encryption of device.                                                                                                           |
| common-devicesHW          | 2.16.840.1.101.3.2.1.3.36  | Medium risk - authentication or encryption of USG device where private key protected on hardware token.                                                             |
| common-auth               | 2.16.840.1.101.3.2.1.3.13  | High risk - Shows possession of PIV card with PIN use                                                                                                               |
| common-High               | 2.16.840.1.101.3.2.1.3.16  | High risk – authentication, signature or encryption of USG individual person, group, role, or device where private key is protected on hardware token.              |
| common-cardAuth           | 2.16.840.1.101.3.2.1.3.17  | Shows possession of PIV card w/o PIN use.                                                                                                                           |
| common-piv-contentSigning | 2.16.840.1.101.3.2.1.3.39 | Signs security objects on PIV or Derived PIV.                                                                                                                       |
| common-derived-pivAuth | 2.16.840.1.101.3.2.1.3.40 | Medium Risk - Only asserted in certificates issued to users, in accordance with NIST SP 800-157, supporting authentication, but not digital signature, and where the corresponding private key is not stored on a PIV Card.                                                                                                                       |
| common-derived-pivAuth-hardware | 2.16.840.1.101.3.2.1.3.41 | High risk - Only be asserted in certificates issued to users, in accordance with NIST SP 800-157, supporting authentication, but not digital signature, and where the corresponding private key is not stored on a PIV Card.                                                                                                                       |
| SHA1-mediumCBP            | 2.16.840.1.101.3.2.1.3.21  | Medium risk – authentication, signature or encryption of individual person, group, device, or role. (SHA1)                                                          |
| SHA1-mediumHW-CBP         | 2.16.840.1.101.3.2.1.3.22  | Medium risk – authentication, signature or encryption of individual person, group, or role where private key is protected on hardware token. (SHA1)                 |
| SHA1-medium               | 2.16.840.1.101.3.2.1.3.23  | Medium risk – authentication, signature or encryption of individual person, group, device, or role. (SHA1)                                                          |
| SHA1-hardware             | 2.16.840.1.101.3.2.1.3.24  | Medium risk – authentication, signature or encryption of individual person, group, or role where private key is protected on hardware token. (SHA1)                 |
| SHA1-devices              | 2.16.840.1.101.3.2.1.3.25  | Medium risk - authentication or encryption of device .(SHA1)                                                                                                        |

> As part of the FIPS 201 Evaluation Program, GSA manages the [Approved Product List (APL)](www.idmanagement.gov/approved-products-list). This list provides federal agencies with the products and services related to FICAM implementation that have been approved based on testing done by the FIPS 201 Evaluation Program. Agencies can use GSA Schedules to purchase a resource that is included on the APL. The [Removed Product List (RPL)]( https://www.idmanagement.gov/IDM/s/article_detail?link=removed_products_list) lists products and services that were on the APL, but have been removed.

###3.3.2 Certificate Levels of Assurance

The Federal PKI certificate policies have been grouped into a small set of Assurance levels that help differentiate level of confidence in the certificates as well as use.  The table below summarizes the Assurance Level groupings:

|Assurance Level|Appropriate Certificate Uses|Applicable Certificate Policies|
|-------------- |----------------------------|------------------------------|
|Rudimentary Assurance|This Assurance Level provides the lowest degree of assurance concerning identity of the individual, and is relevant to environments where the risk of malicious activity is considered low A primary function of this Assurance Level is to provide data integrity to the information being signed. It is not suitable for transactions requiring authentication, and is generally insufficient for transactions requiring confidentiality, but may be used for the latter where certificates having higher levels of assurance are unavailable.|Bridge Rudimentary|
|Basic Assurance|This Assurance Level provides a basic level of assurance and is relevant to environments where there are risks and consequences of data compromise, but they are not considered to be of major significance. This may include access to private information where the likelihood of malicious access is not high. It is assumed at this security level that users are not likely to be malicious.|Bridge Basic|
|Medium Assurance|This Assurance Level is relevant to environments where risks and consequences of data compromise are moderate. This may include transactions having substantial monetary value or risk of fraud, or involving access to private information where the likelihood of malicious access is substantial.|Bridge Medium, Bridge Medium Device, Bridge Medium CBP, Common Policy, Common Derived PIV Authentication, Common Device|
|Card Authentication Assurance|This Assurance Level is relevant to environments where the risks and consequences of data compromise are moderate.  This may include contactless smart card readers where use of an activation PIN is not practical (e.g., Physical Access Control System where possession of the card is sufficient).|Bridge PIV-I Card Authentication, Common Card Authentication, 
|Medium Hardware Assurance|This Assurance Level is relevant to environments where threats to data are high or the consequences of the failure of security services are high. This may include very high value transactions or high levels of fraud risk.|Bridge Medium Hardware, Bridge Medium Hardware CBP, Bridge PIV-I Hardware, Bridge Medium Device Hardware, Common Hardware, Common Device Hardware, Common Authentication, Common Derived PIV Authentication Hardware|
|High Assurance|This Assurance Level is reserved for U.S. federal government CAs only and is appropriate for those environments where the threats to data are high, or the consequences of the failure of security services are high. This may include very high value transactions or high levels of fraud risk.|Bridge High, Common High|
|Content Assurance|This Assurance Level is reserved for signing content in credentials such as PIV or PIV-I Cards, or the container for a Derived PIV certificate on a mobile device.|Bridge PIV-I Content Signing, Common PIV Content Signing|
|SHA-1 Assurance|The use of SHA-1 to create digital signatures was deprecated beginning January 1, 2011.  As such, use of certificates asserting any of the SHA1 policies should be limited to applications where the risks associated with the use of a deprecated cryptographic algorithm have been deemed acceptable.|SHA1 Medium, SHA1 Medium CBP, SHA1 Devices, SHA1 Hardware, SHA1 Medium Hardware CBP|                                       

> The sensitivity of the information processed or protected using PKI certificates will vary significantly. Relying Parties should evaluate the environment and the associated threats and vulnerabilities and determine the level of risk they are willing to accept based on the sensitivity or significance of the information. This evaluation is done by each Relying Party for its application and is not controlled by any Certificate Policy.
> Certificates shall not be used in a manner inconsistent with the values included in its key usage or extended key usage field(s).

In addition, some Federal PKI certificate policies can be directly mapped to the OMB M-04-04 electronic authentication (E-Authentication) levels of assurance. OMB M-04-04 describes four identity authentication assurance levels for e-government transactions. Each assurance level describes the agency’s degree of certainty that the user has presented a credential that refers to his or her identity. In this context, assurance is defined as 1) the degree of confidence in the vetting process used to establish the identity of the individual to whom the credential was issued, and 2) the degree of confidence that the individual who uses the credential is the individual to whom the credential was issued.  The four OMB M-04-04 levels of assurance are:

- OMB M-04-04 Level of Assurance 1:  Little or no confidence in the asserted identity’s validity.   
- OMB M-04-04 Level of Assurance 2:  Some confidence in the asserted identity’s validity.   
- OMB M-04-04 Level of Assurance 3:  High confidence in the asserted identity’s validity. 
- OMB M-04-04 Level of Assurance 4:  Very high confidence in the asserted identity’s validity. 

The table below summarizes the mapping of some Federal PKI certificate policies to the four OMB E-Authentication Assurance Levels.

| Federal PKI Certificate Policy | Identity Proofing Equivalence | Token Equivalence | Token and Credential Management Equivalence| Overall OMB Level of Assurance Equivalence |
|--------------------|-------------|-------|---------------------------------|-------------------------|
| Common-Auth PIV-I Auth SHA1 Auth | LOA 4       | LOA 4 | LOA 4                           | LOA 4                   |
| Common –SW         | LOA 4       | LOA 3 | LOA 4                           | LOA 3                   |
| Common-HW  PIV-I HW SHA1-HW             | LOA 4       | LOA 4 | LOA 4                           | LOA 4                   |
| Common-High FBCA-High           | LOA 4       | LOA 4 | LOA 4                           | LOA 4                   |
| FBCA Basic         | LOA 3       | LOA 3 | LOA 3                           | LOA 3                   |
| FBCA Medium FBCA Medium CBP     | LOA 3       | LOA 3 | LOA 4                           | LOA 3                   |
| FBCA MediumHW FBCA MediumHW-CBP   | LOA 3       | LOA 4 | LOA 4                           | LOA 3                   |
| Common-cardAuth PIVI-cardAuth  SHA1-cardAuth       | LOA 4       | LOA 2 | LOA 4                           | LOA 2                   |
 ***Agencies can use the above tables to determine which FPKI certificate policy best fit an application’s authentication requirements***

###3.3.3 Certificate Policy Mapping

A certificate policy mapping is performed when two organizations, each operating their own PKI, want to trust each other’s certificates while retaining use of their own PKI and associated Certificate Policy. Each organization reviews the other organization’s Certificate Policy and determines which policies are comparable. Then each organization's PKI issues a certificate (known as a cross-certificate) to the other organization's PKI. A cross-certificate allows end user certificates (certificates issued to entities such as persons and devices) issued by one PKI to be trusted by an application has the trust anchor from the other PKI. 

In the Federal PKI, policy mapping certifies comparability of certificate polices in different PKIs, resolves any comparability issues, facilitates interoperability between government and participating PKIs, and is conducted by Agency PKI Subject Matter Experts (SMEs) and ultimately reviewed and approved by the Federal PKI Policy Authority. Having said that, even if a particular certificate policy is not mapped between PKIs, the policy may be deemed valid and acceptable if it is a certificate policy listed in one of the CA certificates in found in the certificate trust path.

The table below illustrates the certificate policy mapping that has been done between the Federal Common CA and the Federal Bridge CA.

| Federal Common CA Certificate Policy     | Federal Common  CA OID                 | Federal Bridge CA OID                  | Federal Bridge Certificate Policy           |
|------------------|---------------------------|---------------------------|----------------------|
| common-policy    | 2.16.840.1.101.3.2.1.3.6  | 2.16.840.1.101.3.2.1.3.3  | FBCA-medium          |
| common-High      | 2.16.840.1.101.3.2.1.3.16 | 2.16.840.1.101.3.2.1.3.4  | FBCA-High            |
| common-HW        | 2.16.840.1.101.3.2.1.3.7  | 2.16.840.1.101.3.2.1.3.12 | FBCA-mediumHW        |
| common-devices   | 2.16.840.1.101.3.2.1.3.8  | 2.16.840.1.101.3.2.1.3.37 | FBCA-mediumDevice    |
| common-devicesHW | 2.16.840.1.101.3.2.1.3.36 | 2.16.840.1.101.3.2.1.3.38 | FBCA-mediumDevice-HW |


###3.3.4 How to Identify a Cross-Certificate in the Federal PKI

Federal PKI Trust Infrastructure CAs assert the appropriate policy OIDs in the *certificatePolicies* and *policyMappings* extensions of certificates they issue. All CAs operating under the Federal Common Policy CA (e.g., SSPs, some Federal Legacy CAs) assert the appropriate Federal Common Policy OIDs directly in the certificates they issue via the *certificatePolicies* extension.

CAs cross-certified with the Federal Bridge CA don't assert Federal Bridge policy OIDs or SHA1 policy OIDs in any certificates they issue except in the *policyMappings* extension establishing an equivalency between a policy OID defined in the participating CA’s Certificate Policy and a Federal Bridge CA policy OID or SHA1 Federal Root CA policy OID.

SHA1 Federal Root CA policy OIDs are asserted in the cross-certificates issued by Federal Common Policy CA to the SHA1 Federal Root CA, and by the SHA1 Federal Root CA to participating CAs still requiring use of SHA-1. Participating CAs assert SHA-1 policy OIDs only in *policyMappings* extensions of certificates issued to the SHA1 Federal Root CA.

Federal Legacy CAs that assert Common policy OIDs defined in the Federal Common Policy CA Certificate Policy only assert these policy OIDs in certificates they issue in accordance with all the applicable requirements of the Federal Common Policy CA Certificate Policy. 

> A CA that asserts a policy OID defined in the Federal Common Policy CA Certificate Policy first obtains approval to do so from the Federal PKI Policy Authority as part of the certification process.


In the Federal PKI, two-way cross-certificates are issued between external PKIs and the Federal Bridge CA as well as between Federal Legacy PKIs and the Federal Common CA. Figure 8 shows an example of a certificate issued by the Federal Bridge CA that contains a policy mapping so that participating PKI CA OIDs can validate to Federal Common Policy CA. Even though there is no mapping for the first policy it will still validate to the Federal Common Policy CA because the policy is asserted in the *certificatePolicies* extension.

<img src="/img/FPKITI-image8.jpg"/>

<span id="_Toc430632728" class="anchor"></span>Figure 9. Certificate Policy Mapping in a Certificate

###3.3.5 Certificate Path Validation

Certificate path validation is the process of validating a certificate's trust path from the end entity certificate (end user's certificate) to a trust anchor. Applications use path validation to ensure digitally-signed artifacts (such as documents and messages) maintain integrity after being signed and the digital certificate used to sign the artifact was issued from a trusted CA.

<img src="/img/FPKITI-image9.png"/>

<span id="_Toc430632729" class="anchor"></span>Figure 10. Certificate Path Characteristics

The three most common path validation tools in Windows are Microsoft Crypto API (CAPI), Online Certificate Service Protocol (OCSP) Service, and Server-Based Certificate Validation Protocol (SCVP) Service. Approved OCSP and SCVP software can be found on the [FICAM Approved Product List](www.idmanagement.gov/approved-products-list).

1.  **Microsoft CAPI** is the standard tool used when opening a certificate on a Windows OS and is proprietary to Microsoft. It takes the certificate path that has the most information as the most secure path to a Trust Anchor and uses the trusted root certificates in the Microsoft Trust Store. CAPI verifies certificate validation through the Certificate Revocation List (CRL) published by the CA. The CRL publishing is set in the Certificate Policy and can be anything from hours to an end entity issuing CA to a month for trust anchors.

2.  **OCSP Service** implements an Internet Engineering Task Force (IETF) standard with companies creating open source and proprietary products. It is a real-time revocation check of an individual certificate against a revocation list on an OCSP Responder. This is a much more efficient check of a certificate’s revocation status than pulling down an entire, potentially large, Certificate Revocation List (CRL).

3.  **SCVP Service** also implements an IETF standard and is similar to Microsoft CAPI, but can be set up as a standalone service for any operating system. It can be set with custom parameters and can also conduct dynamic path discovery and validation. Dynamic path discovery is building the certificate trust path in real-time rather than against the static certificates in a trust store. Dynamic path validation is validating the path as it is discovered. Using static vs. dynamic path validation and discovery depends on system needs and requirements.

<span id="_Toc430633669" class="anchor"><span id="_Toc430692176" class="anchor"></span></span>Resiliency in Certificate and ###5.3.6 Certificate Path Validation

####3.3.5.1 Validation Overview

Central to the trust created by a PKI is the requirement to check the validity of a given certificate and the validity of the entire certificate path. If an application fails to validate both, the application is subject to a number of potential risks:

-   Relying on a certificate that has been revoked.

-   Using a certificate that is not valid for the intended use.  For example, the certificate is missing or has inappropriate key usage or policy OIDs and an encryption certificate is mistakenly used for digital signing.

-   Relying on a certificate where the authority of any of the Certification Authorities in the certificate’s path has been revoked.

Certificates can be revoked for many reasons including but not limited to lost, stolen, and compromised. In any case, certificates that fail certificate validation or path validation should not be trusted.

The ability to perform certificate validation and certificate path validation depends on an application having access to one or more of the following:

-   **The Certificate Revocation Lists (CRLs) for the Certification Authority that issued the certificate and the Certification Authorities in the certificate’s path**. A CRL contains a list of any certificates issued by the Certification Authority that have been revoked. This list is often small for Root Certification Authorities (Trust Anchors), but can become very large for Certification Authorities that issue end entity (end user) certificates for large organizations or organizations with a large turnover. CRLs are described in [IETF RFC 5280](https://www.ietf.org/rfc/rfc5280.txt).

> Note that CRLs are typically published on a set schedule by each Certification Authority. The interval between CRLs can be from hours to many days in the case of a Certification Authority that is normally kept off-line. The CRLs published by the Federal PKI Root CAs (Trust Infrastructure CAs) are typically updated twice daily. This publishing schedule allows PKI organizations to cache Federal PKI CRL data within its network -- rather than making real time requests to the Certification Authority's CRL Repository.

-   **OCSP Responders for the Certification Authority that issued the certificate and of the Certification Authorities in the certificate’s path**. To address the issue of transmitting and processing large CRLs, OCSP provides a method to determine the current status of one or more digital certificates by transmitting the identifier of the certificates in question to the OCSP Responder which in turn has access to CRL data. OCSP is described in [IETF RFC 6960](https://tools.ietf.org/html/rfc6960).

> Depending on the Certification Authority and OCSP Responder implementation, the OCSP Responder may also be able to determine if the certificate in question was really issued by the Certification Authority. An application checking only CRLs can only determine if a CA has issued ***and*** revoked a given certificate. This distinction is important to potentially detect a fraudulently-issued certificate.

-   **An SCVP Server can offload much or all of the validation process by performing either delegated path discovery (DPD) or delegated path validation (DPV) on the behalf of clients**. Delegated path discovery is the process of constructing a valid certification path. Delegated path validation is DPD combined with validating the certificates against specified criteria. The SCVP is described in [IETF RFC 5055](https://tools.ietf.org/html/rfc5055).

> Note that SCVP Servers require access to Certificate Revocation List data and/or OCSP Responders in order to perform their processing.

####3.3.5.2 Validation Resiliency

Using any of the validation technologies implies that applications have access to CRL Repositories, OCSP Responders or SCVP Servers either within or external to the organization. Therefore, organizations should consider the resiliency of their networks along with the resiliency of internal or external CRL Repositories, OCSP Responders or SCVP Servers in order to be able to properly validate certificates. As noted earlier, CRL data lends itself to caching within an organization’s network vs. making real time requests to the Certification Authority's CRL Repository. 

< OCSP and SCVP are protocols for real time requests and responses, but many OCSP Responders and SCVP Servers cache CRL data to improve resiliency and performance.

In addition, organizations will need to make policy decisions on whether to allow access to a given physical or logical resource when a certificate cannot be validated for some reason (e.g., network outage, external CRL Repository is unavailable, problem with the OCSP Responder or SCVP Server). This is a risk-based decision between allowing access vs. not allowing access.

The Federal PKI Management Authority has taken many steps to ensure the resiliency of the Federal PKI Trust Infrastructure CRL Repositories, including geographically-diverse facilities, diverse facility vendors, diverse network vendors, and automated failover technologies. However, this only addresses the Federal Trust Infrastructure Root CAs. An organization needs to consider the resiliency of other Certification Authorities in the path between the Federal Trust Infrastructure Root CAs and the organization's end entity (end user) certificates, combined with the resiliency of the organization’s networks used to access validation data.

> Some organization will choose to cache CRL data at their organization’s network edge or the edge of a campus or building network. Organizations can implement OCSP Responders or SCVP Servers centralized to the organization or within a campus or building network. These types of architectural decisions can mitigate the impact of network outages that isolate a building or campus.


Appendix A - Acronyms
=====================
**APL** – Approved Products List

**CA** – Certification Authority

**CAPI** – Microsoft Crypto Application Programming Interface

**CBP** – Commercial Best Practice

**CIO** – Chief Information Officer

**CRL** – Certificate Revocation List

**CPWG** – Certificate Policy Working Group

**DPD** – Delegated Path Discovery

**DPV** – Delegated Path Validation

**FBCA** – Federal Bridge Certification Authority

**FCPCA** – Federal Common Policy Certification Authority

**FPKIMA** – Federal PKI Management Authority

**FPKIPA** – Federal PKI Policy Authority

**GSA**- General Services Administration

**HSPD-12** – Homeland Security Presidential Directive 12

**ICAM** – Identity, Credential, and Access Management

**IETF** – Internet Engineering Task Force

**LOA** – Level of Assurance

**NIST** – National Institute of Standards and Technology

**NPE** – Non-Person Entity

**OCSP** – Online Certificate Status Protocol

**OID** – Object Identifier

**OMB** – Office of Management and Budget

**PIN** – Personal Identification Number

**PIV** – Personal Identity Verification

**PKI** – Public Key Infrastructure

**SCVP** – Server-Based Certificate Validation Protocol

**SHA1 FRCA** – SHA-1 Federal Root Certification Authority

**SSP** – Shared Service Provider

**USG** – U.S. Government

