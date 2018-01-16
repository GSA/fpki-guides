---
 layout: default
 title: Google Set To Enforce Certificate Transparency
 permalink: /announcements/
---

## Google Set To Enforce Certificate Transparency

Google has announced that it will enforce Certificate Transparency (CT) for all server authentication (i.e., SSL) certificates in Google Chrome.<!--When will this start? The Root CA certificate that issued the auth certs is in the Google trust store?--> 

CT is an open framework for monitoring and logging public server authentication certificates. It provides a two main benefits for website owners and browser operators:
1. Detects certificate issuance or mis-issuance
2. Identifies rogue Certification Authorities (CAs)

CT enforcement applies to server authentication (SSL) certificates that validate to a Root CA certficate distributed by Microsoft, Apple, or Mozilla. A certificate must satisfy the following requirements to validate without errors:

1. It must be in a CT log and serve a Signed Certificate Timestamp (SCT) in the certificate or the browser session; or
2. The website must have OCSP Stapling enabled.

Please send your feedback with any agency concerns by **DATE [Maybe April 6, 2018?]** to **fpki@gsa.gov**.

### Deadline: April 2018

### Impacted Platforms and Federal PKI CAs
1. Google Chrome on Linux, macOS, Windows, Android, ChromeOS, and iOS.
2. Federal PKI CA-issued SSL (server authentication) certificates (that validate to FCPCA [COMMON].

### Example Error Page
<Insert Pic>

### Recommended Fix for Enterprise Chrome Administrators
<Insert Content>

### Frequently Asked Questions
1. Will this impact my internal Agency CA?
- If you use the agency's CA as a Root (not FCPCA [COMMON]), it shouldn't have any impact. This only impacts server authentication certificates that validate to a Root CA distributed by Microsoft, Apple, or Mozilla trust stores. 

#### Google Certificate Transparency Recommended Reading
1. [What is Certificate Transparency](https://www.certificate-transparency.org/)
2. [Certificate Transparency Announcement](https://groups.google.com/a/chromium.org/forum/#!topic/ct-policy/78N3SMcqUGw)
3. [How to Disable in Enterprise Chrome](http://www.chromium.org/administrators/policy-list-3#CertificateTransparencyEnforcementDisabledForUrls)
4. [Chrome Policy Templates](https://www.chromium.org/administrators/policy-templates)
