---
 layout: default
 navtitle: Google Policy Changes
 title: Google Set To Enforce Certificate Transparency
 pubDate: January 16, 2018
 collection: announcements
 permalink: announcements/googlect/
 description: In April 2018, Google will begin enforcing Certificate Transparency (CT) in Chrome for all public server authentication (i.e., SSL) certificates that validate to a Root Certification Authority (CA) certificate in the Microsoft, Apple, or Mozilla trust stores. 
---

In April 2018, Google will begin enforcing Certificate Transparency (CT) in Chrome for all public server authentication (i.e., SSL) certificates. Those server certificates must validate to a Root Certification Authority (CA) certificate in the Microsoft, Apple, or Mozilla trust stores that is enabled for server authentication. 

{% include alert-info.html content="CT is an open framework that allows website owners and browser operators to monitor and log public server authentication certificates, detect issuance/mis-issuance, and identify rogue CAs." %}

A CT log works by submitting a certificate which receives a serial number called a "Signed Certificate Timestamp or SCT. If a CA provider submits a certificate, they have the option to embed the SCT in the certificate, but anyone may submit a certificate. CT Logs are:
1. Append-only, entries can not be deleted, modified, or retroactively inserted into a log. 
2. Cryptographically secure using Merkle Tree Hashes to prevent tampering and misbehavior.
3. Publicly auditable, anyone can query a log and verify legitimate entries.

Google is enforcing this new policy for following reasons:
1. Make it impossible (or at least very difficult) for a CA to issue a SSL certificate for a domain without the certificate being visible to the owner of that domain.
2. Provide an open auditing and monitoring system that lets any domain owner or CA determine whether certificates have been mistakenly or maliciously issued.
3. Protect users (as much as possible) from being duped by certificates that were mistakenly or maliciously issued.
- From https://www.certificate-transparency.org/what-is-ct

A server authentication will validate properly in Google Chrome if the HTTPS sessions serves a SCT in the following manner. 

1. **Certificate Embedding in x509 Extension** - A CA provider may embed an SCT directly into a server certificate extension. This method does not require server configuration changes, but must be verified it is supported with the CA Provider.

2. **TLS Extension** - Servers may deliver an SCT using a special TLS extension. After receiving the certificate, the server operator submits the certificate to a log and receives an SCT. The server operator includes the SCT in the signed_certificate_timestamp of the server. During a client TLS sessions, the SCT will be served by the server.

This method requires web server modification and is currently supported on Apache v2.5 mod_ssl_ct and Nginx modules.

3. **Online Certificate Stauts Protocol (OCSP) Stapling** - A CA provider includes the SCT as part of a server's OCSP response. This method is dependent on the CA Provider issuing a certificate to a CT log and the server operator enabling OCSP stapling on the server.

Please send any questions to **fpki@gsa.gov**.

### Google Enforcement Deadline: April 2018

### Impacted Community
1. Server authentication certificates issued by a Root CA enabled for server authentication and distributed by either Microsoft, Apple, or Mozilla.(e.g. if the Root CA is not distributed by an Operating System, it is not impacted by CT enforcement.)
2. Users of Google Chrome Browser on Windows, Apple, and Linux including mobile operating systems Android, Apple iOS, and Windows Mobile.

### Error Page Example

Insert Pic

### Recommended Fix for Network Domain Administrators
An Agency Enterprise Administrator may disable CT checking for agency owned end points.

This policy allows certificates for the hostnames in the specified URLs to not be disclosed via Certificate Transparency. This allows certificates that would otherwise be untrusted, because they were not properly publicly disclosed, to continue to be used, but makes it harder to detect misissued certificates for those hosts.

If this policy is not set, any certificate that is required to be disclosed via Certificate Transparency will be treated as untrusted if it is not disclosed according to the Certificate Transparency policy.

Windows registry location for Windows clients:
Software\Policies\Google\Chrome\CertificateTransparencyEnforcementDisabledForUrls
Example Value:
Software\Policies\Google\Chrome\CertificateTransparencyEnforcementDisabledForUrls\1 = "example.com"
Software\Policies\Google\Chrome\CertificateTransparencyEnforcementDisabledForUrls\2 = ".example.com"

Windows registry location for Google Chrome OS clients:
Software\Policies\Google\ChromeOS\CertificateTransparencyEnforcementDisabledForUrls
Example Value:
Software\Policies\Google\ChromeOS\CertificateTransparencyEnforcementDisabledForUrls\1 = "example.com"
Software\Policies\Google\ChromeOS\CertificateTransparencyEnforcementDisabledForUrls\2 = ".example.com"

Mac/Linux preference name:
CertificateTransparencyEnforcementDisabledForUrls
Example Value:
<array>
  <string>example.com</string>
  <string>.example.com</string>
</array>

Android restriction name:
CertificateTransparencyEnforcementDisabledForUrls
Example Value:
["example.com", ".example.com"]

### Frequently Asked Questions
1. Will Google's use of CT impact my agency's internal, Root CA-issued server authentication certificates?
> _There should be no impact if you use an agency's internal, Root CA to issue server authentication certificates. Google's CT change will impact only server authentication certificates that validate to a Root CA whose certificate is distributed through the Microsoft, Apple, or Mozilla trust stores._ <!--If FPKI decides to remove the COMMON Root certificate trust bit from the Microsoft and Apple trust stores, per Option 1 in Microsoft Hot Topic, then what issues, if any, will remain with Google's use of CT?-->

#### Google Certificate Transparency Recommended Reading
1. [What is Certificate Transparency](https://www.certificate-transparency.org/){:target="_blank"}
2. [Certificate Transparency Announcement](https://groups.google.com/a/chromium.org/forum/#!topic/ct-policy/78N3SMcqUGw){:target="_blank"}
3. [How to Disable in Enterprise Chrome](http://www.chromium.org/administrators/policy-list-3#CertificateTransparencyEnforcementDisabledForUrls){:target="_blank"}
4. [Chrome Policy Templates](https://www.chromium.org/administrators/policy-templates){:target="_blank"}
