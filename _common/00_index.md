---
layout: default
navtitle: Federal Common Policy CA Update
title: Federal Common Policy CA Update
collection: common
permalink: /common/
---

The Federal Government recently deployed a new Federal Public Key Infrastructure (FPKI) root Certification Authority (CA) known as the **Federal Common Policy CA G2** (FCPCA G2).  FCPCA G2 will serve as the new trust anchor for the Federal PKI. Its use will be rolled out incrementally as the existing Federal Common Policy CA reaches the end of its planned service life. Important dates and steps for a successful operational transition to the FCPCA G2 trust anchor are described below. 

<p style="font-size: 2rem; font-weight: 700; padding-top: 15px;">This change affects all federal agencies and will have an impact on the following services:</p>

- Personal Identity Verification (PIV) credential authentication to the government networks
- Agency web applications implementing client authentication (e.g., PIV authentication)
- User digital signatures that leverage PIV or similar credentials
- Other applications leveraging the Federal Common Policy CA as a root

<br>

{% include alert-success.html content="Federal enterprises and other relying party organizations should plan for this transition and test interoperability in advance of implementing changes in their production IT environments." %} 


<p style="font-size: 2rem; font-weight: 700; padding-top: 15px;">Complete the steps below to mitigate the negative impacts of this change:</p>

- **Recommended by December 31st, 2020:**
     - [1. Prepare to migrate to the Federal Common Policy CA G2]({{site.baseurl}}/common/prepare-to-migrate/)
     - [2. Obtain and verify a copy of the Federal Common Policy CA G2 certificate]({{site.baseurl}}/common/obtain-and-verify/)
     - [3. Distribute the certificate to Operating Systems]({{site.baseurl}}/common/distribute-os/)
     - [4. Verify Operating System distribution]({{site.baseurl}}/common/verify-os-distribution/)
     - [5. Distribute the certificate to applications]({{site.baseurl}}/common/distribute-apps/)
     - [6. Distribute the CA certificates issued by the Federal Common Policy CA G2 (optional)]({{site.baseurl}}/common/certificates/)
- **Recommended by April 20th, 2021:**
     - [7. Migrate to the Federal Common Policy CA G2]({{site.baseurl}}/common/migrate/)
     - [8. Verify migration to the Federal Common Policy CA G2]({{site.baseurl}}/common/verify-migration/)

<p style="font-size: 2rem; font-weight: 700; padding-top: 15px">Need Help?</p>

View the [Frequently Asked Questions]({{site.baseurl}}/common/faq/) page for more information, or email us at fpkirootupdate@gsa.gov.
