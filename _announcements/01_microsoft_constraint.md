---
layout: default
navtitle: Microsoft Trust Store Impact
title: Microsoft Policies Set To Impact the Federal Government
pubDate: January 26, 2018
collection: announcements
permalink: announcements/mspkichanges/
description: Microsoft's new Public Key Infrastructure (PKI) policy requirements could impact 14 federal agencies. Under these requirements, Microsoft mandates that the Federal PKI undergo an annual audit of how we operate, maintain, and issue certificates from our Certification Authorities (CAs). If the FPKI does not comply, the first impact will occur in April 2018&nbsp;&mdash;&nbsp;Windows users will get errors when browsing with Microsoft Edge/IE or Chrome to intranet and internet websites that use FPKI CA-issued, SSL certificates.
---

Microsoft's new Public Key Infrastructure (PKI) policy requirements could impact 14 federal agencies. Under these requirements, Microsoft mandates that the FPKI undergo an annual audit of how we operate, maintain, and issue certificates from our Certification Authorities (CAs). If the FPKI does not comply, the first impact will occur in April 2018&nbsp;&mdash;&nbsp;Windows users will get errors when browsing with Microsoft Edge/IE or Chrome to intranet and internet websites that use FPKI CA-issued, SSL certificates.

{% include alert-info.html content="Agencies use SSL certificates to secure intranet and internet websites, per HTTPS mandate&mdash;Binding Operational Directive 18-01." %} 

### Recommended Option for Federal PKI Response to Microsoft

Please recommend the following Option and send any agency impacts or concerns by **January 26, 2018** to **_fpki@gsa.gov_**. <!--Update date.--> 

### (Recommended)&nbsp;The FPKI instructs Microsoft to remove the Federal Common Policy Certification Authority (COMMON) Root certificate trust bit from the Microsoft trust store.
* **Result 1:**&nbsp;&nbsp;Your users will get errors when browsing with Microsoft Edge/IE or Chrome to intranet and internet websites that use FPKI CA-issued, SSL certificates.

> **How can we limit this impact?**&nbsp;&nbsp;Network domain administrators can distribute new group policies to restore the _pre-change_ behavior for Microsoft OS-based, government-managed equipment. (For steps, see _Option 1 FAQs_ and _Microsoft Certificate Trust Lists [CTL] recommended reading_ below.)

* **Result 2:**&nbsp;&nbsp;Based on agency feedback, Option 1 would have the least impact on mission-critical operations and systems. 

### Network Administrator's FAQs

1. Do I need to remove the baked-in version of the COMMON Root CA certificate?
> _No, don't remove this certificate if it's already installed._
2. Do I need to add the COMMON Root CA certificate to the Trust Root Certification Authorities store via GPO, or should I add it to the Enterprise Trust Store?<!--Is enterprise trust store = browser-related?-->
> _If the COMMON Root CA certificate is already installed, you don't need to reinstall or change its root store. However, if it's not installed, follow the **PIV Guides** steps for [Network Authentication](https://piv.idmanagement.gov/networkconfig/){:target= "_blank"}._
3. Do I need to change any trust bit for the GPO?
> NOTE: Answer/step is TBD.
4. What Windows versions are affected?
> _All Windows versions (e.g., Windows 10, Server 2016, legacy client-server OSs)._
5. Will the GPO distribution affect IPSec certificates if the server authentication bit is enabled and used with Microsoft OSs?
> _Yes, it could affect any certificate asserting server authentication._

To prepare for these changes, please review these Microsoft documents:

1. [Microsoft Trusted Root Certificate...Government CA Requirements](https://social.technet.microsoft.com/wiki/contents/articles/31635.microsoft-trusted-root-certificate-program-audit-requirements.aspx#Government_CA_Requirements){:target= "_blank"}
2. [Certificate Trust List Overview](https://msdn.microsoft.com/en-us/library/windows/desktop/aa376545(v=vs.85).aspx){:target= "_blank"}
2. [Configure Trusted Roots and Disallowed Certificates](https://technet.microsoft.com/en-us/library/dn265983.aspx){:target= "_blank"}

-------
**Reference:**<br>
Binding Operational Directive 18-01, _Enhance Email and Web Security_, U.S. Department of Homeland Security, October 16, 2017, [BOD 18-01](https://cyber.dhs.gov/assets/report/bod-18-01.pdf){:target=_"blank"}. Additional information at: [cyber.dhs.gov](https://cyber.dhs.gov/){:target=_"blank"}.
