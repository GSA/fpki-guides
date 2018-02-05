---
 layout: default
 navtitle: Google Certificate Transparency (CT) Impact
 title: Google Set To Enforce Certificate Transparency
 pubDate: January 26, 2018
 collection: announcements
 permalink: announcements/googlect/
 description:  In April 2018, Google will enforce Certificate Transparency (CT) in Chrome. This change requires all TLS/SSL certificates to appear in a CT log when they validate to a Root CA certificate distributed through an Operating System (OS) trust store. The Microsoft and Apple Trust Stores currently distribute the U.S. Government Root CA (i.e., COMMON) certificate. As a result, if a Federal PKI TLS/SSL certificate doesn’t appear in a CT log, then a Federal PKI Windows or Apple user will get an error when browsing with Chrome to intranet or internet websites.
---
In April 2018, Google will enforce Certificate Transparency (CT) in Chrome. This change requires all TLS/SSL<!--Use TLS/SSL" as with MS Hot Topic--> certificates to appear in a CT log and serve proof of this inclusion when those TLS/SSL certificates validate to a Root CA certificate distributed globally by a trust store. The Microsoft and Apple Trust Stores currently distribute the COMMON Root CA certificate. 

As a result, if a TLS/SSL certificate issued by a Federal PKI CA doesn’t appear in a CT log with a signed certificate timestamp, a Windows or Apple user will get an error when browsing with Chrome to the intranet or internet website using that certificate.

At this time, no Federal PKI CAs used by the majority of **federal agencies** support CT.  

**Please send any questions about the Google CT change to _fpki@gsa.gov_**.

{% include alert-info.html content="CT is an open framework that allows website owners and browser operators to monitor and log TLS/SSL certificates, detect issuance/mis-issuance, and identify rogue CAs." %}

To prevent these Chrome errors, please see [Disabling Errors for Government-Furnished Equipment](#disabling-errors-for-government-furnished-equipment).

![Chrome Error Screen]({{site.baseurl}}/img/google_ct_hot_topic_error.png){:style="width:55%;float:center;"}

**Chrome Error Screen Example**  
<!--Changed to same words as used in MS Hot Topic-->
{% include alert-info.html content="If the U.S. Government chooses to remove the TLS trust bit for our U.S. Government Root CA (i.e., COMMON Root CA) from Microsoft's Trust Store, then Google's new CT change will not affect Federal PKI TLS/SSL certificates used for intranet websites for Windows users of Chrome. (See the Microsoft Trust Store Impact Announcement.)" %}
<!--Add --"but will still affect Apple users of Chrome"?-->

### Google's Purpose for CT Change
Google's CT change has been planned and incrementally implemented for over two years.  Certificate Transparency provides a benefit to the global public trust community by:

1. Making it difficult for a CA to issue a TLS/SSL certificate that would not be visible to a domain owner.
2. Allowing any CA or domain owner to identify mistakenly or maliciously issued certificates.


### Impacted Users and Certificates

1. Google Chrome users of Windows, Apple, Android, Apple iOS, and Windows Mobile.
2. Any TLS/SSL certificate that validates to COMMON, provided that the COMMON Root CA certificate's TLS trust bit is still distributed through the Microsoft and Apple trust stores.

### Disabling Errors for Government-Furnished Equipment

Enterprise Chrome for government-furnished equipment will not check for a CT entry if you change the OS Registry settings and define an agency domain, such as "agency.gov." That means that certificates that would have been untrusted can continue being used. 
**Note:** Make these configuration changes only for government-furnished equipment and explicit .gov or .mil domains in use for intranet websites.

**a) Windows Registry location for Windows clients:**<br>

For Software\Policies\Google\Chrome\CertificateTransparencyEnforcementDisabledForUrls, add values:

   ```
   Software\Policies\Google\Chrome\CertificateTransparencyEnforcementDisabledForUrls\1 = "example.agency.gov"
   Software\Policies\Google\Chrome\CertificateTransparencyEnforcementDisabledForUrls\2 = ".example.agency.gov"
   ```

**b) Windows Registry location for Google Chrome OS clients:**<br>
For Software\Policies\Google\ChromeOS\CertificateTransparencyEnforcementDisabledForUrls, add values:

   ```
   Software\Policies\Google\ChromeOS\CertificateTransparencyEnforcementDisabledForUrls\1 = "example.agency.gov"
   Software\Policies\Google\ChromeOS\CertificateTransparencyEnforcementDisabledForUrls\2 = ".example.agency.gov"
   ```

**c) MacOS**<br>
For Preference Name, CertificateTransparencyEnforcementDisabledForUrls, add values:<br>

   ```
   <array>
     <string>example.agency.gov</string>
     <string>.example.agency.gov</string>
   </array>
   ```

**d) Android**<br>
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
