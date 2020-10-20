---
layout: default
navtitle: Federal Common <br> Policy CA Update
title: Federal Common Policy CA Update
pubDate: October 12, 2020
collection: announcements
permalink: announcements/common-policy-update/
description: In October 2020, the Federal Government will establish a new Federal Public Key Infrastructure (FPKI) Root Certification Authority (CA) known as the Federal Common Policy CA G2.  This announcement details the CA update time-line and actions agencies need to perform to prevent issues.
status: active
---

{% include alert-info.html content="Upcoming changes to the Federal Common Policy Certification Authority (CA) will impact your agency.  This announcement will be updated as more information is available." %}

In **October 2020**, the Federal Government will establish a new Federal Public Key Infrastructure (FPKI) Root Certification Authority (CA) known as the **Federal Common Policy CA G2**. 

Between December 2020 and May 2021, CAs cross-certified by the existing Federal Common Policy CA will be migrated to the Federal Common Policy CA G2.  Once the migration is complete, the existing Federal Common Policy CA (FCPCA) will be decommissioned (planned for May 2021). 

These activities are part of the **routine** Federal Public Key Infrastructure (FPKI) operations and maintenance life-cycle.  

## What will be impacted?

**This change will affect all federal agencies** and will have an impact on the following services:

- Personal Identity Verification (PIV) credential authentication to the government networks
- Agency web applications implementing client authentication (e.g., PIV authentication)
- Validation of digital signatures
- Other applications leveraging the Federal Common Policy CA as a trust anchor


## When will this change take place?
Tentative time-line:
- **October 14, 2020**: The Federal PKI Management Authority (FPKIMA) will establish the new Federal Common Policy CA G2
- **October 15, 2020**: The FPKIMA will issue and distribute a cross certificate issued from the Federal Common Policy CA G2 to the Federal Bridge CA G4
- **November 18, 2020**: The FPKIMA will issue and distribute certificates to migrate agency and affiliate CAs cross-certified by the Federal Common Policy CA to the Federal Common Policy CA G2 
- **December 2020 to May 2021**: All agencies will need to transition from using the Federal Common Policy CA as a trust anchor to the Federal Common Policy CA G2 *(approximately six months)*
- **May 2021**: The FPKIMA will decommission the existing Federal Common Policy CA

## What should I do?
To prevent issues, agencies **must** distribute the Federal Common Policy CA G2 CA certificate as a trusted Root Certification Authority to workstations and servers **_as soon as it is available_**.

{% include alert-info.html content="The Federal Common Policy CA G2 CA certificate is expected for distribution on <strong>October 14, 2020</strong>.  This announcement will be updated once the certificate is available." %}

To prepare for the Federal Common Policy CA update, read our guide [here]({{ site.baseurl }}/common).

## Who can I contact for help or more information?
Email us at fpki-help@gsa.gov. 
