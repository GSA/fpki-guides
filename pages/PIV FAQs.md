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

>The unique identifier for Federal cards is the FASC-N. 
>NFI cards have a FASC-N that contains 14 nines (9) and use the GUID as the unique identifier.


##  3.0 Frequently Asked Questions

### 3.1  What is a PIV-I Card? 

A Personal Identity Verification Interoperable (PIV-I) card is an identity credential card which meets the technical specifications to  work with Federal PIV-conformant systems and can be trusted by Federal organizations.  The PIV-I card is suitable for Level of Assurance (LOA) 4 as defined by OMB Memorandum [M-04-04](https://www.whitehouse.gov/sites/default/files/omb/memoranda/fy04/m04-04.pdf) and [NIST SP 800-63](https://pages.nist.gov/800-63-3/) as well as multi-factor authentication as defined in [NIST SP 800-116](http://nvlpubs.nist.gov/nistpubs/Legacy/SP/nistspecialpublication800-116.pdf).<br />
(See [ICAM PIV-I FAQ Section 2.1](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000TNPlAAO&field=File__Body__s) for additional information on PIV-I guidance.)
<br /><br /><br />

### 3.2  What is the Difference Between A PIV-I Card And A PIV Card

**A PIV** card is an identity card that is fully conformant with Federal PIV standards as defined by [FIPS 201](http://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.201-2.pdf) and may only be issued by a Federal entity.  <br /><br />
**A PIV-I** card meets the PIV technical specifications of [NIST SP 800-73](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-73-4.pdf) and is issued in a manner that may be trusted by Federal Government Relying Parties, but does not meet all of the requirements of [FIPS 201](http://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.201-2.pdf). <br /><br />
The table below compares the PIV and PIV-I cards in the areas of Suitability, Trust, and Card Edge.
<br /><br />
![PIV to PIV-I comparison table](https://github.com/Protiviti-JSargent/fpki-guides/blob/Protiviti-JSargent-draft-1/img/PIV_PIVI_table.JPG) <br />
(See [ICAM PIV-I FAQ Section 2.2](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000TNPlAAO&field=File__Body__s) for details on the PIV/PIV-I comparison table.)
<br /><br /><br />

### 3.3 What Object Identifiers (OIDs) Are Specified For PIV-I? 

There is no Card Authentication extended key usage (EKU) OID defined specifically for PIV-I.  PIV-I Card Authentication certificates must assert the PIV Card Authentication EKU OID 'id-PIV-cardAuth' in the EKU extension to specify that the public key is used to authenticate the PIV-I card rather than the PIV-I cardholder. <br /><br />
The table below shows the OIDs defined specifically for PIV-I:
<br /><br />
![PIV-I OID table](https://github.com/Protiviti-JSargent/fpki-guides/blob/Protiviti-JSargent-draft-1/img/PIV_OID.JPG)
<br /><br /><br />

### 3.4 Can my agency accept PIV-I Cards issued by our contractors’ company in lieu of issuing PIV Cards to these individuals?

**No --** Individuals who fall within the applicability of [HSPD-12](https://www.dhs.gov/homeland-security-presidential-directive-12) (see [OMB M-05-24](https://www.whitehouse.gov/sites/default/files/omb/memoranda/fy2005/m05-24.pdf) for details on HSPD-12 implementation), including Federal contractors requiring routine access to Federally-controlled facilities or Federally-controlled information systems for a period of time greater than 6 months, must continue to be issued PIV Cards by
the Federal Government in accordance with relevant policies. 
<br /><br /><br />

### 3.5 Can Non-PIV Cards Issued By The Federal Government Be Considered PIV-I?

**Yes --** The Federal Government may issue non-PIV identity and access cards to individuals who are
outside the applicability of[HSPD-12](https://www.dhs.gov/homeland-security-presidential-directive-12). Federal Government PIV Card Issuers may issue non-PIV identity cards that meet the PIV-I requirements specified in the [X.509 Certificate Policy for the FBCA (FBCA CP)](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000TN7cAAG&field=File__Body__s) . The FBCA CP specifies the minimum requirements for the Federal Government to rely on PIV-I Non-Federal Issuer (NFI) identity cards. Example scenarios where this might apply include facility access cards issued to short term employees (e.g., summer interns) and identity credentials issued by the Legislative and Judicial Branches of the Federal Government. 
<br /><br /><br />

### 3.6 Can A PIV-I Card Be Accepted For Both Physical And Logical Access?

**Yes --** A PIV-I Card may be used to access both physical and logical resources. However, each Federal Government Relying Party will determine the extent to which it will trust PIV-I Cards to access resources.
<br /><br /><br />

### 3.7 Can An Identity Card Issued By A Program That Has Modified The Piv Technical Specifications Be Considered A Piv-I Card?

**NO --** In order to be considered PIV-I, an identity card must conform to the minimum PIV technical requirements defined in [X.509 Certificate Policy for the FBCA] (https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000TN7cAAG&field=File__Body__s), and be issued by an issuer who has been assessed by the Federal PKI Policy Authority as meeting those requirements.

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
