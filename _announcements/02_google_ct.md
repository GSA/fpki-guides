---
 layout: default
 navtitle: Google Policy Changes
 title: Google Set To Enforce Certificate Transparency
 pubDate: January 16, 2018
 collection: announcements
 permalink: announcements/google_certificate_transparency
 description: In April 2018, Google will begin enforcing Certificate Transparency (CT) in Chrome for all public server authentication (i.e., SSL) certificates that validate to a Root Certification Authority (CA) certificate in the Microsoft, Apple, or Mozilla trust stores. 
---

In April 2018,<!--When?--> Google will begin enforcing Certificate Transparency (CT) in Chrome for all public <!--Says "public" below.-->server authentication (i.e., SSL) certificates that validate to a Root Certification Authority (CA) certificate in the Microsoft, Apple, or Mozilla trust stores. <!--Why is this new Google policy a problem for the FPKI? We need to explain this. Other notes: in Microsoft announcement, we talked about "SSL" certificates. The original text here sounded like we meant Microsoft's, Apple's, and Mozilla's own Root CAs.)--> 

{% include alert-info.html content="CT is an open framework used to monitor and log public server authentication certificates, detect issuance/mis-issuance, and identify rogue CAs." %} <!--Since this is about Google using CT, do "website owners and browser operators" apply here?-->

CT will validate any server authentication certificate with no errors if:

1. It appears in a CT log and either the certificate or browser session serves a Signed Certificate Timestamp (SCT)<br>
**OR**<br/><!--Do agencies put their server auth certificates into a CT log or does Google do this automatically? Research into SCT suggests that the log itself returns an SCT when a certificate is submitted to it, is "certificate or browser session serving the SCT" incorrect? Do agencies normally include an SCT for all server auth certificates or is it an automatic function?-->
2. The website uses Online Certificate Status Protocol (OCSP) Stapling

<!--What specific response are we looking for from the FPKI community?-->Please send your feedback with any agency concerns by **DATE [Maybe April 6, 2018?]** to **fpki@gsa.gov**.

### **FPKI or Google?** Deadline: April 2018

### Affected Operating Systems and Server Authentication Certificates
1. Linux, macOS, Windows, Android, ChromeOS, and iOS
2. Federal PKI CA-issued, server authentication certificates 

### Example Error Page
<!--Insert Pic-->

### Recommended Fix for Enterprise Chrome Administrators
<!--What is it that administrators need to fix?-->
<!--Insert Content-->

### Frequently Asked Questions
1. Will Google's use of CT impact my agency's internal Root CA-issued certificates?
> _It shouldn't have any impact if you use an agency's Root CA (not COMMON Root CA). This change only impacts server authentication certificates that validate to a Root CA whose certificate is distributed through the Microsoft, Apple, or Mozilla trust stores._ <!--If FPKI decides to remove the COMMON Root from the Microsoft and Apple trust stores, then...?-->

#### Google Certificate Transparency Recommended Reading
1. [What is Certificate Transparency](https://www.certificate-transparency.org/)
2. [Certificate Transparency Announcement](https://groups.google.com/a/chromium.org/forum/#!topic/ct-policy/78N3SMcqUGw)
3. [How to Disable in Enterprise Chrome](http://www.chromium.org/administrators/policy-list-3#CertificateTransparencyEnforcementDisabledForUrls)
4. [Chrome Policy Templates](https://www.chromium.org/administrators/policy-templates)
