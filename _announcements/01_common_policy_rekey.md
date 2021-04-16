---
layout: default
navtitle: Federal Common <br> Policy CA Update
title: Federal Common Policy CA Update
pubDate: October 12, 2020
collection: announcements
permalink: announcements/common-policy-update/
description: In October 2020, the Federal Government will establish a new Federal Public Key Infrastructure (FPKI) Root Certification Authority (CA).  This new root is named the Federal Common Policy CA G2.  This announcement details the CA update timeline and actions agencies need to perform.
status: active
redirect_to: https://playbooks.idmanagement.gov/fpki/announcements/common-g2-update/
---

{% include alert-info.html content="Upcoming changes to the Federal Common Policy Certification Authority (CA) will impact your agency.  This announcement will be updated as more information is available." %}

In **October 2020**, the Federal Government created a new Federal Public Key Infrastructure (FPKI) Root Certification Authority (CA).  The new root is named the **Federal Common Policy CA G2**. 

Between December 2020 and June 2021, the CAs signed by the old root will be migrated to the Federal Common Policy CA G2.  Once the migration is complete, the old root will be decommissioned. 

## What will be impacted?

**This change will affect all federal agencies** and will have an impact on the following services:

- Personal Identity Verification (PIV) credential authentication to the government networks
- Agency web applications implementing client authentication (e.g., PIV authentication)
- User digital signatures that leverage PIV or similar credentials 
- Other applications leveraging the Federal Common Policy CA as a root


## When will this change take place?
Timeline:
- **October 14, 2020**: The Federal PKI Management Authority (FPKIMA) created the new Federal Common Policy CA G2 root 
- **October 15, 2020**: The FPKIMA team issued a cross certificate from the Federal Common Policy CA G2 to the Federal Bridge CA G4
- **November 18, 2020**: The FPKIMA team issued CA certificates to migrate agency and shared service providers CAs to the new root: Federal Common Policy CA G2 
- **December 2020 to June 2021**: All agencies will need to transition from using the old Federal Common Policy CA as the root to the new Federal Common Policy CA G2 *(approximately six months.)* Certificates issued by the Federal Common Policy CA will be revoked between the end of April and June in coordination with CA operators.
- **June 2021**: The FPKIMA team will decommission the old Federal Common Policy CA after revoking all CA certificates it has issued.

## What should I do?

{% include alert-info.html content="We are collaborating with CISA on a series of webinars to communicate the upcoming changes and answer your questions.  Email fpkirootupdate@gsa.gov to be notified of future events." %} 

To prevent issues, agencies **must** distribute the Federal Common Policy CA G2 root certificate as a trusted Root Certification Authority to workstations and servers.

To prepare for the Federal Common Policy CA update, read our guide [here]({{ site.baseurl }}/common).

## Who can I contact for help or more information?
Email us at fpkirootupdate@gsa.gov. 
