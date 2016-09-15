---
layout: page
title: PIV FAQs
permalink: /PIV FAQs/
---

## 1.0  Overview
This Playbook is a collection of frequently asked questions and common issues regarding Personal Identity Verification (PIV) cards.  It is targeted towards agencies and relying parties implementing or currently using PIV cards for logical and/or physical security controls.



##  2.0 Before you get started
Acronym | Term | Description
--------|-----|------
PIV | Personal Identity Verification card | A card containing printed and stored identity credentials that can be verified by another person or by an automated process.
PIV-I | Personal Identity Verification - Interoperable card | An identitiy card that can work within the Federal PIV system, but does not meet all of the requirements to be a PIV card.
FASC-N | Federal Agency Smart Card Number | A unique number assigned to one PIV card and individual only.  This number is the main identifier on a PIV card used by a PACS.
GUID | Global Unique Identification Number | Unique number within the CHUID that must be present.
NFI | Non-Federal Issuer | An issuer of identitiy cards which is not part of a federal agency.
PACS | Physical Access Control System | An automated system that manages physical passage through a secured area based on a set of rules.
CHUID | Card Holder Unique Identifier | Standardized set of data required for Federal PACS which must be included on PIV and PIV-I cards.
UUID | Universally Unique Identifier | Alternate identifier for PIV-I cards since FASC-N are only available to Federal card issuers. 
-- | relying party | Someone who requests and relies upon information provided from an external source to authenticate an identity.



##  3.0 Frequently Asked Questions

### 3.1  What is a PIV-I Card? 

A Personal Identity Verification Interoperable (PIV-I) card is an identity credential card which meets the technical specifications to  work with Federal PIV-conformant systems and can be trusted by Federal organizations.  The PIV-I card is suitable for Level of Assurance (LOA) 4 as defined by OMB Memorandum [M-04-04](https://www.whitehouse.gov/sites/default/files/omb/memoranda/fy04/m04-04.pdf) and [NIST SP 800-63](https://pages.nist.gov/800-63-3/) as well as multi-factor authentication as defined in [NIST SP 800-116](http://nvlpubs.nist.gov/nistpubs/Legacy/SP/nistspecialpublication800-116.pdf).<br />
(See [ICAM PIV-I FAQ Section 2.1](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000TNPlAAO&field=File__Body__s) for additional information on PIV-I guidance.)
<br /><br /><br />

### 3.2  What is the Difference Between A PIV Card And A PIV-I Card

**PIV** is the official standard, detailed in [Federal Information Processing Standards (FIPS) Publication 201](http://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.201-2.pdf), for issuing and managing Federal ID credentials in support of [Homeland Security Presidential Directive (HSPD)-12](https://www.dhs.gov/homeland-security-presidential-directive-12).  A PIV card is an identity card that is fully conformant with Federal PIV standards as defined by FIPS 201 and may only be issued by a Federal entity.  <br /><br />

**PIV-I** cards meet the PIV technical specifications of [NIST SP 800-73] (http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-73-4.pdf) and are issued in a manner that may be trusted by Federal Government Relying Parties.   PIV-I card issuers are cross-certified with the Federal Bridge Certification Authority (FBCA), however, a PIV-I card is not a Federal credential and does not meet all of the requirements of [FIPS 201](http://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.201-2.pdf).<br /><br />
The table below compares the PIV and PIV-I cards in the areas of Suitability, Trust, and Card Edge.
<br /><br />
![PIV to PIV-I comparison table](https://github.com/Protiviti-JSargent/fpki-guides/blob/Protiviti-JSargent-draft-1/img/PIV_PIVI_table.JPG) <br />
(See [ICAM PIV-I FAQ Section 2.2](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000TNPlAAO&field=File__Body__s) for details on the PIV/PIV-I comparison table.)
<br /><br /><br />

### 3.3 What Object Identifiers (OIDs) Are Specified For PIV-I? 

There is no Card Authentication extended key usage (EKU) OID defined specifically for PIV-I.  PIV-I Card Authentication certificates must assert the PIV Card Authentication EKU OID **`id-PIV-cardAuth`** in the EKU extension to specify that the public key is used to authenticate the PIV-I card rather than the PIV-I cardholder. <br /><br />
The table below shows the OIDs defined specifically for PIV-I:
<br /><br />
![PIV-I OID table](https://github.com/Protiviti-JSargent/fpki-guides/blob/Protiviti-JSargent-draft-1/img/PIV_OID.JPG)
<br /><br /><br />

### 3.4 Can My Agency Accept PIV-I Cards Issued By Our Contractors’ Company In Lieu Of Issuing PIV Cards To These Individuals?

* **NO -** Individuals who fall within the applicability of [Homeland Security Presidential Directive (HSPD)-12](https://www.dhs.gov/homeland-security-presidential-directive-12), including Federal contractors requiring routine access to Federally-controlled facilities or Federally-controlled information systems for a period of time greater than 6 months, must continue to be issued PIV Cards by
the Federal Government in accordance with relevant policies. <br />
(see [OMB M-05-24](https://www.whitehouse.gov/sites/default/files/omb/memoranda/fy2005/m05-24.pdf) for details on HSPD-12 implementation.)
<br /><br /><br />

### 3.5 Can Non-PIV Cards Issued By The Federal Government Be Considered PIV-I?

* **YES -** The Federal Government may issue non-PIV identity and access cards to individuals who are
outside the applicability of[HSPD-12](https://www.dhs.gov/homeland-security-presidential-directive-12). Federal Government PIV Card Issuers may issue non-PIV identity cards that meet the PIV-I requirements specified in the [X.509 Certificate Policy for the FBCA ](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000TN7cAAG&field=File__Body__s) (FBCA CP). The FBCA CP specifies the minimum requirements for the Federal Government to rely on PIV-I Non-Federal Issuer (NFI) identity cards. Example scenarios where this might apply include facility access cards issued to short term employees (e.g., summer interns) and identity credentials issued by the Legislative and Judicial Branches of the Federal Government. 
<br /><br /><br />

### 3.6 Can A PIV-I Card Be Accepted For Both Physical And Logical Access?

* **YES -** A PIV-I Card may be used to access both physical and logical resources. However, each Federal Government Relying Party will determine the extent to which it will trust PIV-I Cards to access resources.
<br /><br /><br />

### 3.7 Can An Identity Card Issued By A Program That Has Modified The PIV Technical Specifications Be Considered A PIV-I Card?

* **NO -** In order to be considered PIV-I, an identity card must conform to the minimum PIV technical requirements defined in [X.509 Certificate Policy for the FBCA] (https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000TN7cAAG&field=File__Body__s), and be issued by an issuer who has been assessed by the Federal PKI Policy Authority as meeting those requirements.
<br /><br /><br />

### 3.8 What Is The Piv-I Card Logical Data Model?

The PIV-I Card logical data model is the same as the PIV Card logical data model, as defined in [FIPS 201 Section 4.1.5.1](http://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.201-2.pdf) and further detailed in  [NIST SP 800-73](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-73-4.pdf).
<br /><br /><br />

### 3.9 Can the PIV-I Card Logical Data Model be extended?

* **Yes -** The PIV-I Card logical data model can be extended in the same way as the PIV Card logical data model, as defined in [FIPS 201](http://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.201-2.pdf) Section 4.1.5.1. The PIV-I Card logical data model may be extended using the optional data defined within  [NIST SP 800-73] (http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-73-4.pdf).
<br /><br /><br />

### 3.10  What Certificates And Keys May Be Present On A PIV-I Card?

Except for the Card Authentication certificate/key pair, PIV-I has the same certificate and key configuration as a PIV Card, as defined in  FIPS 201 Section 4.3. The PIV-I Card has two mandatory certificate/key pairs, and three optional certificate/key pairs:

![PIV-I Cert Keys](https://github.com/Protiviti-JSargent/fpki-guides/blob/Protiviti-JSargent-draft-1/img/PIVI_CertKeys.JPG) <br />
(Reference links: [NIST 800-73](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-73-4.pdf),  [NIST 800-116](http://nvlpubs.nist.gov/nistpubs/Legacy/SP/nistspecialpublication800-116.pdf))<br />
<br /><br /><br />

### 3.11  What Are The Mandatory Data Model Elements For A Piv-I Card?

The PIV-I Card logical data model is the same model as the PIV Card logical data model, as defined in [FIPS 201](http://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.201-2.pdf) Section 4.1.5.1.  [NIST 800-73](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-73-4.pdf) provides the technical guidance for these required elements. To support a variety of authentication mechanisms, PIV-I Card logical credentials shall contain multiple data elements for the purpose of verifying the cardholder's identity at graduated assurance levels. These mandatory data elements collectively comprise the data model for logical credentials, and include the following:

* A Card Capability Container
* A Cardholder Unique Identifier (CHUID)
* An authentication key (one asymmetric key pair and corresponding certificate)
* A card authentication key (one asymmetric key pair and corresponding certificate)
* Two biometric fingerprints
* Facial Image Buffer
* Security Object
<br /><br /><br />

### 3.12  What Are The Optional Data Model Elements For A PIV-I Card?

The PIV Card logical data model defines several optional elements.  The PIV-I Card logical data model can be extended in the same way as the PIV Card logical data model, as defined in [FIPS 201](http://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.201-2.pdf) Section 4.1.5.1.  [NIST SP 800-78](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-78-4.pdf)  specifies additional cryptographic algorithms and key sizes.  [NIST SP 800-76](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-76-2.pdf) provides additional biometric requirements.  [NIST SP 800-73](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-73-4.pdf) provides the technical guidance for these optional elements. These options may be selected to meet organization-specific requirements. <nl />The optional elements include:

* Printed Information Buffer
* Discovery Object
* Key History Object
* Retired Key Management Keys
* Digital Signature Key
* Key Management Key
* Symmetric key associated with the card management system.
<br /><br /><br />

### 3.13  What Is The Validity Period For Piv-I Certificates?

The validity period of PIV-I certificates is the same as for PIV certificates.  For example, the maximum validity of PIV-I certificates is three (3) years, which is also the validity period for human subscriber certificates issued in accordance with FBCA certificate policies. See [FAQ 3.3](#33-what-object-identifiers-oids-are-specified-for-piv-i) for an overview of PIV-I in the FBCA Certificate Policy.
<br /><br /><br />

### 3.14  What Algorithms Must Be Used In Piv-I Card Certificates?

The PIV-I Card must use the same algorithms as the PIV Card for their respective certificates, as specified in [NIST SP 800-78](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-78-4.pdf).  Tables 3.1 and 5.1 specify the algorithms and key sizes that must be supported per key type:
![PIV-I Card Algorithm Table](https://github.com/Protiviti-JSargent/fpki-guides/blob/Protiviti-JSargent-draft-1/img/PIVI_CertAlgorithms.JPG)
<br /><br /><br />

### 3.15  What must PIV-I Card Authentication certificate policies map to?

The certificate policies for the PIV-I Card Authentication certificate must map to the FBCA’s **`id-fpki- certpcy-pivi-cardAuth`** policy (See [FAQ 3.3](#33-what-object-identifiers-oids-are-specified-for-piv-i) for an overview of the PIV-I card authentication certificate policy).  This is done by cross-certifying the issuing CA with the FBCA.  Note that a revised [X.509 Certificate Policy for the Federal Bridge Certification Authority (FBCA)](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000TN7cAAG&field=File__Body__s) that comprehensively addresses PIV-I has been published (See [ICAM PIV-I FAQ Section 2.15](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000TNPlAAO&field=File__Body__s)).
<br /><br /><br />

### 3.16  What Key Usage Bits Must Be Asserted In The Key Usage Exensions Of PIV-I Certificates?

The certificates on PIV-I Cards assert the same bits in the certificate key usage extension as the respective certificates on PIV Cards, as follows:

![PIV-I Certificate Key Usage Bits Table](https://github.com/Protiviti-JSargent/fpki-guides/blob/Protiviti-JSargent-draft-1/img/PIVI_Cert_KeyUsageBits.JPG)<br />
(See  [X.509 Certificate and Certificate Revocation List (CRL) Extensions Profile for the Shared Service Providers(SSP) Program](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000Gmi3AAC&field=File__Body__s) for information on use of the extended key usage extension in certificates on PIV Cards.)
<br /><br /><br />

### 3.17  Do PIV-I Cards Need To Be FIPS-140-2 Validated?

* **Yes -*  The [X.509 Certificate Policy for the Federal Bridge Certification Authority (FBCA)](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000TN7cAAG&field=File__Body__s) requires [FIPS
140-2](http://csrc.nist.gov/publications/fips/fips140-2/fips1402.pdf) validation of PIV-I Cards. In addition, PIV-I Cards must be on the  [Approved Products List](https://www.idmanagement.gov/IDM/IDMFicamProductSearchPage).

<br /><br /><br />

### 3.18  What Assurance Requirements Must PIV-I Card Issuers Meet?

Relying parties can be assured, with a high level of confidence, that PIV-I NFIs are following sound security practices, because:

* Cross Certification with the FBCA includes extensive requirements related to Facility, Management, and Operational Controls (FBCA Section 5) and Technical Controls (FBCA Section 6)
* PIV-I NFIs must cross-certify with the FBCA, which requires a rigorous process of evaluating a PIV-I NFI’s policies and procedures against the requirements defined in the  [X.509 Certificate Policy for the Federal Bridge Certification Authority (FBCA)](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000TN7cAAG&field=File__Body__s)
* PIV-I NFI’s will be issued a cross-certificate from the FBCA that will map the NFI’s policy OIDs
to the relevant PIV-I OIDs (See [FAQ 3.3](#33-what-object-identifiers-oids-are-specified-for-piv-i))
* Cross-certification with the FBCA requires annual compliance audits to demonstrate ongoing compliance with certificate policies and procedures
* NFI cross certification with the FBCA is a requirement for identity cards to be considered PIV-I
<br /><br /><br />

### 3.19    What Are The Valid Methods To Generate/Construct A Universally Unique Identifier (UUID) Number? 

The following table summarizes the three methods of generating/constructing UUID numbers specified in
[NIST SP 800-73](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-73-4.pdf).<br /><br />
![Generating the UUID](https://github.com/Protiviti-JSargent/fpki-guides/blob/87a3ccecbdc059409d4e016e62a6af621281476c/img/Generating_UUID.JPG)<br /><br />

There is a slight chance of UUID collision across issuers. Therefore, Relying Parties should check for collisions when new UUIDs are enrolled in a local Physical Access Control System (PACS).
<br /><br /><br />

### 3.20   How does PIV-I handle Global Unique Identification Number (GUID) during issuance?

The GUID is a field that must be in the Cardholder Unique Identifier (CHUID).  The value of the GUID must be an [RFC 4122](http://www.ietf.org/rfc/rfc4122.txt) UUID, as specified in the [X.509 Certificate Policy for the Federal Bridge Certification Authority (FBCA)](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000TN7cAAG&field=File__Body__s).  The UUID value in the GUID is also used in certificates and signed objects on the card.
<br /><br /><br />

### 3.21    How Are PIV-I Cards And Components Tested?

PIV-I Cards have to be on the  [FIPS 201 Approved Products List](https://www.idmanagement.gov/IDM/IDMFicamProductSearchPage), which requires [NIST SP 800-85A](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-85A-4.pdf) and security testing according to [FIPS 140-2](http://csrc.nist.gov/publications/fips/fips140-2/fips1402.pdf).  It is recommended that issuers apply the [GSA FIPS 201
Evaluation Program Test Tools](https://www.idmanagement.gov/IDM/s/) to a sampling of their issued cards on an ongoing basis to ensure interoperability.
<br /><br /><br />

###   3.22  Is Symmetric Card Authentication Key (CAK) Prohibited? 

* **NO -** However, [X.509 Certificate Policy for the Federal Bridge Certification Authority (FBCA)](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000TN7cAAG&field=File__Body__s) requires PIV-I Cards to contain an asymmetric CAK. Therefore, the card must be capable of supporting multiple CAKs in order to use a symmetric CAK.<br /><br />
While [FIPS 201](http://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.201-2.pdf) allows a PIV Card’s Card Authentication Key (CAK) to be either a symmetric (secret) key or an asymmetric private key for physical access, this has resulted in issues associated with Physical Access Control Systems (PACS) interoperability. <br />

----
**\*NOTE***  [NIST SP 800-116](http://nvlpubs.nist.gov/nistpubs/Legacy/SP/nistspecialpublication800-116.pdf)
 strongly recommends that agencies use the asymmetric CAK protocol, rather than a symmetric CAK protocol, whenever the CAK authentication mechanism is used with PACS.

----
<br /><br /><br />

###   3.23   What Biometrics Must Be In A PIV-I Card? 

PIV-I Card biometric requirements match those of the PIV Card.   [NIST SP 800-73](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-73-4.pdf)
 requires the biometrics data object to be on the card.   [NIST SP 800-76](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-76-2.pdf)
 defines the biometrics data object.  Specifically, two fingerprint templates, and a digitized photo template are required for PIV-I.  A printed photo is also required to be on the card.
<br /><br /><br />

###   3.24    What Is The Relationship Between FASC-N And GUID?

Both the Global Unique Identifier (GUID) and the Federal Agency Smart Credential Number(FASC-N) are data fields within the Cardholder Unique ID (CHUID) per  [NIST SP 800-73](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-73-4.pdf). The GUID is included in the CHUID.  The GUID field is defined to contain an  [RFC 4122](http://www.ietf.org/rfc/rfc4122.txt)
-conformant Universally Unique Identifier (UUID) value to support large Non-Federal Issuer (NFI)
populations. [PIV-I NFI](https://cio.gov/wp-content/uploads/downloads/2012/09/PIV_Interoperabillity_Non-Federal_Issuers_May-2009.pdf)
 describes the challenges with the FASC- N as follows: <br />
>The PIV Card includes a Federal Agency Smart Credential - Number (FASC-N) to uniquely identify it, and thus avoid identifier >namespace collisions. When managed and distributed within a closed system (the U.S. Government), uniqueness is ensured. However, the >FASC-N structure does not support its use beyond the U.S. Government as it cannot be easily extended to allow sufficient identifier >namespace to support a large NFI population.

---
>The unique identifier for Federal cards is the FASC-N. 
>NFI cards have a FASC-N that contains 14 nines (9) and use the GUID as the unique identifier.

### 3.? How does a Federal Physical Access Control System (PACS) interpret a PIV-I card that does not have a FASC-N?

When a Federal PACS system is reading the CHUID it will have both the FASC-N and the GUID available to it.  When the FASC-N contains 14 nines (9), and if technically feasible, the Federal PACS should look for and use the GUID value to identify the cardholder.

###  3.? As a relying party, when do I use the FASC-N versus the GUID?

* **For CHUID-based authentication**

If the FASC-N is populated with 14 nines (9), you can reasonably conclude it is a PIV-I card. Use the UUID from the GUID.

* **For certificate-based authentication**

If the subjectAltName does not contain a FASC-N, you can reasonably conclude it is a PIV-I card. Use the UUID from the subjectAltName.



#### References
Personal Identity Verification Interoperable (PIV-I) Frequently Asked Questions (FAQ)
<https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000TNPlAAO&field=File__Body__s>
