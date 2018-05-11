---
layout: default
navtitle: Federal Common Policy CA Removal from Microsoft Trust Store Impact
title: Federal Common Policy CA Removal from Microsoft Trust Store Impact
pubDate: May 14, 2018
collection: announcements
permalink: announcements/mspkichanges/
description: Upcoming changes regarding Microsoft's Trusted Root Program could impact your agency.  The Federal PKI Policy Authority has elected to remove our U.S. Government Root CA certificate (Federal Common Policy CA [FCPCA/COMMON]) from the Microsoft Trust Store. <br><br> This change will cause Windows users to receive errors when encountering instances of an Federal PKI CA-issued certificate. You can mitigate the impact for the government intranets and government-furnished equipment by using configuration management tools for federal devices. This announcement will be updated with new information and procedures as soon as they are available.   
---
<!--Should we just say "Microsoft Trusted Root Program" every time and NOT "Microsoft Trust Store"?-->
Upcoming changes regarding Microsoft's Trusted Root Program could impact your agency. The Federal PKI Policy Authority<!--Correct?--> has requested that Microsoft **remove** our U.S. Government Root CA certificate (Federal Common Policy CA [FCPCA/COMMON]) from Microsoft's globally distributed Certificate Trust List (CTL) (aka "Microsoft Trust Store").

{% include alert-info.html content="The Federal PKI Policy Authority is working with Microsoft on the timeline for removing COMMON. As more information and additional procedures become available, this announcement will be updated. Watch for updated information from the FPKI ICAM listservs and ICAM Subcommittee as well." %} 

- [How Does this Work?](#how-does-this-work)
- [What Will Be Impacted?](#what-will-be-impacted)
- [What Should I Do?](#what-should-i-do)
- [How Can I Test?](#how-can-i-test)
- [Frequently Asked Questions](#frequently-asked-questions)
- [Additional Resources](#additional-resources)

## How Does This Work?
Today, Microsoft distributes hundreds of root CA certificates, including the Federal Common Policy CA (FCPCA/COMMON). Microsoft does this through a _Certificate Trust List (CTL)_ that tells Windows servers, workstations, and devices which roots are trusted (*authrootstl.cab*) and which are untrusted (*disallowedcertstl.cab*).<!--Correct way to say this?--> Removing COMMON from the Microsoft Trust Store will remove it from the Microsoft distributed CTL's authorized roots list.<!--Correct way to say this? Is there 1 CTL or 2? First sentence sounds like 1; this sentence sounds like 2.--> 

Microsoft distributes the CTL<!--1 list?--> to the following Windows Operating System (OS) versions and Windows Server editions<!--Unclear what the "added capability..." below is about. Explain? Should Windows 10 be paired with Windows Server 2012 R2 and 2016? -->:

| **Operating System** | **Server Version and Release**                 |
| :-------- | :-------------------------------     |
| Windows 10  | With an added capability of processing date-based constraints    |
| Windows 8.1   | Windows Server 2012 R2 |
| Windows 8   | Windows Server 2016 |
| Windows Vista   | Windows Server 2008 R2 |

The impact of this change on the Federal PKI community and how to mitigate the risks to government missions, intranets, and applications are described below.

## What Will Be Impacted?
When Microsoft removes COMMON, government and partner users of Windows will receive errors when encountering instances of Federal PKI CA-issued certificates. Errors will occur if all of the following are true: 

1. Windows Operating System (OS) (e.g., computer, mobile device): Vista and forward<!--includes Windows Servers?-->
2. Browsing with Microsoft IE/Edge to an intranet website using an TLS/SSL certificate issued by a Federal PKI CA that validates to COMMMON or the Federal Bridge Certification Authority (FBCA). 
> _(**Note:**&nbsp;&nbsp;Apple Safari and Mozilla Firefox are **not** impacted.)_ 
4. <!--Receiving?-->Opening a Microsoft Outlook email that was digitally signed using a certificate issued by a Federal PKI CA that validates to COMMON or the FBCA.
5. Opening a Microsoft Office document that was digitally signed with a certificate issued by a Federal PKI CA that validates to COMMON or the FBCA.
6. Using an application that relies on the Microsoft Trust Store (for example, smartcard login).<!--This is pretty significant! Our Network Admin says smartcard login is an application that relies on MS Trust Store. Should be 2nd item above?? Other application examples?-->

{% include alert-info.html content="If you're unsure whether your applications will be affected, email us at: **FPKI@gsa.gov**." %} 

This change will also impact cross-agency or partner users that rely on COMMON.  For example, a Department of State user browsing to a Department of Homeland Security website or a Department of Defense employee sending a digitally signed email to a business partner.

You can mitigate the impact for all government-furnished equipment.

{% include alert-info.html content="The following instructions are for agency network and domain system administrators." %} 

## What Should I Do?

To limit the impact to your agency, you'll need to install COMMON by using a group policy object (GPO) **OR** by installing it in the **Enterprise Trust** or **Trusted Root Certification Authorities** certificate store on all government-furnished, Microsoft OS-based computers and mobile devices. 

- [Install Using Group Policy Objects](#install-using-group-policy-objects)
- [Install Using Certutil](#install-using-certutil)

The certificate details for COMMON are:  

| **Federal Common Policy CA (FCPCA/COMMON)**  | **Certificate Details**                             |
| :--------  | :-------------------------------     |
| Federal Common Policy CA<br>(sometimes shown as _U.S. Government Common Policy_) | http://http.fpki.gov/fcpca/fcpca.crt |
| Distinguished Name | cn=Federal Common Policy CA, ou=FPKI, o=U.S. Government, c=US |
| SHA-1 Thumbprint | 90 5f 94 2f d9 f2 8f 67 9b 37 81 80 fd 4f 84 63 47 f6 45 c1 |

{% include alert-warning.html content="You should never install a root certificate without verifying it." %} 

To verify it, download the certificate or email **fpki@gsa.gov** for an out-of-band copy.  

Use a utility (_certutil_ on Windows or _openssl_ or _sha1sum_ on UNIX platforms) to verify that the SHA-1 thumbprint of the certificate file matches the SHA-1 value provided above.  

``` 
	certutil -hashfile fcpca.crt SHA1
```

```	
	openssl dgst -sha1 fcpca.crt
```

```	
	sha1sum fcpca.crt
```

### Install Using Group Policy Objects

You can add COMMON to the **Trusted Root Certificate Authorities** certificate store using group policy objects.  

Microsoft TechNet articles and other online resources offer the procedures for setting up group policy objects.  Additional information:

- You must have Enterprise Administrator privileges
- You can set up a group policy object from a Domain Controller (or other approaches you use in your agency)
- You may need to use multiple group policy objects to apply the configurations to all workstations in all groups and containers<!--Includes devices?-->
- Settings are under `Computer Configuration\Policies\Windows Settings\Security Settings\Public Key Policies\`
- Import the `fcpca.crt` into **Trusted Root Certification Authorities**

### Install Using Certutil

You can add COMMON to the **Enterprise Trust Store** or the **Trusted Root Certificate Authorities** certificate store by using _certutil_. Additional information:

- You must have Enterprise Administrator privileges
- You can run _certutil_ from a Domain Controller 
- To publish/add a certificate to the **Enterprise Trust Store**:

```
	certutil –dspublish –f fcpca.crt RootCA
```

- To view all certificates in the **Enterprise Trust Store**:

```
	certutil –viewstore –enterprise RootCA
```

- To propagate from the Domain Controller(s) to the enterprise:

```
	gpupdate /force
```

## How Can I Test?

{% include alert-info.html content="Test results for _Disallow_ did not allow local trust decisions to be overridden, so no further testing will be done." %} 
<!--Should above say "serverAuth Disallow"?-->
To review the previous testing procedures: [CTL Testing](https://github.com/GSA/fpki-guides/blob/ms-hot-topic-test-procedures/_announcements/04_ms_constraint_test_procedures.md){:target="_blank"}.

## Frequently Asked Questions

### 1. Why is COMMMON being removed? 
The _X.509 Certificate Policy for the U.S. Federal PKI Common Policy Framework_ doesn't comply with <!--We mean Microsoft's requirements, correct?-->Microsoft's requirements for globally trusted TLS/SSL certificates. <!--Took out removal of COMMON statement.  Redundant. This has been covered already.--> Microsoft's requirements include: 

**a. Requirement for Fully-Qualified Domain Names (FQDNs)**<br>
Microsoft plans to restrict TLS/SSL certificates to only those certificates using FQDNs ending in .gov, .mil, or fed.us.  Some Federal PKI agencies issue TLS/SSL certificates to intranet websites.  These certificates either:&nbsp;&nbsp;don't have FQDNs; contain intranet domains that don't end in .gov, .mil, or fed.us; or use short names (aliases). Under Microsoft's requirements, these agencies would need to reissue, re-install, and reconfigure all "non-compliant" certificates and applications.  The Federal PKI community has determined that this would have a negative impact on mission applications on the intranets.<!--Took out repeated "removal of COMMON" statement. This has been covered already.--> 

**b. Requirement for public audit**<br>
The Federal PKI follows a government auditing standard, and we have not restricted our issuance of TLS/SSL certificates to only the .gov and .mil domains. Under the requirements, all CAs in the Federal PKI that could issue TLS/SSL certificates are required to submit a non-government audit or be technically constrained.  The Federal PKI has **not** technically constrained our CAs.  

**c. Requirement to disclose Certificate Practice Statements and Incident Post-Mortem Reports**<br>
Public trust requires public disclosure and transparency.  All Federal PKI CAs would be required to publicly post their Certificate Practice Statements and their Audit Letters.  The Federal PKI community has attempted to disclose all Certificate Practice Statements for a number of years.  However, some federal agencies include sensitive information in these documents and cannot disclose the documents publicly.  

**d. Requirement to create new issuing Certification Authorities (CAs)**<br>
Any Federal PKI CA that issues TLS/SSL, code-signing, or email-signing certificates would have to establish a new CA for each type of certificate. This effort requires time, planning, and funding.   

### 2. How can I determine which of our intranet websites and applications will be impacted, including those used by cross-agency users?  
All Windows-based websites and applications configured with TLS/SSL<!--configured with?--> or that rely on a TLS/SSL certificate (email, Virtual Private Network, digital signature, etc.) issued by a Federal PKI CA that validates to COMMON will be impacted. For agencies and mission partners that are cross-certified with the FBCA, external users could also be impacted if COMMON is used instead of your root.<!--"Your" not best. Agency root?-->

You can run a report on all issued certificates or, if your agency has an agreement with a Federal PKI Shared Service Provider (SSP), you can request that the SSP run the report.

You can scan your intranet websites in coordination with your CISO teams.  There are existing tools to use, or you can use the DHS NCATS "**pshtt**" tool, which will also check for cipher suites and mis-configurations on the intranet websites:  

- DHS NCATS [**pshtt**](https://github.com/dhs-ncats/pshtt){:target="_blank"} 

**Note:** This tool will look for not just Federal PKI certificates.  Its outputs will include all certificates and information.

### 3. How can I determine whether my agency users and government-furnished equipment will be impacted?  
Check your Enterprise Trust Store configurations in your Microsoft domain and devices.  If COMMON is already installed in the Enterprise Trust Store, you don't need to reinstall or change its root store.  If it's not installed in the Enterprise Trust Store, you should distribute it in a group policy object to **Trusted Root Certificate Authorities** or via the enterprise domain to the **Enterprise Trust Store** for all your user devices. See [Install Using Group Policy Objects](#install-using-group-policy-objects).

View where and how a certificate is being installed using the certificates snap-in (certmgr.msc).  Under **View -> Options**, click the **Show _Physical certificate stores_** option.    

### 4. Is PIV network login impacted?  

**Yes**. See [Install Using Group Policy Objects](#install-using-group-policy-objects) to mitigate this risk.

### 5. Do I need to remove the "baked-in" version of COMMON?  
No, don't remove COMMON.  You may see two versions of the certificate in Trusted Root Certificate Authorities<!--"one from the Microsoft distribution still accurate?-->--one from the Microsoft distribution and one from your enterprise group policy or Enterprise Trust Store.  Each version is being distributed differently and will have a different properties set.  

### 6. Do I need to add COMMON to the Trusted Root Certification Authorities store, or should I add it to the Enterprise Trust Store?
Microsoft Operating Systems use different physical containers and logical views of these containers for trust stores.  In addition, different tools will have different **names** for the same physical or logical view.  For example:

| **Certificates snap-in (certmgr.msc)**  | **Enterprise PKI snap-in**  |  **certutil** | **Registry** | 
| :--------  | :------------------------------- | :--------- | :----------- |
| Trusted Root Certification Authorities | Certificate Authorities Container tab|  Root and RootCA | Root | 

It can be confusing--the easiest way is to follow one of the two methods in [What Should I Do?](#what-should-i-do)

To read detailed information on certificate stores, logical views, physical views, and registry locations: [Managing Certificates with Certificate Stores](https://msdn.microsoft.com/en-us/library/windows/desktop/aa386971(v=vs.85).aspx){:target="_blank"}

### 7. Do I need to change any trust property for COMMON managed by group policy objects?
No, trust properties are not set by group policy objects. If your agency currently distributes COMMON through a group policy object, no change is needed.

### 8. What Windows versions are affected?
All Windows versions from Vista forward are affected. 

### 9. Will the group policy object distribution affect IPSec certificates if the server authentication bit is enabled and used with Microsoft Operating Systems?
No, group policy object distribution will not negatively impact IPSec certificates.

### 10. Can an enterprise define a custom CTL?
Yes, an enterprise can create a trusted or untrusted CTL. [Creating, Signing, and Storing a CTL](https://msdn.microsoft.com/en-us/library/windows/desktop/aa379867(v=vs.85).aspx){:target="_blank"}.

## Additional Resources

1. [Certificate Trust List Overview](https://msdn.microsoft.com/en-us/library/windows/desktop/aa376545(v=vs.85).aspx){:target="_blank"}
1. [Managing Certificates with Certificate Stores](https://msdn.microsoft.com/en-us/library/windows/desktop/aa386971(v=vs.85).aspx){:target="_blank"}
1. [Configure Trusted Roots and Disallowed Certificates](https://technet.microsoft.com/en-us/library/dn265983.aspx){:target="_blank"}
