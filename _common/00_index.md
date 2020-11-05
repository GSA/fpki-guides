---
layout: default
navtitle: Federal Common Policy CA Update
title: Federal Common Policy CA Update
collection: common
permalink: /common/
---

The Federal Government recently deployed the **Federal Common Policy CA (FCPCA) G2**, a new Federal Public Key Infrastructure (FPKI) root Certification Authority (CA). As the existing Federal Common Policy CA reaches the end of its planned service life, FCPCA G2 will roll out incrementally and serve as the new trust anchor for the Federal PKI. Below, you'll find important dates and steps for a successful operational transition to the FCPCA G2 trust anchor.

This change affects *all federal agencies* and the following services:

- Personal Identity Verification (PIV) credential authentication to government networks
- Agency web applications implementing client authentication (for example, PIV authentication)
- User digital signatures that leverage PIV or similar credentials
- Other applications leveraging the Federal Common Policy CA as a root CA

{% include alert-success.html content="Federal enterprises and other relying party organizations should plan for this transition and test interoperability in advance of implementing changes in their production IT environments." %} 

**Recommended steps to complete by December 31st, 2020:**

<ol>
   <li>[Prepare to migrate to the Federal Common Policy CA G2]({{site.baseurl}}/common/prepare-to-migrate/)</li>
   <li>[Obtain and verify a copy of the Federal Common Policy CA G2 certificate]({{site.baseurl}}/common/obtain-and-verify/)</li>
   <li>[Distribute the certificate to operating systems]({{site.baseurl}}/common/distribute-os/)</li>
   <li>[Verify operating system distribution]({{site.baseurl}}/common/verify-os-distribution/)</li>
   <li>[Distribute the certificate to applications]({{site.baseurl}}/common/distribute-apps/)</li>
   <li>[Distribute the CA certificates issued by the Federal Common Policy CA G2 (optional)]({{site.baseurl}}/common/certificates/)</li>
</ol>
    
**Recommended steps to complete by April 20th, 2021:**

<ol>
   <li value="7">[Migrate to the Federal Common Policy CA G2]({{site.baseurl}}/common/migrate/)</li>
   <li value="8">[Verify migration to the Federal Common Policy CA G2]({{site.baseurl}}/common/verify-migration/)</li>
</ol>

## Need Help?

View the [Frequently Asked Questions]({{site.baseurl}}/common/faq/) page for more information, or email us at fpkirootupdate@gsa.gov.
