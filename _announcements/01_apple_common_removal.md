---
layout: default
navtitle: Federal Common Policy CA Removal from Apple Trust Stores Impact
title: Federal Common Policy CA Removal from Apple Trust Stores Impact
pubDate: June 5, 2018
collection: announcements
permalink: announcements/applepkichanges/
description: Upcoming changes regarding Apple's Root Certificate Program could impact your agency. The Federal PKI Policy Authority has elected to remove our U.S. Government Root CA certificate (Federal Common Policy CA) from the Apple Operating System Trust Stores.  Tghis change will impact government users of Apple iOS, macOS, and tvOS, starting in **September-October 2018**. <br><br> This change will cause government users to receive errors when encountering instances of a Federal PKI CA-issued certificate. You can mitigate the impact for the government intranets and government-furnished equipment by using configuration management tools for federal devices.
---

Upcoming changes regarding Apple's Root Certificate Program could impact your agency. The Federal PKI Policy Authority (FPKIPA) has elected to remove our U.S. Government Root CA certificate (Federal Common Policy CA [FCPCA/COMMON]) from Apple's pre-installed Operating System Trust Stores. This change will impact government users of Apple iOS, macOS, and tvOS, starting in **September-October 2018**. Government users of Apple devices will receive errors when encountering instances of a Federal PKI CA-issued certificate.

{% include alert-info.html content="The FPKIPA has also elected to remove the Federal Common Policy CA root certificate from Microsoft's Certificate Trust List." %} 

You can mitigate the impact for the government intranets and government-furnished equipment by using configuration management tools for federal devices.
<!--No hyphen in ICAMSC's "Subcommittee," acc. to IDManagement.gov.  "ICAM Listservs" doesn't have an extra "e".-->
{% include alert-info.html content="This announcement will be updated as more information and additional procedures become available. Please watch for additional updates from the Federal PKI listservs, ICAM listservs, and the ICAM Subcommittee." %}

- [How Does this Work?](#how-does-this-work)
- [What Will Be Impacted?](#what-will-be-impacted)
- [What Should I Do?](#what-should-i-do)
- [Frequently Asked Questions](#frequently-asked-questions)
- [Additional Resources](#additional-resources)

## How Does This Work?

Apple currently distributes over 200 trusted root CA certificates, including the Federal Common Policy CA (FCPCA/COMMON), in its default Operating Systems Trust Stores for iOS, macOS, and tvOS. Apple's Trust Stores distribute three types of root CA certificates:

- _Trusted Certificates_ &mdash; Trusted certificates that establish a chain of trust. <!--Don't think we need to explain "chain of trust"--> 
- _Always Ask_ &mdash; Untrusted certificates that are not blocked. When one of these certificates is used<!--"encountered"?-->, you'll be prompted to choose whether or not to trust it.
- _Blocked_ &mdash; Believed to be compromised certificates that will never be trusted.

Certificates in the Apple Trust Stores are stored within _Keychains_. (Keychains store certificates, passwords, encryption keys, and other data.) Apple uses three Keychain types to store certificates:

- _Login Keychain_ &mdash; Applies to a user account logged into a workstation.
- _System Keychain_ &mdash; Applies to all user accounts on a workstation (similar to the Microsoft Windows' _Local Machine_ certificate store). 
- _System Roots Keychain_ &mdash; Includes Apple's _pre-installed_, trusted root CA certificates. COMMON will be removed from this Keychain.
 
## What Will Be Impacted?

These Apple Operating System versions on government-furnished equipment will be impacted:

|**macOS**|**iOS**|**tvOS**|
| :-------- |:-------- |:-------- |
| High Sierra (10.13) |	 iOS11 | tvOS11 |
| Sierra (10.12) | iOS10 | tvOS10 |
| El Capitan (10.11) | iOS9 | |
| Yosemite (10.10) |  iOS8 | |
| Mavericks (10.9) |  iOS7 | |

Government users of these Apple Operating Systems will receive errors on government-furnished equipment if any of the following are true:

1. Logging into a government network with a PIV credential 
2. Authenticating to a government Virtual Private Network (VPN) endpoint with a PIV credential
3. Authenticating to an internet-facing, government collaboration portal <!--"Authenticating to an...authentication portal" (two authentications)? With a PIV credential?-->
4. Browsing with Safari, Chrome, Edge, or Internet Explorer to a government **intranet** website that uses a Federal PKI CA-issued TLS/SSL certificate
5. Opening an Apple Mail or Microsoft Outlook email that was digitally signed using a Federal PKI CA-issued certificate
6. Opening a Microsoft Office document that was digitally signed with a Federal PKI CA-issued certificate

{% include alert-info.html content="If you are unsure whether your applications will be affected, email us at: fpki@gsa.gov." %} 

This change will also impact Federal Government partners that rely on COMMON&mdash;for example, a Department of Defense employee sending a digitally signed email to a business partner. <!--"For example," in this case, can't start a new sentence, because it would be a sentence fragment (no verb), which isn't correct.-->

You can mitigate the risk to government missions, intranets, applications, and government-furnished equipment.

## What Should I Do?

{% include alert-info.html content="The following procedures are intended for network engineers." %} 

To limit the impact to your agency, you will need to install COMMON as a trusted root certificate on all government-furnished Apple devices. Several methods for installing COMMON are given below. <!--We say above that this announcement will be updated.  No need to repeat that.--> 

{% include alert-warning.html content="You should never install a root certificate without verifying it." %}

**FIX** You can use the following certificate details to verify the authenticity of your downloaded copy of the COMMON root certificate:

| **Federal Common Policy CA (FCPCA/COMMON)**  | **Certificate Details**                             |
| :--------  | :-------------------------------     |
| Federal Common Policy CA<br>(sometimes shown as _U.S. Government Common Policy_) | http://http.fpki.gov/fcpca/fcpca.crt |
| Distinguished Name | cn=Federal Common Policy CA, ou=FPKI, o=U.S. Government, c=US |
| SHA-1 Thumbprint | 90 5f 94 2f d9 f2 8f 67 9b 37 81 80 fd 4f 84 63 47 f6 45 c1 |
| SHA-256 Thumbprint | 89 4e bc 0b 23 da 2a 50 c0 18 6b 7f 8f 25 ef 1f 6b 29 35 af 32 a9 45 84 ef 80 aa f8 77 a3 a0 6e |


### macOS

You can use any of the following methods to redistribute COMMON to the macOS Trust Store's _System Keychain_. 

**Note:**&nbsp;&nbsp;For all methods, replace _{DOWNLOAD_LOCATION}_ with your preferred file download location (e.g., `/Users/Sam.Jackson/Downloads`).

#### Download COMMON Root CA Certificate

##### Option 1:&nbsp;&nbsp;Download COMMON Using a Web Browser
1. Open your web browser.
2. Navigate to http://http.fpki.gov/fcpca/fcpca.crt.
3. When prompted, save the certificate file to your download location.
4. Use the Search tool (*Spotlight* icon) to search for _terminal_. 
5. Double-click the Terminal icon (a black monitor icon with a white ">_").
6. Download a copy of the Federal Common Policy CA certificate:

```
$ curl -o {DOWNLOAD_LOCATION}/fcpca.crt "http://http.fpki.gov/fcpca/fcpca.crt"
```

1. Verify that the hash of the downloaded certificate matches the SHA-256 Thumbprint shown in the [certificate details](#what-should-i-do):

```
$ shasum -a 256 {DOWNLOAD_LOCATION}/fcpca.crt
```

##### Option 2:&nbsp;&nbsp;Download COMMON Using Terminal
1. Use the Search tool (*Spotlight* icon) to search for _terminal_. 
2. Double-click the Terminal icon (a black monitor icon with a white ">_").
3. Download a copy of the Federal Common Policy CA certificate:

```
$ curl -o {DOWNLOAD_LOCATION}/fcpca.crt "http://http.fpki.gov/fcpca/fcpca.crt"
```

4. Verify that the downloaded certificate hash matches the SHA-256 Thumbprint shown in the [certificate details](#what-should-i-do):

```
$ shasum -a 256 {DOWNLOAD_LOCATION}/fcpca.crt
```

##### Option 3:&nbsp;&nbsp;Email Us
- To request an out-of-band copy of the COMMON Root CA certificate, email us at: fpki@gsa.gov.

#### Install COMMON Root CA Certificate
You can use 3 methods to install COMMON as a Trusted Root for macOS.


##### Option 1:&nbsp;&nbsp;Install COMMON Using Command Line
1. Install COMMON as a Trusted Root:

```
$ sudo security add-trusted-cert -d -r trustRoot -k "/Library/Keychains/System.keychain" {DOWNLOAD_LOCATION}/fcpca.crt
```

##### Option 2:&nbsp;&nbsp;Install COMMON Using Apple Keychain via Graphical User Interface
1. Browse to your downloaded copy of the COMMON root CA certificate.
2. Double-click on the certificate file.
3. When prompted, enter your password.
<!--Steps are missing. 
<!--Explain GUI.-->
<!--Does entering a password install COMMON in Apple System Keychain? (Apple Login Keychain mentioned in Alert box below as an alternative but no specific Keychain mentioned in these steps.) Needs clarification.-->
<!--I suspect that network engineers/administrators would normally do root CA certificate install for agency users...? General users, if authorized, would need more detailed steps.-->
<!--Re: Alert box--is it likely that multiple users may be using one workstation? Also, workstation = device (term used up to this point)?-->

{% include alert-info.html content="Non-administrative users may follow the same steps above to install COMMON in the Login Keychain, which is specific to a user's account. It will not impact other users' accounts on a workstation." %} 

<!--LaChelle has often stressed the need for enterprise solutions. Because of this, the enterprise solution in Option 3 needs to be Option 1.-->
##### Option 3:&nbsp;&nbsp;Install COMMON Using an Apple Configuration Profile via Graphical User Interface

{% include alert-info.html content="The following procedures are intended for enterprise administrators." %} 
<!--GUI in title. Explain where GUI comes in.-->
An Apple Configuration Profile is an XML file that allows you to distribute trusted root certificates (and other configuration information) across an Enterprise&mdash;in this case to macOS and iOS devices. 

There are 5 methods for deploying Apple Configuration Profiles to macOS and iOS devices:
<!--Methods #2-#5 are not explained herein. I searched Apple and found a link to include for #4 and maybe one for #5, but couldn't find anything on #2 or #3.  If Apple has no info we can link to and we don't provide steps, then we need to remove 2, 3, and maybe 5, since these won't be adding any value.-->
1. Using the free Apple _Configurator 2_ application with the device connected via USB 
2. In an email message <!--Couldn't find a link. Need link or steps or remove-->
3. On a webpage <!--Couldn't find a link. Need link or steps or remove-->
4. [Over-the-Air Profile Delivery and Configuration](https://developer.apple.com/library/archive/documentation/NetworkingInternet/Conceptual/iPhoneOTAConfiguration/Introduction/Introduction.html#//apple_ref/doc/uid/TP40009505){:target="_blank"}
5. Over-the-air using a Mobile Device Management Server<!--Need link or steps or remove. Will this link work?--> [Mobile Device Management Best Practices](https://developer.apple.com/library/archive/documentation/Miscellaneous/Reference/MobileDeviceManagementProtocolRef/6-MDM_Best_Practices/MDM_Best_Practices.html#//apple_ref/doc/uid/TP40017387-CH5-SW2){:target="_blank"}.


The following Configuration Profile was created by using Apple's Configurator 2. It will install COMMON as a trusted root CA on both macOS and iOS. Prior to use, verify the Profile's suitability for your agency. (To repurpose the Profile, save it with a `.plist` extension.)

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
For additional information about creating Configuration Profiles, see [Apple Configuration Profile Reference](https://developer.apple.com/library/content/featuredarticles/iPhoneConfigurationProfileRef/Introduction/Introduction.html){:target="_blank"}

###### Additional Configuration Profile tips:
<!--The following procedures seem tangential to our purpose for this Hot Topic.  What will the network engineer be using these procedures for in regard to removal of COMMON and distribution of COMMON to government Apple devices? If not related to the purpose of the Apple Trust Store Hot Topic, then moving these to another file and linking to it for additional information is the best solution.-->
You can use Apple's Configurator 2 to recreate the previous Profile for additional purposes, using these high-level steps:

1. Download and Install Apple Configurator 2.
2. Open Configurator and click *File* -> *New Profile*.
3. Under *General*, enter a unique profile *Name*. In the example profile, "Federal Common Policy Certification Authority Profile" was used.
4. Enter a unique *Identifier* for the profile. In the example above, "FCPCA-0001" was used.
5. Select the *Certificates* you'd like to add to the profile by browsing to local copies stored on your workstation. In the example above, a copy of the Federal Common Policy CA certificate was used.
6. Click *File* -> *Save* and save the profile to a preferred file location.<!--This saves only; it doesn't install a profile?-->
7. Close Apple Configurator 2.

To manually install a profile, double-click on it. To automate your installation of profiles, use Apple workstation/mobile device configuration management applications. <!--Link to "automated install" information?-->

### iOS 
The following guidance can be used to redistribute COMMON into the iOS Trust Store.


#### Option 1:&nbsp;&nbsp;Install COMMON Using Safari 
1. Open the Safari web browser.
2. Navigate to http://http.fpki.gov/fcpca/fcpca.crt
3. A message will appear indicating *The website is trying to open Settings to show you a configuration profile. Do you want to allow this?* Click *Allow*.
4. The COMMON installation profile will appear. Click *More Details* to view additional information about the profile. Click on COMMON's certificate entry and scroll down to verify the SHA-256 file hash of the certificate beneath the *Fingerprints* heading.
5. After verifying the hash, click *Back* (top left corner of screen), *Install Profile* (top left corner of screen), and then *Install* (top right corner of screen).
6. When prompted, enter your passcode.
7. Click *Install* (top right corner of screen), and then *Install* once more.
8. Click *Done*.

To enable full trust for COMMON, perform the following steps.
1. From the Home Screen navigate to *Settings*, *General*, *About*, *Certificate Trust Settings*.
2. Beneath the *Enable Full Trust for Root Certificates* heading, toggle ON the entry for Federal Common Policy CA. Click *Continue* when presented to enable trust.
3. You should now be able to successfully navigate to an intranet site whose TLS certificate was issued from a CA that chains to COMMON.


#### Option 2:&nbsp;&nbsp;Install COMMON Using Apple Configuration Profile via Graphical User Interface
Please see macOS instructions above for creating and installing Profiles.


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
Please see [What Will Be Impacted?](#what-will-be-impacted). 

## Additional Resources
1. [COMMON Removal from the Microsoft Certificate Trust List)](https://fpki.idmanagement.gov/announcements/mspkichanges/){:target="_blank"}.
1. [List of available trusted root certificates in macOS](https://support.apple.com/en-us/HT202858){:target="_blank"}
1. [List of available trusted root certificates in iOS](https://support.apple.com/en-us/HT204132){:target="_blank"}
1. [List of available trusted root certificates in tvOS](https://support.apple.com/en-us/HT207231){:target="_blank"}
1. [Apple Configuration Profile Reference](https://developer.apple.com/library/content/featuredarticles/iPhoneConfigurationProfileRef/Introduction/Introduction.html){:target="_blank"}
1. [Over-the-Air Profile Delivery and Configuration](https://developer.apple.com/library/archive/documentation/NetworkingInternet/Conceptual/iPhoneOTAConfiguration/Introduction/Introduction.html#//apple_ref/doc/uid/TP40009505){:target="_blank"}
1. [Mobile Device Management Best Practices](https://developer.apple.com/library/archive/documentation/Miscellaneous/Reference/MobileDeviceManagementProtocolRef/6-MDM_Best_Practices/MDM_Best_Practices.html#//apple_ref/doc/uid/TP40017387-CH5-SW2){:target="_blank"}
