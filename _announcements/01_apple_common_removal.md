---
layout: default
navtitle: Federal Common Policy CA Removal from Apple Trust Stores Impact
title: Federal Common Policy CA Removal from Apple Trust Stores Impact
pubDate: June 4, 2018
collection: announcements
permalink: announcements/applepkichanges/
description: Upcoming changes regarding Apple's Root Certificate Program could impact your agency. The Federal PKI Policy Authority has elected to remove our U.S. Government Root CA certificate (Federal Common Policy CA) from the Apple Operating System Trust Stores.  Tghis change will impact government users of Apple iOS, macOS, and tvOS, starting in **September&mdash;October 2018**. <br><br> This change will cause government users to receive errors when encountering instances of a Federal PKI CA-issued certificate. You can mitigate the impact for the government intranets and government-furnished equipment by using configuration management tools for federal devices.
---

Upcoming changes regarding Apple's Root Certificate Program could impact your agency. The Federal PKI Policy Authority (FPKIPA) has elected to remove our U.S. Government Root CA certificate (Federal Common Policy CA [FCPCA/COMMON]) from Apple's pre-installed Operating System Trust Stores. This change will impact government users of Apple iOS, macOS, and tvOS, starting in **September&mdash;October 2018**. Government users of Apple devices will receive errors when encountering instances of a Federal PKI CA-issued certificate.
<!--If "pre-installed," does this mean it will remain on an Apple machine until Apple pushes out an update to the pre-installed OS Trust Store?-->

{% include alert-info.html content="The FPKIPA has also elected to remove COMMON from Microsoft's Certificate Trust List." %} 

You can mitigate the impact for the government intranets and government-furnished equipment by using configuration management tools for federal devices.
<!--No hyphen in ICAMSC's "Subcommittee," acc. to IDManagement.gov.  "ICAM Listservs" doesn't have an extra "e".-->
{% include alert-info.html content="This announcement will be updated as more information and additional procedures become available. Please watch for additional updates from the Federal PKI listservs, ICAM listservs, and the ICAM Subcommittee." %}

- [How Does this Work?](#how-does-this-work)
- [What Will Be Impacted?](#what-will-be-impacted)
- [What Should I Do?](#what-should-i-do)
- [Frequently Asked Questions](#frequently-asked-questions)
- [Additional Resources](#additional-resources)

## How Does This Work?

Apple currently distributes over 200 trusted root CA certificates, including COMMON, in its default Operating Systems Trust Stores for iOS, macOS, and tvOS. Apple's Trust Stores distribute three types of root CA certificates:

- _Trusted Certificates_ &mdash; Always trusted certificates that establish a chain of trust. <!--I think engineers will understand "chain of trust" without further explanation--> 
- _Always Ask_ &mdash; Untrusted certificates that are not blocked. When one of these certificates is used, you'll be prompted to choose whether or not to trust it.
- _Blocked_ &mdash; Certificates believed to be compromised and will never be trusted.

Certificates in the Apple Trust Stores are organized within _Keychains_, which store passwords, encryption keys, certificates, and other data.<!--Good to define Keychain. Took this definition from Apple and reduced words. Does this cover it?--> There are three Keychain types:

- _Login_ Keychain  &mdash; Specific to the user account logged into a workstation.
- _System_ Keychain &mdash; Applies to all user accounts on a workstation (similar to the Microsoft Windows' _Local Machine_ certificate store). 
- _System Roots_ Keychain &mdash; Includes Apple's pre-installed, trusted root CA certificates. Apple will remove COMMON from this Keychain.
 
## What Will Be Impacted?
COMMON will be removed from these Apple Operating Systems' Trust Stores:

|**macOS Versions**|**iOS Versions**|**tvOS Versions**|
| :-------- |:-------- |:-------- |
| High Sierra (10.13) |	 iOS11 | tvOS11 |
| Sierra (10.12) | iOS10 | tvOS10 |
| El Capitan (10.11) | iOS9 | |
| Yosemite (10.10) |  iOS8 | |
| Mavericks (10.9) |  iOS7 | |

When this occurs, government users of these iOS, macOS, and tvOS versions will receive errors when encountering instances of a Federal PKI CA-issued certificate. 

A government user will receive an error on government-furnished equipment if any of the following are true:

1. Use of a PIV credential to log in to a government network 
2. Use of a PIV credential to authenticate to a government Virtual Private Network (VPN) endpoint <!--Is "endpoint" needed here?-->
3. When authenticating to an internet-facing, government authentication and collaboration portal
4. When browsing with Safari, Chrome, Edge, or Internet Explorer to a government **intranet** website that uses a Federal PKI CA-issued TLS/SSL certificate<!--If it's FPKI CA-issued, then it validates to COMMON...?-->
5. When opening an email in Apple Mail or Microsoft Outlook that was digitally signed using a Federal PKI CA-issued certificate
6. When opening a Microsoft Office document that was digitally signed with a Federal PKI CA-issued certificate

{% include alert-info.html content="If you are unsure whether your applications will be affected, email us at: fpki@gsa.gov." %} 

This change will also impact federal agency's partners that rely on COMMON&mdash;for example, a Department of Defense employee sending a digitally signed email to a business partner. <!--"For example," in this case, can't start a new sentence. This instance would be a sentence fragment (no verb). I know LaChelle did this with MS Hot Topic, but it's incorrect.-->

You can mitigate the risk to government missions, intranets, applications, and government-furnished equipment.

{% include alert-info.html content="The following procedures are intended for network engineers." %} 

## What Should I Do?

To limit the impact to your agency, you'll need to install COMMON as a trusted root certificate on all government-furnished, Apple devices. Several methods for installing COMMON are given below. <!--We say above that this announcement will be updated.  No need to repeat that.--> 

{% include alert-warning.html content="You should never install a root certificate without verifying it." %}

You can use the following certificate details to verify that your downloaded copy of the COMMON root certificate is authentic:

| **Federal Common Policy CA (FCPCA/COMMON)**  | **Certificate Details**                             |
| :--------  | :-------------------------------     |
| Federal Common Policy CA<br>(sometimes shown as _U.S. Government Common Policy_) | http://http.fpki.gov/fcpca/fcpca.crt |
| Distinguished Name | cn=Federal Common Policy CA, ou=FPKI, o=U.S. Government, c=US |
| SHA-1 Thumbprint | 90 5f 94 2f d9 f2 8f 67 9b 37 81 80 fd 4f 84 63 47 f6 45 c1 |
| SHA-256 Thumbprint | 89 4e bc 0b 23 da 2a 50 c0 18 6b 7f 8f 25 ef 1f 6b 29 35 af 32 a9 45 84 ef 80 aa f8 77 a3 a0 6e |


### macOS

You can use any of the methods below to redistribute COMMON to the macOS Trust Store's _System_ Keychain. <**MORE SHOULD GO HERE?**>

**Note:**&nbsp;&nbsp;In all instances below, replace `{DOWNLOAD_LOCATION}` with your file download location (e.g., `/Users/Sam.Jackson/Downloads`).

<**ADD level 4 DOWNLOAD ROOT CA CERTIFICATE TITLE BACK?**>

**CELESTE STOPPED HERE**

#### Download COMMON option 1 - Use a web browser
1. Open web browser.
2. Navigate to http://http.fpki.gov/fcpca/fcpca.crt.
3. When prompted, save the certificate file to your download location.


#### Download COMMON option 2 - Use a terminal
1. Open Terminal.<!--"Terminal" is network administration option on Apple computer?-->
- Click the *Spotlight* icon (magnifying glass in the upper right corner of the screen).
- Enter `terminal` in the search field. _The Terminal icon appears (black icon with a white symbol [e.g., ">_"] in the top left corner of the screen.<!--What does the black icon look like?-->
- Double-click the *Terminal* icon. _A Terminal window will open._

2. To download a copy of the Federal Common Policy CA certificate, enter:

```
$ curl -o {DOWNLOAD_LOCATION}/fcpca.crt "http://http.fpki.gov/fcpca/fcpca.crt"
```

##### Download COMMON option 3 - Email fpki@gsa.gov
1. Email fpki@gsa.gov requesting an out-of-band copy of COMMON's certificate.


##### Verify downloaded certificate file hash <!--This is a repeat of Download Option 2 above...? Combine both steps that require the Terminal window?-->
1. Open Terminal.
- Click the *Spotlight* icon. It's the magnifying glass in the upper-right corner of the screen.
- Enter `terminal` in the search field. _The Terminal icon appears._ It is a black icon with a white "greater than" and underscore symbol (e.g., ">_") in the top left corner.
- Double-click the *Terminal* icon. A terminal window will open.

2. Verify that the hash of the downloaded certificate matches the SHA-256 Thumbprint shown in the certificate details [above](#what-should-i-do) by entering the following command:

```
$ shasum -a 256 {DOWNLOAD_LOCATION}/fcpca.crt
```


#### Install COMMON certificate.
Three installation options are presented below for installing COMMON's certificate in macOS.


##### Installation Option 1 - Using Terminal (Command Line Based Instructions)
1. Install COMMON as a Trusted Root by entering the following command.

```
$ sudo security add-trusted-cert -d -r trustRoot -k "/Library/Keychains/System.keychain" {DOWNLOAD_LOCATION}/fcpca.crt
```


##### Installation Option 2 - Using Apple Keychain (Graphical User Interface Based Instructions)
1. Browse to the location on your workstation where the verified copy of COMMON's certificate was downloaded.

2. Double click on the certificate file.

3. When prompted, enter your password.

Note: Non-administrator users can follow the same steps above to install the certificate into the "Login" Keychain. The Login Keychain is specific to the user's account and will not impact other users on the workstation.


##### Installation Option 3 - Using Apple Configuration Profile (Graphical User Interface Based Instructions)
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


#### Using Apple Configuration Profile (Graphical User Interface-Based Instructions)
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
Please see [above](#how-does-this-work). 

## Additional Resources
1. [COMMON Removal from the Microsoft Certificate Trust List)](https://fpki.idmanagement.gov/announcements/mspkichanges/){:target="_blank"}.
1. [List of available trusted root certificates in macOS](https://support.apple.com/en-us/HT202858){:target="_blank"}
1. [List of available trusted root certificates in iOS](https://support.apple.com/en-us/HT204132){:target="_blank"}
1. [List of available trusted root certificates in tvOS](https://support.apple.com/en-us/HT207231){:target="_blank"}
1. [Apple Configuration Profile Reference](https://developer.apple.com/library/content/featuredarticles/iPhoneConfigurationProfileRef/Introduction/Introduction.html){:target="_blank"}
