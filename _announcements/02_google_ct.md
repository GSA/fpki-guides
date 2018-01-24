---
 layout: default
 navtitle: Google Policy Changes
 title: Google Set To Enforce Certificate Transparency
 pubDate: January 16, 2018
 collection: announcements
 permalink: announcements/googlect/
 description: In April 2018, Google will begin enforcing Certificate Transparency (CT) in Chrome for all SSL certificates enabled for server authentication. These certificates must validate to a Root Certification Authority (CA) certificate in the Microsoft, Apple, or Mozilla trust stores.  
---

In April 2018, Google will begin enforcing Certificate Transparency (CT) in Chrome for all SSL certificates enabled for server authentication. These certificates must validate to a Root Certification Authority (CA) certificate in the Microsoft, Apple, or Linux<!--Below Linux is mentioned, not Mozilla??--> trust stores. 

{% include alert-info.html content="CT is an open framework that allows website owners and browser operators to monitor and log public SSL certificates, detect issuance/mis-issuance, and identify rogue CAs." %}

CT works like this:&nbsp;&nsp;when a CT log submits a certificate<!--submits it to what, where?-->, it receives a serial number (called a Signed Certificate Timestamp [SCT]). (The CA provider may also embed an SCT in a certificate when submitting it.) 

CT logs are:
1. Append-only&mdash;issuers cannot delete, modify, or retroactively insert an entry into a log. 
2. Cryptographically secure using Merkle Tree Hashes to prevent tampering and misbehavior.
3. Publicly auditable. (Anyone can query a log and verify entries.) <!--Is "legitimate" necessary?-->

Google is enforcing this new policy to:<sup>[1](#1)</sup>
1. Make it difficult for a CA to issue SSL certificates without their being visible to a domain owner.
2. Allow any domain owner or CA to identify mistakenly or maliciously issued certificates.
3. Protect users (as much as possible) from being duped by mistakenly or maliciously issued certificates.

Google Chrome will validate an SSL certificate if an HTTPS browser session serves an SCT. You can use one of three methods:<!--Can't follow this--> 

1. **Certificate Embedding in x509 Extension** - A CA provider may embed an SCT in a SSL certificate extension. No server configuration changes are needed, but the extension must be supported by the CA provider.

2. **TLS Extension** - You can configure a web server to use a TLS extension to deliver an SCT during a client session. After receiving the certificate, the server operator submits it to a CT log and receives an SCT. He/she then includes the SCT in the server's signed_certificate_timestamp.

The TLS extension is supported by Apache v2.5 mod_ssl_ct and Nginx web servers. <!--How does this relate to Windows, Apple, Linux users?-->

3. **Online Certificate Stauts Protocol (OCSP) Stapling** - A CA provider can includes an SCT as part of a server's OCSP response. To do this, the CA provider issues a certificate to a CT log, and the server operator enables OCSP Stapling on the server.

Please send any questions to **fpki@gsa.gov**.

### Google Enforcement Deadline: April 2018

### Impacted Certificates and Users
1. Any Root CA-issued, SSL certificates enabled for server authentication, where Microsoft, Apple, or Mozilla distribute the Root CA certificate through their trust stores. (**Note:**&nbsp;&nbsp;When an OS doesn't distribute a Root CA certificate, it won't be impacted by CT enforcement.)
2. Users of Google Chrome on Windows, Apple, and Linux, including Android, Apple iOS, and Windows Mobile.

### Error Page Example

Insert Pic

### Recommended Fix for Enterprise Administrators
You can disable CT-checking for agency-owned end-points.

<!!--Is there a simpler way to say this?-->The new Google policy <!--Correct?-->allows you to hide certificates for hostnames in URLs via CT. So, certificates that would otherwise be untrusted, because they were not properly disclosed, to continue to being used. However, it's harder to detect mis-issued certificates for these hosts.

If this policy is not set<!--What is being set?-->, **Google will treat any certificate as untrusted if disclosed via CT, if not disclosed according to the policy.**  REWORK


**Windows registry location for Windows clients:**
Software\Policies\Google\Chrome\CertificateTransparencyEnforcementDisabledForUrls

_Example value:_
Software\Policies\Google\Chrome\CertificateTransparencyEnforcementDisabledForUrls\1 = "example.com"
Software\Policies\Google\Chrome\CertificateTransparencyEnforcementDisabledForUrls\2 = ".example.com"

**Windows registry location for Google Chrome OS clients:**
Software\Policies\Google\ChromeOS\CertificateTransparencyEnforcementDisabledForUrls

_Example value:_
Software\Policies\Google\ChromeOS\CertificateTransparencyEnforcementDisabledForUrls\1 = "example.com"
Software\Policies\Google\ChromeOS\CertificateTransparencyEnforcementDisabledForUrls\2 = ".example.com"

**MacOS and Linux**
Preference name: CertificateTransparencyEnforcementDisabledForUrls
_Example value:_

```
<array>
  <string>example.com</string>
  <string>.example.com</string>
</array>
```

**Android** 
Restriction name: CertificateTransparencyEnforcementDisabledForUrls
Example value: example.com **or** .example.com

### Frequently Asked Questions
1. Will Google's use of CT impact my agency's internal, Root CA-issued server authentication certificates?
> _There should be no impact if you use an agency's internal, Root CA to issue server authentication certificates. Google's CT change will impact only server authentication certificates that validate to a Root CA whose certificate is distributed through the Microsoft, Apple, or Mozilla trust stores._ <!--If FPKI decides to remove the COMMON Root certificate trust bit from the Microsoft and Apple trust stores, per Option 1 in Microsoft Hot Topic, then what issues, if any, will remain with Google's use of CT?-->

#### Google Certificate Transparency Recommended Reading
<a name="1">1</a>. Extracted from [What is Certificate Transparency](https://www.certificate-transparency.org/){:target="_blank"}.<br>
2. [Certificate Transparency Announcement](https://groups.google.com/a/chromium.org/forum/#!topic/ct-policy/78N3SMcqUGw){:target="_blank"}.<br>
3. [How to Disable in Enterprise Chrome](http://www.chromium.org/administrators/policy-list-3#CertificateTransparencyEnforcementDisabledForUrls){:target="_blank"}.<br>
4. [Chrome Policy Templates](https://www.chromium.org/administrators/policy-templates){:target="_blank"}.
