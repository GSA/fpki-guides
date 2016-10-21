---
layout: page
title: PIV-I FAQ for Federal Agencies
permalink: /fpki_piv-i_faq/
---
## Introduction  
Welcome to the PIV-I FAQ!  This playbook was written to provide agencies and relying parties a simple, easy to understand explaination of frequently asked questions and common issues regarding Personal Identity Verification-Interoperable (PIV-I) cards.  Some of the FAQs here may seem to apply to issuers, but these may also be important questions for relying parties to understand when verifying and authenticating PIV-I cards.

You can click on a topic in the table of contents below to jump to a specific section or scroll through the page to view all of the FAQs listed.

If you are really interested in the specifics and technical details of PIV-I, references to any standards are linked in each FAQ.  However, for most users and engineers, the Standards may seem overwhelming and will be too detailed for your needs.


## Table of Contents
####[Common Terms](#common-terms-1)
####[Frequently Asked Questions](#frequently-asked-questions-1)
####[What Is A PIV-I Card](#what-is-a-piv-i-card-1)
####[What Is The Difference Between A PIV Card And A PIV-I Card](#what-is-the-difference-between-a-piv-card-and-a-piv-i-card-1)
####[Does PIV-I Have Specific Object Identifiers (OIDs)](#does-piv-i-have-specific-object-identifiers-oids-1)
####[Can I Accept My Contractors' Company Issued PIV-I Cards Instead Of Issuing Them Federal PIV Cards](#can-i-accept-my-contractors-company-issued-piv-i-cards-instead-of-issuing-them-federal-piv-cards-1)
####[Can My Agency Issue PIV-I Cards?](#can-my-agency-issue-piv-i-cards-1)
####[Can A PIV-I Card Be Accepted For Both Physical And Logical Access](#can-a-piv-i-card-be-accepted-for-both-physical-and-logical-access-1)
####[Can A Program Modify The PIV Technical Specifications Of An ID Card It Issues To Make It A PIV-I Card](#can-a-program-modify-the-piv-technical-specifications-of-an-id-card-it-issues-to-make-it-a-piv-i-card-1)
####[What Is The PIV-I Card Logical Data Model](#what-is-the-piv-i-card-logical-data-model-1)
####[Can The PIV-I Card Logical Data Model Be Extended](#can-the-piv-i-card-logical-data-model-be-extended-1)
####[What Certificates And Keys May Be Present On A PIV-I Card](#what-certificates-and-keys-may-be-present-on-a-piv-i-card-1)
####[What Are The Mandatory Data Model Elements For A PIV-I Card](#what-are-the-mandatory-data-model-elements-for-a-piv-i-card-1)
####[What Are The Optional Data Model Elements For A PIV-I Card](#what-are-the-optional-data-model-elements-for-a-piv-i-card-1)
####[How Long Are PIV-I Certificates Valid](#how-long-are-piv-i-certificates-valid-1)
####[What Algorithms Must Be Used In PIV-I Card Certificates](#what-algorithms-must-be-used-in-piv-i-card-certificates-1)
####[What Must PIV-I Card Authentication Certificate Policies Map To](#what-must-piv-i-card-authentication-certificate-policies-map-to-1)
####[What Key Usage Bits Must Be Asserted In The keyUsage Exensions Of PIV-I Certificates](#what-key-usage-bits-must-be-asserted-in-the-keyusage-exensions-of-piv-i-certificates-1)
####[Do PIV-I Cards Need To Be FIPS 140-2 Validated](#do-piv-i-cards-need-to-be-fips-140-2-validated-1)
####[What Assurance Requirements Must PIV-I Card Issuers Meet](#what-assurance-requirements-must-piv-i-card-issuers-meet-1)
####[How Do I Generate / Construct A Universally Unique Identifier (UUID) Number](#how-do-i-generate--construct-a-universally-unique-identifier-uuid-number-1)
####[How Does PIV-I Handle Global Unique IDentification Number (GUID) during issuance](#how-does-piv-i-handle-global-unique-identification-number-guid-during-issuance-1)
####[How Are PIV-I Cards And Components Tested](#how-are-piv-i-cards-and-components-tested-1)
####[Is Symmetric Card Authentication Key (CAK) Prohibited](#is-symmetric-card-authentication-key-cak-prohibited-1)
####[What Biometrics Must Be In A PIV-I Card](#what-biometrics-must-be-in-a-piv-i-card-1)
####[What Is The Relationship Between FASC-N And GUID](#what-is-the-relationship-between-fasc-n-and-guid-1)
####[What Is The GUID](#what-is-the-guid-1)
####[What Is The Relationship Between GUID And UUID](#what-is-the-relationship-between-guid-and-uuid-1)
####[Where Else Does The GUIDs UUID Value Appear](#where-else-does-the-guids-uuid-value-appear-1)
####[What Is The Format Of The UUID In Certificates](#what-is-the-format-of-the-uuid-in-certificates-1)
####[Why Has The Ipv6 GUID Value Been Deprecated In Favor Of UUID](#why-has-the-ipv6-guid-value-been-deprecated-in-favor-of-uuid-1)
####[Where Does The Global Unique Identifier (GUID) Appear](#where-does-the-global-unique-identifier-guid-appear-1)
####[Where Does The FASC-N Appear On The PIV-I Card](#where-does-the-fasc-n-appear-on-the-piv-i-card-1)
####[Where Are The Detailed Specifications For UUID Formatting](#where-are-the-detailed-specifications-for-uuid-formatting-1)
####[What Are The Values Of The Agency Code Of The FASC-N](#what-are-the-values-of-the-agency-code-of-the-fasc-n-1)
####[Where Are The Detailed Specifications For FASC-N Formatting](#where-are-the-detailed-specifications-for-fasc-n-formatting-1)
####[How Does A PACS Interpret A Federal PIV Card If The Card Contains A GUID That Is All Zeros](#how-does-a-pacs-interpret-a-federal-piv-card-if-the-card-contains-a-guid-that-is-all-zeros-1)
####[How Does A Federal PACS Interpret A PIV-I Card That Does Not Have A FASC-N](#how-does-a-federal-pacs-interpret-a-piv-i-card-that-does-not-have-a-fasc-n-1)
####[What Can I Determine From FASC-N Values And How Do They Impact My PACS](#what-can-i-determine-from-fasc-n-values-and-how-do-they-impact-my-pacs-1)
####[As A Relying Party When Do I Use The FASC-N Versus GUID](#as-a-relying-party-when-do-i-use-the-fasc-n-versus-guid-1)
####[How Does A PACS Determine Whether A Card Is PIV Or PIV-I](#how-does-a-pacs-determine-whether-a-card-is-piv-or-piv-i-1)
####[How Do I Generate A GUID](#how-do-i-generate-a-guid-1)
####[Are Other Fields In The FASC-N Such As Person Identifier Defined For NFI Cards](#are-other-fields-in-the-fasc-n-such-as-person-identifier-defined-for-nfi-cards-1)
####[Additional Resource](#additional-resources-1)

 
## Common Terms

Here you will find a table of commonly used terms and acronyms and a brief description of each.

Acronym | Term | Description
--------|-----|------
PIV | Personal Identity Verification card | A card containing printed and stored identity credentials that can be verified by another person or by an automated process within the Federal PIV system.  PIV cards can only be produced by Federal issuers.
PIV-I | Personal Identity Verification - Interoperable card | An identitiy card that can work within the Federal PIV system and be trusted and relied upon, but does not meet all of the requirements for a PIV card.
PACS | Physical Access Control System | An automated system that manages physical passage through a secured area based on a set of rules.
CHUID | Card Holder Unique Identifier | Standardized set of data required for Federal PACS which must be included on PIV and PIV-I cards.
GUID | Global Unique Identification Number | Unique number within the CHUID that must be present.
FASC-N | Federal Agency Smart Card Number | A unique number assigned to one PIV card and individual only.  This number is the main identifier used by a PACS for verifying PIV cards.
NFI | Non-Federal Issuer | A non-federal entity certified to produce and issue PIV-I credentials.
UUID | Universally Unique Identifier | Alternate identifier for PIV-I cards since FASC-N are only available to Federal issuers.  This number is the main identifier used by a PACS for verifying PIV-I cards.
FIPS 201 | Federal Information Processing Standard, Publication 201 | Publication specifying requirements for a common identification standard for Federal employees and contractors.
-- | relying party | Someone who requests and relies upon information provided from an external source to authenticate an identity.



## Frequently Asked Questions

### What Is A PIV-I Card?

A Personal Identity Verification Interoperable (PIV-I) card is an ID card similar to a Federal PIV.  PIV-I cards are intended for individuals such as short-term contractors and employees of Federal agencies as well as non-federal partners such as state agencies and commercial partners, who do not qualify for a PIV card but still require access to Federal agency resouces.   

*PIV-I card summary:*

*  Work with Federal PIV systems
*  Can be trusted by Federal organizations
*  Suitable for Level of Assurance (LOA) 4
*  Suitable for multi-factor authentication
*  May be issued by Federal agencies or qualified Non-Federal Issuers (NFIs)
*  Does not meet all requirements for PIV credentials

The table below identifies the areas Non Federal Issuers (NFIs) cannot meet the full PIV standard, and provides alternatives.
There are four core areas identified:


Core Area | Description
---|---
**Credential Numbering** | [FIPS 201](http://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.201-2.pdf) defines the use of the Federal Agency Smart Credential Number (FASC-N).  This credential numbering schema cannot be used by Non-Federal Issuers (NFIs).  [X.509 Certificate Policy for the Federal Bridge Certification Authority (FBCA)](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000ClrhAAC&field=File__Body__s) provides the solution using an [RFC 4122](http://www.ietf.org/rfc/rfc4122.txt) conformant Universally Unique Identifier (UUID).  The UUID is found in the certificates, signed objects, and the Global Unique Identifier (GUID) Tag-Length-Value (TLV) of the CardHolder Unique Identifier (CHUID).
**PKI Technology Mapping** | [X.509 Certificate Policy for the U.S. Federal PKI Common Policy Framework](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000TN9iAAG&field=File__Body__s) defines an Object Identifier (OID) that is specific to Federal issuers.  Non-Federal Issuers (NFIs) must map their policies to the PIV-I Hardware policy OID and be cross-certified with the FBCA to meet the requirements of PIV-I.  See [Does PIV-I Have Specific Object Identifiers (OIDs)](#does-piv-i-have-specific-object-identifiers-oids-1) for an overview of the PIV-I Hardware OID.
**Background Investigation** | [FIPS 201](http://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.201-2.pdf)  defines the use of a National Agency Check with Written Inquiries (NAC-I) for PIV.  The NAC-I is only available to Federal agencies through the Office of Personnel Management.  [X.509 Certificate Policy for the Federal Bridge Certification Authority (FBCA)](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000ClrhAAC&field=File__Body__s) specifies the PIV-I Hardware policy as the identity verification model that separates identity verification from the NAC-I suitability and fitness adjudications. See [Does PIV-I Have Specific Object Identifiers (OIDs)](#does-piv-i-have-specific-object-identifiers-oids-1) for an overview of the PIV-I Hardware policy (**NOTE** PIV-I Hardware requirements are consistent with  [NIST SP 800-63](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-63-2.pdf)).
**Visual Distinction** | The PIV-I Card physical topography shall include, at a minimum, the following items on the front of the card:<br />*  Cardholder facial image<br />*  Cardholder full name<br />*  Organizational affiliation, if it exists, otherwise the issuer of the card<br />*  Card expiration date<br />However, visual distinction of a PIV-I Card from that of a Federal PIV Card is required to ensure no suggestion of attempting to create a fraudulent Federal PIV Card.

[[Return to Table of Contents]](#table-of-contents)



### What Is The Difference Between A PIV Card And A PIV-I Card?

* **PIV** is the official standard for issuing and managing Federal ID credentials.  A PIV card is fully conformant with the Federal PIV standard and may only be issued by a Federal entity.

* **PIV-I** cards meet the technical specifications to work with PIV systems and may be trusted by Federal Government relying parties.   PIV-I card issuers are cross-certified with the Federal Bridge Certification Authority (FBCA), however, PIV-I cards are not Federal credentials and do not meet all of the requirements of [FIPS 201](http://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.201-2.pdf). 


The table below compares the PIV and PIV-I cards in three areas:

<!--- Table in GitHub Flavored Markdown format
Category | Feature | PIV Card | PIV-I Card
  ---|---|:---:|:---:
  Identity Verification | NIST SP 800-63, Assurance Level 4 | **X** | **X**
  Identity Verification | NACI | **X** |  
  Trust | FIPS 201 Conformant | **X** |
  Trust | PIV OID on PIV Authentication Certificate (trust model)| **X** |
  Trust | PIV-I Hardware equivalent Authentication Certificate (*Note 1*) |**X** | **X**
  Trust | PIV-I Content Signing equivalent object signing certificiate | **X** | **X**
  Card Edge | Card Stock on GSA Approved Product List (APL) **Note 2** | **X** | **X**
  Card Edge | PIV Application Identifier (AID) | **X** | **X**
  Card Edge | Command edge and NIST SP 800-85 conformant **Note 3** | **X** | **X**
  Card Edge | NIST SP 800-73 conformant GUID present in the CHUID | **X** | **X**
  Card Edge | RFC 4122 conformant UUID required in the GUID data element of the CHUID **Note 4** |  | **X**
  Card Edge | RFC 4122 conformant UUID present in the Authentication Certificates <nl />**Note 5**|  | **X**
  Card Edge | Visually distinguishable from PIV Card |  | **X**
  -->
  
  <table>
    <tr>
      <th>CATEGORY</th>
      <th>FEATURE</th>
      <th>PIV</th>
      <th>PIV-I</th>
    </tr>
    <tr>
      <td rowspan="2"><b>Identity Verification</b></td>
      <td><a href="http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-63-2.pdf">NIST SP 800-63</a>, Assurance Level 4</td>
      <td><b>X</b></td>
      <td><b>X</b></td>
    </tr>
    <tr>
      <td>National Agency Check with Inquiries (NACI)</td>
      <td><b>X</b></td>
      <td></td>
    </tr>
    <tr>
      <td rowspan="4"><b>Trust</b></td>
      <td><a href ="http://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.201-2.pdf">FIPS 201</a> conformant</td>
      <td><b>X</b></td>
      <td></td>
    </tr>
    <tr>
      <td>PIV Object Identifier (OID) on PIV Authentication Certificate (trust model)</td>
      <td><b>X</b></td>
      <td></td>
    </tr>
    <tr>
      <td>PIV-I Hardware equivalent Authentication Certificate<sup>1</sup></td>
      <td><b>X</b></td>
      <td><b>X</b></td>
    </tr>
    <tr>
      <td>PIV-I Content Signing equivalent object signing certificiate</td>
      <td><b>X</b></td>
      <td><b>X</b></td>
    </tr>
    <tr>
      <td rowspan="7"><b>Card Edge</b></td>
      <td>Card Stock on GSA Approved Product List (APL)<sup>2</sup></td>
      <td><b>X</b></td>
      <td><b>X</b></td>
    </tr>
    <tr>
      <td>PIV Application Identifier (AID)</td>
      <td><b>X</b></td>
      <td><b>X</b></td>
    </tr>
    <tr>
      <td>Command edge and NIST SP 800-85 conformant<sup>3</sup></td>
      <td><b>X</b></td>
      <td><b>X</b></td>
    </tr>
    <tr>
      <td><a href="http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-73-4.pdf">NIST SP 800-73</a> conformant GUID present in the CHUID</td>
      <td><b>X</b></td>
      <td><b>X</b></td>
    </tr>
    <tr>
      <td><a href="http://www.ietf.org/rfc/rfc4122.txt">RFC 4122</a> conformant UUID required in the GUID data element of the CHUID<sup>4</sup></td>
      <td></td>
      <td><b>X</b></td>
    </tr>
    <tr>
      <td><a href="http://www.ietf.org/rfc/rfc4122.txt">RFC 4122</a> conformant UUID present in the Authentication Certificates<sup>5</sup></td>
      <td></td>
      <td><b>X</b></td>
    </tr>
    <tr>
      <td>Visually distinguishable from PIV Card</td>
      <td></td>
      <td><b>X</b></td>
    </tr>
  </table>

>*  **Note 1:** Certificate equivalence for Non-Federal Issuers (NFIs) is established by the Federal Bridge Certification Authority (FBCA).  See [Does PIV-I Have Specific Object Identifiers (OIDs)](#does-piv-i-have-specific-object-identifiers-oids-1) for an overview of FBCA PIV-I
policies.
*  **Note 2:** Conformant form factor
*  **Note 3:** Contact and contactless command edge conformant defined in  [NIST SP 800-73 Part 2](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-73-4.pdf) requires support for specific ISO/IEC 7816 commands.  Card edge and data model verified through [NIST SP 800-85B](http://nvlpubs.nist.gov/nistpubs/Legacy/SP/nistspecialpublication800-85b.pdf) tool (further efforts are expected to address exceptions for NFIs). Card edge specifications verified through the  [NIST Personal Identity Verification Program (NPIVP)](http://csrc.nist.gov/groups/SNS/piv/npivp/index.html).<br />
*  **Note 4:** [NIST SP 800-73](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-73-4.pdf) does not require the use of [RFC 4122](http://www.ietf.org/rfc/rfc4122.txt) in the generation of a valid Global Unique Identifier (GUID) for PIV cards, but it is required for NFI PIV-I cards.
*  **Note 5:** The value of the UUID will be in the subjectAltName extension of the PIV Authentication Certificate and the Card Authentication Certificate

[[Return to Table of Contents]](#table-of-contents)



### Does PIV-I Have Specific Object Identifiers (OIDs)?

PIV-I does *not* have an OID specifically defined for the Card Authentication Extended Key Usage (EKU).  PIV-I Card Authentication certificates must assert the PIV Card Authentication EKU OID **`id-PIV-cardAuth`** in the EKU extension to specify that the public key is used to authenticate the PIV-I *card* rather than the PIV-I *cardholder*.

The table below shows the OIDs specific to PIV-I:


NAME | TYPE | PURPOSE | VALUE
---|---|---|---
`id-fpki-certpcy-pivi-hardware` | Policy OID | Conveys certificate policy compliance in certificates whose keys require activation by the PIV-I Cardholder (e.g., PIV-I Authentication, PIV-I Digital Signature, and PIV-I Key Management keys). | 2.16.840.1.101.3.2.1.3.18
`id-fpki-certpcy-pivi-cardAuth` | Policy OID | Conveys certificate policy compliance in certificates whose keys do not require PIV-I Cardholder activation (i.e., PIV-I Card Authentication key) | 2.16.840.1.101.3.2.1.3.19
`id-fpki-certpcy-pivi-contentSigning` | Policy OID | Conveys use by a Card Management System that complies with the certificate policy. | 2.16.840.1.101.3.2.1.3.20
`id-fpki-pivi-content-signing` | EKU OID | Conveys that the key is intended to be used to sign PIV-I Cards | 2.16.840.1.101.3.8.7

[[Return to Table of Contents]](#table-of-contents)



### Can I Accept My Contractors' Company Issued PIV-I Cards Instead Of Issuing Them Federal PIV Cards?

* **NO -**  Individuals, including Federal contractors, requiring routine access to Federally-controlled facilities or Federally-controlled information systems for a period of time greater than 6 months, must continue to be issued PIV Cards by the Federal Government in accordance with relevant policies.

>**Standards and Technical Details:**

>[M-05-24](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000TNLFAA4&field=File__Body__s) has further details on PIV/PIV-I credential requirements in line with HSPD-12 implementation.

[[Return to Table of Contents]](#table-of-contents)



### Can My Agency Issue PIV-I Cards?

* **YES -** The Federal Government may issue non-PIV identity and access cards.  Federal Government PIV Card Issuers may issue non-PIV identity cards that meet the PIV-I requirements.  Example scenarios where this might apply include facility access cards issued to short term employees (e.g., summer interns) and identity credentials issued by the Legislative and Judicial Branches of the Federal Government. 

>**Standards and Technical Details:**

>[M-05-24](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000TNLFAA4&field=File__Body__s) has details on PIV/PIV-I credential requirements under HSPD-12 implementation.

>[X.509 Certificate Policy for the Federal Bridge Certification Authority (FBCA)](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000ClrhAAC&field=File__Body__s) specifies minimum requirements when relying on PIV-I Non-Federal Issuer (NFI) identity cards.

[[Return to Table of Contents]](#table-of-contents)



### Can A PIV-I Card Be Accepted For Both Physical And Logical Access?

* **YES -** A PIV-I Card may be used to access both physical and logical resources. However, each federal government relying party will determine the extent to which it will trust PIV-I Cards to access resources.

[[Return to Table of Contents]](#table-of-contents)


### Can A Program Modify The PIV Technical Specifications Of An ID Card It Issues To Make It A PIV-I Card?

* **NO -** In order to be considered PIV-I, an identity card must conform to the minimum PIV technical requirements defined in , *and* be issued by an issuer who has been assessed by the Federal PKI Policy Authority as meeting those requirements.

>**Standards and Technical Details:**

>[X.509 Certificate Policy for the Federal Bridge Certification Authority (FBCA)](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000ClrhAAC&field=File__Body__s) defines the technical requirements for PIV-I.

[[Return to Table of Contents]](#table-of-contents)


### What Is The PIV-I Card Logical Data Model?

The PIV-I Card logical data model is the same as the PIV Card logical data model.  PIV-I Card logical credentials support a variety of authentication mechanisms and contain multiple data objects for the purpose of verifying the cardholder's identity at graduated assurance levels.  Some of the data objects that are optional for PIV have been made mandatory for PIV-I.

>**Standards and Technical Details:**

>The [What are the Mandatory Data Model Elements for a PIV-I Card](#what-are-the-mandatory-data-model-elements-for-a-piv-i-card-1) FAQ lists mandatory PIV-I data objects.

[[Return to Table of Contents]](#table-of-contents)


### Can The PIV-I Card Logical Data Model Be Extended?

* **Yes -** The PIV-I Card logical data model can be extended in the same way as the PIV Card logical data model. The PIV-I Card logical data model may be extended using the optional data defined within  [NIST SP 800-73 Part 1] (http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-73-4.pdf).

[[Return to Table of Contents]](#table-of-contents)


### What Certificates And Keys May Be Present On A PIV-I Card?

Except for the Card Authentication certificate/key pair, PIV-I has the same certificate and key configuration as a PIV Card.
The PIV-I Card has two mandatory certificate/key pairs, and three optional certificate/key pairs:

CERTIFICATE/KEY | MANDATORY or OPTIONAL | DESCRIPTION
---|---|---
Authentication Certificate/Key | Mandatory | Shall be an asymmetric private key supporting user authentication for an interoperable environment, and it is mandatory for each PIV-I Card.  In addition, the Authentication Key is available only on the contact interface and requires the user to present its PIN to the card.
Card Authentication Certificate/Key | Mandatory | Shall contain an asymmetric X.509 Certificate for Card Authentication that conforms to the [X.509 Certificate and Certificate Revocation List (CRL) Extensions Profile for Personal Identity Verification Interoperable (PIV-I) Cards](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000GmhKAAS&field=File__Body__s); conforms to [NIST SP 800-73](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-73-4.pdf); and is issued under the PIV-I Card Authentication policy. (*See Note 6*)
Digital Signature Certificate/Key | Optional | Asymmetric private key supporting document signing.
Key Management Certificate/Key | Optional | Asymmetric private key supporting key establishment and transport.  This can also be used as an encryption key.
Card Management Key | Optional | Symmetric key used for card personalization and post-issuance activitites.


>* **NOTE 6:** PIV allows either a symmetric (secret) key or an asymmetric key, but [NIST SP 800-116](http://nvlpubs.nist.gov/nistpubs/Legacy/SP/nistspecialpublication800-116.pdf) strongly recommends that agencies use the asymmetric CAK protocol.

[[Return to Table of Contents]](#table-of-contents)


### What Are The Mandatory Data Model Elements For A PIV-I Card?

The PIV-I Card logical data model is the same model as the PIV Card logical data model. To support a variety of authentication mechanisms, PIV-I Card logical credentials have multiple data elements to verify the cardholder's identity at several different assurance levels. These mandatory data elements together make up the data model for logical credentials and include the following:

* A Card Capability Container
* A CardHolder Unique Identifier (CHUID)
* An authentication key (one asymmetric key pair and corresponding certificate)
* A card authentication key (one asymmetric key pair and corresponding certificate)
* Two biometric fingerprints
* Facial Image Buffer
* Security Object

>**Standards and Technical Details:**

>[FIPS 201 Section 4.2](http://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.201-2.pdf) contains the technical details on the PIV logical data model.

>[NIST 800-73 Part 1](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-73-4.pdf) offers technical guidance for these required elements.

[[Return to Table of Contents]](#table-of-contents)


### What Are The Optional Data Model Elements For A PIV-I Card?

The PIV Card logical data model defines several optional elements and can be extended in the same way as the PIV Card logical data model.

>**Standards and Technical Details:**

>[FIPS 201 Section 4.2](http://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.201-2.pdf) has technical details on the PIV logical data model. 

>[NIST 800-73 Part 1](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-73-4.pdf) offers technical guidance for the following optional elements:
>*  Printed Information Buffer
>*  Discovery Object
>*  Key History Object
>*  Retired Key Management Keys
>*  Digital Signature Key
>*  Key Management Key
>*  Symmetric key associated with the card management system

>[NIST SP 800-78](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-78-4.pdf) specifies additional cryptographic algorithms and key sizes.

>[NIST SP 800-76](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-76-2.pdf) provides additional biometric requirements.

[[Return to Table of Contents]](#table-of-contents)


### How Long Are PIV-I Certificates Valid?

PIV-I certificates are valid for the same ammount of time as PIV certificates.  For example, the longest a PIV-I certificate can be valid is three (3) years, which is also the length of time human subscriber certificates are valid under the Federal Bridge Certificate Authority (FBCA).

>**Standards and Technical Details:**

>[X.509 Certificate Policy for the Federal Bridge Certification Authority (FBCA)](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000ClrhAAC&field=File__Body__s)has details on the validity period of certificates under the FBCA. 

[[Return to Table of Contents]](#table-of-contents)


### What Algorithms Must Be Used In PIV-I Card Certificates?

The PIV-I Card must use the same algorithms as the PIV Card for their respective certificates.

PIV KEY TYPE | TIME PERIOD for USE | ALGORITHMS and KEY SIZES
---|---|---
PIV-I Authentication key | After 12/31/2013 | RSA (1024 or 2048 bits) <br /> ECDSA (Curve P-256)
Card Authentication key | After 12/31/2013 | 3TDEA <br /> AES-128, AES-192, or AES-256<br /> RSA (1024 or 2048 bits) <br /> ECDSA (Curve P-256)
Digital Signature key | After 12/31/2008 | RSA (1024 or 2048 bits)<br />ECDSA (Curve P-256 or P-384)
Key Management key | after 12/31/2008 | RSA (1024 or 2048 bits)<br />ECDSA (Curve P-256 or P-384)
Card Management Key | After 12/31/2010 | 3TDEA<br />AES-128, AES-192, or AES-256

>**Standards and Technical Details:**

>Tables 3.1 and 5.1 of [NIST SP 800-78](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-78-4.pdf) detail the algorithms and key sizes that must be supported per key type.

[[Return to Table of Contents]](#table-of-contents)


### What Must PIV-I Card Authentication Certificate Policies Map To?

The certificate policies for the PIV-I Card Authentication certificate must map to the FBCA’s **`id-fpki- certpcy-pivi-cardAuth`** policy. (See [Does PIV-I Have Specific Object Identifiers (OIDs)](#does-piv-i-have-specific-object-identifiers-oids-1) for an overview of the PIV-I card authentication certificate policy.)

>**Standards and Technical Details:**

>The [X.509 Certificate Policy for the FBCA](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000ClrhAAC&field=File__Body__s) addresses PIV-I Certificate Policy mapping 

>[X.509 Certificate and Certificate Revocation List (CRL) Extensions Profile for Personal Identity Verification Interoperable (PIV-I) Cards](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000GmhKAAS&field=File__Body__s) identifies the unique parameter settings for certificates and CRLs for PIV-I.

[[Return to Table of Contents]](#table-of-contents)


### What Key Usage Bits Must Be Asserted In The keyUsage Exensions Of PIV-I Certificates?

The keyUsage extension of PIV-I Card certificates assert the same bits as PIV Cards, as follows:

PIV-I CERTIFICATE | KEY USAGE BITS
---|---
PIV-I Authentication Certificate | Only `digitalSignature` shall be set.
PIV-I Digital Signature Certificate | Both `digitalSignature` and `nonRepudiation` shall be set.
PIV-I Card Authentication Certificate | Only `digitalSignature` shall be set.
PIV-I Key Management Certificate | `keyEncipherment` asserted when public key is RSA.<br />`keyAgreement` asserted when public key is elliptic curve.
PIV-I Content Signing Certificate | Only `digitalSignature` shall be set.

>**Standards and Technical Details:**

>[X.509 Certificate and Certificate Revocation List (CRL) Extensions Profile for the Shared Service Providers(SSP) Program](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000Gmi3AAC&field=File__Body__s) has information on the use of the extended key usage extension in certificates on PIV Cards.

[[Return to Table of Contents]](#table-of-contents)


### Do PIV-I Cards Need To Be FIPS-140-2 Validated?

* **Yes -**  The [X.509 Certificate Policy for the Federal Bridge Certification Authority (FBCA)](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000ClrhAAC&field=File__Body__s) requires [FIPS
140-2](http://csrc.nist.gov/publications/fips/fips140-2/fips1402.pdf) validation of PIV-I Cards. In addition, PIV-I Cards must be on the [Approved Products List](https://www.idmanagement.gov/IDM/IDMFicamProductSearchPage).

[[Return to Table of Contents]](#table-of-contents)


### What Assurance Requirements Must PIV-I Card Issuers Meet?

Relying parties can be assured with a high level of confidence that PIV-I Non-Federal Issuers (NFIs) are following sound security practices because:

* Cross Certification with the Federal Bridge Certification Authority (FBCA) includes extensive requirements related to Facility, Management, and Operational Controls (FBCA Section 5) and Technical Controls (FBCA Section 6)
* PIV-I NFIs must cross-certify with the FBCA, which requires a rigorous process of evaluating a PIV-I NFI’s policies and procedures against the requirements defined in the [X.509 Certificate Policy for the Federal Bridge Certification Authority (FBCA)](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000ClrhAAC&field=File__Body__s)
* PIV-I NFI’s will be issued a cross-certificate from the FBCA that will map the NFI’s policy Object Identifiers (OIDs)
to the relevant PIV-I OIDs (See [Does PIV-I Have Specific Object Identifiers (OIDs)](#does-piv-i-have-specific-object-identifiers-oids-1))
* Cross-certification with the FBCA requires annual compliance audits to demonstrate ongoing compliance with certificate policies and procedures
* NFI cross certification with the FBCA is a requirement for identity cards to be considered PIV-I

[[Return to Table of Contents]](#table-of-contents)


### How Do I Generate / Construct A Universally Unique Identifier (UUID) Number?

The following table summarizes the three methods of generating/constructing UUID numbers.

##Generating the UUID
**UUID format (128 bits):**

Time_Stamp (60 bits) | Version (4 bits) | Clock Sequence (14 bits) | Res. (2 bits) | Node (48 bits)
---|---|---|---|---


**UUID may be constructed by one of the following options:**

[RFC-4122](http://www.ietf.org/rfc/rfc4122.txt) | Time_Stamp | Clock Sequence | Node
---|---|---|---
Version 1 | UTC Time Stamp | Random, pseudo-random, or incremental value | Random or pseudo-random
Version 4 | Random or pseudo-random | Randm or pseudo-random value | Random or pseudo-random value
Version 5 | From some "name space" | From some "name space" | From some "name space"

**UUID is then stored in the GUID**


There is a slight chance of UUID collision across issuers. Therefore, *Relying Parties should check for collisions when new UUIDs are enrolled in a local Physical Access Control System (PACS).*

[[Return to Table of Contents]](#table-of-contents)


### How does PIV-I handle Global Unique Identification Number (GUID) during issuance?

The GUID is a field that must be in the CardHolder Unique Identifier (CHUID).  The UUID value in the GUID is also used in certificates and signed objects on the card.


>**Standards and Technical Details:**

>[RFC 4122](http://www.ietf.org/rfc/rfc4122.txt) defines Universally Unique Identifier (UUID) requirements.
[[Return to Table of Contents]](#table-of-contents)

>[X.509 Certificate Policy for the Federal Bridge Certification Authority (FBCA)](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000ClrhAAC&field=File__Body__s) specifies how the GUID/UUID values are implemented for PIV-I.

[[Return to Table of Contents]](#table-of-contents)


### How Are PIV-I Cards And Components Tested?

PIV-I Cards have to be on the  [Approved Products List](https://www.idmanagement.gov/IDM/IDMFicamProductSearchPage), which requires [NIST SP 800-85A](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-85A-4.pdf) and security testing according to [FIPS 140-2](http://csrc.nist.gov/publications/fips/fips140-2/fips1402.pdf).  It is recommended that issuers apply the [GSA FIPS 201 Evaluation Program Test Tools](https://www.idmanagement.gov/IDM/s/article_content_old?tag=a0Gt0000000Sfwn) to a sampling of their issued cards on an ongoing basis to ensure interoperability.

[[Return to Table of Contents]](#table-of-contents)


### Is Symmetric Card Authentication Key (CAK) Prohibited?

* **NO -** However, [X.509 Certificate Policy for the Federal Bridge Certification Authority (FBCA)](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000ClrhAAC&field=File__Body__s) requires PIV-I Cards to contain an asymmetric CAK. Therefore, the card must be capable of supporting multiple CAKs in order to use a symmetric CAK.

>**NOTE:**  [NIST SP 800-116](http://nvlpubs.nist.gov/nistpubs/Legacy/SP/nistspecialpublication800-116.pdf)
 strongly recommends that agencies use the asymmetric CAK protocol, rather than a symmetric CAK protocol, whenever the CAK authentication mechanism is used with PACS.  Cards using symmetric CAK for physical access have run into issues with Physical Access Control Systems (PACS) interoperability.

[[Return to Table of Contents]](#table-of-contents)


### What Biometrics Must Be In A PIV-I Card?

PIV-I Card biometric requirements match those of the PIV Card.  Specifically, two fingerprint templates, and a digitized photo template are required for PIV-I.  A printed photo is also required to be on the card.

>**Standards and Technical Details:**

>[NIST SP 800-73](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-73-4.pdf)
 requires the biometrics data object to be on the card.

>[NIST SP 800-76](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-76-2.pdf)
 defines the biometrics data object.
 
[[Return to Table of Contents]](#table-of-contents)


### What Is The GUID?

The Global Unique Identifier (GUID) is a mandatory data field defined within the CardHolder Unique Identifier (CHUID).  For PIV-I Cards, the GUID field must contain a Universally Unique Identifier (UUID) value which allows the Federal PKI system to support large NFI populations.

[[Return to Table of Contents]](#table-of-contents)


### What Is The Relationship Between FASC-N And GUID?

Both the Global Unique Identifier (GUID) and the Federal Agency Smart Credential Number(FASC-N) are data fields within the CardHolder Unique Identifier (CHUID).  The GUID is included in the CHUID.  

[PIV-I NFI](https://cio.gov/wp-content/uploads/downloads/2012/09/PIV_Interoperabillity_Non-Federal_Issuers_May-2009.pdf)
 describes the challenges with the FASC-N as follows: <br />
>The PIV Card includes a Federal Agency Smart Credential Number (FASC-N) to uniquely identify it, and thus avoid identifier namespace collisions. When managed and distributed within a closed system (the U.S. Government), uniqueness is ensured. However, the FASC-N structure does not support its use beyond the U.S. Government as it cannot be easily extended to allow sufficient identifier namespace to support a large NFI population.

The GUID field is defined to contain an Universally Unique Identifier (UUID) value which allows the Federal PKI system to support large NFI populations.

[[Return to Table of Contents]](#table-of-contents)



### What Is The Relationship Between GUID And UUID?

* **The Global Unique Identifier (GUID)** is a Tag-Length-Value (TLV) (i.e., a structured data field)
within the CardHolder Unique Identifier (CHUID) object of a PIV Card.

* **The Universally Unique Identifier (UUID)** is a unique identifier that can be placed in multiple data fields to uniquely identify the card.  For example, the UUID is found in the GUID field of the CHUID, the `subjectAltName` extension of PIV-I Authentication and PIV-I Card Authentication certificates, and within signed objects on the card (in place of the Federal Agency Smart Credential Number(FASC-N) used in PIV Cards).

On PIV Cards, the GUID may contain a UUID, an IPv6 address, or be populated with all zeros.  On PIV-I Cards, the GUID must contain a UUID. Both the UUID and IPv6 addresses provide a unique numbering scheme.  However, the UUID does not require a central organization to manage the namespace.

>**Standards and Technical Details:**

>[NIST SP 800-73 Part 1](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-73-4.pdf) defines the Global Unique Identifier (GUID).

>[RFC 4122](http://www.ietf.org/rfc/rfc4122.txt) defines the Universally Unique Identifier (UUID).

[[Return to Table of Contents]](#table-of-contents)


### Where Else Does The GUID's UUID Value Appear?

The UUID must be present in all objects on a PIV-I credential that would otherwise contain the Federal Agency Smart Credential Number(FASC-N) if the card were issued by a Federal issuer.  In addition, the UUID must appear in the `subjectAltName` extension of the PIV-I Authentication and PIV-I Card Authentication certificates as a Uniform Resource Identifier (URI).  The UUID also appears in a `serialNumber` attribute in the subject field of PIV-I Card Authentication certificates.

[[Return to Table of Contents]](#table-of-contents)


### What Is The Format Of The UUID In Certificates?

* Uniform Resource Name (URN)-formatted value:  The UUID is included in the `subjectAltName` extension of the PIV-I Authentication and PIV-I Card Authentication certificates.  One of the defined types of `subjectAltName` extension is `uniformResourceIdentifier`. The `uniformResourceIdentifier` type is used to house the URN-formatted Universally Unique Identifier (UUID).  

* [RFC 4122](http://www.ietf.org/rfc/rfc4122.txt)-formatted string representation:  The UUID also appears in a `serialNumber` attribute in the subject field of PIV-I Card Authentication certificates.

>**Standards and Technical Details:**

>[RFC 4122](http://www.ietf.org/rfc/rfc4122.txt) defines the Universally Unique Identifier (UUID) and methods for formatting it.

[[Return to Table of Contents]](#table-of-contents)


### Why Has The Ipv6 Guid Value Been Deprecated In Favor Of UUID?

The American Registry for Internet Numbers (ARIN) guidance indicates that IPv6 addresses should only be used for internet addressable end points. The  [RFC 4122](http://www.ietf.org/rfc/rfc4122.txt) provides a unique numbering scheme that does not require any central organization managing the namespace.

[[Return to Table of Contents]](#table-of-contents)


### Where Does The Global Unique Identifier (GUID) Appear?

The GUID is a field found in only the CardHolder Unique Identifier (CHUID).

>Note:  The Universally Unique Identifier (UUID) value that is contained in the GUID is used in other data fields throughout the PIV-I credential.

[[Return to Table of Contents]](#table-of-contents)


### Where Does The FASC-N Appear On The PIV-I Card?

For PIV Cards, The Federal Agency Smart Credential Number (FASC-N) is a unique number that links all digitally-signed objects into a single credential set in a PIV Card.

For Non-Federal Issuer (NFI) Cards, the FASC-N is only contained in a Tag-Length-Value (TLV) (i.e., structured data field) of the CardHolder Unique Identifier (CHUID) and it must contain 14 nines (9).  For PIV-I cards, the Universally Unique Identifier (UUID) links all digitally-signed objects into a single credential set.

>**Standards and Technical Details:**

>[NIST SP 800-73 Part 1](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-73-4.pdf) contains detailed specificatoins for  FASC-N values.

[[Return to Table of Contents]](#table-of-contents)


### Where Are The Detailed Specifications For UUID Formatting?

[NIST SP 800-73 Part 1 Section 3.4](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-73-4.pdf) provides the requirements for formatting the Universally Unique Identifier (UUID) in objects that must contain a UUID.

[[Return to Table of Contents]](#table-of-contents)


### What Are The Values Of The Agency Code Of The FASC-N?

The Agency Code for Federal issuers is assigned to each Department or Agency by [NIST SP 800-87](http://nvlpubs.nist.gov/nistpubs/Legacy/SP/nistspecialpublication800-87r1.pdf).  The
Agency Code for Non Federal Issuers (NFI) is 9999.

(See [What Can I Determine From FASC-N Values and Their Impact on My PACS](#what-can-i-determine-from-fasc-n-values-and-how-do-they-impact-my-pacs-1) for contents of the FASC-N in NFI cards.)

[[Return to Table of Contents]](#table-of-contents)


### Where Are The Detailed Specifications For FASC-N Formatting?

[FIPS 201](http://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.201-2.pdf) provides the requirements for encoding the Federal Agency Smart Credential Number (FASC-N) in certificates and the signed attributes field of Cryptographic Message Syntax (CMS)-signed objects.

[NIST SP 800-73 Part 1](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-73-4.pdf) provides the requirements for formatting the FASC-N in objects that must contain a FASC-N.

[NIST SP 800-73](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-73-4.pdf) refers to the [Technical Implementation Guidance: Smart Card Enabled Physical Access Control Systems](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000KyuCAAS&field=File__Body__s).

**Note** The content of the FASC-N is different for Non Federal Issuer (NFI) Cards than for Federal agencies.

[[Return to Table of Contents]](#table-of-contents)


### How Does A PACS Interpret A Federal PIV Card If The Card Contains A GUID That Is All Zeros?

If the GUID is all zeros, the Physical Access Control System (PACS) should use the Federal Agency Smart Credential Number (FASC-N) value for the Federal PIV card to identify the cardholder.

[[Return to Table of Contents]](#table-of-contents)


### How Does A Federal PACS Interpret A PIV-I Card That Does Not Have A FASC-N?

Non-Federal Issuer (NFI) cards have a Federal Agency Smart Credential Number (FASC-N) that contains 14 nines (9). However, the FASC-N is not a unique identifier for NFIs.  **The Global Unique Identifier (GUID) is the unique identifier for NFI Cards.** When a Federal Physical Access Control System (PACS) is reading the CardHolder Unique Identifier (CHUID) it will have both the FASC-N and the GUID available to it.  When the FASC-N contains 14 nines (9), and if technically feasible, the Federal PACS should look for and use the GUID value to identify the cardholder.

[[Return to Table of Contents]](#table-of-contents)


### What Can I Determine From FASC-N Values And How Do They Impact My PACS?

The following table shows the two types of Federal Agency Smart Credential Number (FASC-N) values, What can be determined about the credential based on that value, and any associated impacts or issues:

FASC-N VALUE | DETERMINATION | ISSUE/IMPACT
---|---|---
Valid Agency/Code<br /> System Code<br /> Credential Number (CRED#) | *  Federal Issuer<br /> *  FASC-N in all required spaces<br /> *  GUID may be zeros or populated |  No impact to Federal PIV cardholders and Federal PACS that key off of FASC-N<br /><br />PACS that only key off of GUID may not receive a GUID from the card - won't interoperate
9999 9999 999999 | *  NFI<br /> *  GUID contains a UUID<br /> *  UUID is mandatory in all required spaces<br /> *  FASC-N not present outside of CHUID | PACS that only key off of FASC-N cannot be used - need to upgrade

[[Return to Table of Contents]](#table-of-contents)


### As A Relying Party, When Do I Use The FASC-N Versus GUID?


**NOTE:**  The unique identifier is different for Federal and Non-Federal Issuer (NFI) Cards.

**Federal cards use the Federal Agency Smart Credential Number (FASC-N) as the unique identifier**.  It is found in the `subjectAltName` extension of the authentication certificates, and in the Global Unique Identifier (GUID) within the CardHolder Unique Identifier (CHUID).  **Non Federal Issuer (NFI) cards use the Universally Unique Identifier (UUID) as the unique identifier.**  The FASC-N for NFI cards will contains 14 nines (9).

* **For CHUID-based authentication**

If the FASC-N is populated with 14 nines (9), you can reasonably conclude it is a PIV-I card. Use the Universally Unique Identifier (UUID) from the GUID.

* **For certificate-based authentication**

If the `subjectAltName` does not contain a FASC-N, you can reasonably conclude it is a PIV-I card. Use the UUID from the `subjectAltName`.

(See [What is the Relationship between GUID and UUID - Where Does the GUID Appear](#what-is-the-relationship-between-guid-and-uuid-1) for more information about the UUID.)

[[Return to Table of Contents]](#table-of-contents)


### How Does A PACS Determine Whether A Card Is PIV Or PIV-I?

PACS have different methods to determine the type of card being verified depending upon which object on the card is being used to authenticate the cardholder.  The tables below shows the card authentication method and the Object ID (OID) Name & OID value PIV and PIV-I cards are validated against.


PIV Credential Validation

Authentication | OID Name | OID Value
---|---|---
Authentication Certificate | id-fpki-common-authentication | 2.16.840.1.101.3.2.1.3.13
Card Authentication Certificate | id-fpki-common-cardAuth | 2.16.840.1.101.3.2.1.3.17
Content Signing Certificate | id-fpki-common-devices | 2.16.840.1.101.3.2.1.3.8
CardHolder Unique Identifier (CHUID) | FASC-N | [Valid Federal Agency Code]



PIV-I Credential Validation

Authentication | OID Name | OID Value
---|---|---
Authentication Certificate | id-fpki-certpcy-pivi-hardware |2.16.840.1.101.3.2.1.3.18
Card Authentication Certificate | id-fpki-certpcy-pivi-cardAuth | 2.16.840.1.101.3.2.1.3.19
Content Signing Certificate | id-fpki-certpcy-pivi-contentSigning | 2.16.840.1.101.3.2.1.3.20
CardHolder Unique Identifier (CHUID) | FASC-N | 14 nines (9) 

[[Return to Table of Contents]](#table-of-contents)


### How Do I Generate A GUID?

For PIV-I Cards, a Global Unique Identifier (GUID) is generated using the Universally Unique Identifier (UUID) specification defined in  [RFC 4122](http://www.ietf.org/rfc/rfc4122.txt).  [NIST SP 800-73 Part 1](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-73-4.pdf) recommends using algorithm versions 1, 4, and 5 to generate the UUID.

[[Return to Table of Contents]](#table-of-contents)


### Are Other Fields In The FASC-N, Such As Person Identifier, Defined For NFI Cards?

Neither policy nor specifications provide guidance in this area. Issuers can do anything they like with Person Identifier or the remaining fields of the FASC-N.  Therefore, Relying Parties should not make any assumptions regarding format or content of the Person Identifier or the remaining fields of the FASC-N.

[[Return to Table of Contents]](#table-of-contents)


#### Additional Resources
Personal Identity Verification Interoperable (PIV-I) Frequently Asked Questions (FAQ)
<https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000TNPlAAO&field=File__Body__s>

National Institute of Science and Technology (NIST) Special Publications (SP) Library
http://csrc.nist.gov/publications/PubsSPs.html
