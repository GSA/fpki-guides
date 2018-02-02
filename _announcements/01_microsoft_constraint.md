---
layout: default
navtitle: Microsoft Trust Store Impact
title: Microsoft Trust Store Changes Set To Impact Federal Government
pubDate: February 2, 2018
collection: announcements
permalink: announcements/mspkichanges/
description: Upcoming changes to Microsoft's Trusted Root Program could impact your agency. The U.S. Government has elected to remove the Transport Layer Security (TLS) trust bit for our U.S. Government Root CA (i.e., COMMON) from the Microsoft trust store.  The first impact is anticipated to occur in April 2018&nbsp;&mdash;&nbsp;Windows users will receive errors when browsing to government intranet and internet websites that use TLS/SSL certificates issued by Federal PKI CAs. You can mitigate the impact for the government intranets and Government-Furnished Equipment (GFE) by using configuration management tools, including your agency's Group Policy Objects (GPOs).  
---

Upcoming changes to Microsoft's Trusted Root Program <!--Per Ken, MS calls this the "MS Trusted Root Program"-->could impact your agency. In April 2018, Microsoft will remove the **TLS trust bit** for our U.S. Government Root CA (i.e., Federal Common Policy CA [COMMON]) from Microsoft's globally distributed Certificate Trust List. 

{% info-alert.html content="Microsoft distributes COMMON as a globally trusted root through the Microsoft Trust Store. Microsoft distributes trusted root CA certificates to related Operating Systems using [Certificate Trust Lists](https://msdn.microsoft.com/en-us/library/windows/desktop/aa376545(v=vs.85).aspx){:target= "_blank"}." %} 

Once this occurs, Federal FPKI users of Windows, Windows Mobile, Microsoft IE/Edge, and Google Chrome will receive errors when browsing to government intranet and internet websites that use TLS/SSL certificates that validate to COMMON. This will also impact cross-agency users of these websites (e.g., a DoD user visiting a DHS website). 

You can mitigate the impact for the government intranet and internet websites, as well as for GFE, by using configuration management tools that include your agency's Group Policy Objects (GPOs) or _certutil_, as described below.

## What Should I Do?

1. To limit the risks to your agency, you'll need to re-install COMMON Root in the NTAuth Trust Store by using the GPO or the _certutil_ tool, as described below. 

The certificate details for COMMON are:  

| **Federal Common Policy CA (COMMON)**  | **Certificate Details**                             |
| :--------  | :-------------------------------     |
| Federal Common Policy CA<br>(sometimes shown as _U.S. Government Common Policy_) | http://http.fpki.gov/fcpca/fcpca.crt |
| Distinguished Name | cn=Federal Common Policy CA, ou=FPKI, o=U.S. Government, c=US |
| **sha1 Thumbprint** | **90 5f 94 2f d9 f2 8f 67 9b 37 81 80 fd 4f 84 63 47 f6 45 c1** |
| Certificate Revocation List | http://http.fpki.gov/fcpca/fcpca.crl |
| p7c File - Issued By | http://http.fpki.gov/fcpca/caCertsIssuedByfcpca.p7c |
| p7c file - Issued To | http://http.fpki.gov/fcpca/caCertsIssuedTofcpca.p7c |

2. When using either method described below to re-install COMMON, verify that you're installing the right certificate. To do that, use one of Windows' common utilities (_certutil_, _openssl dgst_, or _sha1sum_) to compare the SHA1 Thumbprint above with the SHA1 Thumbprint of the certificate you're installing. 

```
		certutil -hashfile <filename>.crt SHA1<br>
		
		openssl dgst -sha1 <filename>.crt<br>
		
		sha1sum <filename>.crt<br>
```

### GPO Method (Recommended)
1. Log into a Domain Controller server as a member of the **Enterprise Administrators** group.<!--Plural "Administrators" is correct?-->
2. Open the GPMC: _gpmc.msc_
3. Within the appropriate GPO applied to the Domain Controllers, go to _Computer Configuration\Policies\Windows Settings\Security Settings\Public Key Policies\ _. <!--Unclear meaning of "appropriate GPO".-->
4. Right-click _Trusted Root Certification Authorities_, and then click _Import_.
5. On the _Welcome to the Certificate Import Wizard_ page, click _Next_.
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
1. What is the TLS trust bit being removed? _Because Microsoft's changes will cause operational and cost impacts to the U.S. Government, including:_  
> **Requirement for Fully-Qualified Domain Names (FQDNs):** The U.S. Government is removing the COMMON TLS trust bit because of Microsoft's Trust Store requirements. Microsoft planned to restrict COMMON TLS certificate validation to only FQDNs: *.us, *.mil, or .fed.us. Some federal agency PKIs that are certified by COMMON issue TLS certificates to intranet websites without an FQDN. Under Microsoft's new requirements, these agencies would need to reissue all "non-compliant" certificates so their users would not receive errors in Internet Explorer (IE)/Edge and Chrome.
> **New Public Audit Requirement:** The Federal PKI and other federal agency PKIs follow a government auditing standard. Under Microsoft's new requirements, all CAs certified under COMMON that issue TLS certificates would be required to submit a WebTrust<!--Not always WebTrust, acc. to MS info.--> audit and still comply with federal audit requirements.
> **Requirement To Disclose Operational Practices and Incident Post-Mortem Reports:** All CAs certified under COMMON would be required to publicly post a security incident post-mortem and Certificate Practice Statements that may contain sensitive government information.
> **Requirement To Create New Issuing Certification Authorities (CAs)** Any Federal PKI CA that issues TLS, Code Signing, or Email-enabled certificates would have to establish a new CA for each type of certificate. This could potentially double the size of the Federal PKI and increase the cost of maintaining operations and compliance.
2. How can I determine which of our intranet sites and applications will be impacted, including those used by cross-government users?&nbsp;&nbsp;_All intranet sites configured with COMMON will be impacted. To determine which of your sites are configured with COMMON, you can use tools/methods:
> [**DHS NCATS GitHub**](https://github.com/dhs-ncats){:target= "_blank"} and [**pshtt**](https://github.com/dhs-ncats/pshtt){:target= "_blank"}.<br>**Note:**&nbsp;&nbsp;You'll have to feed the tools the list of sub-domains. This data is usually harvested from your intranet DNS [blue coats, etc.] zone files. **pshtt** is also used to generate information for pulse.cio.gov dashboard.<br> 
> [**Test SSL**](https://github.com/drwetter/testssl.sh)
> If you have an agreement with one of the FPKI Shared Service Providers (SSPs) and that agreement includes access to the SSP's registration portals to request TLS/SSL certificates, run a report on all issued certificates or ask the SSP to deliver this. 

3. How can I determine whether my agency users and GFE will be impacted?<br>**_Internet:** The impacted agencies and business partners will be those who use TLS/SSL certificates that validate to COMMON; however, this depends upon other agencies and FPKI Non-Federal Issuers' (NFI) compliance.<!--Kind of confusing. Does this answer the question?--><br>**Intranet:** See the method and tools for Question 2._
4. Is PIV network logon impacted?&nbsp;&nbsp;_No._
5. Do I need to remove the "baked-in" version of COMMON?&nbsp&nbsp;_No, don't remove this certificate if it's already installed._
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


