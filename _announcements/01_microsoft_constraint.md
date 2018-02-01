---
layout: default
navtitle: Microsoft Trust Store Impact
title: Microsoft Trust Store Policies Set To Impact Federal Government
pubDate: January 30, 2018
collection: announcements
permalink: announcements/mspkichanges/
description: Upcoming changes to Microsoft's Trusted Root Program could impact your agency. The U.S. Government has elected to remove the Transport Layer Security (TLS) trust bit for our U.S. Government Root <!--Add "CA"?-->from the Microsoft trust store.  The first impact is anticipated to occur in April 2018&nbsp;&mdash;&nbsp;Windows users will receive errors when browsing to government intranet and internet websites that use SSL certificates issued by Federal PKI CAs. You can mitigate the impact for the government intranets and government-furnished equipment (GFE) by using configuration management tools, including your agency's Group Policy Objects (GPOs).  
---

Upcoming changes to Microsoft's Trusted Root Program <!--MS calls this the "MS Trusted Root Program"-->could impact your agency. In April 2018, Microsoft will remove the **TLS trust bit** for the U.S. Government Root CA (aka Federal Common Policy CA [COMMON]) from Microsoft's globally distributed Certificate Trust List. 

> **Make INFO-ALERT Box?**  Microsoft distributes COMMON as a globally trusted root through the Microsoft Trust Store. Microsoft distributes trusted root CA certificates to Microsoft Operating Systems using [Certificate Trust Lists](https://msdn.microsoft.com/en-us/library/windows/desktop/aa376545(v=vs.85).aspx){:target= "_blank"}. 

After this change occurs, Windows users may receive errors when browsing to government intranet and internet websites that use SSL certificates issued by Federal PKI CAs. You can mitigate the impact for the government intranets and government-furnished equipment (GFE) by using configuration management tools, including your agency's Group Policy Objects (GPOs).

## Mitigation (What Should I Do?)

You can limit the risks to your agency by following one of the 3 procedures below.

**(LaChelle's comment) Answer the common question of "What should I do?" with an Action up front and highlighted.** 

**(LaChelle's comment) You should mitigate risks by creating or updating a group policy object used to manage trusted certificates on government managed devices.  In this group policy, place the <certificate in the enterprise trust store...etc>** 

**Per LaChelle's 1/29 question, we don't mention anything about risks to cross-govt users. (CB)**
**Under what circumstances would the domain administrator use each of the 3 different procedures? (CB)**
**Inconsistent terms: Enterprise Administrators (group), Enterprise Admin, domain administrator. (CB)**
**First procedures (just below) require what admin permissions level? (CB)**

### Need a title for these procedures
1. To limit the risks to your agency, you'll need to re-install COMMON in the NTAuth Trust Store. Certificate details:  

| **Federal Common Policy CA (COMMON)**  | **Certificate Details**                             |
| :--------  | :-------------------------------     |
| Federal Common Policy CA<br>(sometimes shown as _U.S. Government Common Policy_) | http://http.fpki.gov/fcpca/fcpca.crt |
| Distinguished Name | **cn=Federal Common Policy CA, ou=FPKI, o=U.S. Government, c=US** |
| sha1 Thumbprint | 90 5f 94 2f d9 f2 8f 67 9b 37 81 80 fd 4f 84 63 47 f6 45 c1 |
| Certificate Revocation List | http://http.fpki.gov/fcpca/fcpca.crl |
| p7c File - Issued By | http://http.fpki.gov/fcpca/caCertsIssuedByfcpca.p7c |
| p7c file - Issued To | http://http.fpki.gov/fcpca/caCertsIssuedTofcpca.p7c |

2. To verify that you're adding the right certificate, please check the certificate's SHA1 hash. Use one of Windows' common utilities to do this:

```
		certutil -hashfile <filename>.crt SHA1
		openssl dgst -sha1 <filename>.crt
		sha1sum <filename>.crt
```

3. Add COMMON to the NTAuth Trust Store by using the Group Policy Object (GPO) or the _certutil_ tool, as described below. 

### (Recommended) GPO Method
1. Log into a Domain Controller server as a member of the **Enterprise Administrators** group.<!--Plural "Administrators" is correct?-->
2. Open the GPMC: _gpmc.msc_
3. Within the appropriate GPO applied to the Domain Controllers, go to _Computer Configuration\Policies\Windows Settings\Security Settings\Public Key Policies\ _. <!--Unclear meaning of "appropriate GPO".-->
4. Right-click **Trusted Root Certification Authorities**, and then click **Import**.
5. On the **Welcome to the Certificate Import Wizard** page, click **Next**.
6. On the **File to Import** page, enter the path to the certificate files (e.g., _\\adfsresource\c$\fcpca.cer_), and then click **Next**.
7. On the **Certificate Store** page, click **Place all certificates in the following store**, and then click **Next**.
8. On the **Completing the Certificate Import Wizard** page, verify your information, and then click **Finish**.
9. At the command line, enter: _gpupdate /force_ to replicate the group policy, or wait for it to replicate based on your replication time and settings.
10. Open **MMC.exe &gt; File &gt; Add/Remove Snap-in &gt; Certificates &gt; Computer account &gt; Local computer**, and then click **OK**.
11. In the **Certificate (Local Computer) &gt; Trusted Root Certification Authorities &gt; Certificates** folder, you should see a certificate **Issued to** and **Issued by Federal Common Policy CA**. 
12. Right-click on the **Federal Common Policy CA certificate**, and then click **properties** to verify that COMMON is enabled for all purposes.

### Certutil Method
Add COMMON to the NTAuth Trust Store by using the _certuil_ tool. You must have **Enterprise Administrator** permissions for the domain to use _certutil_.

1. To publish/add a certificate to NTAuth, enter the command:

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
**LACHELLE COMMENTS: 
How can I determine if my intranet sites will be impacted?
How can I determine if my agency users and equipment will be impacted?
Is PIV network logon impacted? 
- Answer: No.
Why is the TLS trust bit being removed?
- Answer: [add all the items on the auditing, restricting issuance to fully qualified domain names in the .gov/.mil/.fed.us namespaces, use of short name aliases on intranet only sites and applications, need to be open and transparent for practices and comply with public trust requirements, etc]**

1. Why is the TLS trust bit being removed?
**LaChelle's Comment: [add all the items on the auditing, restricting issuance to fully qualified domain names in the .gov/.mil/.fed.us namespaces, use of short name aliases on intranet only sites and applications, need to be open and transparent for practices and comply with public trust requirements, etc]** 
>_Microsoft's new Trust Store requirements would cause operational and cost impacts to the U.S. Government, including:_  
* **_Requirement for Fully-Qualified Domain Names (FQDNs):** The U.S. Government is removing the COMMON TLS trust bit because of Microsoft's Trust Store requirements. Microsoft planned to restrict COMMON TLS certificate validation to only FQDNs: *.us, *.mil, or *.fed.us. Some federal agency PKIs that are certified by COMMON issue TLS certificates to intranet websites without an FQDN. Under Microsoft's new requirements, these agencies would need to reissue all "non-compliant" certificates so their users would not receive errors in Internet Explorer (IE)/Edge and Chrome._
* **_New Public Audit Requirement:** The Federal PKI and other federal agency PKIs follow a government audit standard. Under Microsoft's new requirements, all CAs certified under COMMON that issue TLS certificates would be required to submit a WebTrust<!--Not always WebTrust, acc. to MS info.--> audit and still comply with audit requirements, per federal PKI policy._
* **_Requirement To Disclose Sensitive Information** All CAs certified under COMMON would be required to publicly post a security incident post-mortem and Certificate Practice Statements that may contain sensitive government information._<!--Is this Controlled Unclassified Information (CUI)?-->
* **_Requirement To Create New Issuing Certification Authorities (CAs)** Any Federal PKI CA that issues TLS, Code Signing, or Email-enabled certificates would have to establish a new CA for each type of certificate. This could potentially double the size of the Federal PKI and increase the cost of maintaining operations and compliance._
2. How can I determine what intranet sites and applications will be impacted, including any used by cross-government users?
> _If your intranet site is configured with COMMON, it is impacted. To determine whether your intranet sites are configured with COMMON, here are 2 recommended tools to use:
* [**DHS NCATS GitHub**](https://github.com/dhs-ncats){:target= "_blank"} and [**pshtt**](https://github.com/dhs-ncats/pshtt){:target= "_blank"}. (**Note:**&nbsp;&nbsp;You'll have to feed the tools the list of sub-domains. This data is usually harvested from your intranet DNS [blue coats, etc.] zone files. **pshtt** is also used to generate information for pulse.cio.gov dashboard.) 
* [**Test SSL**](https://github.com/drwetter/testssl.sh)

3. How can I determine if my agency users and equipment will be impacted?
>_Internet: This is difficult to determine because it is dependent on other agencies and Federal PKI non-federal issuers (NFI) compliance, but is limited to those agencies and business partners who use TLS certificates that validate to COMMON.
> Intranet:  See Question #2 answer._
4. Is PIV network logon impacted? _No_.
5. Do I need to remove the "baked-in" version of COMMON?
> _No, don't remove this certificate if it's already installed._
6. Do I need to add COMMON to the Trust Root Certification Authorities store via GPO, or should I add it to the Enterprise trust store?
> _If COMMON is already installed in the Enterprise trust store, you don't need to reinstall or change its root store. Propagate the COMMON Group Policy using either the GPO or certutil methods above._
7. Do I need to change any trust bit for the CA certificate managed by group policy object?
> _No, trust bits are not set by group policy objects. If your agency currently distributes COMMON through a group policy object and places this CA certificate into the Enterprise trust store, no change is needed.
8. What Windows versions are affected?
> _All Windows Operating System versions 
9. Will the group policy object distribution affect IPSec certificates if the server authentication bit is enabled and used with Microsoft Operating Systems?
> _No, group policy object distribution will not negatively impact IPSec certificates._

To prepare for these changes, please review the following Microsoft documents:

2. [Certificate Trust List Overview](https://msdn.microsoft.com/en-us/library/windows/desktop/aa376545(v=vs.85).aspx){:target= "_blank"}
2. [Configure Trusted Roots and Disallowed Certificates](https://technet.microsoft.com/en-us/library/dn265983.aspx){:target= "_blank"}


