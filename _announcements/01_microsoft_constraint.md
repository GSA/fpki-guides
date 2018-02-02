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

Once this occurs, government and partner users on Windows devices may start receiving errors when **browsing** to internet or intranet websites.  These errors would appear if all of the following are true: 

1. Windows Operating System and Windows Mobile devices
2. Microsoft Internet Explorer or Edge or Google Chrome browser
3. The website uses TLS/SSL certificates that were issued from Federal PKI CAs
4. These certificates validate to the government root CA (COMMON)

This will also impact cross-agency users of these intranet websites.  For example, a State user browsing to a DHS hosted intranet website. 

You can mitigate the impact for the government intranet websites for all government furnished equipment by using configuration management tools that include your agency's Group Policy Objects (GPOs) or _certutil_, as described below.

{% info-alert.html content="Your network smartcard logon using PIV and CAC is not impacted." %} 

## What Should I Do?

1. To limit the risks to your agency, you'll need to install COMMON Root CA certificate in the **Enterprise Trust Store** on all workstations and mobile devices using a group policy object.  It's preferred to use a group policy object to ensure you have good configuration management options for the federal enterprise.  

The certificate details for COMMON are:  

| **Federal Common Policy CA (COMMON)**  | **Certificate Details**                             |
| :--------  | :-------------------------------     |
| Federal Common Policy CA<br>(sometimes shown as _U.S. Government Common Policy_) | http://http.fpki.gov/fcpca/fcpca.crt |
| Distinguished Name | cn=Federal Common Policy CA, ou=FPKI, o=U.S. Government, c=US |
| **SHA-1 Thumbprint** | **90 5f 94 2f d9 f2 8f 67 9b 37 81 80 fd 4f 84 63 47 f6 45 c1** |


2. When using any method described to install a root CA certificate, verify that you have the right certificate. To verify, download the certificate from above or email fpki@gsa.gov for an out of band copy.  To verify, use a common utility (_certutil_ on Windows, _openssl_ or _sha1sum_ on Unix platforms) to verify the SHA-1 hash of the certificate file and the value provided above.  

```
		certutil -hashfile <filename>.crt SHA1<br>
		
		openssl dgst -sha1 <filename>.crt<br>
		
		sha1sum <filename>.crt<br>
```

### Group Policy Object (Recommended)
1. Log into a Domain Controller server as a member of the **Enterprise Administrators** group.
2. Open the GPMC: _gpmc.msc_
3. Within the appropriate GPO applied to the Domain, go to _Computer Configuration\Policies\Windows Settings\Security Settings\Public Key Policies\ _. 
4. Right-click _Trusted Root Certification Authorities_, and then click _Import_.
5. On the _Welcome to the Certificate Import Wizard_ page, click _Next_.
6. On the **File to Import** page, enter the path to the certificate files (e.g., _\\adfsresource\c$\fcpca.cer_), and then click **Next**.
7. On the **Certificate Store** page, click **Place all certificates in the following store**, and then click **Next**.
8. On the **Completing the Certificate Import Wizard** page, verify your information, and then click **Finish**.
9. At the command line, enter: _gpupdate /force_ to replicate the group policy, or wait for it to replicate based on your replication time and settings.
10. Open **MMC.exe &gt; File &gt; Add/Remove Snap-in &gt; Certificates &gt; Computer account &gt; Local computer**
11. In the **Certificate (Local Computer) &gt; Enterprise Certification Authorities &gt; Certificates** folder, you should see a certificate **Issued to** and **Issued by Federal Common Policy CA**. 
12. Right-click on the **Federal Common Policy CA certificate**, and then click **properties** to verify that COMMON is enabled for all purposes.

### Certutil Method
Add COMMON to the Enterprise Trust Store by using the _certuil_ tool. You must have **Enterprise Administrator** permissions for the domain to use _certutil_.

1. To publish/add a certificate to Enterprise Trust, enter the command:

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

## Frequently Asked Questions

#### 1. Why is the TLS trust bit being removed? 
The Federal PKI doesn't comply with the requirements for globally trusted TLS certificates.  These requirements include: 

a) Requirement for Fully-Qualified Domain Names (FQDNs)
Microsoft planned to restrict COMMON TLS certificate validation to only FQDNs ending with a .us, .mil or fed.us.  Some federal agency PKIs that are issue TLS certificates to intranet websites without an FQDN or with short names (aliases). Under the requirements, these agencies would need to reissue and resinstall and reconfigure all "non-compliant" certificates and applications.  The government community has determined this would have an impact on mission applications on the intranets, and will 

b) Requirement for Public Audit
The Federal PKI follows a government auditing standard and we have not restricted our issuance of TLS certificates to only our government domains. Under Microsoft's requirements, all CAs in Federal PKI that could issue TLS certificates would be required to submit a non-government audit or be technically constrained.  This is a challenge because we have **not** constrained our CAs.  

c) Requirement To Disclose Certificate Practices Statements and Incident Post-Mortem Reports
All Federal PKI CAs would be required to publicly post their Certificate Practices Statements and their Audit Letters.  The US Government has attempted to disclose all Certificate Practices Statements for a number of years.  Some agencies include sensitive information in these documents and cannot disclose the documents publicly.  Public trust requires public disclosure and transparency. 

d) Requirement To Create New Issuing Certification Authorities (CAs)
Any Federal PKI CA that issues TLS, code signing, or email-signing certificates (PIV) would have to establish a new CA for each type of certificate. This takes time, planning and funding. 


#### 2. How can I determine which of our intranet sites and applications will be impacted, including those used by cross-government users?  
All intranet sites configured with a TLS certificate from a Federal PKI CA that validates to COMMON will be impacted.   

To determine which of your intranet sites are impacted, you can use some automated tools or ask your Federal PKI shared service provider for a report. 

If you have an agreement with one of the Federal PKI Shared Service Providers (SSPs) and that agreement includes access to the SSP's registration portals to request TLS/SSL certificates, run a report on all issued certificates or ask the SSP to deliver this. 

You can also scan your intranet websites in coordination with your CISO teams and approval.  You could use existing tools or the DHS NCATS "pshtt" tool, which will also check for ciphers suites and misconfigurations on the sites.  

[**pshtt**](https://github.com/dhs-ncats/pshtt){:target= "_blank"}
This tool will not look just for FPKI certificates.  Outputs include all certificates and information. 

#### 3. How can I determine whether my agency users and GFE will be impacted?  
Check your Enterprise Trust Store configurations in your Microsoft domain and devices.  If COMMON is already installed in the Enterprise Trust Store, you don't need to reinstall or change its root store.  If COMMON is not installed in Enterprise Trust Store, you should ensure it is pushed in a group policy object for all your user devices.  

#### 4. Is PIV network logon impacted?  
No. 

#### 5. Do I need to remove the "baked-in" version of COMMON?  
No, don't remove this certificate if it's already installed.

#### 6. Do I need to add COMMON to the Trusted Root Certification Authorities store, or should I add it to the Enterprise trust store?
If COMMON is already installed in the Enterprise trust store, you don't need to reinstall or change its root store. Propagate the COMMON CA certificate using either the GPO or certutil methods above.

#### 7. Do I need to change any trust bit for the CA certificate managed by group policy object?
No, trust bits are not set by group policy objects. If your agency currently distributes COMMON through a group policy object and places this CA certificate into the Enterprise trust store, no change is needed.

#### 8. What Windows versions are affected?
All Windows Operating System versions. 

#### 9. Will the group policy object distribution affect IPSec certificates if the server authentication bit is enabled and used with Microsoft Operating Systems?
No, group policy object distribution will not negatively impact IPSec certificates.


#### Additional Resources

Additional resources on Microsoft Trust Lists and configuring trusted CAs: 

2. [Certificate Trust List Overview](https://msdn.microsoft.com/en-us/library/windows/desktop/aa376545(v=vs.85).aspx){:target= "_blank"}
2. [Configure Trusted Roots and Disallowed Certificates](https://technet.microsoft.com/en-us/library/dn265983.aspx){:target= "_blank"}
