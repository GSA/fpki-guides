---
layout: default
navtitle: Federal Common Policy CA Removal from Apple Trust Stores Impact
title: Federal Common Policy CA Removal from Apple Trust Stores Impact
pubDate: June 04, 2018
collection: announcements
permalink: announcements/applepkichanges/
description: The Federal PKI Policy Authority has elected to remove our U.S. Government Root CA certificate (Federal Common Policy CA) from the Apple Trust Stores, to include iOS, macOS, and tvOS. <br><br> This change will cause Apple device users to receive errors when encountering instances of a Federal PKI CA-issued certificate. The expected removal timeline is in the Apple release cycle between September and October of 2018. You can mitigate the impact for the government intranets and government-furnished equipment by using configuration management tools for federal devices. This announcement will be updated with new information and procedures as soon as they are available.
---

The Federal PKI Policy Authority has requested that Apple **remove** our U.S. Government Root certification authority (CA) certificate (Federal Common Policy CA [COMMON]) from Apple's globally distributed, preinstalled operating system Trust Stores. This is similar to the effort to remove COMMON from the [Microsoft Certificate Trust List (CTL)](https://fpki.idmanagement.gov/announcements/mspkichanges/){:target="_blank"}. This announcement will describe background, impact, and mitigating actions agencies can take to prevent degredation of user capabilities upon the removal of COMMON. 

{% include alert-info.html content="The Federal PKI Policy Authority has requested the removal of COMMON from the preinstalled Apple device Trust Stores to include iOS, macOS, and tvOS, with an expected timeframe between September and October of 2018. This announcement will be updated as more information is made available. Please watch for updates from the Federal PKI listserves, ICAM listservs, and the ICAM Sub-committee." %}

- [How Does this Work?](#how-does-this-work)
- [What Will Be Impacted?](#what-will-be-impacted)
- [What Should I Do?](#what-should-i-do)
- [Frequently Asked Questions](#frequently-asked-questions)
- [Additional Resources](#additional-resources)

## How Does This Work?
Today, Apple distributes hundreds of trusted root CA certificates, including COMMON, in the default operating system Trust Store for iOS, macOS, and tvOS. Apple's Trust Stores contain three categories of certificates:
 - **Trusted certificates** establish a chain of trust that verifies other certificates signed by the trusted roots—for example, to establish a secure connection to a web server. 
 - **Always Ask** certificates are untrusted but not blocked. When one of these certificates is used, you'll be prompted to choose whether or not to trust it.
 - **Blocked** certificates are believed to be compromised and will never be trusted.

|**macOS Versions**|
| :-------- |
| High Sierra (10.13) |	
| Sierra (10.12) |
| El Capitan (10.11) |
| Yosemite (10.10) |
| Mavericks (10.9) |
	
|**iOS Versions**|
| :-------- |
| iOS11 |
| iOS10 |
| iOS9 |
| iOS8 |
| iOS7 |

| **tvOS Versions** |
| :-------- |
| tvOS11 |
| tvOS10 |

## What Will Be Impacted?
When Apple removes COMMON, government users of iOS, macOS, and tvOS will receive errors. Errors will occur in the following scenarios:
1. Performing smartcard logon to the government networks using PIV credentials 
2. Authenticating to the government virtual private network endpoints (VPNs) using PIV credentials 
3. Authenticating to the government internet facing authentication and collaboration portals
4. Browsing with Safari, Chrome, Edge, or Internet Explorer browsers to a government **intranet** website that has a TLS/SSL certificate issued by a Federal PKI CA that validates to COMMMON. 
5. Opening an email in Apple Mail or Microsoft Outlook that was digitally signed using a certificate issued by a Federal PKI CA that validates to COMMON.
6. Opening a Microsoft Office document that was digitally signed with a certificate issued by a Federal PKI CA that validates to COMMON.

{% include alert-info.html content="If you are unsure whether your applications will be affected, email us at: fpki@gsa.gov." %} 

This change will also impact partner users that rely on COMMON. For example, a Department of Defense employee sending a digitally signed email to a business partner.

You can mitigate the risk to government missions, intranets, applications, and government-furnished equipment.

## What Should I Do?

To limit the impact to your agency, you'll need to install COMMON as a trusted root certificate on all government-furnished, Apple devices. This announcement will be updated as additional methods of redistributing COMMON are identified. 

{% include alert-warning.html content="You should never install a root certificate without verifying it. The attributes below will be referenced in the installation guidance to follow to help verify the authenticity of your local version of COMMON." %} 

| **Federal Common Policy CA (FCPCA/COMMON)**  | **Certificate Details**                             |
| :--------  | :-------------------------------     |
| Federal Common Policy CA<br>(sometimes shown as _U.S. Government Common Policy_) | http://http.fpki.gov/fcpca/fcpca.crt |
| Distinguished Name | cn=Federal Common Policy CA, ou=FPKI, o=U.S. Government, c=US |
| SHA-1 Thumbprint | 90 5f 94 2f d9 f2 8f 67 9b 37 81 80 fd 4f 84 63 47 f6 45 c1 |
| SHA-256 Thumbprint | 89 4e bc 0b 23 da 2a 50 c0 18 6b 7f 8f 25 ef 1f 6b 29 35 af 32 a9 45 84 ef 80 aa f8 77 a3 a0 6e |

### macOS ###
The following guidance can be used to redistribute COMMON into the macOS Trust Store. 

*Note:* In all instances below, replace {DOWNLOAD_LOCATION} with your preferred file download location.

#### Using Terminal (Command Line Based Instructions) ####

1. Open Terminal.
- Click the *Spotlight* icon. It's the magnifying glass in the upper-right corner of the screen.
- Start typing `terminal` in the search field. Do so until the Terminal icon appears.
- Double-click the *Terminal* icon. A terminal window will open.

2. Download a copy of the Federal Common Policy CA by entering the following command.
<br>
```$ curl -o {DOWNLOAD_LOCATION}/fcpca.crt "http://http.fpki.gov/fcpca/fcpca.crt" ```

3. Verify the hash of the downloaded certificate by entering the following command.
<br>
```$ shasum -a 256 {DOWNLOAD_LOCATION}/fcpca.crt ```

Verify the hash matches the SHA-256 Thumprint listed [above](#what-should-i-do).  

4. Install COMMON as a Trusted Root by entering the following command.
<br>
```$ sudo security add-trusted-cert -d -r trustRoot -k "/Library/Keychains/System.keychain" {DOWNLOAD_LOCATION}/fcpca.crt ```

#### Using Apple Keychain (Graphical User Interface Based Instructions)
[STEPS TBD]

### iOS ###
The following guidance can be used to redistribute COMMON into the iOS Trust Store.

#### Using Safari ####
[STEPS TBD]

## Frequently Asked Questions

### 1.&nbsp;&nbsp;Why is COMMMON being removed? 
The Federal PKI CAs don't comply with Apple's requirements for globally trusted TLS/SSL certificates. Apple's requirements include: 

**a.&nbsp;&nbsp;Requirement for Fully-Qualified Domain Names (FQDNs)**<br>
Apple plans to restrict TLS/SSL certificates to only those certificates using FQDNs ending in .gov, .mil, or fed.us. Some Federal agencies issue TLS/SSL certificates to intranet assets. These certificates either:&nbsp;&nbsp;don't have FQDNs; contain intranet domains that don't end in .gov, .mil, or fed.us; or use short names (aliases). Under Apple's requirements, these agencies would need to reissue, re-install, and reconfigure all "non-compliant" certificates and applications. The Federal PKI community has determined that this would have a negative impact on mission applications on the intranets.

**b.&nbsp;&nbsp;Requirement for public audit**<br>
The Federal PKI follows a government auditing standard, and we have not restricted our issuance of TLS/SSL certificates to only the .gov and .mil domains. Under the requirements, all CAs in Federal PKI that could issue TLS/SSL certificates are required to submit a non-government audit or be technically constrained. Federal PKI has **not** technically constrained our CAs.

**c.&nbsp;&nbsp;Requirement to disclose Certificate Practice Statements and Incident Post-Mortem Reports**<br>
Public trust requires public disclosure and transparency. All Federal PKI CAs would be required to publicly post their Certificate Practice Statements and their Audit Letters. The Federal PKI community has attempted to disclose all Certificate Practice Statements for a number of years. However, some federal agencies include sensitive information in these documents and cannot disclose the documents publicly.

**d.&nbsp;&nbsp;Requirement to create new issuing Certification Authorities (CAs)**<br>
Any Federal PKI CA that issues TLS/SSL, code-signing, or email-signing certificates would have to establish a new CA for each type of certificate. This effort requires time, planning, and funding.

### 2.&nbsp;&nbsp;How can I determine which of our intranet websites and applications will be impacted, including those used by cross-agency users?
All Apple-based resources and applications configured with certificates (email, Virtual Private Network, digital signature, MDM profiles, etc.) issued by a Federal PKI CA that validates to COMMON will be impacted. For agencies and mission partners that are cross-certified with the FBCA, external users could also be impacted if COMMON is used instead of your root.

You can run a report on all issued certificates or, if your agency has an agreement with a Federal PKI Shared Service Provider (SSP), you can request that the SSP run the report.

You can scan your intranet websites in coordination with your CISO teams. There are existing tools to use, or you can use the DHS NCATS "**pshtt**" tool, which will also check for cipher suites and mis-configurations on the intranet websites:

- DHS NCATS [**pshtt**](https://github.com/dhs-ncats/pshtt){:target="_blank"} 

**Note:**&nbsp;&nbsp;This tool will look for not just Federal PKI certificates. Its outputs will include all certificates and information.

### 3.&nbsp;&nbsp;Is PIV network login impacted?
Yes. 

### 4.&nbsp;&nbsp;What versions are affected?
Please see [above](#how-does-this-work). 

## Additional Resources
1. [List of available trusted root certificates in macOS](https://support.apple.com/en-us/HT202858){:target="_blank"}
1. [List of available trusted root certificates in iOS](https://support.apple.com/en-us/HT204132){:target="_blank"}
1. [List of available trusted root certificates in tvOS](https://support.apple.com/en-us/HT207231){:target="_blank"}
