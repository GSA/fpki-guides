---
layout: default
navtitle: Microsoft Trust Store Impact
title: Microsoft Trusted Root Program Changes Set To Impact Federal Government
pubDate: April 26, 2018
collection: announcements
permalink: announcements/mspkichanges/
description: Upcoming changes to Microsoft's Trusted Root Program could impact your agency. The U.S. Government has elected to remove our U.S. Government Root CA (Federal Common Policy CA [FCPCA/COMMON]) in Microsoft. <br><br> Windows users will receive errors when encountering an FPKI certificate. You can mitigate the impact for the government intranets and government-furnished equipment by using configuration management tools for our federal devices as expalined in this annoucement. This annoucement will be updated with the latest information on a regular basis.   
---

{% include alert-info.html content="The Federal PKI Policy Authority is working with Microsoft on a timeline of when it will be removed. Updated information will be posted here as long as through the FPKI/ICAM list serves and with the ICAM Subcommittee." %} 

Upcoming changes to Microsoft's Trusted Root Program could impact your agency. Microsoft will **remove** our U.S. Government Root CA (Federal Common Policy CA [FCPCA/COMMON]) from Microsoft's globally distributed Certificate Trust List (CTL).

- [How Does this Work?](#how does this work)
- [What Will Be Impacted?](#what-will-be-impacted)
- [What Should I Do?](#what-should-i-do)
- [How Can I Test?](#how-can-i-test)
- [Frequently Asked Questions](#frequently-asked-questions)
- [Additional Resources](#additional-resources)

## How Does This Work?
Microsoft uses a CTL to tell Windows endpoints (desktops, laptops, servers, mobile devices, etc running a Microsoft operating system) which PKI root certificates to trust. They distrubte a list of authorized root certificates (*authrootstl.cab*) and a list of untrusted root certificates (*disallowedcertstl.cab*).

Microsoft deploys CTL to the following Windows versions.
1. Windows 10 with additional capability of processing date-based constraints.
2. Windows 8 including Server 2016
3. Windows 7 including Server 2012
4. Windows Vista including Server 2008R2

Today, COMMON is distributed with hundreds of other root certificates on the trusted list. This change will remove COMMON from the Microsoft distributed CTL. Keep reading to understand the scope of impact and how to mitigate the risk on intranet systems.

## What Will Be Impacted?
When Microsoft removes COMMON, government and partner users of Windows will receive errors when encountering an FPKI Certificate. These errors will appear if all of the following are true: 

1. Any Windows Operating System on Desktop or Mobile
2. Websites accessed in Microsoft Internet Explorer/Edge and uses an SSL/TLS certificates that were issued by Federal PKI CAs under COMMMON or the Federal Bridge. (Note: Apple Safari and Mozilla Firefox is not impacted.) 
4. Microsoft Outlook email signed with a certificate issued by Federal PKI CAS under COMMON or the Federal Bridge.
5. Microsoft Office documents signed with a certificate issued by Federal PKI CAS under COMMON or the Federal Bridge.
6. Applications that rely on the Microsoft Trust Store.

{% include alert-info.html content="If you're unsure if your applications fall with-in the error scope, email **FPKI@gsa.gov**." %} 

This will also impact cross-agency or partner users that rely on COMMON.  For example, a Department of State user browsing to a Department of Homeland Security website or a Department of Defense employee sending a digitally signed email to a business partner.

You can mitigate the impact for all government-furnished equipment.

{% include alert-info.html content="The following instructions are for agency network and domain system administrators." %} 

## What Should I Do?

To limit the impact to your agency, you'll need to install COMMON by using a group policy object (GPO) **OR** by installing it in the **Enterprise Trust** or **Trusted Root Certification Authorities** certificate store on all government-furnished, Microsoft OS-based workstations and mobile devices. 

- [Install Using Group Policy Objects](#install-using-group-policy-objects)
- [Install Using Certutil](#install-using-certutil)

The certificate details for COMMON are:  

| **Federal Common Policy CA (FCPCA/COMMON)**  | **Certificate Details**                             |
| :--------  | :-------------------------------     |
| Federal Common Policy CA<br>(sometimes shown as _U.S. Government Common Policy_) | http://http.fpki.gov/fcpca/fcpca.crt |
| Distinguished Name | cn=Federal Common Policy CA, ou=FPKI, o=U.S. Government, c=US |
| SHA-1 Thumbprint | 90 5f 94 2f d9 f2 8f 67 9b 37 81 80 fd 4f 84 63 47 f6 45 c1 |

You should never install a root certificate without verifying it. To verify, download the certificate or email **fpki@gsa.gov** for an out-of-band copy.  

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
- You may need to use multiple group policy objects to apply the configurations to all workstations in all groups and containers
- Settings are under `Computer Configuration\Policies\Windows Settings\Security Settings\Public Key Policies\`
- Import the `fcpca.crt` into **Trusted Root Certification Authorities**

### Install Using Certutil

You can add COMMON to the **Enterprise Trust Store** or the **Trusted Root Certificate Authorities** certificate store using _certutil_. Additional information:

- You must have Enterprise Administrator privileges
- You can run _certutil_ from a Domain Controller 
- To publish/add a certificate to the Enterprise Trust Store:

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

{% include alert-info.html content="Based on Disallow Testing results not overriding local trust decisions, no further testing will take place." %} 

If your agency is impacted, you can test COMMON validation behavior. Testing will confirm whether an enterprise GPO can override a Microsoft CTL setting for three possible conditions:

1. _serverAuth Disallow_,
2. _serverAuth notBefore_, **OR**
2. _no CTL entry_

If your agency plans to participate in testing, see the phased [Testing Schedule](#testing-schedule) below. If your agency would like to participate in testing, please email us at **fpki@gsa.gov**.

### Testing Schedule

#### Phase 1&nbsp;&mdash;&nbsp;_serverAuth Disallow_ Testing
- **April 13 -** Start _Disallow_ testing.
- **April 26 -** The FPKI report to Microsoft on _Disallow_ testing status and results.
- **April 27-May 2 -** Remediate _Disallow_ testing based on Microsoft's feedback. Microsoft prepares for _serverAuth notBefore_ testing.
- **May 2 -** Status call/email with Agency CTL testers on _serverAuth Disallow_ test results and/or questions.
- **May 3 -** The FPKI report to Microsoft on final _serverAuth Disallow_ testing.

#### Phase 2&nbsp;&mdash;&nbsp;_serverAuth notBefore_ Testing
- **May 3-16 -** Conduct _serverAuth notBefore_ testing. The FPKI prepares for _no CTL entry_ testing.
- **May 9 -** Status call/email with Agency CTL testers on _serverAuth notBefore_ test results and/or questions.
- **May 17 -** The FPKI report to Microsoft on final _serverAuth notBefore_ testing.

#### Phase 3&nbsp;&mdash;&nbsp;_no CTL entry_ Testing
- **May 18-30 -** Conduct _no CTL entry_ testing.
- **May 30 -** Status call/email with Agency CTL testers on _no CTL entry_ test results and/or questions.
- **May 31 -** The FPKI report to Microsoft on final _no CTL entry_ testing. 
- **May 31 -** Determine next steps.

### Test Procedures
1. For each Windows 10 client endpoint, modify the registry key for the test CTL:

1a. Windows Key + S to search for "regedit". Right click and "Run as administrator"

1b. Browse to [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SystemCertificates\AuthRoot\AutoUpdate]

1c. Right click and create "New String" with name "RootDirURL" with this value http://ctldl.windowsupdate.com/msdownload/update/v3/static/trustedr/en/USPKI

2. Delete these keys:

``` 
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SystemCertificates\AuthRoot\AutoUpdate\EncodedCtl]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SystemCertificates\AuthRoot\AutoUpdate\LastSyncTime]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SystemCertificates\AuthRoot\Certificates] (deleting all cached certificates)
``` 

3. Verify the CTL settings on the endpoint. The notBefore or disallow status **DOES NOT** show up in the user interface. The only way to check the CTL settings is an output of the CTL file.

3a. Open a command prompt as administrator and create a new test directory:

```
mkdir c:\ctltest
```
3b. Run a CTL update command to update all certificates.

```
certutil -generateSSTFromWU
```

3c. Create a text file containing the certificate details: 

```
certutil -verifyCTL AuthRoot > c:\ctltest\certdetail.txt
```

3c. From c:\ctltest\certdetail.txt, search for the COMMON subject "CN=Federal Common Policy CA, OU=FPKI, O=U.S. Government, C=US"

3d. If the test CTL is loaded, it will have the following entry:

```
[905f942fd9f28f679b378180fd4f846347f645c1]
CertId = 1.3.6.1.4.1.311.10.11.3, "CERT_SHA1_HASH_PROP_ID"
Subject = "CN=Federal Common Policy CA, OU=FPKI, O=U.S. Government, C=US"
FriendlyName = "U.S Government Common Policy"
EKU = 1.3.6.1.4.1.311.10.3.4, "Encrypting File System"
EKU = 1.3.6.1.5.5.7.3.1, "Server Authentication"
EKU = 1.3.6.1.5.5.7.3.2, "Client Authentication"
EKU = 1.3.6.1.5.5.7.3.3, "Code Signing"
EKU = 1.3.6.1.5.5.7.3.4, "Secure Email"
EKU = 1.3.6.1.5.5.7.3.6, "IP security tunnel termination"
EKU = 1.3.6.1.5.5.7.3.7, "IP security user"
EKU = 1.3.6.1.5.5.7.3.8, "Time Stamping"
EKU = 1.3.6.1.5.5.7.3.9, "OCSP Signing"
DisallowEKU = 1.3.6.1.5.5.7.3.1, "Server Authentication"
NotBeforeEKU = 1.3.6.1.5.5.7.3.3, "Code Signing"
NotBeforeTime = "2/28/2017 8:00 PM"
MD5KeyId = 93ee7e01c999df57176c2c0a677aa1eb
KeyId = ad0c7a755ce5f398c479980eac28fd97f4e702fc
SHA256Thumbprint = 894ebc0b23da2a50c0186b7f8f25ef1f6b2935af32a94584ef80aaf877a3a06e
SignatureHash = 375dc361146cfbdd26f82cbf8a4c1a173c9b6a11ac61dfe4c28cac281888ed22
SignatureHashAlgorithm = 1.2.840.113549.1.1.11, "sha256RSA", 2.16.840.1.101.3.4.2.1, "sha256", "RSA/SHA256"
PublicKeyLength = 2048
PublicKeyAlgorithm = 1.2.840.113549.1.1.1, "RSA"
``` 

**NOTE - Either DisallowEKU = 1.3.6.1.5.5.7.3.1, "Server Authentication" or NotBeforeEKU = 1.3.6.1.5.5.7.3.3, "Server Authentication" confirm the test CTL is loaded.**

4. Verify the Test CTL has updated

4a. Windows Key + S to search for "regedit". Right click and "Run as administrator"

4b. Browse to [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SystemCertificates\AuthRoot\AutoUpdate]

4c. Confirm "EncodedCtl" and "LastSyncTime" attributes are populated.

5. Open Internet Explorer/Edge or Chrome and clear cache.

```
   Ctrl + Shift + Del
```

6. Go to a website by using an FPKI certificate; and record results. Suggested websites:
Websites Chained to COMMON

- [PKI.Treasury.gov](https://pki.treasury.gov){:target="_blank"} - Treasury Root CA-issued (COMMON-chained)
- [psa.dmdc.osd.mil](https://psa.dmdc.osd.mil/psawebdocs/){:target="_blank"} - DoD Root CA 3-issued (COMMON-chained)
Websites Not-Chained to Common
- [MAX.gov](https://max.gov/){:target="_blank"} - Entrust Root CA-issued (non-COMMON-chained)
- [NIST.gov](https://csrc.nist.gov/){:target="_blank"} - DigiCert Root CA-issued (non-COMMOM-chained)

(% include alert-info.html content="Verify the certificate details and note the validation path." %)

7. Open Internet Explorer/Edge or Chrome and clear cache.

```
   Ctrl + Shift + Del
```

8. Re-Install COMMON using the group policy object procedures: [Install Using Group Policy Objects](#install-using-group-policy-objects).

9. Repeat website tests from Step 6.

10. Once testing is done, return the endpoints to their normal configurations. This step may not be necessary if the endpoint is just for testing:

10a. Windows Key + S to search for "regedit". Right click and "Run as administrator"

10b. Browse to [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SystemCertificates\AuthRoot\AutoUpdate]

10c. Right click and update the "RootDirURL" with this value http://ctldl.windowsupdate.com/msdownload/update/v3/static/trustedr/en

10d. Delete these keys:

``` 
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SystemCertificates\AuthRoot\AutoUpdate\EncodedCtl]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SystemCertificates\AuthRoot\AutoUpdate\LastSyncTime]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SystemCertificates\AuthRoot\Certificates] (deleting all cached certificates)
``` 

11. Report your test results to **fpki@gsa.gov** or post them as an issue to GSA's [FPKI Guides](https://github.com/GSA/fpki-guides/issues) GitHub repository as "CTL Testing - Agency XXX Results." Include:
- OS version
- Browser versions
- Steps used to test
- Websites used with specific website error code
- Any issues encountered

## Frequently Asked Questions

### 1. Why is COMMMON being removed? 
COMMON Certificate Policy doesn't comply with the requirements for globally trusted SSL/TLS certificates which is impacting overall use of COMMON on intranets.  These requirements include: 

**a. Requirement for Fully-Qualified Domain Names (FQDNs)**<br>
Microsoft planned to restrict SSL/TLS certificates to only certificates using FQDNs ending in .gov, .mil, or fed.us.  Some federal agencies issue SSL/TLS certificates to intranet websites.  These certificates don't have FQDNs; or they contain intranet domains that don't end in .gov, .mil, or fed.us; or they use short names (aliases). Under the requirements, these agencies would need to reissue, re-install, and reconfigure all "non-compliant" certificates and applications.  The Federal PKI community has determined that this would have a negative impact on mission applications on the intranets; consequently the community has voted to remove third party trust for SSL/TLS certificates issued under COMMON. 

**b. Requirement for public audit**<br>
The Federal PKI follows a government auditing standard, and we have not restricted our issuance of SSL/TLS certificates to only the .gov and .mil domains. Under the requirements, all CAs in the Federal PKI that could issue SSL/TLS certificates are required to submit a non-government audit or be technically constrained.  The Federal PKI has **not** technically constrained our CAs.  

**c. Requirement to disclose Certificate Practice Statements and Incident Post-Mortem Reports**<br>
Public trust requires public disclosure and transparency.  All Federal PKI CAs would be required to publicly post their Certificate Practice Statements and their Audit Letters.  The Federal PKI's federal agency community has attempted to disclose all Certificate Practice Statements for a number of years.  However, some federal agencies include sensitive information in these documents and cannot disclose the documents publicly.  

**d. Requirement to create new issuing Certification Authorities (CAs)**<br>
Any Federal PKI CA that issue SSL/TLS, code-signing, or email-signing certificates would have to establish a new CA for each type of certificate. This effort requires time, planning, and funding.   

### 2. How can I determine which of our intranet websites and applications will be impacted, including those used by cross-agency users?  
All Windows based applications configured with an SSL/TLS or relying on a certificate (email, VPN, digital signature, etc) issued by a Federal PKI CA that validates to COMMON are impacted. Agencies and mission partners who are cross-certified with the Federal Bridge, it could impact your external users if COMMON is used instead of your root.

If your Agency has an agreement with one of the Federal PKI Shared Service Providers (SSPs) for SSL/TLS certificates, run a report on all issued certificates or ask the SSP to deliver this report.

You can also scan your intranet websites in coordination with your CISO teams.  You can use existing tools or the DHS NCATS "**pshtt**" tool, which will also check for cipher suites and mis-configurations on the intranet websites:  

- DHS NCATS [**pshtt**](https://github.com/dhs-ncats/pshtt){:target="_blank"} 

**Note:** This tool will not look just for Federal PKI certificates.  Outputs will include all certificates and information.

### 3. How can I determine whether my agency users and government-furnished equipment will be impacted?  
Check your Enterprise Trust Store configurations in your Microsoft domain and devices.  If COMMON is already installed in the Enterprise Trust Store, you don't need to reinstall or change its root store.  If it's not installed in the Enterprise Trust Store, you should ensure that it's distributed in a group policy object to Trusted Root Certificate Authorities or via the enterprise domain to the Enterprise Trust Store for all your user devices. See [Install Using Group Policy Objects](#install-using-group-policy-objects).

View where and how a certificate is being installed using the certificates snap-in (certmgr.msc).  Under **View -> Options**, click the **Show _Physical certificate stores_** option.    

### 4. Is PIV network login impacted?  
Yes. See  [Install Using Group Policy Objects](#install-using-group-policy-objects) to mitigate the risk.

### 5. Do I need to remove the "baked-in" version of COMMON?  
No, don't remove COMMON.  You may see two versions of the certificate in Trusted Root Certificate Authorities--one from the Microsoft distribution and one from your enterprise group policy or Enterprise Trust Store.  Each version is being distributed differently and will have a different properties set.  

### 6. Do I need to add COMMON to the Trusted Root Certification Authorities store, or should I add it to the Enterprise Trust Store?
Microsoft uses different physical containers and logical views of these containers for trust stores.  In addition, different tools will have different **names** for the same physical or logical view.  For example:

| **Certificates snap-in (certmgr.msc)**  | **Enterprise PKI snap-in**  |  **certutil** | **Registry** | 
| :--------  | :------------------------------- | :--------- | :----------- |
| Trusted Root Certification Authorities | Certificate Authorities Container tab|  Root and RootCA | Root | 

It can be confusing--the easiest way is to follow one of the two methods in [What Should I Do?](#what-should-i-do)

To read detailed information on certificate stores, logical views, physical views, and registry locations: [Managing Certificates with Certificate Stores](https://msdn.microsoft.com/en-us/library/windows/desktop/aa386971(v=vs.85).aspx){:target="_blank"}

### 7. Do I need to change any trust property for COMMON managed by group policy objects?
No, trust properties are not set by group policy objects. If your agency currently distributes the Federal Common Policy CA through a group policy object, no change is needed.

### 8. What Windows versions are affected?
All Windows versions from Vista forward are affected. 

### 9. Will the group policy object distribution affect IPSec certificates if the server authentication bit is enabled and used with Microsoft Operating Systems?
No, group policy object distribution will not negatively impact IPSec certificates.

### 10. Can an enterprise define a custom CTL?
Yes, an enterprise can create a trusted or untrusted CTL. [Find more details in this Microsoft knowledge base](https://msdn.microsoft.com/en-us/library/windows/desktop/aa379867(v=vs.85).aspx){:target="_blank"}

## Additional Resources

1. [Certificate Trust List Overview](https://msdn.microsoft.com/en-us/library/windows/desktop/aa376545(v=vs.85).aspx){:target="_blank"}
1. [Managing Certificates with Certificate Stores](https://msdn.microsoft.com/en-us/library/windows/desktop/aa386971(v=vs.85).aspx){:target="_blank"}
1. [Configure Trusted Roots and Disallowed Certificates](https://technet.microsoft.com/en-us/library/dn265983.aspx){:target="_blank"}
