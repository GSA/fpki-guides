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

### 3.2  What is the Difference Between A PIV-I Card And A PIV Card

A PIV card is an identity card that is fully conformant with Federal PIV standards as defined by [FIPS 201](http://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.201-2.pdf) and may only be issued by a Federal entity.  <br /><br />
A PIV-I Card meets the PIV technical specifications of [NIST SP 800-73](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-73-4.pdf)and is issued in a manner that may be trusted by Federal Government Relying Parties, but does not meet all of the requirements of [FIPS 201](http://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.201-2.pdf). <nl />
The table below compares the PIV and PIV-I cards in the areas of Suitability, Trust, and Card Edge.
<br />
![PIV to PIV-I comparison table](/../../img/PIV_PIVI_table.JPG)



### 3.? How does a Federal Physical Access Control System (PACS) interpret a PIV-I card that does not have a FASC-N?

When a Federal PACS system is reading the CHUID it will have both the FASC-N and the GUID available to it.  When the FASC-N contains 14 nines (9), and if technically feasible, the Federal PACS should look for and use the GUID value to identify the cardholder.




###  3.3 As a relying party, when do I use the FASC-N versus the GUID?

* **For CHUID-based authentication**

If the FASC-N is populated with 14 nines (9), you can reasonably conclude it is a PIV-I card. Use the UUID from the GUID.

* **For certificate-based authentication**

If the subjectAltName does not contain a FASC-N, you can reasonably conclude it is a PIV-I card. Use the UUID from the subjectAltName.



#### References
Personal Identity Verification Interoperable (PIV-I) Frequently Asked Questions (FAQ)
<https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000TNPlAAO&field=File__Body__s>
