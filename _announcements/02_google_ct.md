---
layout: default
navtitle: Chrome Certificate Transparency (CT) Impact
title: Google Set To Enforce Chrome Certificate Transparency
pubDate: February 28, 2018
collection: announcements
permalink: announcements/chromect/
description:  Upcoming changes to Google Chrome could affect your agency. This change requires all TLS/SSL certificates to appear in a CT log when they validate to a Root CA certificate distributed through an Operating System (OS) trust store. The Microsoft and Apple Trust Stores currently distribute the U.S. Government Root CA (Federal Common Policy CA) certificate. This impact is expected to occur in **April 2018**.<br><br>
---

{% include alert-info.html content="At this time, no Federal PKI Certificate Authorities used by most federal agencies for intranet TLS/SSL certificates support Certificate Transparency requirements. " %}

Upcoming changes to Google Chrome could impact your agency. In April 2018, Google will begin to enforce Certificate Transparency (CT) in Chrome. This change requires all TLS/SSL certificates that are issued after April 30, 2018, and that validate to a publicly trusted, Root Certificate Authority (CA) certificate to appear in a CT log. It also requires website operators to serve proof of the CT log inclusion (i.e., a signed timestamp).

- [What Will Be Impacted?](#what-will-be-impacted)
- [What Should I Do?](#what-should-i-do)
- [Frequently Asked Questions](#frequently-asked-questions)
- [Additional Resources](#additional-resources)

## What Will Be Impacted?
<!--Should we say that when the FPKI removes the trust bit for COMMON from the Microsoft trust store, the Google CT problem will go away for Windows users?-->
The Microsoft and Apple trust stores currently distribute the U.S. Government Root CA (Federal Common Policy CA [COMMON]) certificate. This means that a user of a Windows, Apple, or Chrome Operating System who also uses a Chrome browser will receive an error when browsing to an intranet website using an Federal PKI CA-issued, TLS/SSL certificate. A government user will receive an error on government-furnished equipment if all of the following are true: 

1. Using a Chrome browser 
2. Using Window OS, MacOS, Chrome OS, or Apple iOS device
<!--Does Chrome OS also rely on MS and Apple trust stores' Root CA certificates to confirm the trustworthiness of SSL/TLS certificates that validate to COMMON?  Chromium Projects say the root certificate policy for Chrome OS is forthcoming but I couldn't find anything published yet.--->
2. Browsing to an website with a TLS/SSL certificate that validates to COMMON
3. The TLS/SSL certificate was issued after April 30, 2018

![Chrome Error Screen]({{site.baseurl}}/img/google_ct_hot_topic_error.png){:style="width:55%;float:center;"}

**Chrome Error Screen Example**  

## What Should I Do?
To mitigate the impact on the federal enterprise:  

1. The Federal PKI community has notified the Microsoft Trusted Root Program to remove the trust for TLS/SSL from the U.S. Government's globally distributed Root CA (COMMON).
2. You should distribute COMMON to government-furnished equipment as an "enterprise trusted root certificate."
3. You can optionally disable CT checking for limited numbers of intranet websites. Please see [Disabling CT Checking for Government-Furnished Equipment](#disabling-ct-checking-for-government-furnished-equipment).

### Disabling CT Checking for Government-Furnished Equipment

Enterprise Chrome for government-furnished equipment will not check for CT if you apply a policy rule<!--via group policy object?--> and include an **agency website sub-domain**, such as "example.agency.gov."   You should only apply configuration changes for government-furnished equipment, and only include an explicit list of .gov or .mil sub-domains in use for intranet websites.

**a.&nbsp;&nbsp;Windows Registry location for Windows clients:**<br>

For _Software\Policies\Google\Chrome\CertificateTransparencyEnforcementDisabledForUrls_, add values:

   ```
   Software\Policies\Google\Chrome\CertificateTransparencyEnforcementDisabledForUrls\1 = "example.agency.gov"
   Software\Policies\Google\Chrome\CertificateTransparencyEnforcementDisabledForUrls\2 = ".example.agency.gov"
   ```

**b.&nbsp;&nbsp;Windows Registry location for Chrome OS clients:**<br>
For _Software\Policies\Google\ChromeOS\CertificateTransparencyEnforcementDisabledForUrls_, add values:

   ```
   Software\Policies\Google\ChromeOS\CertificateTransparencyEnforcementDisabledForUrls\1 = "example.agency.gov"
   Software\Policies\Google\ChromeOS\CertificateTransparencyEnforcementDisabledForUrls\2 = ".example.agency.gov"
   ```

**c.&nbsp;&nbsp;MacOS**<br>
For _Preference Name_, _CertificateTransparencyEnforcementDisabledForUrls_, add values:<br>

   ```
   <array>
     <string>example.agency.gov</string>
     <string>.example.agency.gov</string>
   </array>
   ```
<!--Deleted Andoid instruction-->

## Frequently Asked Questions

### 1. Will Chrome's use of CT impact my agency's internal, only locally trusted CA TLS/SSL certificates?

No. There will be no impact if you use your agency's internal, only locally trusted CA to issue TLS/SSL certificates to intranet sites. Chrome's CT change will impact only those TLS/SSL certificates that validate to a Root CA whose certificate is distributed through the Microsoft or Apple trust stores.

### 2. Why is Google enforcing CT in Chrome?

Chrome's CT change has been planned and incrementally implemented for over two years.  CT provides a benefit to the global community by:

- Improving openness and transparency
- Allowing domain owners to identify mistakenly or maliciously issued certificates 

### 3. How do I know whether my website is compliant with CT?
<!--Will try to validate with Ken that this is what exactly appears. I couldn't find the "Settings->More Tools" option under Chrome Settings and so couldn't find the "Developer Tools"-->
1. Open Chrome and browse to your website.<!--Won't you know that the website is compliant because you won't get a 404 error when you browse to it anymore?-->
2. In Chrome, go to **Settings->More Tools**.
3. Open the **Developer Tools** panel:
> Windows: `CTRL + Shift + "i"`<br>
> MacOS: `Apple key + Shift + "i"`
3. Select the **Security** tab.
4. Refresh the website page and click on the website under the **Main origin** column.
5. If the certificate is compliant, it will display the CT log details.

## Additional Resources
<!--We could also reference RFC 6962, "Certificate Transparency," June 2013?-->
[What is Certificate Transparency](https://www.certificate-transparency.org/){:target="_blank"}  
[Certificate Transparency--Resources for Site Owners](https://sites.google.com/site/certificatetransparency/resources-for-site-owners){:target="_blank"}  
[Certificate Transparency Announcement](https://groups.google.com/a/chromium.org/forum/#!topic/ct-policy/78N3SMcqUGw){:target="_blank"}
[How to Disable in Enterprise Chrome](http://www.chromium.org/administrators/policy-list-3#CertificateTransparencyEnforcementDisabledForUrls){:target="_blank"}  
[Chrome Policy Templates](https://www.chromium.org/administrators/policy-templates){:target="_blank"}
[Example of Valid CT Certificate Record in Chrome](https://www.certificate-transparency.org/certificate-transparency-in-chrome)

