---
layout: default
navtitle: Microsoft Trust Store Impact
title: Microsoft Trust Store Policies Set To Impact Federal Government
pubDate: January 26, 2018
collection: announcements
permalink: announcements/mspkichanges/
description: Upcoming changes for Microsoft's Trust Store program could impact your agency. The Federal Government will be removing the Transport Layer Security (TLS) trust bit for our U.S. Government Root CA that Microsoft distributes through its trust store.  The first impact is anticipated to occur in April 2018&nbsp;&mdash;&nbsp;Windows users will receive errors when browsing to government intranet and internet websites that use SSL certificates issued from Federal PKI CAs. The impact for the government intranets and government-furnished equipment can be mitigated by using configuration management tools, including group policy objects managed by your agency.  
---

Upcoming changes for Microsoft's Trust Store program could impact your agency in April 2018. The U.S. Government will be removing the TLS trust bit for our government root CA that Microsoft distributes through its trust store.    

Microsoft distributes the Federal Common Policy CA (COMMON) (i.e., U.S. Government Root CA) as a globally trusted root through the Microsoft Trust Store.  Microsoft manages trusted root CA certificate distribution using [Certificate Trust Lists](https://msdn.microsoft.com/en-us/library/windows/desktop/aa376545(v=vs.85).aspx){:target= "_blank"} that are distributed to Microsoft operating systems. In April 2018, Microsoft will remove the **TLS trust bit** for COMMON from the globally distributed Certificate Trust List.    

After this change is applied, Windows users may receive errors when browsing to government intranet and internet websites that use SSL certificates issued from Federal PKI CAs. The impact for the government intranets and government-furnished equipment can be mitigated by using configuration management tools, including group policy objects managed by your agency. 

## Mitigation

What CA are we referencing?  What is the certificate hash? Consider ops teams - what is the name as it appears?


Answer the common question of "What should I do?" with an Action up front and highlighted. 

You should mitigate risks by creating or updating a group policy object used to manage trusted certificates on government managed devices.  In this group policy, place the <certificate in the enterprise trust store...etc>



### Frequently Asked Questions
ADD THESE: 
How can I determine if my intranet sites will be impacted?
How can I determine if my agency users and equipment will be impacted?
Is PIV network logon impacted? 
- Answer: No.

Why is the TLS trust bit being removed?
- Answer: [add all the items on the auditing, restricting issuance to fully qualified domain names in the .gov/.mil/.fed.us namespaces, use of short name aliases on intranet only sites and applications, need to be open and transparent for practices and comply with public trust requirements, etc], 


1. Do I need to remove the "baked-in" version of the COMMON Root CA certificate?
> _No, don't remove this certificate if it's already installed._

2. Do I need to add the COMMON Root CA certificate to the Trust Root Certification Authorities store via group policy object, or should I add it to the Enterprise Trust Store?
> _If the COMMON Root CA certificate is already installed in the Enterprise trust store, you don't need to reinstall or change its root store. 

3. Do I need to change any trust bit for the CA certificate managed by group policy object?
> _No, trust bits are not set by group policy objects. If your agency currently distributes COMMON through a group policy object and places this CA certificate into the Enterprise trust store, no change is needed.

4. What Windows versions are affected?
> _All Windows Operating System versions 

5. Will the group policy object distribution affect IPSec certificates if the server authentication bit is enabled and used with Microsoft Operating Systems?
> _No, group policy object distribution will not negatively impact IPSec certificates._

To prepare for these changes, please review the following Microsoft documents:

2. [Certificate Trust List Overview](https://msdn.microsoft.com/en-us/library/windows/desktop/aa376545(v=vs.85).aspx){:target= "_blank"}
2. [Configure Trusted Roots and Disallowed Certificates](https://technet.microsoft.com/en-us/library/dn265983.aspx){:target= "_blank"}


