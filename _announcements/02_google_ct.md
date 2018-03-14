---
layout: default
navtitle: Chrome Certificate Transparency (CT) Impact
title: Chrome Certificate Transparency Requirements
pubDate: March 14, 2018
collection: announcements
permalink: announcements/chromect/
description:  Upcoming changes to Chrome could affect your agency. This change requires all TLS/SSL certificates to appear in a CT log when they validate to a Root CA certificate distributed through an Operating System (OS) trust store. The Microsoft and Apple Trust Stores currently distribute the U.S. Government Root CA (Federal Common Policy CA) certificate. This changes will take effect on **April 30, 2018** and will affect any TLS/SSL certificate issued after **April 30, 2018.**<br><br>
---

{% include alert-info.html content="At this time, the Federal PKI Certification Authorities used by most federal agencies for intranet TLS/SSL certificates do not support Certificate Transparency logging requirements. " %}  

Upcoming changes to Chrome could impact your agency. Chrome will enforce Certificate Transparency on all TLS/SSL certificates starting on April 30, 2018.  This means that all TLS/SSL certificates that were issued after April 30, 2018, and that validate to a publicly trusted Root Certificate Authority (CA) certificate must appear in a CT log. It also requires website operators to serve proof of the CT log inclusion (i.e., a signed timestamp).

- [How Does This Work?](#how-does-this-work)
- [What Will Be Impacted?](#what-will-be-impacted)
- [What Should I Do?](#what-should-i-do)
- [How Can I Test?](#how-can-i-test)
- [Frequently Asked Questions](#frequently-asked-questions)
- [Additional Resources](#additional-resources)

## How Does This Work?
The requirements for Certificate Transparency are built into the _browsers_ and will be applied to all certificates issued after April 30, 2018. 

- All roots that have been distributed _by one or more_ of the Microsoft, Android, Apple or Mozilla trust store programs are included in a [list.](https://cs.chromium.org/chromium/src/net/data/ssl/root_stores/README.md){:target="_blank"}
- When a government user browses to an intranet website, the user's workstation or mobile device will build one or more certificate paths to the enterprise or publicly trusted roots. 
- This certificate path will be compared _by the browser_ to the the list of roots that have ever been included in the popular trust stores that are currently in use worldwide.
- If any certificate in the chain matches one of those roots in the list, then the Certificate Transparency requirements will be in effect. 

The Microsoft and Apple trust stores currently distribute the U.S. Government Root CA (Federal Common Policy CA) certificate.

## What Will Be Impacted?

A government user will receive an error on government-furnished equipment if all of the following are true: 

1. Using a Chrome browser 
2. Browsing to a website with a TLS/SSL certificate that validates to the Federal Common Policy CA
3. The TLS/SSL certificate was issued after **April 30, 2018**

All popular browsers are planning to deploy Certificate Transparency in their product roadmaps. A more complete timeline will be posted on this site as dates and deployment timelines become known. 

![Chrome Error Screen]({{site.baseurl}}/img/google_ct_hot_topic_error.png){:style="width:55%;float:center;"}


## What Should I Do?

To mitigate the impact on the federal enterprise:  

1. The Federal PKI community has notified the Microsoft Trusted Root Program to remove the trust for TLS/SSL from the globally distributed U.S. Government Root CA (Federal Common Policy CA). 
2. You should distribute Federal Common Policy CA to government-furnished equipment as an _enterprise trusted root certificate_. 
3. You MUST disable CT checking for a limited numbers of intranet websites. 

Please see [Disable CT Checking for Government-Furnished Equipment](#disable-ct-checking-for-government-furnished-equipment).


### Disable CT Checking for Government-Furnished Equipment
{% include alert-info.html content="One option is outlined and included in this section.  An additional option may be available in Chrome v67 or Chrome v68.  We will post more information as we update the procedures.  Please check the issues on this playbook repository for any in-progress discussions." %}

Enterprise Chrome for government-furnished equipment will not check for CT if you apply a policy rule and include an **agency website sub-domain**, such as _example.agency.gov_. You should only apply configuration changes for government-furnished equipment and only include an explicit list of .gov or .mil sub-domains in use for intranet websites. In some instances, a new registry key tree may need to be created in the below locations.

**a.&nbsp;&nbsp;Windows Registry location for Windows clients:**<br>

For _HKEY_LOCAL_MACHINE\Software\Policies\Google\Chrome\CertificateTransparencyEnforcementDisabledForUrls_, add new string value:

   ```
   Agency Domain example
   Name = 1 | Data = example.agency.gov
   Gov / Mil Top Level Domain example 
   Name = 2 | Data = gov
   Name = 3 | Data = mil
   ```
   
**b.&nbsp;&nbsp;Windows Registry location for Chrome OS clients:**<br>

For _HKEY_LOCAL_MACHINE\Software\Policies\Google\Chrome\CertificateTransparencyEnforcementDisabledForUrls_, add new string value:

   ```
   Agency domain example
   Name = 1 | Data = example.agency.gov
   Gov / Mil Top Level Domain example 
   Name = 2 | Data = gov
   Name = 3 | Data = mil
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
   
### How Can I Test
{% include alert-info.html content="Thank you to NASA teams for the testing write-up.  Please check the issues on this playbook repository for any additional in-progress discussions." %}

CT enforcement starts on [Chrome version 67](https://www.chromium.org/developers/calendar){:target="_blank"}.

- CT testing on Chrome version 67 is available for a limited time via the Chrome beta channel
- You will use a special command line flag to execute the browser and [set CT testing parameters
](https://bugs.chromium.org/p/chromium/issues/detail?id=816543&can=2&q=816543&colspec=ID%20Pri%20M%20Stars%20ReleaseBlock%20Component%20Status%20Owner%20Summary%20OS%20Modified){:target="_blank"}

The CT and certificate information is cached in Chrome. For valid tests, you need to clear Chrome browsing data from within the browser Advance settings (Ctrl + Shift + Del) after each test and before you start a new test. 

1. Download the Chrome version 67 latest build: [Chrome Canary](https://www.google.com/chrome/browser/canary.html){:target="_blank"}.

2. Find the directory path to the Canary executable. For example: 

   ```
   Windows: C:\Users\/<username/>\AppData\Local\Google\Chrome SxS\Application\chrome.exe
   ```
   
3. Open a command line in the Google Chrome Canary executable directory to enable CT for _a date in the past_ measured in seconds. For example, this command will enable CT checking for any TLS/SSL certificate issued after January 1, 2015 (1420086400 seconds):
   ```
   chrome.exe --enable-features="EnforceCTForNewCerts<EnforceCTTrial" --force-fieldtrials="EnforceCTTrial/Group1" --force-fieldtrial-params="EnforceCTTrial.Group1:date/1420086400"
   ```

4. Watch the CT error page for your intranet/internet websites. Alternatively, you can use these test sites: [FPKI Graph](https://fpki-graph.fpki-lab.gov){:target="_blank"} or [Joint Personnel Adjudication System](https://jpasapp.dmdc.osd.mil/JPAS/JPASDisclosureServlet){:target="_blank"}.

5. If you don't see an error, clear the cache from the previous test and ensure that you are launching Chrome using the command line with the CT flags enabled.

6. Apply the registry settings in [Disable CT Checking for Government-Furnished Equipment](#disable-ct-checking-for-government-furnished-equipment) for your test sites.

7. Clear the cache again, and re-launch Chrome using the command line argument in Step 3.

8. Observe the changes in CT errors and repeat as needed.

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
1. [What is Certificate Transparency](https://www.certificate-transparency.org/){:target="_blank"}  
2. [Certificate Transparency--Resources for Site Owners](https://sites.google.com/site/certificatetransparency/resources-for-site-owners){:target="_blank"}    
3. [Certificate Transparency Announcement](https://groups.google.com/a/chromium.org/forum/#!topic/ct-policy/78N3SMcqUGw){:target="_blank"} 
4. [How to Disable CT in Enterprise Chrome](http://www.chromium.org/administrators/policy-list-3#CertificateTransparencyEnforcementDisabledForUrls){:target="_blank"}    
5. [Chrome Policy Templates](https://www.chromium.org/administrators/policy-templates){:target="_blank"}  
6. [Example of Valid CT Certificate Record in Chrome](https://www.certificate-transparency.org/certificate-transparency-in-chrome){:target="_blank"} 
7. [Command Line Flags for Certificate Transparency Testing](https://bugs.chromium.org/p/chromium/issues/detail?id=816543&can=2&q=816543&colspec=ID%20Pri%20M%20Stars%20ReleaseBlock%20Component%20Status%20Owner%20Summary%20OS%20Modified){:target="_blank"} 
