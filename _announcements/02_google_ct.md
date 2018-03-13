---
layout: default
navtitle: Chrome Certificate Transparency (CT) Impact
title: Chrome Certificate Transparency Requirements
pubDate: March 14, 2018
collection: announcements
permalink: announcements/chromect/
description:  Upcoming changes to Chrome could affect your agency. This change requires all TLS/SSL certificates to appear in a CT log when they validate to a Root CA certificate distributed through an Operating System (OS) trust store. The Microsoft and Apple Trust Stores currently distribute the U.S. Government Root CA (Federal Common Policy CA) certificate. This impact is expected to occur in **April 30, 2018** but will affect any TLS/SSL certificate issued after **April 30, 2015.**<br><br>
---

{% include alert-info.html content="At this time, the Federal PKI Certification Authorities used by most federal agencies for intranet TLS/SSL certificates do not support Certificate Transparency logging requirements. " %}
<!--Condensed text in 2nd alert-info box and 1st para to reduce redundancy-->
Upcoming changes to Google Chrome could impact your agency. Google will enforce Chrome Certificate Transparency starting on April 30, 2018, but will back-date its enforcement to Chrome 64 (released in 2015). This means that all TLS/SSL certificates that were issued after April 30, 2015, and that validate to a publicly trusted, Root Certificate Authority (CA) certificate must appear in a CT log. It also requires website operators to serve proof of the CT log inclusion (i.e., a signed timestamp).

- [What Will Be Impacted?](#what-will-be-impacted)
- [What Should I Do?](#what-should-i-do)
- [Frequently Asked Questions](#frequently-asked-questions)
- [Additional Resources](#additional-resources)

## What Will Be Impacted?
The Microsoft and Apple trust stores currently distribute the U.S. Government Root CA (Federal Common Policy CA [COMMON]) certificate. This means that a user of a Windows, Apple, or Chrome Operating System who also uses a Chrome browser will receive an error when browsing to an intranet website using a Federal PKI CA-issued, TLS/SSL certificate. A government user will receive an error on government-furnished equipment if all of the following are true: 

1. Using a Chrome browser 
2. Using Window OS, MacOS, Chrome OS, or Apple iOS device
3. Browsing to a website with a TLS/SSL certificate that validates to COMMON
4. The TLS/SSL certificate was issued after **April 30, 2015**

![Chrome Error Screen]({{site.baseurl}}/img/google_ct_hot_topic_error.png){:style="width:55%;float:center;"}

**Chrome Error Screen Example**  

## What Should I Do?

To mitigate the impact on the federal enterprise:  

1. The Federal PKI community has notified the Microsoft Trusted Root Program to remove the trust for TLS/SSL from the globally distributed U.S. Government Root CA (COMMON). Therefore, you should distribute COMMON to government-furnished equipment as an "enterprise trusted root certificate."
2. You can test your websites to see whether they are impacted. Please see [Test CT Checking for Government-Furnished Equipment](#test-ct-checking-for-government-furnished-equipment).
3. You can optionally disable CT checking for limited numbers of intranet websites. Please see [Disable CT Checking for Government-Furnished Equipment](#disable-ct-checking-for-government-furnished-equipment).

### Test CT Checking for Government-Furnished Equipment

CT testing is available only through the latest build of Google Chrome Canary 67<!--I checked and the website doesn't say "67." We need to explain why we say "67" in 2 places but not the others--> through command line execution:

1. Download the latest build: [Google Chrome Canary](https://www.google.com/chrome/browser/canary.html){:target="_blank"}.
2. Find the directory path to the Canary executable. Normally:  

   ```
   Windows: C:\Users\username\AppData\Local\Google\Chrome SxS\Application\chrome.exe
   ```
3. Open a command line in the Google Chrome Canary executive directory to enable CT for any certificate at least three years old:

   ```
   chrome.exe --enable-features="EnforceCTForNewCerts<EnforceCTTrial" --force-fieldtrials="EnforceCTTrial/Group1" 
   --force-fieldtrial-params="EnforceCTTrial.Group1:date/1420086400"
   ```

4. Watch the CT error page for your intranet/internet websites. Alternatively, you can use these test sites: [FPKI Graph](https://fpki-graph.fpki-lab.gov){:target="_blank"} or [Joint Personnel Adjudication System](https://jpasapp.dmdc.osd.mil/JPAS/JPASDisclosureServlet){:target="_blank"}.
5. If you don't see an error, reset Google Chrome Canary from the previous test and ensure that you are launching Chrome 67 using the command line, as needed for your Operating System.
6. Apply the registry fix given below in [Disable CT Checking for Government-Furnished Equipment](#disable-ct-checking-for-government-furnished-equipment).
7. Re-launch Canary using the command line argument in Step 3.
8. Observe the changes in CT errors and repeat as needed.

### Disable CT Checking for Government-Furnished Equipment

Enterprise Chrome for government-furnished equipment will not check for CT if you apply a policy rule and include an **agency website sub-domain**, such as _example.agency.gov_. You should only apply configuration changes for government-furnished equipment and only include an explicit list of .gov or .mil sub-domains in use for intranet websites.

**a.&nbsp;&nbsp;Windows Registry location for Windows clients:**<br>

For _Software\Policies\Google\Chrome\CertificateTransparencyEnforcementDisabledForUrls_, add values:
<!--Add "." to gov and mil.  Is this correct?  Other examples use a "." somewhere in string-->

   ```
   Software\Policies\Google\Chrome\CertificateTransparencyEnforcementDisabledForUrls\1 = "example.agency.gov"
   Software\Policies\Google\Chrome\CertificateTransparencyEnforcementDisabledForUrls\2 = ".example.agency.gov"
   Software\Policies\Google\Chrome\CertificateTransparencyEnforcementDisabledForUrls\3 = ".gov"
   Software\Policies\Google\Chrome\CertificateTransparencyEnforcementDisabledForUrls\4 = ".mil"
   ```
   
**b.&nbsp;&nbsp;Windows Registry location for Chrome OS clients:**<br>

For _Software\Policies\Google\ChromeOS\CertificateTransparencyEnforcementDisabledForUrls_, add values:

   ```
   Software\Policies\Google\ChromeOS\CertificateTransparencyEnforcementDisabledForUrls\1 = "example.agency.gov"
   Software\Policies\Google\ChromeOS\CertificateTransparencyEnforcementDisabledForUrls\2 = ".example.agency.gov"
   Software\Policies\Google\ChromeOS\CertificateTransparencyEnforcementDisabledForUrls\3 = ".gov"
   Software\Policies\Google\ChromeOS\CertificateTransparencyEnforcementDisabledForUrls\4 = ".mil"
   ```
   
**c.&nbsp;&nbsp;MacOS**<br>

For _Preference Name_, _CertificateTransparencyEnforcementDisabledForUrls_, add values:<br>

   ```
   <array>
     <string>example.agency.gov</string>
     <string>.example.agency.gov</string>
     <string>gov</string>
     <string>mil</string>
   </array>
   ```
   
## Frequently Asked Questions

### 1. Will Chrome's use of CT impact my agency's internal, only locally trusted CA TLS/SSL certificates?

No. There will be no impact if you use your agency's internal, only locally trusted CA to issue TLS/SSL certificates to intranet sites. Chrome's CT change will impact only those TLS/SSL certificates that validate to COMMON, whose certificate is distributed through the Microsoft and Apple trust stores.

### 2. Why is Google enforcing Chrome CT?

Chrome's CT change has been planned and incrementally implemented for over two years.  CT provides a benefit to the global community by:

- Improving openness and transparency
- Allowing domain owners to identify mistakenly or maliciously issued certificates 

### 3. How do I know whether my website is compliant with CT?
These procedures apply to any government website and any Federal PKI TLS/SSL certificate or commercially sourced certificate. 

1. Open Chrome and browse to your website.
2. In Chrome, go to **Settings->More Tools**.
3. Open the **Developer Tools** panel:<br>
   ```
   Windows:  CTRL + Shift + "i"
   MacOS:  Apple key + Shift + "i"
   ```
4. Select the **Security** tab in the **Developer Tools**.
5. Refresh the website page and click on the website under the **Main origin** column.
6. If the certificate is compliant, it will display the CT log details.

## Additional Resources
[What is Certificate Transparency](https://www.certificate-transparency.org/){:target="_blank"}  
[Certificate Transparency--Resources for Site Owners](https://sites.google.com/site/certificatetransparency/resources-for-site-owners){:target="_blank"}    
[Certificate Transparency Announcement](https://groups.google.com/a/chromium.org/forum/#!topic/ct-policy/78N3SMcqUGw){:target="_blank"} 
[How to Disable CT in Enterprise Chrome](http://www.chromium.org/administrators/policy-list-3#CertificateTransparencyEnforcementDisabledForUrls){:target="_blank"}    
[Chrome Policy Templates](https://www.chromium.org/administrators/policy-templates){:target="_blank"}  
[Example of Valid CT Certificate Record in Chrome](https://www.certificate-transparency.org/certificate-transparency-in-chrome){:target="_blank"} 
[Command Line Flags for Certificate Transparency Testing](https://bugs.chromium.org/p/chromium/issues/detail?id=816543&can=2&q=816543&colspec=ID%20Pri%20M%20Stars%20ReleaseBlock%20Component%20Status%20Owner%20Summary%20OS%20Modified){:target="_blank"} 
