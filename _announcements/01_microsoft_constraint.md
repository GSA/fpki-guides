---
layout: default
navtitle: Microsoft Trust Store Impact
title: Microsoft Trust Store Policies Set To Impact Federal Government
pubDate: January 30, 2018
collection: announcements
permalink: announcements/mspkichanges/
description: Upcoming changes to Microsoft's Trust Store program could impact your agency. The U.S. Government has elected to remove the Transport Layer Security (TLS) trust bit for our U.S. Government Root CA<!--Is "CA" used in this context or just "Root"?--> from the Microsoft trust store.  The first impact is anticipated to occur in April 2018&nbsp;&mdash;&nbsp;Windows users will receive errors when browsing to government intranet and internet websites that use SSL certificates issued by Federal PKI CAs. You can mitigate the impact for the government intranets and government-furnished equipment (GFE) by using configuration management tools, including your agency's Group Policy Objects (GPOs).  
---

Upcoming changes to Microsoft's Trust Store program could impact your agency. Microsoft currently distributes the U.S. Government Root CA (aka _Federal Common Policy CA [COMMON]_) as a globally trusted root through the Microsoft Trust Store.  Microsoft distributes trusted root CA certificates to Microsoft Operating Systems using [Certificate Trust Lists](https://msdn.microsoft.com/en-us/library/windows/desktop/aa376545(v=vs.85).aspx){:target= "_blank"}. In April 2018, Microsoft will remove the **TLS trust bit** for COMMON from the globally distributed Certificate Trust List.   

After this change occurs, Windows users may receive errors when browsing to government intranet and internet websites that use SSL certificates issued by Federal PKI CAs. You can mitigate the impact for the government intranets and government-furnished equipment (GFE) by using configuration management tools, including your agency's Group Policy Objects (GPOs).

## Mitigation

**What CA are we referencing?  What is the certificate hash? Consider ops teams - what is the name as it appears?

**Answer the common question of "What should I do?" with an Action up front and highlighted.** 

**You should mitigate risks by creating or updating a group policy object used to manage trusted certificates on government managed devices.  In this group policy, place the <certificate in the enterprise trust store...etc>**

1. To mitigate any impact to your agency, your domain administrator must publish the COMMON Root CA certificate to NTAuth Trust Store.  

| **Federal Common Policy CA**  | **Details**                             |
| :--------  | :-------------------------------     |
| **Federal Common Policy CA**<br>(sometimes given as "U.S. Government Common Policy") | http://http.fpki.gov/fcpca/fcpca.crt |
| Distinguished Name | **cn=Federal Common Policy CA, ou=FPKI, o=U.S. Government, c=US** |
| sha1 Thumbprint | 90 5f 94 2f d9 f2 8f 67 9b 37 81 80 fd 4f 84 63 47 f6 45 c1 |
| Certificate Revocation List | http://http.fpki.gov/fcpca/fcpca.crl |
| p7c File - Issued By | http://http.fpki.gov/fcpca/caCertsIssuedByfcpca.p7c |
| p7c file - Issued To | http://http.fpki.gov/fcpca/caCertsIssuedTofcpca.p7c |

2. Verify that you are publishing the correct certificate using the SHA1 thumbprint. You can verify the hash on files, including certificate files, using common utilities for the Operating System. For example:

```
		certutil -hashfile <filename>.crt SHA1
		openssl dgst -sha1 <filename>.crt
		sha1sum <filename>.crt
```

3. Publish the COMMON Root CA certificate by using either the Group Policy Object (GPO) or the _certutil_ tool.

### (Recommended) GPO Method
1.	Log into a Domain Controller server as a member of the **Enterprise Administrators** group.
2.	Open the GPMC: _gpmc.msc_
3.	Within the appropriate GPO applied to the Domain Controllers, go to _Computer Configuration\Policies\Windows Settings\Security Settings\Public Key Policies\ _.
4.	Right-click **Trusted Root Certification Authorities**, and then click **Import**.
5.	On the **Welcome to the Certificate Import Wizard** page, click **Next**.
6.	On the **File to Import** page, enter the path to the certificate files (e.g., _\\adfsresource\c$\fcpca.cer_), and then click **Next**.
7.	On the **Certificate Store** page, click **Place all certificates in the following store**, and then click **Next**.
8.	On the **Completing the Certificate Import Wizard** page, verify your information, and then click **Finish**.
9.	Use the command: _gpupdate /force at the command line_ to replicate the group policy, or wait for it to replicate based on your replication time and settings.
10.	Open **MMC.exe &gt; File &gt; Add/Remove Snap-in &gt; Certificates &gt; Computer account &gt; Local computer**, and then click **OK**.
In the **Certificate (Local Computer) &gt; Trusted Root Certification Authorities &gt; Certificates** folder, you should see a certificate **Issued to** and **Issued by Federal Common Policy CA**. 
11. Right-click on the **Federal Common Policy CA certificate**, and then click **properties** to verify that COMMON is enabled for all purposes.

### Certutil Method

You must have **Enterprise Admin** permissions for the domain to use _certutil_.

1. To publish/add a certificate to NTAuth, enter command:

```
  	certutil –dspublish –f <certificate_to_publish.cer or fcpca.cer> NTAuthCA
```

2. To view all certificates in NTAuth:

```
	certutil –viewstore –enterprise NTAuth
```

4. To propagate from the domain controller(s) to the enterprise, enter:

```
  	gpupdate /force
```

### Frequently Asked Questions
**LACHELLE ADDED THESE: 
How can I determine if my intranet sites will be impacted?
How can I determine if my agency users and equipment will be impacted?
Is PIV network logon impacted? 
- Answer: No.
Why is the TLS trust bit being removed?
- Answer: [add all the items on the auditing, restricting issuance to fully qualified domain names in the .gov/.mil/.fed.us namespaces, use of short name aliases on intranet only sites and applications, need to be open and transparent for practices and comply with public trust requirements, etc]**

1. Why is the TLS trust bit being removed?
> **_LaChelle:** [add all the items on the auditing, restricting issuance to fully qualified domain names in the .gov/.mil/.fed.us namespaces, use of short name aliases on intranet only sites and applications, need to be open and transparent for practices and comply with public trust requirements, etc]_ 
**Ken** 
* **Require Fully-Qualified Domain Names (FQDNs):** _The TLS trust bit is removed due to new Microsoft Trust Store requirements. As a government CA, Microsoft intended to restrict COMMON TLS certificate validation to only FQDNs: *.us, *.mil, or *.fed.us. Some federal agency PKIs, certified under COMMON, issue TLS certificates to intranet websites without an FQDN. Under the new Microsoft requirements, these agencies need to reissue all non-compliant certificates so their users do not receive a warning in either Internet Explorer (IE)/Edge or Chrome._
* **New Public Audit Requirement:** _COMMON and many federal agency PKIs follow a government audit standard. Under Microsoft's new requirements, all certified CAs under COMMON that issue TLS certificates are required to submit a WebTrust<!--Not always WebTrust--> audit while still maintaining their government audit per federal PKI policy._
* **Public Document Disclosure** _All CAs certified under COMMON are required to publicly post a security incident post-mortem and Certificate Practice Statements that may contain sensitive government information._
* **Separate Issuing Certification Authority (CA)** _Any Federal PKI CA issuing TLS, Code Signing, or Email enabled certificates would have to establish a new CA for each type of certificate. This has the potential to double the size of the Federal PKI and increase operational cost of maintaining operations and compliance._
2. How can I determine if my intranet sites will be impacted?
> _If your intranet site is configured with COMMON, it is impacted. To determine if your intranet sites are configured with COMMON the recommended method is **input from LaChelle**._
3. How can I determine if my agency users and equipment will be impacted?
>_Internet: This is difficult to determine because it is dependent on other agencies and Federal PKI non-federal issuers (NFI) compliance, but is limited to those agencies and business partners who use TLS certificates that validate to COMMON.
> Intranet:  See Question #2 answer._
4. Is PIV network logon impacted? _No_.
5. Do I need to remove the "baked-in" version of the COMMON Root CA certificate?
> _No, don't remove this certificate if it's already installed._
6. Do I need to add the COMMON Root CA certificate to the Trust Root Certification Authorities store via GPO, or should I add it to the Enterprise trust store?
> _If the COMMON Root CA certificate is already installed in the Enterprise trust store, you don't need to reinstall or change its root store. Propagate the COMMON Group Policy using either the GPO or certutil methods above._
7. Do I need to change any trust bit for the CA certificate managed by group policy object?
> _No, trust bits are not set by group policy objects. If your agency currently distributes COMMON through a group policy object and places this CA certificate into the Enterprise trust store, no change is needed.
8. What Windows versions are affected?
> _All Windows Operating System versions 
9. Will the group policy object distribution affect IPSec certificates if the server authentication bit is enabled and used with Microsoft Operating Systems?
> _No, group policy object distribution will not negatively impact IPSec certificates._

To prepare for these changes, please review the following Microsoft documents:

2. [Certificate Trust List Overview](https://msdn.microsoft.com/en-us/library/windows/desktop/aa376545(v=vs.85).aspx){:target= "_blank"}
2. [Configure Trusted Roots and Disallowed Certificates](https://technet.microsoft.com/en-us/library/dn265983.aspx){:target= "_blank"}


