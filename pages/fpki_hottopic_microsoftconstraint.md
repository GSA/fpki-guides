---
layout: default
title: Announcements
permalink: /announcements/
---

## New Microsoft Policies Set To Impact the Federal Government

Microsoft has issued new Public Key Infrastructure (PKI) policy requirements that could impact 14 federal agencies. Under these requirements, the Federal PKI must undergo an annual audit of how we operate, maintain, and issue certificates from our Certification Authorities (CAs). If the FPKI does not comply, the first change will occur in April 2018&nbsp;&mdash;&nbsp;Windows users will get errors when browsing with Microsoft Edge/IE or Chrome to intranet and internet websites that use FPKI CA-issued, SSL (i.e., server authentication) certificates.

{% include alert-info.html heading="Agencies use SSL certificates to secure intranet and internet websites, per HTTPS mandate (BOD 18-01.<sup>[1](#1)</sup>)" %} 

### Options for Federal PKI Response to Microsoft

Please recommend Option 1 or 2 and send any agency impacts or concerns by **January 26, 2018** to **_fpki@gsa.gov_**. 

### Option 1
#### (Recommended)&nbsp;The FPKI instructs Microsoft to remove the Federal Common Policy Certification Authority (FCPCA) (aka, COMMON) Root certificate trust bit from the Microsoft trust store
<!--The FPKI Guides' CAs page says "FCPCA" for Root CA and says "COMMON" is used in documents.--which is most correct?-->
* **Result 1:**&nbsp;&nbsp;Your users will get errors when browsing with Microsoft Edge/IE or Chrome to intranet and internet websites that use FPKI CA-issued, SSL certificates.

> **How can we limit this impact?**&nbsp;&nbsp;Network domain administrators can distribute new group policies to restore the _pre-change_ behavior for Microsoft OS-based, government-managed equipment. (For steps, see _Option 1 FAQs_ and _Microsoft Certificate Trust Lists [CTL] recommended reading_ below.)

* **Result 3:**&nbsp;&nbsp;Based on agency feedback, Option 1 would have the least impact on mission-critical operations and systems. 

**Network Admnistrator's FAQs for Option 1**

1. Do I need to remove the baked-in version of the FCPCA Root certificate?
* _No, don't remove this certificate if it's already installed._
2. Do I need to add the FCPCA Root certificate to the Trust Root Certification Authorities store via GPO, or should I add it to the enterprise trust store?
* _If the FCPCA Root certificate is already installed, you don't need to reinstall or change its root store. However, if it's not installed, follow the PIV Guides_ steps for [Network Authentication](https://piv.idmanagement.gov/networkconfig/){:target= "_blank"}.
3. Do I need to change any trust bit for the GPO?
* **NOTE: TBD.**
4. What Windows versions are affected?
* _All Windows versions (e.g., Windows 10, Server 2016, legacy client-server OSs)._
5. Will the GPO distribution affect IPSec certificates if the server authentication bit is enabled and when used with Microsoft OSs?
* _Yes, it could affect any certificate asserting server authentication._

### Option 2
#### (Greatest potential impact on operations and mission-critical systems)&nbsp;Microsoft continues to distribute the FCPCA Root CA certificate with the server authentication trust bit enabled, but with an added _Domain Constraint_

* **Result 1:**&nbsp;&nbsp;With the added _domain constraint_, your users will get errors from Microsoft Edge/IE or Chrome for any FPKI CA-issued, SSL certificate, if it doesn't include a fully qualified domain name: _.gov_, _.us_, _.mil_, or IP address. The Microsoft Certificate Trust List (CTL) globally enforces this constraint through the Microsoft Certificate Trust List (CTL). Network domain administrators can't modify this constraint. 

* **Result 2:**&nbsp;&nbsp;Based on agency feedback, Option 2 is detrimental to mission operations in the near-term, because issued certificates use intranet domain name aliases (e.g., intranetapp vs. intranetapp.agency.gov).

**Network Admnistrator's FAQs for Option 2**

**NOTE: TBD.**

#### Microsoft Certificate Trust Lists (CTL) recommended reading

To prepare for these changes, please review these Microsoft documents:

1. [Microsoft Trusted Root Certificate...Government CA Requirements](https://social.technet.microsoft.com/wiki/contents/articles/31635.microsoft-trusted-root-certificate-program-audit-requirements.aspx#Government_CA_Requirements){:target= "_blank"}
2. [Certificate Trust List Overview](https://msdn.microsoft.com/en-us/library/windows/desktop/aa376545(v=vs.85).aspx){:target= "_blank"}
2. [Configure Trusted Roots and Disallowed Certificates](https://technet.microsoft.com/en-us/library/dn265983.aspx){:target= "_blank"}

-------
<a name="1">1</a>. Binding Operational Directive 18-01,_Enhance Email and Web Security_, U.S. Department of Homeland Security, October 16, 2017, [BOD 18-01](https://cyber.dhs.gov/assets/report/bod-18-01.pdf){:target=_"blank"}. Additional information at: [https://cyber.dhs.gov/]{:target=_"blank"}
