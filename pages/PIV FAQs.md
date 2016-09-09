---
layout: page
title: PIV FAQs
permalink: /PIV FAQs/
---

#### Overview
This Playbook is a collection of frequently asked questions and common issues regarding Personal Identity Verification (PIV) cards.  It is targeted towards agencies and relying parties implementing or currently using PIV cards for logical and/or physical security controls.

##### Assumptions
*  This text will be a bullet explaining a precondition or assumption before the user begins to follow the steps outlined in this document


#### Before you get started
Acronym | Term | Description
-------------|------
PIV-I | Personal Identity Verification - Interoperable card 
FASC-N | Federal Agency Smart Card Number
GUID | Global Unique Identification Number
NFI | Non-Federal Issuer
PACS | Physical Access Control System | An automated system that manages physical passage through a secured area based on a set of rules.
CHUID | Card Holder Unique Identifier
UUID | Universally Unique Identifier
-- | relying party | Someone who requests and relies upon information provided from an external source to authenticate an identity.

>The unique identifier for Federal cards is the FASC-N. 
>NFI cards have a FASC-N that contains 14 nines (9) and use the GUID as the unique identifier.{: class="info"}

### 1. How does a Federal Physical Access Control System (PACS) interpret a PIV-I card that does not have a FASC-N?

When a Federal PACS system is reading the CHUID it will have both the FASC-N and the GUID available to it.  When the FASC-N contains 14 nines (9), and if technically feasible, the Federal PACS should look for and use the GUID value to identify the cardholder.




### 2. As a relying party, when do I use the FASC-N versus the GUID?

**For CHUID-based authentication**

If the FASC-N is populated with 14 nines (9), you can reasonably conclude it is a PIV-I card. Use the UUID from the GUID.

**For certificate-based authentication**

If the subjectAltName does not contain a FASC-N, you can reasonably conclude it is a PIV-I card. Use the UUID from the subjectAltName.





#### References
Personal Identity Verification Interoperable (PIV-I) Frequently Asked Questions (FAQ)
<https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000TNPlAAO&field=File__Body__s>
