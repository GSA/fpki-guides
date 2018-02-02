---
 layout: default
 navtitle: Google Certificate Transparency (CT) Impact
 title: Google Set To Enforce Certificate Transparency
 pubDate: January 26, 2018
 collection: announcements
 permalink: announcements/googlect/
 description:  In April 2018, Google will enforce Certificate Transparency (CT) in Chrome. This change requires all SSL certificates to appear in a CT log when they validate to a Root CA certificate distributed through an Operating System (OS) trust store. The Microsoft and Apple trust stores currently distribute the Federal PKI's COMMON Root CA certificate. As a result, if an FPKI SSL certificate doesn’t appear in a CT log, an FPKI Windows or Apple user will get an error when browsing with Chrome to intranet or internet websites.
---
In April 2018, Google will enforce Certificate Transparency (CT) in Chrome. This change requires all SSL certificates to appear in a CT log and serve proofs of this inclusion when those SSL certs validate to a Root CA certificate distributed globally by a trust store. The Microsoft and Apple trust stores currently distribute the Federal PKI's COMMON Root CA certificate. 

As a result, if Federal PKI SSL certificate issued from a Federal PKI CA doesn’t appear in a CT log and have a signed certificate timestamp included, a Windows or Apple user will get an error when browsing with Chrome to that intranet or internet websites using that SSL certificate.

At this time, no Federal PKI CAs used by the majority of **federal** agencies support Certificate Transparency.  

**Please send any questions about the Google CT change to _fpki@gsa.gov_**.

{% include alert-info.html content="CT is an open framework that allows website owners and browser operators to monitor and log SSL certificates, detect issuance/mis-issuance, and identify rogue CAs." %}

To prevent these Chrome errors, please see [Disabling Errors for Government Furnished Equipment](#disabling-errors-for-government-furnished-equipment).

![Chrome Error Screen]({{site.baseurl}}/img/google_ct_hot_topic_error.png){:style="width:55%;float:center;"}

**Chrome Error Screen Example**

{% include alert-info.html content="If the FPKI chooses to remove the COMMON Root CA certificate's server authentication trust bit from the Microsoft trust store, then Google's new CT change will not affect FPKI SSL certificates used for intranet websites for Windows users of Chrome. (See the Microsoft Trust Store Impact Announcement.)" %}


### Google's Purpose for CT Change
Google's CT change has been planned and incrementally implemented for over two (2) years.  Certificate Transparency provides a benefit to the global public trust community by:

1. Making it difficult for a CA to issue an SSL certificate that would not be visible to a domain owner.
2. Allowing any CA or domain owner to identify mistakenly or maliciously issued certificates.


### Impacted Users and Certificates

1. Google Chrome users of Windows, Apple, Android, Apple iOS, and Windows Mobile.
2. Any SSL certificate that validates to COMMON, provided that the COMMON Root CA certificate's server authentication trust bit is still distributed through the Microsoft and Apple trust stores. 

### Disabling Errors for Government Furnished Equipment

Enterprise Chrome for government furnished equipment will not check for a CT entry if you change the OS Registry settings and define an agency domain, such as "example.com" or "agency.gov." That means that certificates that would have been untrusted can continue being used. 
**Note:** Only configure this for government furnished equipment and explicit .gov or .mil domains in use for intranet websites.

a) Windows Registry location for Windows clients:

For Software\Policies\Google\Chrome\CertificateTransparencyEnforcementDisabledForUrls, add values:

   ```
   Software\Policies\Google\Chrome\CertificateTransparencyEnforcementDisabledForUrls\1 = "example.agency.gov"
   Software\Policies\Google\Chrome\CertificateTransparencyEnforcementDisabledForUrls\2 = ".example.agency.gov"
   ```

b) Windows Registry location for Google Chrome OS clients:
For Software\Policies\Google\ChromeOS\CertificateTransparencyEnforcementDisabledForUrls, add values:

   ```
   Software\Policies\Google\ChromeOS\CertificateTransparencyEnforcementDisabledForUrls\1 = "example.agency.gov"
   Software\Policies\Google\ChromeOS\CertificateTransparencyEnforcementDisabledForUrls\2 = ".example.agency.gov"
   ```

c) MacOS
For preference name, CertificateTransparencyEnforcementDisabledForUrls, add values:<br>

   ```
   <array>
     <string>example.agency.gov</string>
     <string>.example.agency.gov</string>
   </array>
   ```

d) Android
For restriction name, CertificateTransparencyEnforcementDisabledForUrls, add values:<br>

   ```
   CertificateTransparencyEnforcementDisabledForUrls\1 = "example.agency.gov"
   CertificateTransparencyEnforcementDisabledForUrls\2 = ".example.agency.gov"
   ```

### Frequently Asked Questions
1. Will Google's use of CT impact my agency's internal only locally trusted CA SSL certificates?

There will be no impact if you use an agency's internal only locally trusted CA to issue SSL certificates to intranet sites. Google's CT change will impact only SSL certificates that validate to a Root CA whose certificate is distributed through the Microsoft, Apple, or Mozilla trust stores. 

#### Certificate Transparency Recommended Reading
Extracted from [What is Certificate Transparency](https://www.certificate-transparency.org/){:target="_blank"}  
See [Certificate Transparency--Resources for Site Owners](https://sites.google.com/site/certificatetransparency/resources-for-site-owners){:target="_blank"}  
[Certificate Transparency Announcement](https://groups.google.com/a/chromium.org/forum/#!topic/ct-policy/78N3SMcqUGw){:target="_blank"}  
[How to Disable in Enterprise Chrome](http://www.chromium.org/administrators/policy-list-3#CertificateTransparencyEnforcementDisabledForUrls){:target="_blank"}  
[Chrome Policy Templates](https://www.chromium.org/administrators/policy-templates){:target="_blank"}  
