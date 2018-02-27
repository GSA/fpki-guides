---
layout: default
 navtitle: Chrome Certificate Transparency (CT) Impact
 title: Chrome Set To Enforce Certificate Transparency
 pubDate: February 28, 2018
 collection: announcements
 permalink: announcements/chromect/
 description:  In April 2018, Chrome will enforce Certificate Transparency (CT) requirements. This change requires all TLS/SSL certificates to appear in a CT log when the certificate validates to a Root CA certificate distributed through an Operating System (OS) trust store. The Microsoft and Apple Trust Stores currently distribute the U.S. Government Root CA [COMMON] certificate. 
---

{% include alert-info.html content="At this time, no Federal PKI CAs used by the majority of federal agencies for intranet TLS/SSL certificates support Certificate Transparency requirements. " %}

In April 2018, requirements for Certificate Transparency (CT) will begin to be enforced in Chrome. This change requires all TLS/SSL certificates which are issued after April 30, 2018, and which validate to a root certificate authority that is publicly trusted, to appear in a CT log and website operators to serve proof of the CT log inclusion. 

The Microsoft and Apple trust store programs currently distribute the U.S. Government Root CA (Federal Common Policy CA [COMMON]) certificate.  

A user on Windows or Apple operating systems using a Chrome browser will receive an error when browsing to an intranet website using a TLS/SSL certificate issued from a Federal PKI CA. An error will be encountered by government users on government furnished equipment if all the following are true:

1. Using Chrome 
2. On an Window OS, MacOS, ChromeOS, Android, and Apple iOS device
2. Browsing to an website with a TLS/SSL certificate that validates to COMMON
3. The TLS/SSL certificate was issued after April 30, 2018

![Chrome Error Screen]({{site.baseurl}}/img/google_ct_hot_topic_error.png){:style="width:55%;float:center;"}

**Chrome Error Screen Example**  

To mitigate impact to the federal enterprise:  
1. The Federal PKI community has notified the Microsoft trust store program to remove the trust for TLS/SSL from the U.S. Government's globally distributed Root CA [COMMON].
2. You should distribute COMMON to government furnished equipment as an enterprise trusted root certificate.
3. You can optionally disable CT checking for limited numbers of intranet websites. Please see [Disabling CT Checking for Government-Furnished Equipment](#disabling-ct-checking-for-government-furnished-equipment).

### Disabling CT checking for Government-Furnished Equipment

Enterprise Chrome for government-furnished equipment will not check for CT if you apply a policy rule and include an agency website sub-domain, such as "example.agency.gov."   You should only apply configuration changes for government-furnished equipment, and only include an explicit list of .gov or .mil sub-domains in use for intranet websites.

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

1. Will Chrome's use of CT impact my agency's internal, only locally trusted CA TLS/SSL certificates?

There will be no impact if you use your agency's internal, only locally trusted CA to issue TLS/SSL certificates to intranet sites. Chrome's CT change will impact only those TLS/SSL certificates that validate to a Root CA whose certificate is distributed through the Microsoft, Apple, or Mozilla trust stores.

2.  Why is Certificate Transparency enforcement being deployed in Chrome?

Chrome's Certificate Transparency change has been planned and incrementally implemented for over two years.  CT provides a benefit to the global community by:

1. Increasing openness and transparency.
2. Allowing domain owners to identify mistakenly or maliciously issued certificates.

3. How do I check if my website is compliant?

- Open Chrome and browse to the website.
- In Chrome, open the developer tools panel under the setting  -> more tools menu.
   a. Windows OS shortcut: ctrl + shift + "i"
   b. MacOSX shortcut: apple key + shift + "i"
- Select the security tab.
- Refresh the website page and click on the website under the "Main origin" column.
- If the certificate is compliant it will show the CT log details

#### Certificate Transparency Recommended Reading
[What is Certificate Transparency](https://www.certificate-transparency.org/){:target="_blank"}  
[Certificate Transparency--Resources for Site Owners](https://sites.google.com/site/certificatetransparency/resources-for-site-owners){:target="_blank"}  
[Certificate Transparency Announcement](https://groups.google.com/a/chromium.org/forum/#!topic/ct-policy/78N3SMcqUGw){:target="_blank"}
[How to Disable in Enterprise Chrome](http://www.chromium.org/administrators/policy-list-3#CertificateTransparencyEnforcementDisabledForUrls){:target="_blank"}  
[Chrome Policy Templates](https://www.chromium.org/administrators/policy-templates){:target="_blank"}
[Example of Valid CT Certificate Record in Chrome](https://www.certificate-transparency.org/certificate-transparency-in-chrome)

