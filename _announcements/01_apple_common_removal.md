---
layout: default
navtitle: Federal Common Policy CA Removal from Apple Trust Stores Impact
title: Federal Common Policy CA Removal from Apple Trust Stores Impact
pubDate: June 04, 2018
collection: announcements
permalink: announcements/applepkichanges/
description: The Federal PKI Policy Authority has elected to remove our U.S. Government Root CA certificate (Federal Common Policy CA) from the Apple Operating System Trust Stores, to include iOS, macOS, and tvOS. <br><br> This change will cause Apple device users to receive errors when encountering instances of a Federal PKI CA-issued certificate. The expected removal timeline is in the Apple release cycle between September and October of 2018. You can mitigate the impact for the government intranets and government-furnished equipment by using configuration management tools for federal devices. This announcement will be updated with new information and procedures as soon as they are available.
---

The Federal PKI Policy Authority has requested that Apple **remove** our U.S. Government Root certification authority (CA) certificate (Federal Common Policy CA [COMMON]) from Apple's globally distributed, preinstalled Operating System Trust Stores. This is similar to the effort to remove COMMON from the [Microsoft Certificate Trust List (CTL)](https://fpki.idmanagement.gov/announcements/mspkichanges/){:target="_blank"}. This announcement will describe background, impact, and mitigating actions agencies can take to prevent degredation of user capabilities upon the removal of COMMON. 

{% include alert-info.html content="The Federal PKI Policy Authority has requested the removal of COMMON from the preinstalled Apple device Trust Stores to include iOS, macOS, and tvOS, with an expected timeframe between September and October of 2018. This announcement will be updated as more information is made available. Please watch for additional updates from the Federal PKI listserves, ICAM listservs, and the ICAM Sub-committee." %}

- [How Does this Work?](#how-does-this-work)
- [What Will Be Impacted?](#what-will-be-impacted)
- [What Should I Do?](#what-should-i-do)
- [Frequently Asked Questions](#frequently-asked-questions)
- [Additional Resources](#additional-resources)

## How Does This Work?
Today, Apple distributes over two hundred trusted root CA certificates, including COMMON, in the default operating system Trust Store for iOS, macOS, and tvOS. Apple's Trust Stores contain three categories of certificates:
 - **Trusted certificates** establish a chain of trust that verifies other certificates signed by the trusted roots — for example, to establish a secure connection to a web server. 
 - **Always Ask** certificates are untrusted but not blocked. When one of these certificates is used, you'll be prompted to choose whether or not to trust it.
 - **Blocked** certificates that are believed to be compromised and will never be trusted.

COMMON is preinstalled in the following Apple Operating System Trust Stores:

|**macOS Versions**|**iOS Versions**|**tvOS Versions**|
| :-------- |:-------- |:-------- |
| High Sierra (10.13) |	 iOS11 | tvOS11 |
| Sierra (10.12) | iOS10 | tvOS10 |
| El Capitan (10.11) | iOS9 | |
| Yosemite (10.10) |  iOS8 | |
| Mavericks (10.9) |  iOS7 | |
	
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

You can mitigate the risk to government missions, intranets, applications, and government-furnished equipment by following the guidance in this announcement.

## What Should I Do?
To limit the impact to your agency, you'll need to install COMMON as a trusted root certificate on all government-furnished, Apple devices. Several, but not all methods are presented below. This announcement will be updated as additional methods of redistributing COMMON are identified. 

{% include alert-warning.html content="You should never install a root certificate without verifying it. The attributes below will be referenced in the following installation guidance to help verify the authenticity of your downloaded copy of COMMON." %} 

| **Federal Common Policy CA (FCPCA/COMMON)**  | **Certificate Details**                             |
| :--------  | :-------------------------------     |
| Federal Common Policy CA<br>(sometimes shown as _U.S. Government Common Policy_) | http://http.fpki.gov/fcpca/fcpca.crt |
| Distinguished Name | cn=Federal Common Policy CA, ou=FPKI, o=U.S. Government, c=US |
| SHA-1 Thumbprint | 90 5f 94 2f d9 f2 8f 67 9b 37 81 80 fd 4f 84 63 47 f6 45 c1 |
| SHA-256 Thumbprint | 89 4e bc 0b 23 da 2a 50 c0 18 6b 7f 8f 25 ef 1f 6b 29 35 af 32 a9 45 84 ef 80 aa f8 77 a3 a0 6e |


### macOS
The following guidance can be used to redistribute COMMON into the macOS Trust Store. 

*Note:* In all instances below, replace {DOWNLOAD_LOCATION} with your preferred file download location (e.g., /Users/Sam Jackson/Downloads).

#### Using Terminal (Command Line Based Instructions)
1. Open Terminal.
- Click the *Spotlight* icon. It's the magnifying glass in the upper-right corner of the screen.
- Start typing `terminal` in the search field. Do so until the Terminal icon appears. It is a black icon with a white "greater than" and underscore symbol (e.g., ">_") in the top left corner.
- Double-click the *Terminal* icon. A terminal window will open.

2. Download a copy of the Federal Common Policy CA by entering the following command.
```
$ curl -o {DOWNLOAD_LOCATION}/fcpca.crt "http://http.fpki.gov/fcpca/fcpca.crt"
```

3. Verify the hash of the downloaded certificate matches the SHA-256 Thumprint listed [above](#what-should-i-do) by entering the following command.
```
$ shasum -a 256 {DOWNLOAD_LOCATION}/fcpca.crt
```

4. Install COMMON as a Trusted Root by entering the following command.
```
$ sudo security add-trusted-cert -d -r trustRoot -k "/Library/Keychains/System.keychain" {DOWNLOAD_LOCATION}/fcpca.crt
```

#### Using Apple Keychain (Graphical User Interface Based Instructions)
[STEPS TBD]

#### Using Apple Configuration Profile (Graphical User Interface Based Instructions)
An Apple Configuration Profile is an XML file that allows you to distribute configuration information across an Enterprise. This is a common method for distributing trusted root certificates to macOS and iOS devices. 

There are five ways to deploy configuration profiles to devices:
- Using Apple Configurator 2 with the device connected via USB
- In an email message
- On a webpage
- Using over-the-air configuration as described in Over-the-Air Profile Delivery and Configuration
- Over the air using a Mobile Device Management Server

The sample Configuration Profile listed below will install COMMON as a trusted root certification authority on both macOS and iOS. To repurpose the Profile below after verifying its suitability for your agency, save it with a .plist extension.  
```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>PayloadContent</key>
	<array>
		<dict>
			<key>PayloadCertificateFileName</key>
			<string>fcpca.crt</string>
			<key>PayloadContent</key>
			<data>
			MIIEYDCCA0igAwIBAgICATAwDQYJKoZIhvcNAQELBQAwWTELMAkG
			A1UEBhMCVVMxGDAWBgNVBAoTD1UuUy4gR292ZXJubWVudDENMAsG
			A1UECxMERlBLSTEhMB8GA1UEAxMYRmVkZXJhbCBDb21tb24gUG9s
			aWN5IENBMB4XDTEwMTIwMTE2NDUyN1oXDTMwMTIwMTE2NDUyN1ow
			WTELMAkGA1UEBhMCVVMxGDAWBgNVBAoTD1UuUy4gR292ZXJubWVu
			dDENMAsGA1UECxMERlBLSTEhMB8GA1UEAxMYRmVkZXJhbCBDb21t
			b24gUG9saWN5IENBMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIB
			CgKCAQEA2HX7NRY0WkG/Wq9cMAQUHK14RLXqJup1YcfNNnn4fNi9
			KVFmWSHjeavUeL6wLbCh1bI1FiPQzB6+Duir3MPJ1hLXp3JoGDG4
			FyKyPn66CG3G/dFYLGmgA/Aqo/Y/ISU937cyxY4nsyOl4FKzXZbp
			sLjFxZ+7xaBugkC7xScFNknWJidpDDSPzyd6KgqjQV+NHQOGgxXg
			VcHFmCye7Bpy3EjBPvmE0oSCwRvDdDa3ucc2Mnr4MrbQNq4iGDGM
			UHMhnv6DOzCIJOPpwX7e7ZjHH5IQip9bYi+dpLzVhW86/clTpyBL
			qtsgqyFOHQ1O5piF5asRR12dP8QjwOMUBm7+nQIDAQABo4IBMDCC
			ASwwDwYDVR0TAQH/BAUwAwEB/zCB6QYIKwYBBQUHAQsEgdwwgdkw
			PwYIKwYBBQUHMAWGM2h0dHA6Ly9odHRwLmZwa2kuZ292L2ZjcGNh
			L2NhQ2VydHNJc3N1ZWRCeWZjcGNhLnA3YzCBlQYIKwYBBQUHMAWG
			gYhsZGFwOi8vbGRhcC5mcGtpLmdvdi9jbj1GZWRlcmFsJTIwQ29t
			bW9uJTIwUG9saWN5JTIwQ0Esb3U9RlBLSSxvPVUuUy4lMjBHb3Zl
			cm5tZW50LGM9VVM/Y0FDZXJ0aWZpY2F0ZTtiaW5hcnksY3Jvc3ND
			ZXJ0aWZpY2F0ZVBhaXI7YmluYXJ5MA4GA1UdDwEB/wQEAwIBBjAd
			BgNVHQ4EFgQUrQx6dVzl85jEeZgOrCj9l/TnAvwwDQYJKoZIhvcN
			AQELBQADggEBAI9z2uF/gLGH9uwsz9GEYx728Yi3mvIRte9UrYpu
			GDco71wb5O9Qt2wmGCMiTR0mRyDpCZzicGJxqxHPkYnos/UqoEfA
			FMtOQsHdDA4b8Idb7OV316rgVNdF9IU+7LQd3nyKf1tNnJaK0KIy
			n9psMQz4pO9+c+iR3Ah6cFqgr2KBWfgAdKLI3VTKQVZHvenAT+0g
			3eOlCd+uKML80cgX2BLHb94u6b2akfI8WpQukSKAiaGMWMyDeiYZ
			dQKlDn0KJnNR6obLB6jI/WNaNZvSr79PMUjBhHDbNXuaGQ/lj/Rq
			DG8z2esccKIN47lQA2EC/0rskqTcLe4qNJMHtyznGI8=
			</data>
			<key>PayloadDescription</key>
			<string>Adds a CA root certificate</string>
			<key>PayloadDisplayName</key>
			<string>Federal Common Policy CA</string>
			<key>PayloadIdentifier</key>
			<string>com.apple.security.root.1EB75E7D-C3BC-46C2-AF42-51D80A2E12FC</string>
			<key>PayloadType</key>
			<string>com.apple.security.root</string>
			<key>PayloadUUID</key>
			<string>1EB75E7D-C3BC-46C2-AF42-51D80A2E12FC</string>
			<key>PayloadVersion</key>
			<integer>1</integer>
		</dict>
	</array>
	<key>PayloadDisplayName</key>
	<string>Federal Common Policy Certification Authority Profile</string>
	<key>PayloadIdentifier</key>
	<string>FCPCA-0001</string>
	<key>PayloadRemovalDisallowed</key>
	<false/>
	<key>PayloadType</key>
	<string>Configuration</string>
	<key>PayloadUUID</key>
	<string>AAD17D9A-DA41-4197-9F0F-3C3C6B4512F9</string>
	<key>PayloadVersion</key>
	<integer>1</integer>
</dict>
</plist>
```
The Configuration Profile above was created using Apple's free Configurator 2 Application. High-level steps to recreate the profile can be followed below:

1. Download and Install Apple Configurator 2
2. Open Configurator and click *File* -> *New Profile*
3. Under *General* enter a unique profile *Name*. In the example above, "Federal Common Policy Certification Authority Profile" was used.
4. Enter a unique *Identifier* for the profile. In the example above, "FCPCA-0001" was used.
5. Select the *Certificates* you'd like to add to the profile by browsing to local copies stored on your workstation. In the example above, a copy of the Federal Common Policy CA certificate was used.
6. Click *File* -> *Save* and save the Profile to a known file location.
7. Close Apple Configurator 2

Profiles can be installed manually by double clicking on the file, or through automated means via Apple workstation/mobile device configuration management applications. 

### iOS 
The following guidance can be used to redistribute COMMON into the iOS Trust Store.

#### Using Safari 
[STEPS TBD]

#### Using Apple Configuration Profile (Graphical User Interface Based Instructions)
Please see macOS instructions above.

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
1. [Apple Configuration Profile Reference](https://developer.apple.com/library/content/featuredarticles/iPhoneConfigurationProfileRef/Introduction/Introduction.html){:target="_blank"}
