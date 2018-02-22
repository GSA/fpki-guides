<!--
---
 layout: default
 navtitle: Google Certificate Transparency (CT) Impact
 title: Google Set To Enforce Certificate Transparency
 pubDate: February 15, 2018
 collection: announcements
 permalink: announcements/googlect/
 description:  In April 2018, Google will enforce Certificate Transparency (CT) in Chrome. This change requires all TLS/SSL certificates to appear in a CT log when they validate to a Root CA certificate distributed through an Operating System (OS) trust store. The Microsoft and Apple Trust Stores currently distribute the U.S. Government Root CA (i.e., COMMON) certificate. As a result, if a Federal PKI TLS/SSL certificate doesn’t appear in a CT log, then a Federal PKI Windows or Apple user will get an error when browsing with Chrome to intranet or internet websites.
-->


In April 2018, Google will enforce Certificate Transparency (CT) in Chrome. This change requires all TLS/SSL certificates to appear in a CT log and serve proof of this inclusion when those TLS/SSL certificates validate to a Root CA certificate distributed globally by an Operating Systems (OS) trust store. The Microsoft and Apple Trust Stores currently distribute the U.S. Government Root CA (Federal Common Policy CA [COMMON]) certificate. 

If a TLS/SSL certificate issued by a Federal PKI CA doesn’t appear in a CT log and doesn't serve a signed certificate timestamp, an Federal PKI Windows or Apple user will receive an error when browsing with Chrome to the intranet website using that certificate.

At this time, no Federal PKI CAs used by the majority of **federal agencies** support Certificate Transparency.  

**Please send any questions about the Chrome CT change to _fpki@gsa.gov_**.

{% include alert-info.html content="CT is an open framework that allows website owners and browser operators to monitor and log TLS/SSL certificates, detect issuance/mis-issuance, and identify rogue CAs." %}

To prevent these Chrome errors, please see [Disabling Errors for Government-Furnished Equipment](#disabling-errors-for-government-furnished-equipment).

![Chrome Error Screen]({{site.baseurl}}/img/google_ct_hot_topic_error.png){:style="width:55%;float:center;"}

**Chrome Error Screen Example**  


### Google's Purpose for CT Change

Google's CT change has been planned and incrementally implemented for over two years.  Certificate Transparency provides a benefit to the global public trust community by:

1. Making it difficult for a CA to issue a TLS/SSL certificate that would not be visible to a domain owner.
2. Allowing any CA or domain owner to identify mistakenly or maliciously issued certificates.

### Impacted Users and Certificates

1. Google Chrome users of Windows, Apple, Android, Apple iOS, and Windows Mobile.
2. Any TLS/SSL certificate that validates to COMMON, provided that the COMMON Root CA certificate's TLS trust bit is still distributed through the Microsoft and Apple trust stores.

### How Do I Check If My Website Is Compliant?
1. Open Google Chrome and browse to the website.
2. In Google Chrome, open the developer tools panel under the setting  -> more tools menu.
   a. In Windows, push ctrl + shift + "i"
   b. In Apple, push apple key + shift + "i"
3. Select the security tab.
4. Refresh the website page and click on the website under the "Main origin" column.
5. If the certificate is compliant it will show the CT log details

### Disabling Errors for Government-Furnished Equipment

Enterprise Chrome for government-furnished equipment will not check for a CT entry if you change the OS Registry settings and define an agency domain, such as "agency.gov." That means that certificates that would have been untrusted can continue being used. 
**Note:** Make these configuration changes only for government-furnished equipment and explicit .gov or .mil domains in use for intranet websites.

**a.&nbsp;&nbsp;Windows Registry location for Windows clients:**<br>

For Software\Policies\Google\Chrome\CertificateTransparencyEnforcementDisabledForUrls, add values:

   ```
   Software\Policies\Google\Chrome\CertificateTransparencyEnforcementDisabledForUrls\1 = "example.agency.gov"
   Software\Policies\Google\Chrome\CertificateTransparencyEnforcementDisabledForUrls\2 = ".example.agency.gov"
   ```

**b.&nbsp;&nbsp;Windows Registry location for Google Chrome OS clients:**<br>
For Software\Policies\Google\ChromeOS\CertificateTransparencyEnforcementDisabledForUrls, add values:

   ```
   Software\Policies\Google\ChromeOS\CertificateTransparencyEnforcementDisabledForUrls\1 = "example.agency.gov"
   Software\Policies\Google\ChromeOS\CertificateTransparencyEnforcementDisabledForUrls\2 = ".example.agency.gov"
   ```

**c.&nbsp;&nbsp;MacOS**<br>
For Preference Name, CertificateTransparencyEnforcementDisabledForUrls, add values:<br>

   ```
   <array>
     <string>example.agency.gov</string>
     <string>.example.agency.gov</string>
   </array>
   ```

**d.&nbsp;&nbsp;Android**<br>
For Restriction Name, CertificateTransparencyEnforcementDisabledForUrls, add values:<br>

   ```
   CertificateTransparencyEnforcementDisabledForUrls\1 = "example.agency.gov"
   CertificateTransparencyEnforcementDisabledForUrls\2 = ".example.agency.gov"
   ```

### Frequently Asked Questions

1. Will Google's use of CT impact my agency's internal, only locally trusted CA TLS/SSL certificates?

There will be no impact if you use an agency's internal, only locally trusted CA to issue TLS/SSL certificates to intranet sites. Google's CT change will impact only those TLS/SSL certificates that validate to a Root CA whose certificate is distributed through the Microsoft, Apple, or Mozilla trust stores.<!--COMMON is not distributed through the Mozilla trust store. Delete?-->

#### Certificate Transparency Recommended Reading
Extracted from [What is Certificate Transparency](https://www.certificate-transparency.org/){:target="_blank"}  
See [Certificate Transparency--Resources for Site Owners](https://sites.google.com/site/certificatetransparency/resources-for-site-owners){:target="_blank"}  
[Certificate Transparency Announcement](https://groups.google.com/a/chromium.org/forum/#!topic/ct-policy/78N3SMcqUGw){:target="_blank"}
[How to Disable in Enterprise Chrome](http://www.chromium.org/administrators/policy-list-3#CertificateTransparencyEnforcementDisabledForUrls){:target="_blank"}  
[Chrome Policy Templates](https://www.chromium.org/administrators/policy-templates){:target="_blank"}
[Example of Valid CT Certificate Record in Chrome](https://www.certificate-transparency.org/certificate-transparency-in-chrome)

