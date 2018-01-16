---
 layout: default
 title: Announcements
 permalink: /announcements/
---

## Google Certificate Transparency Enforcement

Google announced Certificate Transparency (CT) would be enforced for all server authentication certificates in Google Chrome. Certificate Transparency is an open framework for monitoring and logging public server authentication certificates. It provides a two main benefits for website owners and browser operators:
1. Detect certificate issuance or misissuance; and
2. Identify Rogue Certification Authorities

CT enforcement applies to server authentication or SSL certificates that validate to a Root CA distriubted by Microsoft, Apple, or Mozilla. A certificate must satisfy the following requirements to validate without errors.
1. Certificate must be in a CT log and serve a Signed Certificate Timestamp (SCT) in the certificate or the browser session; or
2. The website has OCSP Stapling enabled.

Please send your feedback on agency concerns, to fpki@gsa.gov.

### Deadline: April 2018

### Impacted Platforms and Federal PKI CAs
1. Google Chrome on Linux, Mac, Windows, Android, ChromeOS, and iOS.
2. Federal PKI Server Authentication certificates validating to COMMON.

### Example Error Page
<Insert Pic>

### Recommended Fix for Enterprise Chrome Administrators
<Insert Content>

### Frequently Asked Questions
1. Will this impact my internal Agency CA?
- It shouldn't if using the agency CA as a Root and not COMMON. This only impacts server authentication certificates that validate to a Root CA distributed by Microsoft, Apple, or Mozilla.

#### Google Certificate Transparency Recommended Reading
1. [What is Certificate Transparency](https://www.certificate-transparency.org/)
2. [Certificate Transparency Announcement](https://groups.google.com/a/chromium.org/forum/#!topic/ct-policy/78N3SMcqUGw)
3. [How to Disable in Enterprise Chrome](http://www.chromium.org/administrators/policy-list-3#CertificateTransparencyEnforcementDisabledForUrls)
4. [Chrome Policy Templates](https://www.chromium.org/administrators/policy-templates)
