---
layout: default
navtitle: Chrome Certificate Transparency (CT) Impact
title: Chrome Certificate Transparency Requirements
pubDate: March 14, 2018
collection: announcements
permalink: announcements/chromect/
description:  Upcoming changes to Chrome could affect your agency. This change requires all TLS/SSL certificates to appear in a CT log when they validate to a Root CA certificate distributed through an Operating System (OS) trust store. The Microsoft and Apple Trust Stores currently distribute the U.S. Government Root CA (Federal Common Policy CA) certificate. This changes will take effect on **April 30, 2018** and will affect any TLS/SSL certificate issued after **April 30, 2018.**<br><br>
---

{% include alert-info.html content="At this time, the Federal PKI Certification Authorities used by most federal agencies for intranet TLS/SSL certificates do not support Certificate Transparency logging requirements." %}  

Upcoming changes to Chrome could impact your agency. Chrome will enforce Certificate Transparency for all TLS/SSL certificates starting on April 30, 2018.  This means that all TLS/SSL certificates that are issued after April 30, 2018, and which validate to a publicly trusted Root Certification Authority (CA) certificate must appear in a CT log. In addition, website operators must serve proof of the CT log inclusion (i.e., a signed certificate timestamp).

- [How Does This Work?](#how-does-this-work)
- [What Will Be Impacted?](#what-will-be-impacted)
- [What Should I Do?](#what-should-i-do)
- [How Can I Test?](#how-can-i-test)
- [Frequently Asked Questions](#frequently-asked-questions)
- [Additional Resources](#additional-resources)

{% include alert-info.html content="All popular browsers plan to deploy CT in their product roadmaps. A more complete timeline will be posted on this site as dates and deployment timelines become known." %}

## How Does This Work?

The requirements for CT are built into _browsers_. <!--Suggest adding here: (Currently, Chrome is the only browser enforcing CT.)--> 

- All roots that have been distributed _by one or more_ of the Microsoft, Android, Apple or Mozilla trusted root programs are listed here: [Root Stores](https://cs.chromium.org/chromium/src/net/data/ssl/root_stores/README.md){:target="_blank"}.
- When a government user browses to an intranet website, the user's workstation or mobile device will build one or more certificate paths to the enterprise or publicly trusted roots. 
- The browser will compare the certificate path(s) to the list of roots that have ever been included in the popular trust stores currently in use worldwide.
- If any certificate in the trust chain matches one of the roots in the list, then the CT requirements will be in effect. 

The Microsoft and Apple trust stores currently distribute the U.S. Government Root CA (Federal Common Policy CA) certificate.

## What Will Be Impacted?

A government user will receive an error on government-furnished equipment if all of the following are true: 

1. Using a Chrome browser (Additional browsers will be affected in the future.)
2. Browsing to an intranet website with a TLS/SSL certificate that validates to the Federal Common Policy CA
3. The TLS/SSL certificate was issued after **April 30, 2018**

![Chrome Error Screen]({{site.baseurl}}/img/google_ct_hot_topic_error.png){:style="width:55%;float:center;"}


## What Should I Do?
The Federal PKI community has notified the Microsoft Trusted Root Program to remove the trust for TLS/SSL from the globally distributed Federal Common Policy CA.

To mitigate the impact on the federal enterprise:  

2. You should distribute Federal Common Policy CA to government-furnished equipment as an _enterprise trusted root certificate_. 
3. You must disable CT checking for a limited number of intranet websites. 

Please see [Disable CT Checking for Government-Furnished Equipment](#disable-ct-checking-for-government-furnished-equipment).


### Disable CT Checking for Government-Furnished Equipment
{% include alert-info.html content="One option is outlined in this section.  Additional options may be available in Chrome 67 or Chrome 68.  We will post more information as we update the procedures.  Please check the GitHub Issues in the GSA fpki-guides playbook repository for any in-progress discussions." %} 

Enterprise Chrome for government-furnished equipment will not check for CT if you apply a policy rule and include a **.gov or .mil second-level domain**, such as _agency.gov_, or other **third-level sub-domains**, such as _example.agency.gov_. You should apply configuration changes for only government-furnished equipment and only include an explicit list of second-level or below sub-domains in use for intranet websites. In some instances, you may need to create a new registry key tree in the locations specified below. 


**a.&nbsp;&nbsp;Windows Registry location for Windows clients:**<br>

For _HKEY_LOCAL_MACHINE\Software\Policies\Google\Chrome\CertificateTransparencyEnforcementDisabledForUrls_, add new string value:

   ```
   Agency Sub-Domain example:
   Name = 1 | Data = example.agency.gov
   
   Gov/Mil Top-Level Domain example: 
   Name = 2 | Data = gov
   Name = 3 | Data = mil
   ```
   
**b.&nbsp;&nbsp;Windows Registry location for Chrome OS clients:**<br>

For _HKEY_LOCAL_MACHINE\Software\Policies\Google\Chrome\CertificateTransparencyEnforcementDisabledForUrls_, add new string value:

   ```
   Sub-Domain example:
   Name = 1 | Data = example.agency.gov
   
   Gov/Mil Top-Level Domain example: 
   Name = 2 | Data = gov
   Name = 3 | Data = mil
   ```
   
**c.&nbsp;&nbsp;MacOS**<br>

For _preference name_, _CertificateTransparencyEnforcementDisabledForUrls_, add values:<br>

   ```
   <array>
     <string>example.agency.gov</string>
     <string>.example.agency.gov</string>
     <string>gov</string>
     <string>mil</string>
   </array>
   ```
   
## How Can I Test CT Compliance for My Intranet Website?
To test, you will need to use a pre-release version of Chrome. 

- CT enforcement will start with [Chrome 67](https://www.chromium.org/developers/calendar){:target="_blank"}. 
- Chrome 67 is available for a limited time via the [Chrome Canary channel](https://www.google.com/chrome/browser/canary.html){:target="_blank"}.
- You will use a special command line flag to execute the browser: [Add a command-line flag for CT testing](https://bugs.chromium.org/p/chromium/issues/detail?id=816543&can=2&q=816543&colspec=ID%20Pri%20M%20Stars%20ReleaseBlock%20Component%20Status%20Owner%20Summary%20OS%20Modified){:target="_blank"}.


The CT and certificate information is cached in Chrome. Before you start each test, clear the cached data from within the browser:<br><br>
   ```
   Settings->Advanced
   Ctrl + Shift + Del)
   ```

   
1. Download and install the Chrome 67 latest build: [Download Chrome Canary](https://www.google.com/chrome/browser/canary.html){:target="_blank"}.

2. Find the directory path to the new Chrome executable. For example: 

   ```
   Windows: C:\Users\<username>\AppData\Local\Google\Chrome SxS\Application\chrome.exe
   ```
   
3. Open a command line in the executable directory to enable CT for _a date in the past_, measured in seconds. For example, this command will enable CT checking for any TLS/SSL certificate issued after January 1, 2015 (1420086400 seconds):

   ```
   chrome.exe --enable-features="EnforceCTForNewCerts<EnforceCTTrial" --force-fieldtrials="EnforceCTTrial/Group1" --force-fieldtrial-params="EnforceCTTrial.Group1:date/1420086400"
   ```

4. Browse to one of your intranet sites with a TLS/SSL certificate issued from a Federal PKI CA.  Alternatively, you can use these test sites: [FPKI Graph](https://fpki-graph.fpki-lab.gov){:target="_blank"} or [Joint Personnel Adjudication System](https://jpasapp.dmdc.osd.mil/JPAS/JPASDisclosureServlet){:target="_blank"}.

5. If you don't see an error, clear the cache from the previous test and ensure that you launch Chrome using the command line with the CT flags enabled.

6. Apply the registry settings given in [Disable CT Checking for Government-Furnished Equipment](#disable-ct-checking-for-government-furnished-equipment) for your intranet sites.

7. Clear the cache again, and re-launch Chrome using the command line argument in Step 3.

8. Observe the changes in CT errors and repeat as needed.

{% include alert-info.html content="Thank you to NASA teams for these testing procedures.  Please check the GitHub Issues in the GSA fpki-guides playbook repository for any in-progress discussions." %}

## Frequently Asked Questions

### 1. Will Google's use of CT in Chrome impact my agency's internal, only locally trusted CA TLS/SSL certificates?

No. There will be no impact if you use your agency's internal, only locally trusted CA to issue TLS/SSL certificates to intranet sites. Chrome's CT change will impact only those TLS/SSL certificates that validate to Federal Common Policy CA, whose certificate is distributed through the Microsoft and Apple trust stores.

### 2. Why is Google enforcing CT in Chrome?

Chrome's CT change has been planned and incrementally implemented for over two years.  CT provides a benefit to the global community by:

- Improving openness and transparency
- Allowing domain owners to identify mistakenly or maliciously issued certificates 

### 3. How do I know whether my intranet website is compliant with CT?
These procedures apply to any government internet or intranet website and any Federal PKI TLS/SSL certificate or commercially sourced certificate.

**Note:**&nbsp;&nbsp;Signed certificate timestamps (SCTs) are only required for certificates issued after April 30, 2018.  Some certificates issued **before** this date may already be compliant.  

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
