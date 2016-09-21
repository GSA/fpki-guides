---
layout: page
title: PIV FAQs
permalink: /PIV FAQs/
---
## 0.0 Table of Contents
####[1.0 Overview](https://github.com/Protiviti-JSargent/fpki-guides/blob/Protiviti-JSargent-draft-1/pages/PIV%20FAQs.md#10--overview)
####[2.0 Common Terms](#20-common-terms-1)
####[3.0 Frequently Asked Questions](#30-frequently-asked-questions-1)
####[3.1 What Is A PIV-I Card](#31-what-is-a-piv-i-card-1)
####[3.2 What Is The Difference Between A PIV Card And A PIV-I Card](#32-what-is-the-difference-between-a-piv-card-and-a-piv-i-card-1)
####[3.3 What Object Identifiers (OIDs) Are Specified For PIV-I](#33-what-object-identifiers-oids-are-specified-for-piv-i-1)
####[3.4 Can My Agency Accept PIV-I Cards Issued By Our Contractors Company In Lieu Of Issuing PIV Cards To These Individuals](#34-can-my-agency-accept-piv-i-cards-issued-by-our-contractors-company-in-lieu-of-issuing-piv-cards-to-these-individuals-1)
####[3.5 Can Non-PIV Cards Issued By The Federal Government Be Considered PIV-I](#35-can-non-piv-cards-issued-by-the-federal-government-be-considered-piv-i-1)
####[3.6 Can A PIV-I Card Be Accepted For Both Physical And Logical Access](#36-can-a-piv-i-card-be-accepted-for-both-physical-and-logical-access-1)
####[3.7 Can An Identity Card Issued By A Program That Has Modified The PIV Technical Specifications Be Considered A PIV-I Card](#37-can-an-identity-card-issued-by-a-program-that-has-modified-the-piv-technical-specifications-be-considered-a-piv-i-card-1)
####[3.8 What Is The PIV-I Card Logical Data Model](#38-what-is-the-piv-i-card-logical-data-model-1)
####[3.9 Can The PIV-I Card Logical Data Model Be Extended](#39-can-the-piv-i-card-logical-data-model-be-extended-1)
####[3.10 What Certificates And Keys May Be Present On A PIV-I Card](#310-what-certificates-and-keys-may-be-present-on-a-piv-i-card-1)
####[3.11 What Are The Mandatory Data Model Elements For A PIV-I Card](#311-what-are-the-mandatory-data-model-elements-for-a-piv-i-card-1)
####[3.12 What Are The Optional Data Model Elements For A PIV-I Card](#312-what-are-the-optional-data-model-elements-for-a-piv-i-card-1)
####[3.13 What Is The Validity Period For PIV-I Certificates](#313-what-is-the-validity-period-for-piv-i-certificates-1)
####[3.14 What Algorithms Must Be Used In PIV-I Card Certificates](#314-what-algorithms-must-be-used-in-piv-i-card-certificates-1)
####[3.15 What Must PIV-I Card Authentication Certificate Policies Map To](#315-what-must-piv-i-card-authentication-certificate-policies-map-to-1)
####[3.16 What Key Usage Bits Must Be Asserted In The Key Usage Exensions Of PIV-I Certificates](#316-what-key-usage-bits-must-be-asserted-in-the-key-usage-exensions-of-piv-i-certificates-1)
####[3.17 Do PIV-I Cards Need To Be FIPS 140-2 Validated](#317-do-piv-i-cards-need-to-be-fips-140-2-validated-1)
####[3.18 What Assurance Requirements Must PIV-I Card Issuers Meet](#318-what-assurance-requirements-must-piv-i-card-issuers-meet-1)
####[3.19 What Are The Valid Methods To Generate / Construct A Universally Unique IDentifier (UUID) Number](#319-what-are-the-valid-methods-to-generate--construct-a-universally-unique-identifier-uuid-number-1)
####[3.20 How Does PIV-I Handle Global Unique IDentification Number (GUID) during issuance](#320-how-does-piv-i-handle-global-unique-identification-number-guid-during-issuance-1)
####[3.21 How Are PIV-I Cards And Components Tested](#321-how-are-piv-i-cards-and-components-tested-1)
####[3.22 Is Symmetric Card Authentication Key (CAK) Prohibited](#322-is-symmetric-card-authentication-key-cak-prohibited-1)
####[3.23 What Biometrics Must Be In A PIV-I Card](#323-what-biometrics-must-be-in-a-piv-i-card-1)
####[3.24 What Is The Relationship Between FASC-N And GUID](#324-what-is-the-relationship-between-fasc-n-and-guid-1)
####[3.25 What Is The GUID](#325-what-is-the-guid-1)
####[3.26 What Is The Relationship Between GUID And UUID](#326-what-is-the-relationship-between-guid-and-uuid-1)
####[3.27 Where Else Does The GUIDs UUID Value Appear](#327-where-else-does-the-guids-uuid-value-appear-1)
####[3.28 What Is The Format Of The UUID In Certificates](#328-what-is-the-format-of-the-uuid-in-certificates-1)
####[3.29 Why Has The Ipv6 GUID Value Been Deprecated In Favor Of UUID](#329-why-has-the-ipv6-guid-value-been-deprecated-in-favor-of-uuid-1)
####[3.30 Where Does The Global Unique IDentifier (GUID) Appear](#330-where-does-the-global-unique-identifier-guid-appear-1)
####[3.31 Where Does The FASC-N Appear On The PIV-I Card](#331-where-does-the-fasc-n-appear-on-the-piv-i-card-1)
####[3.32 Where Are The Detailed Specifications For UUID Formatting](#332-where-are-the-detailed-specifications-for-uuid-formatting-1)
####[3.33 Where Are The Detailed Specifications For The Value Of The FASC-N](#333-where-are-the-detailed-specifications-for-the-value-of-the-fasc-n-1)
####[3.34 What Are The Values Of The Agency Code Of The FASC-N](#334-what-are-the-values-of-the-agency-code-of-the-fasc-n-1)
####[3.35 Where Are The Detailed Specifications For FASC-N Formatting](#335-where-are-the-detailed-specifications-for-fasc-n-formatting-1)
####[3.36 How Does A PACS Interpret A Federal PIV Card If The Card Contains A GUID That Is All Zeros](#336-how-does-a-pacs-interpret-a-federal-piv-card-if-the-card-contains-a-guid-that-is-all-zeros-1)
####[3.37 How Does A Federal PACS Interpret An NFI PIV-I Card That Does Not Have A FASC-N](#337-how-does-a-federal-pacs-interpret-an-nfi-piv-i-card-that-does-not-have-a-fasc-n-1)
####[3.38 What Can I Tell From The Possible Values Of A FASC-N And How Do They Impact My PACS](#338-what-can-i-tell-from-the-possible-values-of-a-fasc-n-and-how-do-they-impact-my-pacs-1)
####[3.39 As An Issuer When Do I Use The FASC-N Versus GUID](#339-as-an-issuer-when-do-i-use-the-fasc-n-versus-guid-1)
####[3.40 As A Relying Party When Do I Use The FASC-N Versus GUID](#340-as-a-relying-party-when-do-i-use-the-fasc-n-versus-guid-1)
####[3.41 How Does A PACS Determine Whether A Card Is PIV Or PIV-I](#341-how-does-a-pacs-determine-whether-a-card-is-piv-or-piv-i-1)
####[3.42 How Do I Generate A GUID](#342-how-do-i-generate-a-guid-1)
####[3.43 Are Other Fields In The FASC-N Such As Person Identifier Defined For NFI Cards](#343-are-other-fields-in-the-fasc-n-such-as-person-identifier-defined-for-nfi-cards-1)
<br /><br />

## 1.0  Overview  
 This Playbook is a collection of frequently asked questions and common issues regarding Personal IdentityVerification-Interoperable (PIV-I) cards.  It is targeted towards agencies and relying parties implementing or currently using PIV and PIV-I cards for logical and/or physical security controls.  Some of the FAQs here may seem to apply to issuers, but these questions are important for relying parties to understand when presented with a PIV-I card for verification and authentication.
 <br /><br /><br />
 
## 2.0 Common Terms
Acronym | Term | Description
--------|-----|------
PIV | Personal Identity Verification card | A card containing printed and stored identity credentials that can be verified by another person or by an automated process within the Federal PIV system.  PIV cards can only be produced by Federal Issuers.
PIV-I | Personal Identity Verification - Interoperable card | An identitiy card that can work within the Federal PIV system and be trusted and relied upon, but does not meet all of the requirements for a PIV card.
PACS | Physical Access Control System | An automated system that manages physical passage through a secured area based on a set of rules.
CHUID | Card Holder Unique Identifier | Standardized set of data required for Federal PACS which must be included on PIV and PIV-I cards.
GUID | Global Unique Identification Number | Unique number within the CHUID that must be present.
FASC-N | Federal Agency Smart Card Number | A unique number assigned to one PIV card and individual only.  This number is the main identifier on a PIV card used by a PACS.
NFI | Non-Federal Issuer | A non-federal agency certified to produce and issue PIV-I credentials
UUID | Universally Unique Identifier | Alternate identifier for PIV-I cards since FASC-N are only available to Federal card issuers.
FIPS 201 | Federal Information Processing Standard, Publication 201 | Standard specifying requirements for a common identification standard for Federal employees and contractors
-- | relying party | Someone who requests and relies upon information provided from an external source to authenticate an identity.
<br /><br /><br />

## 3.0 Frequently Asked Questions

### 3.1 What Is A PIV-I Card?

A Personal Identity Verification Interoperable (PIV-I) card is an identity credential card which meets the technical specifications to  work with Federal PIV-conformant systems and can be trusted by Federal organizations.  The PIV-I card is suitable for Level of Assurance (LOA) 4 as defined by OMB Memorandum [M-04-04](https://www.whitehouse.gov/sites/default/files/omb/memoranda/fy04/m04-04.pdf) and [NIST SP 800-63](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-63-2.pdf) as well as multi-factor authentication as defined in [NIST SP 800-116](http://nvlpubs.nist.gov/nistpubs/Legacy/SP/nistspecialpublication800-116.pdf).<br /><br />
The following is a brief summary of the PIV-I guidance, which identifies the areas in which Non Federal Issuers (NFIs) cannot meet the full PIV standard as specified by [FIPS 201](http://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.201-2.pdf), and provides alternatives. There are four core areas identified:

Core Area | Description
---|---
Credential Numbering | <br />[FIPS 201](http://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.201-2.pdf) defines the use of the Federal Agency Smart Credential Number (FASC-N).  This credential numbering schema cannot be used by non-Federal issuers.  [X.509 Certificate Policy for the Federal Bridge Certification Authority (FBCA)](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000TN7cAAG&field=File__Body__s) provides the solution using an [RFC 4122](http://www.ietf.org/rfc/rfc4122.txt) conformant Universally Unique Identifier (UUID).  The UUID is found in the certificates, signed objects, and the Global Unique Identifier (GUID) Tag-Length-Value (TLV) of the CardHolder Unique IDentifier (CHUID).<br /><br />
PKI Technology Mapping | <br />[X.509 Certificate Policy for the U.S. Federal PKI Common Policy Framework](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000TN9iAAG&field=File__Body__s) defines an Object IDentifier (OID) that is specific to Federal issuers.  Non-Federal issuers must map their policies to the PIV-I Hardware policy OID and be cross-certified with the FBCA to meet the requirements of PIV-I.  See [FAQ 3.3](#33-what-object-identifiers-oids-are-specified-for-piv-i-1) for an overview of the PIV-I Hardware OID.<br /><br />
Background Investigation | <br />[FIPS 201](http://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.201-2.pdf)  defines the use of a National Agency Check with Written Inquiries (NAC-I) for PIV.  The NAC-I is only available to Federal agencies through the Office of Personnel Management.  [X.509 Certificate Policy for the Federal Bridge Certification Authority (FBCA)](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000TN7cAAG&field=File__Body__s) specifies the PIV-I Hardware policy as the identity verification model that separates identity verification from the NAC-I suitability and fitness adjudications. See [FAQ 3.3](#33-what-object-identifiers-oids-are-specified-for-piv-i-1) for an overview of the PIV-I Hardware policy <br />(**NOTE** PIV-I Hardware requirements are consistent with  [NIST SP 800-63](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-63-2.pdf)).<br /><br />
Visual Distinction | <br />The PIV-I Card physical topography shall include, at a minimum, the following items on the front of the card:<br />*  Cardholder facial image<br />*  Cardholder full name<br />*  Organizational affiliation, if it exists, otherwise the issuer of the card<br />*  Card expiration date<br />However, visual distinction of a PIV-I Card from that of a Federal PIV Card is required to ensure no suggestion of attempting to create a fraudulent Federal PIV Card.<br /><br />

<br />[[Return to Table of Contents]](#00-table-of-contents)<br /><br /><br />

### 3.2 What Is The Difference Between A PIV Card And A PIV-I Card?

**PIV** is the official standard, detailed in [FIPS 201](http://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.201-2.pdf), for issuing and managing Federal ID credentials in support of [Homeland Security Presidential Directive (HSPD)-12](https://www.dhs.gov/homeland-security-presidential-directive-12).  A PIV card is an identity card that is fully conformant with Federal PIV standards as defined by FIPS 201 and may only be issued by a Federal entity.  <br /><br />

**PIV-I** cards meet the PIV technical specifications of [NIST SP 800-73] (http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-73-4.pdf) and are issued in a manner that may be trusted by Federal Government Relying Parties.   PIV-I card issuers are cross-certified with the Federal Bridge Certification Authority (FBCA), however, a PIV-I card is not a Federal credential and does not meet all of the requirements of FIPS 201.<br /><br />
The table below compares the PIV and PIV-I cards in the areas of Suitability, Trust, and Card Edge.
<br /><br />
<img src="/img/PIVI_FAQ_DiffTable.JPG" alt="PIV to PIV-I Comparison Table"><br />
>*  **Note 1:** Certificate equivalence for Non-Federal Issuers (NFIs) is established by the Federal Bridge Certification Authority (FBCA).  See [FAQ 3.3](#33-what-object-identifiers-oids-are-specified-for-piv-i-1) for an overview of FBCA PIV-I
policies.<br />
*  **Note 2:** Conformant form factor<br />
*  **Note 3:** Contact and contactless command edge conformant defined in  [NIST SP 800-73](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-73-4.pdf) Part 2 requires support for specific ISO/IEC 7816 commands.  Card edge and data model verified through [NIST SP 800-85B](http://nvlpubs.nist.gov/nistpubs/Legacy/SP/nistspecialpublication800-85b.pdf) tool (further efforts are expected to address exceptions for NFIs). Card edge specifications verified through the  [NIST Personal Identity Verification Program (NPIVP)](http://csrc.nist.gov/groups/SNS/piv/npivp/index.html).<br />
*  **Note 4:** [NIST SP 800-73](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-73-4.pdf) does not require the use of [RFC 4122](http://www.ietf.org/rfc/rfc4122.txt) in the generation of a valid Global Unique Identifier (GUID) for PIV cards, but it is required for NFI PIV-I cards.<br />
*  **Note 5:** The value of the UUID will be in the subjectAltName extension of the PIV Authentication Certificate and the Card Authentication Certificate
<br />[[Return to Table of Contents]](#00-table-of-contents)<br /><br /><br />

### 3.3 What Object IDentifiers (OIDs) Are Specified For PIV-I?

There is no Card Authentication extended key usage (EKU) OID defined specifically for PIV-I.  PIV-I Card Authentication certificates must assert the PIV Card Authentication EKU OID **`id-PIV-cardAuth`** in the EKU extension to specify that the public key is used to authenticate the PIV-I card rather than the PIV-I cardholder. <br /><br />
The table below shows the OIDs defined specifically for PIV-I:
<br />

<img src="/img/PIV_OID.JPG" alt="PIV-I OID Table">
<br />[[Return to Table of Contents]](#00-table-of-contents)<br /><br /><br />

### 3.4 Can My Agency Accept PIV-I Cards Issued By Our Contractors’ Company In Lieu Of Issuing PIV Cards To These Individuals?

* **NO -** Individuals who fall within the applicability of [Homeland Security Presidential Directive (HSPD)-12](https://www.dhs.gov/homeland-security-presidential-directive-12), including Federal contractors requiring routine access to Federally-controlled facilities or Federally-controlled information systems for a period of time greater than 6 months, must continue to be issued PIV Cards by
the Federal Government in accordance with relevant policies. <br />
(See [M-05-24](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000TNLFAA4&field=File__Body__s) for details on HSPD-12 implementation.)

<br />[[Return to Table of Contents]](#00-table-of-contents)<br /><br /><br />

### 3.5 Can Non-PIV Cards Issued By The Federal Government Be Considered PIV-I?

* **YES -** The Federal Government may issue non-PIV identity and access cards to individuals who are
outside the applicability of [Homeland Security Presidential Directive (HSPD)-12](https://www.dhs.gov/homeland-security-presidential-directive-12). Federal Government PIV Card Issuers may issue non-PIV identity cards that meet the PIV-I requirements specified in the [X.509 Certificate Policy for the Federal Bridge Certification Authority](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000TN7cAAG&field=File__Body__s) (FBCA CP). The FBCA CP specifies the minimum requirements for the Federal Government to rely on PIV-I Non-Federal Issuer (NFI) identity cards. Example scenarios where this might apply include facility access cards issued to short term employees (e.g., summer interns) and identity credentials issued by the Legislative and Judicial Branches of the Federal Government. 

<br />[[Return to Table of Contents]](#00-table-of-contents)<br /><br /><br />

### 3.6 Can A PIV-I Card Be Accepted For Both Physical And Logical Access?

* **YES -** A PIV-I Card may be used to access both physical and logical resources. However, each Federal Government Relying Party will determine the extent to which it will trust PIV-I Cards to access resources.

<br />[[Return to Table of Contents]](#00-table-of-contents)<br /><br /><br />

### 3.7 Can An Identity Card Issued By A Program That Has Modified The PIV Technical Specifications Be Considered A PIV-I Card?

* **NO -** In order to be considered PIV-I, an identity card must conform to the minimum PIV technical requirements defined in [X.509 Certificate Policy for the Federal Bridge Certification Authority (FBCA)](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000TN7cAAG&field=File__Body__s), and be issued by an issuer who has been assessed by the Federal PKI Policy Authority as meeting those requirements.

<br />[[Return to Table of Contents]](#00-table-of-contents)<br /><br /><br />

### 3.8 What Is The PIV-I Card Logical Data Model?

The PIV-I Card logical data model is the same as the PIV Card logical data model, as defined in Section 4.2 of [FIPS 201](http://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.201-2.pdf) and further detailed in  [NIST SP 800-73](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-73-4.pdf).

<br />[[Return to Table of Contents]](#00-table-of-contents)<br /><br /><br />

### 3.9 Can The PIV-I Card Logical Data Model Be Extended?

* **Yes -** The PIV-I Card logical data model can be extended in the same way as the PIV Card logical data model, as defined in Section 4.2 of [FIPS 201](http://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.201-2.pdf). The PIV-I Card logical data model may be extended using the optional data defined within  [NIST SP 800-73] (http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-73-4.pdf).

<br />[[Return to Table of Contents]](#00-table-of-contents)<br /><br /><br />

### 3.10 What Certificates And Keys May Be Present On A PIV-I Card?

Except for the Card Authentication certificate/key pair, PIV-I has the same certificate and key configuration as a PIV Card, as defined in  [FIPS 201-2](http://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.201-2.pdf) Section 4.3. The PIV-I Card has two mandatory certificate/key pairs, and three optional certificate/key pairs:

<img src="/img/PIVI_CertKeys.JPG" alt="PIV-I Cert Key Table"> <br />
(Reference links: [X.509 Certificate and Certificate Revocation List (CRL) Extensions Profile for Personal Identity Verification Interoperable (PIV-I) Cards](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000GmhKAAS&field=File__Body__s), 
[NIST 800-73](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-73-4.pdf),  [NIST 800-116](http://nvlpubs.nist.gov/nistpubs/Legacy/SP/nistspecialpublication800-116.pdf))<br />

<br />[[Return to Table of Contents]](#00-table-of-contents)<br /><br /><br />

### 3.11 What Are The Mandatory Data Model Elements For A PIV-I Card?

The PIV-I Card logical data model is the same model as the PIV Card logical data model, as defined in [FIPS 201-2](http://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.201-2.pdf) Section 4.1.5.1.  [NIST 800-73-4](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-73-4.pdf) provides the technical guidance for these required elements. To support a variety of authentication mechanisms, PIV-I Card logical credentials shall contain multiple data elements for the purpose of verifying the cardholder's identity at graduated assurance levels. These mandatory data elements collectively comprise the data model for logical credentials, and include the following:

* A Card Capability Container
* A CardHolder Unique IDentifier (CHUID)
* An authentication key (one asymmetric key pair and corresponding certificate)
* A card authentication key (one asymmetric key pair and corresponding certificate)
* Two biometric fingerprints
* Facial Image Buffer
* Security Object

<br />[[Return to Table of Contents]](#00-table-of-contents)<br /><br /><br />

### 3.12 What Are The Optional Data Model Elements For A PIV-I Card?

The PIV Card logical data model defines several optional elements.  The PIV-I Card logical data model can be extended in the same way as the PIV Card logical data model, as defined in [FIPS 201-2](http://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.201-2.pdf) Section 4.1.5.1.  [NIST SP 800-78-4](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-78-4.pdf)  specifies additional cryptographic algorithms and key sizes.  [NIST SP 800-76-2](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-76-2.pdf) provides additional biometric requirements.  [NIST SP 800-73-4](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-73-4.pdf) provides the technical guidance for these optional elements. These options may be selected to meet organization-specific requirements. <br />
The optional elements include:

* Printed Information Buffer
* Discovery Object
* Key History Object
* Retired Key Management Keys
* Digital Signature Key
* Key Management Key
* Symmetric key associated with the card management system.

<br />[[Return to Table of Contents]](#00-table-of-contents)<br /><br /><br />

### 3.13 What Is The Validity Period For PIV-I Certificates?

The validity period of PIV-I certificates is the same as for PIV certificates.  For example, the maximum validity of PIV-I certificates is three (3) years, which is also the validity period for human subscriber certificates issued in accordance with FBCA certificate policies. See [FAQ 3.3](#33-what-object-identifiers-oids-are-specified-for-piv-i-1) for an overview of PIV-I in the FBCA Certificate Policy.

<br />[[Return to Table of Contents]](#00-table-of-contents)<br /><br /><br />

### 3.14 What Algorithms Must Be Used In PIV-I Card Certificates?

The PIV-I Card must use the same algorithms as the PIV Card for their respective certificates, as specified in [NIST SP 800-78-4](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-78-4.pdf).  Tables 3.1 and 5.1 specify the algorithms and key sizes that must be supported per key type:

<img src="/img/PIVI_CertAlgorithms.JPG" alt="PIV-I Cert Algorithms Table">
<br />[[Return to Table of Contents]](#00-table-of-contents)<br /><br /><br />

### 3.15 What Must PIV-I Card Authentication Certificate Policies Map To?

The certificate policies for the PIV-I Card Authentication certificate must map to the FBCA’s **`id-fpki- certpcy-pivi-cardAuth`** policy (See [FAQ 3.3](#33-what-object-identifiers-oids-are-specified-for-piv-i-1) for an overview of the PIV-I card authentication certificate policy).  This is done by cross-certifying the issuing Certification Authority (CA) with the Federal Bridge Certification Authority (FBCA).  Note that a revised [X.509 Certificate Policy for the Federal Bridge Certification Authority (FBCA)](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000TN7cAAG&field=File__Body__s) that comprehensively addresses PIV-I has been published (See [ICAM PIV-I FAQ](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000TNPlAAO&field=File__Body__s) Section 2.15).

<br />[[Return to Table of Contents]](#00-table-of-contents)<br /><br /><br />

### 3.16 What Key Usage Bits Must Be Asserted In The Key Usage Exensions Of PIV-I Certificates?

The certificates on PIV-I Cards assert the same bits in the certificate key usage extension as the respective certificates on PIV Cards, as follows:

<img src="/img/PIVI_Cert_KeyUsageBits.JPG" alt="PIV-I Key Usage Bits"><br />
(See [X.509 Certificate and Certificate Revocation List (CRL) Extensions Profile for the Shared Service Providers(SSP) Program](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000Gmi3AAC&field=File__Body__s) for information on use of the extended key usage extension in certificates on PIV Cards.)

<br />[[Return to Table of Contents]](#00-table-of-contents)<br /><br /><br />

### 3.17 Do PIV-I Cards Need To Be FIPS-140-2 Validated?

* **Yes -**  The [X.509 Certificate Policy for the Federal Bridge Certification Authority (FBCA)](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000TN7cAAG&field=File__Body__s) requires [FIPS
140-2](http://csrc.nist.gov/publications/fips/fips140-2/fips1402.pdf) validation of PIV-I Cards. In addition, PIV-I Cards must be on the [Approved Products List](https://www.idmanagement.gov/IDM/IDMFicamProductSearchPage).

<br />[[Return to Table of Contents]](#00-table-of-contents)<br /><br /><br />

### 3.18 What Assurance Requirements Must PIV-I Card Issuers Meet?

Relying parties can be assured, with a high level of confidence, that PIV-I Non-Federal Issuers (NFIs) are following sound security practices, because:

* Cross Certification with the Federal Bridge Certification Authority (FBCA) includes extensive requirements related to Facility, Management, and Operational Controls (FBCA Section 5) and Technical Controls (FBCA Section 6)
* PIV-I NFIs must cross-certify with the FBCA, which requires a rigorous process of evaluating a PIV-I NFI’s policies and procedures against the requirements defined in the [X.509 Certificate Policy for the Federal Bridge Certification Authority (FBCA)](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000TN7cAAG&field=File__Body__s)
* PIV-I NFI’s will be issued a cross-certificate from the FBCA that will map the NFI’s policy Object Identifiers (OIDs)
to the relevant PIV-I OIDs (See [FAQ 3.3](#33-what-object-identifiers-oids-are-specified-for-piv-i-1))
* Cross-certification with the FBCA requires annual compliance audits to demonstrate ongoing compliance with certificate policies and procedures
* NFI cross certification with the FBCA is a requirement for identity cards to be considered PIV-I

<br />[[Return to Table of Contents]](#00-table-of-contents)<br /><br /><br />

### 3.19 What Are The Valid Methods To Generate / Construct A Universally Unique IDentifier (UUID) Number?

The following table summarizes the three methods of generating/constructing UUID numbers specified in
[NIST SP 800-73-4](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-73-4.pdf).<br /><br />

<img src="/img/Generating_UUID.JPG" alt="Genating a UUID">
<br /><br />

There is a slight chance of UUID collision across issuers. Therefore, Relying Parties should check for collisions when new UUIDs are enrolled in a local Physical Access Control System (PACS).

<br />[[Return to Table of Contents]](#00-table-of-contents)<br /><br /><br />

### 3.20 How does PIV-I handle Global Unique IDentification Number (GUID) during issuance?

The GUID is a field that must be in the CardHolder Unique IDentifier (CHUID).  The value of the GUID must be an [RFC 4122](http://www.ietf.org/rfc/rfc4122.txt) Universally Unique IDentifier (UUID), as specified in the [X.509 Certificate Policy for the Federal Bridge Certification Authority (FBCA)](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000TN7cAAG&field=File__Body__s).  The UUID value in the GUID is also used in certificates and signed objects on the card.

<br />[[Return to Table of Contents]](#00-table-of-contents)<br /><br /><br />

### 3.21 How Are PIV-I Cards And Components Tested?

PIV-I Cards have to be on the  [FIPS 201 Approved Products List](https://www.idmanagement.gov/IDM/IDMFicamProductSearchPage), which requires [NIST SP 800-85A-4](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-85A-4.pdf) and security testing according to [FIPS 140-2](http://csrc.nist.gov/publications/fips/fips140-2/fips1402.pdf).  It is recommended that issuers apply the 

---
[GSA FIPS 201 Evaluation Program Test Tools](https://www.idmanagement.gov/IDM/s/) 

---
to a sampling of their issued cards on an ongoing basis to ensure interoperability.

<br />[[Return to Table of Contents]](#00-table-of-contents)<br /><br /><br />

### 3.22 Is Symmetric Card Authentication Key (CAK) Prohibited?

* **NO -** However, [X.509 Certificate Policy for the Federal Bridge Certification Authority (FBCA)](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000TN7cAAG&field=File__Body__s) requires PIV-I Cards to contain an asymmetric CAK. Therefore, the card must be capable of supporting multiple CAKs in order to use a symmetric CAK.<br /><br />
While [FIPS 201-2](http://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.201-2.pdf) allows a PIV Card’s CAK to be either a symmetric (secret) key or an asymmetric private key for physical access, this has resulted in issues associated with Physical Access Control Systems (PACS) interoperability. <br />

----
**\*NOTE***  [NIST SP 800-116](http://nvlpubs.nist.gov/nistpubs/Legacy/SP/nistspecialpublication800-116.pdf)
 strongly recommends that agencies use the asymmetric CAK protocol, rather than a symmetric CAK protocol, whenever the CAK authentication mechanism is used with PACS.

----

<br />[[Return to Table of Contents]](#00-table-of-contents)<br /><br /><br />

### 3.23 What Biometrics Must Be In A PIV-I Card?

PIV-I Card biometric requirements match those of the PIV Card.   [NIST SP 800-73-4](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-73-4.pdf)
 requires the biometrics data object to be on the card.   [NIST SP 800-76-2](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-76-2.pdf)
 defines the biometrics data object.  Specifically, two fingerprint templates, and a digitized photo template are required for PIV-I.  A printed photo is also required to be on the card.

<br />[[Return to Table of Contents]](#00-table-of-contents)<br /><br /><br />

### 3.24 What Is The Relationship Between FASC-N And GUID?

Both the Global Unique IDentifier (GUID) and the Federal Agency Smart Credential Number(FASC-N) are data fields within the CardHolder Unique IDentifier (CHUID) per  [NIST SP 800-73-4](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-73-4.pdf). The GUID is included in the CHUID.  The GUID field is defined to contain an  [RFC 4122](http://www.ietf.org/rfc/rfc4122.txt)-conformant Universally Unique IDentifier (UUID) value to support large Non-Federal Issuer (NFI) populations. [PIV-I NFI](https://cio.gov/wp-content/uploads/downloads/2012/09/PIV_Interoperabillity_Non-Federal_Issuers_May-2009.pdf)
 describes the challenges with the FASC-N as follows: <br />
>The PIV Card includes a Federal Agency Smart Credential Number (FASC-N) to uniquely identify it, and thus avoid identifier namespace collisions. When managed and distributed within a closed system (the U.S. Government), uniqueness is ensured. However, the FASC-N structure does not support its use beyond the U.S. Government as it cannot be easily extended to allow sufficient identifier namespace to support a large NFI population.

<br />[[Return to Table of Contents]](#00-table-of-contents)<br /><br /><br />

### 3.25 What Is The GUID?

The Global Unique IDentifier (GUID) is a mandatory data field defined within the CardHolder Unique IDentifier (CHUID) as specified in [NIST SP 800-73-4](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-73-4.pdf).  PIV and PIV-I Card must conform to  NIST SP 800-73.  For PIV-I Cards, the GUID field must contain an [RFC 4122](http://www.ietf.org/rfc/rfc4122.txt)-conformant Universally Unique IDentifier (UUID) value to support large NFI populations.

<br />[[Return to Table of Contents]](#00-table-of-contents)<br /><br /><br />

### 3.26 What Is The Relationship Between GUID And UUID?

* **The Global Unique IDentifier (GUID)** is a Tagged-Length-Value (TLV) (i.e., a structured data field)
within the CardHolder Unique IDentifier (CHUID) object of a PIV Card. The GUID is defined in [NIST SP 800-73-4](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-73-4.pdf).

* **The Universally Unique IDentifier (UUID)** is a unique identifier that can be placed in multiple data fields to uniquely identify the card.  For example, the UUID is found in the GUID field of the CHUID, the `subjectAltName` extension of PIV-I Authentication and PIV-I Card Authentication certificates, and within signed objects on the card (in place of the Federal Agency Smart Credential Number(FASC-N) used in PIV Cards). The UUID is defined in [RFC 4122](http://www.ietf.org/rfc/rfc4122.txt).

On PIV Cards, the GUID may contain a UUID, an IPv6 address, or be populated with all zeros.  On PIV-I Cards, the GUID must contain a UUID. Both the UUID and IPv6 addresses provide a unique numbering scheme.  However, the UUID does not require a central organization to manage the namespace.

<br />[[Return to Table of Contents]](#00-table-of-contents)<br /><br /><br />

### 3.27 Where Else Does The GUID's UUID Value Appear?

For Non Federal Issuers (NFI), the Universally Unique IDentifier (UUID) value that is present in the The Global Unique Identifier (GUID) is present in other data objects as well.  For example, the UUID must be present in all objects on a PIV-I credential that would otherwise contain the Federal Agency Smart Credential Number(FASC-N) if the card were issued by a Federal issuer.  In addition, the UUID must appear in the `subjectAltName` extension of the PIV-I Authentication and PIV-I Card Authentication certificates as a Uniform Resource Identifier (URI).  The UUID also appears in a `serialNumber` attribute in the subject field of PIV-I Card Authentication certificates where it is encoded using the string representation from [RFC 4122](http://www.ietf.org/rfc/rfc4122.txt).

<br />[[Return to Table of Contents]](#00-table-of-contents)<br /><br /><br />

### 3.28 What Is The Format Of The UUID In Certificates?

The Uniform Resource Name (URN)-formatted value of the UUID is included in the `subjectAltName` extension of the PIV-I Authentication and PIV-I Card Authentication certificates. One of the defined types of `subjectAltName` extension is `uniformResourceIdentifier`. The `uniformResourceIdentifier` type is used to house the URN-formatted Universally Unique Identifier (UUID).  [RFC 4122](http://www.ietf.org/rfc/rfc4122.txt) defines a method for representing the UUID as a URN.

The UUID also appears in a serialNumber attribute in the subject field of PIV-I Card Authentication certificates where it is encoded using the string representation from RFC 4122.

<br />[[Return to Table of Contents]](#00-table-of-contents)<br /><br /><br />

### 3.29 Why Has The Ipv6 Guid Value Been Deprecated In Favor Of UUID?

The American Registry for Internet Numbers (ARIN) guidance indicates that IPv6 addresses should only be used for internet addressable end points. The  [RFC 4122](http://www.ietf.org/rfc/rfc4122.txt) provides a unique numbering scheme that does not require any central organization managing the namespace.

<br />[[Return to Table of Contents]](#00-table-of-contents)<br /><br /><br />

### 3.30 Where Does The Global Unique Identifier (GUID) Appear?

GUID is a Tag-Length-Value (TLV) (i.e., structured data field) of the CardHolder Unique IDentifier (CHUID).  As such, it only appears in the CHUID.  The Universally Unique Identifier (UUID) value that is contained in the GUID is used in other data fields throughout the PIV-I credential.

<br />[[Return to Table of Contents]](#00-table-of-contents)<br /><br /><br />

### 3.31 Where Does The FASC-N Appear On The PIV-I Card?

The Federal Agency Smart Credential Number (FASC-N) is a unique number for Federal issuers that links all digitally-signed objects into a single credential set in a PIV Card - but not a PIV-I Card.  For Non-Federal Issuer (NFI) Cards, the FASC-N is only contained in a Tag-Length-Value (TLV) (i.e., structured data field) of the CardHolder Unique IDentifier (CHUID) and it must contain 14 nines (9).  For PIV-I cards, the Universally Unique Identifier (UUID) links all digitally-signed objects into a single credential set. <br /> (See [NIST SP 800-73](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-73-4.pdf) for more information.)

<br />[[Return to Table of Contents]](#00-table-of-contents)<br /><br /><br />

### 3.32 Where Are The Detailed Specifications For UUID Formatting?

[NIST SP 800-73](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-73-4.pdf) Section 3.3 provides the requirements for formatting the Universally Unique Identifier (UUID) in objects that must contain a UUID.

<br />[[Return to Table of Contents]](#00-table-of-contents)<br /><br /><br />

### 3.33 Where Are The Detailed Specifications For The Value Of The FASC-N?

The detailed specifications for the data value of the Federal Agency Smart Credential Number (FASC-N) are provided in  [NIST SP 800-73](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-73-4.pdf).

<br />[[Return to Table of Contents]](#00-table-of-contents)<br /><br /><br />

### 3.34 What Are The Values Of The Agency Code Of The FASC-N?

The Agency Code for Federal issuers is assigned to each Department or Agency by [NIST SP 800-87](http://nvlpubs.nist.gov/nistpubs/Legacy/SP/nistspecialpublication800-87r1.pdf).  The
Agency Code for Non Federal Issuers (NFI) is 9999.<br /> ( See [FAQ 3.38](#338-what-can-i-tell-from-the-possible-values-of-a-fasc-n-and-how-do-they-impact-my-pacs-1) for contents of the FASC-N in NFI cards.)

<br />[[Return to Table of Contents]](#00-table-of-contents)<br /><br /><br />

### 3.35 Where Are The Detailed Specifications For FASC-N Formatting?

[FIPS 201](http://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.201-2.pdf) provides the requirements for encoding the Federal Agency Smart Credential Number (FASC-N) in certificates and the signed attributes field of Cryptographic Message Syntax (CMS)-signed objects.   [NIST SP 800-73](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-73-4.pdf) provides the requirements for formatting the FASC-N in objects that must contain a FASC-N.  [NIST SP 800-73](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-73-4.pdf) refers to the [Technical Implementation Guidance: Smart Card Enabled Physical Access Control Systems](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000KyuCAAS&field=File__Body__s). Note that content of the
FASC-N is different for Non Federal Issuer (NFI) Cards than for Federal agencies.

<br />[[Return to Table of Contents]](#00-table-of-contents)<br /><br /><br />

### 3.36 How Does A PACS Interpret A Federal PIV Card If The Card Contains A GUID That Is All Zeros?

The Physical Access Control System (PACS) should use the Federal Agency Smart Credential Number (FASC-N) values for the Federal PIV card to identify the cardholder.

<br />[[Return to Table of Contents]](#00-table-of-contents)<br /><br /><br />

### 3.37 How Does A Federal PACS Interpret An NFI PIV-I Card That Does Not Have A FASC-N?

Non-Federal Issuer (NFI) cards have a Federal Agency Smart Credential Number (FASC-N) that contains 14 nines (9). However, the FASC-N is not a unique identifier for NFIs.  The Global Unique Identifier (GUID) is the unique identifier for NFI Cards. When a Federal Physical Access Control System (PACS) is reading the CardHolder Unique IDentifier (CHUID) it will have both the FASC-N and the GUID available to it.  When the FASC-N contains 14 nines (9), and if technically feasible, the Federal PACS should look for and use the GUID value to identify the cardholder.

<br />[[Return to Table of Contents]](#00-table-of-contents)<br /><br /><br />

### 3.38 What Can I Tell From The Possible Values Of A FASC-N And How Do They Impact My PACS?

The following table shows the two types of Federal Agency Smart Credential Number (FASC-N) values, What can be determined about the credential based on that value, and any associated impacts or issues:

<img src="/img/FASCN_ValueTable.JPG" alt="FASC-N Values Table">
<br />[[Return to Table of Contents]](#00-table-of-contents)<br /><br /><br />

### 3.39 As An Issuer, When Do I Use The FASC-N Versus GUID?

When issuing PIV-I credentials, Non Federal Issuers (NFI) are required to populate the Universally Unique Identifier (UUID) and Global Unique Identifier (GUID) according to  [NIST SP 800-73](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-73-4.pdf), in addition to placing 14 nines (9) in the Federal Agency Smart Credential Number (FASC-N).<br />  (See FAQs 3.24 through 3.41 for related information.)

<br />[[Return to Table of Contents]](#00-table-of-contents)<br /><br /><br />

### 3.40 As A Relying Party, When Do I Use The FASC-N Versus GUID?

---

***NOTE***  
* The unique identifier for Federal cards is the Federal Agency Smart Credential Number (FASC-N).  It is found in the `subjectAltName` extension of the authentication certificates, and in the Global Unique Identifier (GUID) within the CardHolder Unique IDentifier (CHUID).

* Non Federal Issuer (NFI) cards have a FASC-N that contains 14 nines (9) and use the  as the unique identifier.

---

* **For CHUID-based authentication**

If the FASC-N is populated with 14 nines (9), you can reasonably conclude it is a PIV-I card. Use the Universally Unique Identifier (UUID) from the GUID.

* **For certificate-based authentication**

If the `subjectAltName` does not contain a FASC-N, you can reasonably conclude it is a PIV-I card. Use the UUID from the `subjectAltName`.

<br />[[Return to Table of Contents]](#00-table-of-contents)<br /><br /><br />

### 3.41 How Does A PACS Determine Whether A Card Is PIV Or PIV-I?

The method depends upon the object on the card that is being used to authenticate the cardholder.  The tables below shows the card authentication method and the Object ID (OID) Name & OID value PIV and PIV-I cards are validated against.
<br />

PIV Credential Validation <br />

Authentication | OID Name | OID Value
---|---|---
Authentication Certificate | id-fpki-common-authentication | 2.16.840.1.101.3.2.1.3.13
Card Authentication Certificate | id-fpki-common-cardAuth | 2.16.840.1.101.3.2.1.3.17
Content Signing Certificate | id-fpki-common-devices | 2.16.840.1.101.3.2.1.3.8
CardHolder Unique IDentifier (CHUID) | FASC-N | [Valid Federal Agency Code]
<br />

PIV-I Credential Validation <br />

Authentication | OID Name | OID Value
---|---|---
Authentication Certificate | id-fpki-certpcy-pivi-hardware |2.16.840.1.101.3.2.1.3.18
Card Authentication Certificate | id-fpki-certpcy-pivi-cardAuth | 2.16.840.1.101.3.2.1.3.19
Content Signing Certificate | id-fpki-certpcy-pivi-contentSigning | 2.16.840.1.101.3.2.1.3.20
CardHolder Unique IDentifier (CHUID) | FASC-N | 14 nines (9) 

<br />[[Return to Table of Contents]](#00-table-of-contents)<br /><br /><br />

### 3.42 How Do I Generate A GUID?

For PIV-I Cards, a Global Unique Identifier (GUID) is generated using the Universally Unique Identifier (UUID) specification defined in  [RFC 4122](http://www.ietf.org/rfc/rfc4122.txt).  [NIST SP 800-73](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-73-4.pdf) recommends using algorithm versions 1, 4, and 5 to generate the UUID.

<br />[[Return to Table of Contents]](#00-table-of-contents)<br /><br /><br />

### 3.43 Are Other Fields In The FASC-N, Such As Person Identifier, Defined For NFI Cards?

Neither policy nor specifications provide guidance in this area. Issuers can do anything they like with Person Identifier or the remaining fields of the FASC-N.  Therefore, Relying Parties should not make any assumptions regarding format or content of the Person Identifier or the remaining fields of the FASC-N.

<br />[[Return to Table of Contents]](#00-table-of-contents)<br /><br /><br />

#### References
Personal Identity Verification Interoperable (PIV-I) Frequently Asked Questions (FAQ)
<https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000TNPlAAO&field=File__Body__s>
