---
layout: default
navtitle: Microsoft Trust Store Impact
title: Microsoft Trusted Root Program Changes Set To Impact Federal Government
pubDate: April 26, 2018
collection: announcements
permalink: announcements/mspkichanges/
description: Upcoming changes to Microsoft's Trusted Root Program could impact your agency. The U.S. Government has elected to remove the Transport Layer Security (TLS) trust property for our U.S. Government Root CA (Federal Common Policy CA) from Microsoft's Trust Store.  The first impact is anticipated to occur in **April 2018**.<br><br>Windows users will receive errors when browsing to government intranet websites that use SSL/TLS certificates issued by Federal PKI CAs. You can mitigate the impact for the government intranets and government-furnished equipment by using configuration management tools for our federal devices.   
---

{% include alert-info.html content="Your network smartcard logon using PIV and CAC is not impacted." %} 

Upcoming changes to Microsoft's Trusted Root Program could impact your agency. In April 2018, Microsoft will **remove** the trust for **SSL/TLS** from our U.S. Government Root CA (Federal Common Policy CA [FCPCA/COMMON]) from Microsoft's globally distributed Certificate Trust List. 

- [What Will Be Impacted?](#what-will-be-impacted)
- [How Can I Test?](#how-can-i-test)
- [How Can I Limit the Impact to My Agency?](#how-can-i-limit-the-impact-to-my-agency)
- [Frequently Asked Questions](#frequently-asked-questions)
- [Additional Resources](#additional-resources)


## What Will Be Impacted?
Once this occurs, government and partner users of Windows devices may receive errors when **browsing** to internet or intranet websites.  These errors will appear if all of the following are true: 

1. Windows Operating System and Windows Mobile devices
2. Microsoft Internet Explorer or Edge or Google Chrome
3. The website uses SSL/TLS certificates that were issued by Federal PKI CAs
4. These certificates validate to the Federal Common Policy CA (COMMON)<!--There are so many instances of Federal Common Policy CA that writing it as "COMMON"--the name everyone uses--or FCPCA---would be simpler--LaChelle?-->

This will also impact cross-agency users of the intranet websites.  For example, a Department of State user browsing to a Department of Homeland Security **intranet** website or application will receive an error if all four items are true. 

You can mitigate the impact for all government-furnished equipment.

{% include alert-info.html content="The following instructions are for agency network and domain system administrators." %} 

## How Can I Test?

If your agency will be impacted, you can optionally test Federal Common Policy CA (COMMON) validation behavior with Microsoft Certificate Trust List (CTL) constraints by using the [test procedures](#how-can-i-test) below. These tests will confirm whether an enterprise Group Policy Object (GPO) can override a Microsoft CTL setting for 3 possible situations:<!--better word for "situations"?-->

1. COMMON Server Auth Disallow,<!--Is Server Auth = one word?  serverAuth? Can we remove "COMMON" here to reduce number of uses?-->
2. COMMON Server Auth notBefore, **OR**
3. No CTL entry<!--No COMMON?-->

If your agency plans to participate in testing, see the [phased testing schedule](#what-is-the-testing-schedule) below. If your agency would like to participate in testing, please email us at fpki@gsa.gov.

### Testing Schedule

#### Phase 1&nbsp;&mdash;&nbsp;COMMON Server Auth Disallow Testing
**Date?**&mdash;_Disallow_ initial testing completed.<!--Initial AND final testing done for all 3 tests? Other 2 don't say "initial"-->
**April 26**&mdash;Report to Microsoft on initial _Disallow_ testing.<!--Who is reporting? Testing has already been done?-->
**April 27-May 2**&mdash;Remediate _Disallow_ testing based on Microsoft's feedback. Microsoft prepares for Server Auth _notBefore_ testing with CTL. Determine alternative options to discuss with Microsoft.
**May 2**&mdash;Status call/email with testers on _Disallow_ test results and/or questions.
**May 3**&mdash;Report to Microsoft on final _Disallow_ testing.

#### Phase 2&nbsp;&mdash;&nbsp;COMMON Server notBefore Testing
**May 3-16**&mdash;Conduct _notBefore_ testing. FPKI prepares for _no CTL entry_ testing.
**May 9**&mdash;Status call/email with testers on _notBefore_ test results and/or questions.
**May 17**&mdash;Report to Microsoft on final _notBefore_ testing.

#### Phase 3&nbsp;&mdash;&nbsp;No CTL Entry Testing
**May 18-30**&mdash;Conduct _notBefore_ testing. FPKI prepares for _no CTL entry_ testing.
**May 30**&mdash;Status call/email with testers on _notBefore_ test results and/or questions.
**May 31**&mdash;Report to Microsoft on final _no CTL entry_ testing. 
**May 31**&mdash;Determine next steps.

### Test Procedures

The test environment should consist of Windows 10 clients. Only the Windows 10 code base can process the advanced _Disallow_ or _notBefore_ CTL features. Report your testing results to fpki@gsa.gov or post as a "CTL Testing - Agency XXX Results" Issue in GSA's fpki-guides GitHub repository [FPKI Guides](https://github.com/GSA/fpki-guides/issues).

1. On each Windows 10 test endpoint, modify the registry key to work with the new CTL:
``` 
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SystemCertificates\AuthRoot\AutoUpdate]
"RootDirUrl"=http://ctldl.windowsupdate.com/msdownload/update/v3/static/trustedr/en/USPKI
``` 

2. Delete the following keys:
``` 
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SystemCertificates\AuthRoot\AutoUpdate\EncodedCtl]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SystemCertificates\AuthRoot\AutoUpdate\LastSyncTime]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SystemCertificates\AuthRoot\Certificates] (deleting all cached certificates)
``` 

3. Clear browser settings
4. Restart endpoint
5. Verify CTL settings on endpoint

<!--Should "Disable" on next line below be "Disallow"?-->

``` 
The notBefore or Disable status DOES NOT show up in the UI.
i.      [View Certs on your machine] Certutil -store -v -gmt root\.authroot > c:\data\certdetail.txt
ii.     [View all Third Party Roots]
Create roots.sst file by executing the following command: Certutil -generatesstfromwu -v roots.sst
Create text file of the certificate details by running the following command: Certutil -dump -gmt -v roots.sst > c:\data\certdetail.txt
From c:\data\certdetail.txt you can search for your root by your SHA1 thumbprint (or other identifying information) and find the following information:
CERT_DISALLOWED_FILETIME_PROP_ID(104)
CERT_NOT_BEFORE_FILETIME_PROP_ID(126)
``` 

6. Open a browser to website using FPKI certificates, record results. Suggested websites include:
- https://pki.treasury.gov - Treasury Root CA-Issued (FCPCA-chained)
- https://max.gov/     - Entrust-Issued (non-FCPCA-chained)
- https://csrc.nist.gov/ - DigiCert-Issued (non-FCPCA-chained)
- https://psa.dmdc.osd.mil/psawebdocs/ - DoD Root CA 3-Issued (FCPCA-chained)

(% include alert-info.html content="Please pass along any other websites used for testing" %)

7. Conduct group policy object updates with COMMON by following steps in [How Can I Limit the Impact to My Agency](#how-can-i-limit-the-impact-to-my-agency). <!--Changed titles-->
8. Repeat step 6.
9. Once testing is done, to return the systems to their normal configuration:

``` 
On each test system, modify following registry key to work with the default URL:
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SystemCertificates\AuthRoot\AutoUpdate]
"RootDirUrl"=http://ctldl.windowsupdate.com/msdownload/update/v3/static/trustedr/en
And delete these keys again:
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SystemCertificates\AuthRoot\AutoUpdate\EncodedCtl]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SystemCertificates\AuthRoot\AutoUpdate\LastSyncTime]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SystemCertificates\AuthRoot\Certificates] (deleting all cached certificates)

``` 
## How Can I Limit the Impact to My Agency?

{% include alert-info.html content="These instructions are for agency network and domain system administrators." %} 

To limit the impact to your agency, you'll need to install the COMMON Root CA certificate by using a Group Policy Object (GPO) **OR** by installing it in the **Enterprise Trust Store** or the **Trusted Roots Store** on all government-furnished, Microsoft OS-based workstations and mobile devices. 

- [Install Using Group Policy Objects](#install-using-group-policy-objects)
- [Install in Enterprise Trust Store](#install-in-enterprise-trust-store)

The certificate details for COMMON are:  

| **Federal Common Policy CA (COMMON)**  | **Certificate Details**                             |
| :--------  | :-------------------------------     |
| Federal Common Policy CA<br>(sometimes shown as _U.S. Government Common Policy_) | http://http.fpki.gov/fcpca/fcpca.crt |
| Distinguished Name | cn=Federal Common Policy CA, ou=FPKI, o=U.S. Government, c=US |
| SHA-1 Thumbprint | 90 5f 94 2f d9 f2 8f 67 9b 37 81 80 fd 4f 84 63 47 f6 45 c1 |

You should never install a root certificate without verifying it. To verify, download the certificate or email **fpki@gsa.gov** for an out-of-band copy.  

Then, use a utility (_certutil_ on Windows or _openssl_ or _sha1sum_ on UNIX platforms) to verify that the SHA-1 thumbprint of the certificate file matches the SHA-1 value provided above.  

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
You can add the COMMON Root CA certificate to the Trusted Root Certificate Authorities using group policy objects.  

Microsoft TechNet articles and other online resources offer the procedures for setting up group policy objects.  Additional information:

- You must have Enterprise Administrator privileges
- You can set up the group policy object from a Domain Controller (or other approaches you use in your agency)
- You may need to use multiple group policy objects to apply the configurations to all workstations in all groups and containers
- Settings are under `Computer Configuration\Policies\Windows Settings\Security Settings\Public Key Policies\`
- Import the `fcpca.crt` into **Trusted Root Certification Authorities**


### Install Using Certutil in Enterprise Trust Store
You can add the COMMON Root CA certificate to the **Enterprise Trust Store** or the **Trusted Roots Store** using _certutil_. Additional information:

- You must have Enterprise Administrator privileges
- You can run _certutil_ from a Domain Controller 
- To publish/add a certificate to the Enterprise Trust Store:

```
	certutil –dspublish –f <certificate_to_publish.cer or fcpca.crt> RootCA
```

- To view all certificates in the Enterprise Trust Store:

```
	certutil –viewstore –enterprise RootCA
```

- To propagate from the Domain Controller(s) to the enterprise:

```
	gpupdate /force
```

## Frequently Asked Questions

### 1. Why is the SSL/TLS trust being removed? 
The Federal PKI doesn't comply with the requirements for globally trusted SSL/TLS certificates.  These requirements include: 

**a. Requirement for Fully-Qualified Domain Names (FQDNs)**<br>
Microsoft planned to restrict SSL/TLS certificates to only certificates using FQDNs ending in .gov, .mil, or fed.us.  Some federal agencies issue SSL/TLS certificates to intranet websites.  These certificates don't have FQDNs; or these certificate contain intranet domains that don't end in .gov, .mil, or fed.us; or these use short names (aliases). Under the requirements, these agencies would need to reissue, re-install, and reconfigure all "non-compliant" certificates and applications.  The Federal PKI community has determined this would have a negative impact on mission applications on the intranets and has voted to remove this public trust for SSL/TLS certificates issued under the Federal Common Policy CA from the Microsoft Trusted Root Program. 

**b. Requirement for public audit**<br>
The Federal PKI follows a government auditing standard, and we have not restricted our issuance of SSL/TLS certificates to only the .gov and .mil domains. Under the requirements, all CAs in Federal PKI that could issue SSL/TLS certificates are required to submit a non-government audit or be technically constrained.  Federal PKI has **not** technically constrained our CAs.  

**c. Requirement to disclose Certificate Practice Statements and Incident Post-Mortem Reports**<br>
Public trust requires public disclosure and transparency.  All Federal PKI CAs would be required to publicly post their Certificate Practice Statements and their Audit Letters.  The Federal PKI, federal agency community has attempted to disclose all Certificate Practice Statements for a number of years.  However, some federal agencies include sensitive information in these documents and cannot disclose the documents publicly.  

**d. Requirement to create new issuing Certification Authorities (CAs)**<br>
Any Federal PKI CA that issues SSL/TLS, code-signing, or email-signing certificates would have to establish a new CA for each type of certificate. This effort requires time, planning, and funding.   


### 2. How can I determine which of our intranet websites and applications will be impacted, including those used by cross-government users?  
All intranet sites configured with a SSL/TLS certificate issued by a Federal PKI CA that validates to Federal Common Policy CA (COMMON) will be impacted.   

If you have an agreement with one of the Federal PKI Shared Service Providers (SSPs) for SSL/TLS certificates, run a report on all issued certificates or ask the SSP to deliver this report. 

You can also scan your intranet websites in coordination with your CISO teams.  You can use existing tools or the DHS NCATS "**pshtt**" tool, which will also check for cipher suites and mis-configurations on the intranet websites:  

- DHS NCATS [**pshtt**](https://github.com/dhs-ncats/pshtt){:target="_blank"} 

**Note:** This tool will not look just for Federal PKI certificates.  Outputs will include all certificates and information.

### 3. How can I determine whether my agency users and government-furnished equipment will be impacted?  
Check your Enterprise Trust Store configurations in your Microsoft domain and devices.  If the Federal Common Policy CA certificate is already installed in the Enterprise Trust Store, you don't need to reinstall or change its root store.  If it is not installed in the Enterprise Trust Store, you should ensure that it is distributed in a group policy object to _Trusted Root Certificate Authorities_ or via the enterprise domain to the Enterprise Trust Store for all your user devices.  

View where and how a certificate is being installed using the certificates snap-in (certmgr.msc).  Under **View -> Options**, click the **Show _Physical certificate stores_** option.    

### 4. Is PIV network login impacted?  
No. 

### 5. Do I need to remove the "baked-in" version of Federal Common Policy CA?  
No, don't remove this certificate.  You may see two versions of the certificate in _Trusted Root Certificate Authorities_--one from the Microsoft distribution and one from your enterprise group policy or enterprise trust store.  Each version is being distributed differently and will have different properties set.  

### 6. Do I need to add Federal Common Policy CA certificate to the Trusted Root Certification Authorities store, or should I add it to the Enterprise Trust Store?
Microsoft uses different physical containers and logical views of these containers for trust stores.  In addition, different tools will have different **names** for the same physical or logical view.  For example:

| **Certificates snap-in (MMC)**  | **Enterprise PKI snap-in**  |  **certutil** | **Registry** | 
| :--------  | :------------------------------- | :--------- | :----------- |
| Trusted Root Certification Authorities | Certificate Authorities Container tab|  Root and RootCA | Root | 

It can be confusing--the easiest way is to follow one of the two steps in [How Can I Limit the Impact to My Agency](#how-can-i-limit-the-impact-to-my-agency)

To read detailed information on certificate stores, logical views, physical views, and registry locations: [Managing Certificates with Certificate Stores](https://msdn.microsoft.com/en-us/library/windows/desktop/aa386971(v=vs.85).aspx){:target="_blank"}

### 7. Do I need to change any trust property for the CA certificate managed by group policy objects?
No, trust properties are not set by group policy objects. If your agency currently distributes Federal Common Policy CA through a group policy object, no change is needed.

### 8. What Windows versions are affected?
All Windows Operating System versions. 

### 9. Will the group policy object distribution affect IPSec certificates if the server authentication bit is enabled and used with Microsoft Operating Systems?
No, group policy object distribution will not negatively impact IPSec certificates.

## Additional Resources

1. [Certificate Trust List Overview](https://msdn.microsoft.com/en-us/library/windows/desktop/aa376545(v=vs.85).aspx){:target="_blank"}
1. [Managing Certificates with Certificate Stores](https://msdn.microsoft.com/en-us/library/windows/desktop/aa386971(v=vs.85).aspx){:target="_blank"}
1. [Configure Trusted Roots and Disallowed Certificates](https://technet.microsoft.com/en-us/library/dn265983.aspx){:target="_blank"}
