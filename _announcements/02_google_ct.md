---
 layout: default
 navtitle: Google Certificate Transparency (CT) Impact
 title: Google Set To Enforce Certificate Transparency
 pubDate: January 26, 2018
 collection: announcements
 permalink: announcements/googlect/
 description:  In April 2018, Google will enforce Certificate Transparency (CT) in Chrome. This change requires all SSL certificates to appear in a CT log when they validate to a Root CA certificate distributed through an Operating System (OS) trust store. The Microsoft and Apple trust stores currently distribute the Federal PKI's COMMON Root CA certificate. As a result, if an FPKI SSL certificate doesn’t appear in a CT log, an FPKI Windows or Apple user will get an error when browsing with Chrome to intranet or internet websites.
---
In April 2018, Google will enforce Certificate Transparency (CT) in Chrome. This change requires all SSL certificates to appear in a CT log when they validate to a Root CA certificate distributed through an Operating System (OS) trust store. The Microsoft and Apple trust stores currently distribute the Federal PKI's COMMON Root CA certificate. As a result, if an FPKI SSL certificate doesn’t appear in a CT log, an FPKI Windows or Apple user will get an error when browsing with Chrome to intranet or internet websites.

**Please send any questions about the Google CT change to _fpki@gsa.gov_**.

{% include alert-info.html content="CT is an open framework that allows website owners and browser operators to monitor and log SSL certificates, detect issuance/mis-issuance, and identify rogue CAs." %}

To prevent these Chrome errors, please see the [Network Domain Administrator FAQs](#network-domain-administrator-faqs) given below.

![Chrome Error Screen]({{site.baseurl}}/img/google_ct_hot_topic_error.png){:style="width:55%;float:center;"}

**Chrome Error Screen Example**

{% include alert-info.html content="If the FPKI chooses to remove the COMMON Root CA certificate's server authentication trust bit from the Microsoft trust store, then Google's new CT change will NOT affect FPKI SSL certificates for Windows users of Chrome. (See the Microsoft Trust Store Impact Announcement.)" %}
<!--Added "server authentication trust bit"-->
### Google's Purpose for CT Change
Google's CT change will:<sup>[1](#1)</sup>
1. Make it difficult for a CA to issue an SSL certificate that would not be visible to a domain owner.
2. Allow any CA or domain owner to identify mistakenly or maliciously issued certificates.
3. Protect users (as much as possible) from being duped by mistakenly or maliciously issued certificates.

### Impacted Users and Certificates
1. Google Chrome users of Windows, Apple, Android, Apple iOS, and Windows Mobile.
2. Any SSL certificate that validates to COMMON, provided that the COMMON Root CA certificate's server authentication trust bit is still distributed through the Microsoft and Apple trust stores. <!--Added "server authentication trust bit"-->

### Network Domain Administrator FAQs

### What are CT Logs?

1. Append-only&mdash;issuers cannot delete, modify, or retroactively insert an entry into a log. 
2. Cryptographically secure using Merkle Tree Hashes to prevent tampering and misbehavior.
3. Publicly auditable. (Anyone can query a log and verify entries.)

### Prevent SSL Certificate Errors

Any one of these 3 steps will prevent a Chrome error during an HTTPS browser session. For steps 1 and 3, verify that your CA provider has enabled these capabilities.

1. **X.509 V3 Extension.**&nbsp;&nbsp;An issuer may embed a Signed Certificate Timestamp (SCT) in a supported, SSL certificate by adding an extension: SignedCertificateTimestampList, OID 1.3.6.1.4.1.11129.2.4.5. No server configuration changes are needed.

2. **TLS Extension.**&nbsp;&nbsp;Website operators may configure a web server by using a TLS extension to serve an SCT during a client session. After receiving the server certificate, the server operator submits it to a CT log and receives an SCT. He/she then includes the SCT in the server's signed_certificate_timestamp. (**Note:**&nbsp;&nbsp;The TLS extension is supported by only Apache v2.5, haproxy, and nginx v1.9 web servers.<sup>[2](#2)</sup>)

3. **Online Certificate Status Protocol (OCSP) Stapling.**&nbsp;&nbsp;An issuer may include an SCT with a server's OCSP response. To do this, an issuer issues a certificate to a CT log. The server operator then enables _OCSP Stapling_ on the server.

### Disable CT-Checking
Google will treat any certificate as untrusted if disclosed via CT not according to policy; however, Chrome will not check for a CT entry if you change the OS Registry settings and define an agency domain, such as "example.com" or "agency.gov." That means that certificates that would have been untrusted (due to improper disclosure) can continue being used. (**Note:**&nbsp;&nbsp;It's harder to detect mis-issued SSL certificates for these hosts.) 

* **Windows Registry location for Windows clients:**<br>
For Software\Policies\Google\Chrome\CertificateTransparencyEnforcementDisabledForUrls, add values:

   ```
   Software\Policies\Google\Chrome\CertificateTransparencyEnforcementDisabledForUrls\1 = "example.com"
   Software\Policies\Google\Chrome\CertificateTransparencyEnforcementDisabledForUrls\2 = ".example.com"
   ```

* **Windows Registry location for Google Chrome OS clients:**<br>
For Software\Policies\Google\ChromeOS\CertificateTransparencyEnforcementDisabledForUrls, add values:

   ```
   Software\Policies\Google\ChromeOS\CertificateTransparencyEnforcementDisabledForUrls\1 = "example.com"
   Software\Policies\Google\ChromeOS\CertificateTransparencyEnforcementDisabledForUrls\2 = ".example.com"
   ```

* **MacOS**<br>
For preference name, CertificateTransparencyEnforcementDisabledForUrls, add values:<br>

   ```
   <array>
     <string>example.com</string>
     <string>.example.com</string>
   </array>
   ```

* **Android**<br>
For restriction name, CertificateTransparencyEnforcementDisabledForUrls, add values:<br>

   ```
   CertificateTransparencyEnforcementDisabledForUrls\1 = "example.com"
   CertificateTransparencyEnforcementDisabledForUrls\2 = ".example.com"
   ```

### Other FAQs
1. Will Google's use of CT impact my agency's internal, Root CA-issued SSL certificates?
> _There should be no impact if you use an agency's internal, Root CA to issue SSL certificates. Google's CT change will impact only SSL certificates that validate to a Root CA whose certificate is distributed through the Microsoft, Apple, or Mozilla trust stores._ 

#### Google Certificate Transparency Recommended Reading
<a name="1">1</a>. Extracted from [What is Certificate Transparency](https://www.certificate-transparency.org/){:target="_blank"}.<br>
<a name="2">2</a>. See [Certificate Transparency--Resources for Site Owners](https://sites.google.com/site/certificatetransparency/resources-for-site-owners){:target="_blank"}.<br>
<a name="3">3</a>. [Certificate Transparency Announcement](https://groups.google.com/a/chromium.org/forum/#!topic/ct-policy/78N3SMcqUGw){:target="_blank"}.<br>
<a name="4">4</a>. [How to Disable in Enterprise Chrome](http://www.chromium.org/administrators/policy-list-3#CertificateTransparencyEnforcementDisabledForUrls){:target="_blank"}.<br>
<a name="5">5</a>. [Chrome Policy Templates](https://www.chromium.org/administrators/policy-templates){:target="_blank"}.
