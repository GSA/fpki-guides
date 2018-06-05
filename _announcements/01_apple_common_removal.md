---
layout: default
navtitle: Federal Common Policy CA Removal from Apple Trust Stores Impact
title: Federal Common Policy CA Removal from Apple Trust Stores Impact
pubDate: June 6, 2018
collection: announcements
permalink: announcements/applepkichanges/
description: Upcoming changes regarding Apple's Root Certificate Program could impact your agency. The Federal PKI Policy Authority has elected to remove our U.S. Government Root CA certificate (Federal Common Policy CA) from the Apple Operating System Trust Stores.  Tghis change will impact government users of Apple iOS, macOS, and tvOS, starting in **September-October 2018**. <br><br> This change will cause government users to receive errors when encountering instances of a Federal PKI CA-issued certificate. You can mitigate the impact for the government intranets and government-furnished equipment by using configuration management tools for federal devices.
---

Upcoming changes regarding Apple's Root Certificate Program could impact your agency. The Federal PKI Policy Authority (FPKIPA) has elected to remove our U.S. Government Root CA certificate (Federal Common Policy CA [FCPCA/COMMON]) from Apple's pre-installed Operating System Trust Stores. 
<!--No hyphen in ICAMSC's "Subcommittee," acc. to IDManagement.gov. No extra "e" in Listservs.-->
{% include alert-info.html content="This announcement will be updated as more information and additional procedures become available. Please watch for additional updates from the Federal PKI listservs, ICAM listservs, and the ICAM Subcommittee." %}

Starting in **September-October 2018**, government users of Apple iOS, macOS, and tvOS devices will receive errors when encountering instances of a Federal PKI CA-issued certificate. You can mitigate the impact for the government intranets and government-furnished equipment by using configuration management tools for federal devices.

{% include alert-info.html content="The FPKIPA has also elected to remove the Federal Common Policy CA root certificate from Microsoft's Certificate Trust List." %}

- [How Does this Work?](#how-does-this-work)
- [What Will Be Impacted?](#what-will-be-impacted)
- [What Should I Do?](#what-should-i-do)
- [Frequently Asked Questions](#frequently-asked-questions)
- [Additional Resources](#additional-resources)

## How Does This Work?

Apple currently distributes Federal Common Policy CA (FCPCA/COMMON) through its pre-installed Operating Systems Trust Stores for iOS, macOS, and tvOS. 

Three root CA _certificate types_ reside in Apple's Trust Stores:

- _Trusted Certificates_ &mdash; Trusted certificates that establish a chain of trust. <!--Don't think we need to explain "chain of trust"--> 
- _Always Ask_ &mdash; Untrusted certificates that are not blocked. If one of these certificates is used<!--"encountered"?-->, the Apple Operating System will ask you to choose whether or not to trust it.
- _Blocked_ &mdash; Potentially compromised certificates that will never be trusted.

These certificate types are stored within Apple _Keychains_:

- _Login Keychain_ &mdash; Certificates associated with a user account logged into a workstation.<!--Can we say "device" vs. workstation? For most instances, we say "device"-->
- _System Keychain_ &mdash; Certificates associated with all user accounts on a workstation (similar to the Microsoft Windows' _Local Machine_ certificate store). <!--Multiple users using one workstation? Change to "device"?-->
- _System Roots Keychain_ &mdash; Includes Apple's _pre-installed_, trusted root CA certificates. COMMON will be removed from this Keychain.
 
## What Will Be Impacted?

These Apple Operating System versions will be impacted:

|**macOS**|**iOS**|**tvOS**|
| :-------- |:-------- |:-------- |
| High Sierra (10.13) |	 iOS11 | tvOS11 |
| Sierra (10.12) | iOS10 | tvOS10 |
| El Capitan (10.11) | iOS9 | |
| Yosemite (10.10) |  iOS8 | |
| Mavericks (10.9) |  iOS7 | |

Government users will receive errors on government-furnished equipment if any of the following are true:

1. Logging into a government network with a PIV credential 
2. Authenticating to a government Virtual Private Network (VPN) endpoint with a PIV credential
3. Authenticating to an internet-facing, government collaboration portal <!--"Authenticating to an...authentication portal" (two authentications)? With a PIV credential?-->
4. Browsing with Safari, Chrome, Edge, or Internet Explorer to a government **intranet** website that uses a Federal PKI CA-issued TLS/SSL certificate
5. Opening an Apple Mail or Microsoft Outlook email that was digitally signed using a Federal PKI CA-issued certificate
6. Opening a Microsoft Office document that was digitally signed with a Federal PKI CA-issued certificate<br></br>

This change will also impact Federal Government partners that rely on COMMON&mdash;for example, a Department of Defense employee sending a digitally signed email to a business partner. 

{% include alert-info.html content="If you are unsure whether your applications will be affected, email us at: fpki@gsa.gov." %} 

You can mitigate the risk to government missions, intranets, applications, and government-furnished equipment.

## What Should I Do?

The following procedures are intended for network engineers. 

You will need to download the COMMON root CA certificate and install it on government-furnished, macOS and iOS devices.  

When downloading the COMMON root CA certificate by using the options below, you'll need to verify that it contains these details:

| **Federal Common Policy CA (FCPCA/COMMON)**  | **Certificate Details**                             |
| :--------  | :-------------------------------     |
| Federal Common Policy CA<br>(sometimes shown as _U.S. Government Common Policy_) | http://http.fpki.gov/fcpca/fcpca.crt |
| Distinguished Name | cn=Federal Common Policy CA, ou=FPKI, o=U.S. Government, c=US |
| SHA-1 Thumbprint | 90 5f 94 2f d9 f2 8f 67 9b 37 81 80 fd 4f 84 63 47 f6 45 c1 |
| SHA-256 Thumbprint | 89 4e bc 0b 23 da 2a 50 c0 18 6b 7f 8f 25 ef 1f 6b 29 35 af 32 a9 45 84 ef 80 aa f8 77 a3 a0 6e |

{% include alert-warning.html content="You should never install a root certificate without verifying it." %}

### macOS&nbsp;&mdash;&nbsp;Download COMMON Options

You can download COMMON to your macOS device by using Options 1, 2, or 3. 

**Note:**&nbsp;&nbsp;For all options, replace _{DOWNLOAD_LOCATION}_ with your preferred file download location (e.g., `/Users/Sam.Jackson/Downloads`).
<!--Removed major heading here so the subheadings will be level 4.  Level 5 looks too small on Federalist.-->
<!--Moved verification steps to be shown as continuations of Options 1 and 2.-->
#### Option 1:&nbsp;&nbsp;Download COMMON Using a Web Browser
1. Open your web browser.
2. Navigate to [COMMON root CA certificate](http://http.fpki.gov/fcpca/fcpca.crt){:target="_blank"}.
3. When prompted, save the certificate file to your download location.
4. Click the *Spotlight* icon (Search tool) and seach for _terminal_. 
5. Double-click the Terminal icon (black monitor icon with white ">_") to open a window.
6. Verify that the certificate's hash matches the SHA-256 Thumbprint in the [certificate details](#what-should-i-do):

```
$ shasum -a 256 {DOWNLOAD_LOCATION}/fcpca.crt
```

#### Option 2:&nbsp;&nbsp;Download COMMON Using Terminal
1. Click the *Spotlight* icon (Search tool) and seach for _terminal_.
2. Double-click the Terminal icon (black monitor icon with white ">_") to open a window.
3. Download a copy of the COMMON root CA certificate:

```
$ curl -o {DOWNLOAD_LOCATION}/fcpca.crt "http://http.fpki.gov/fcpca/fcpca.crt"
```

4. Verify that the certificate's hash matches the SHA-256 Thumbprint in the [certificate details](#what-should-i-do):

```
$ shasum -a 256 {DOWNLOAD_LOCATION}/fcpca.crt
```

#### Option 3:&nbsp;&nbsp;Email Us
- To request an out-of-band copy of the COMMON root CA certificate to download, email us at: fpki@gsa.gov.

### macOS&nbsp;&mdash;&nbsp;Install COMMON Options

You can install COMMON in your macOS device's Trust Store by using Options 1, 2, or 3. 

#### Option 1:&nbsp;&nbsp;Install COMMON Using Command Line
1. Install the COMMON root CA certificate as a Trusted Root:

```
$ sudo security add-trusted-cert -d -r trustRoot -k "/Library/Keychains/System.keychain" {DOWNLOAD_LOCATION}/fcpca.crt
```

#### Option 2:&nbsp;&nbsp;Install COMMON Using Apple Keychain
<!--Don't think GUI is necessary here. If macOS, it will be understood...?-->
1. Browse to your downloaded copy of the COMMON root CA certificate.
2. Double-click on the certificate file.
3. When prompted, enter your password.
<!--Does entering your password install COMMON in Apple System Keychain? If so, add to #3: "to install COMMON in the System Keychain" (if correct) or add explanation.

<!--I suspect that network engineers/administrators would normally do root CA certificate install for agency users... General users, if authorized, would need more detailed steps.-->
Non-administrative users may follow the steps above to install COMMON in the Login Keychain, which is specific to their accounts. This will not impact other user accounts on a workstation. 

<!--LaChelle usually stresses the need for an Enterprise solution. Because of this, Option 3 should become Option 1.-->
#### Option 3:&nbsp;&nbsp;Install COMMON Using an Apple Configuration Profile
<!--Don't think GUI is necessary here. If macOS, it will be understood...?-->
<!--This Option is missing some needed details (comments below).-->
The following procedures are intended for enterprise administrators. 

An Apple Configuration Profile is an XML file that allows you to distribute trusted root certificates (and other configuration information) across an Enterprise&mdash;in this case to _both macOS and iOS_ devices. 

You can create Configuration Profiles to install COMMON as follows:
<!--Is Configurator 2 used to create profiles for Steps 1-5?  If so, best organizationally to mention it before the steps, not in Step 1.  Options #2-#5 are not explained. I found links for #4 and maybe #5 but couldn't find an Apple link for #2 or #3.  Suggest that if Apple has no info and we don't provide steps, then we should remove 2, 3, and maybe 5. Consider value added.-->
1. Use the free Apple _Configurator 2_ and connect devices via USB <!--Mention connecting devices via USB in detailed configuration profile steps below?-->
2. In an email message <!--How is profile is created and how is email used? Add info or link.-->
3. On a webpage <!--How is profile is created and how is webpage used? Add info or link.-->
4. [Over-the-air profile delivery and configuration](https://developer.apple.com/library/archive/documentation/NetworkingInternet/Conceptual/iPhoneOTAConfiguration/Introduction/Introduction.html#//apple_ref/doc/uid/TP40009505){:target="_blank"}
5. [Over-the-air using a Mobile Device Management server](https://developer.apple.com/library/archive/documentation/Miscellaneous/Reference/MobileDeviceManagementProtocolRef/6-MDM_Best_Practices/MDM_Best_Practices.html#//apple_ref/doc/uid/TP40017387-CH5-SW2){:target="_blank"}. <!--Will this link work? Or need explanation/steps--> 

This example Configuration Profile (created with Apple's Configurator 2) will install COMMON as a trusted root CA for _both macOS and iOS_. Prior to use, you should verify the profile's suitability for your agency. (To repurpose the profile, save it with a `.plist` extension.) 

For more information about configuration profiles, see: [Apple Configuration Profile Reference](https://developer.apple.com/library/content/featuredarticles/iPhoneConfigurationProfileRef/Introduction/Introduction.html){:target="_blank"}

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
#### Additional Configuration Profile Tips:
<!--Are these steps general info for creating configuration profiles--not necessarily to do with installing COMMON? Can these steps be used to create the profile for iOS procedures? This is all good information but, since there's no mention of using for macOS or iOS, these steps seem tangential to our Apple Hot Topic purpose.  If not directly related to the COMMON needs at hand, these steps could be moved to a separate Markdown file and a link added here to that file as an "additional resource." I did this with the MS Hot Topic for CTL testing procedures. I'd be glad to do that. Let me know.-->
You can use Apple Configurator 2 to recreate the example Configuration Profile for additional purposes:

1. Download and Install Apple Configurator 2.
2. Open Configurator and click *File* -> *New Profile*.
3. Under *General*, enter a unique profile *Name*. (In the example profile, "Federal Common Policy Certification Authority Profile" was used.)
4. Enter a unique *Identifier* for the profile. (In the example profile, "FCPCA-0001" was used.)
5. Browse to local *certificate* copies on your workstation or device. Select those that you'd like to add to the profile. (In the example profile, a copy of the Federal Common Policy CA root certificate was used.)
6. Click *File* -> *Save* and save the profile to a preferred file location.
7. Close Apple Configurator 2.
8. To manually install a profile, double-click on it.
_OR_
8. To automate profile installation, use Apple workstation/mobile device configuration management applications: <!--Searched Apple Developers for a link to "configuration management applications" and couldn't find one. Do you have a link?-->  

### iOS&nbsp;&mdash;&nbsp;Install COMMON Options
You can install COMMON in your iOS device's Trust Store by using the options below. 
<!--These steps cover only "install." How is download of COMMON for iOS accomplished--through the configuration profile mentioned in Step 2 system message? Need brief explanation, unless all network engineers are absolutely clear about this.-->
#### Option 1:&nbsp;&nbsp;Install COMMON Using Safari Web Browser
1. Open the Safari web browser.
2. Navigate to [COMMON root CA certificate](http://http.fpki.gov/fcpca/fcpca.crt){:target="_blank"}
> System message appears: *The website is trying to open Settings to show you a configuration profile. Do you want to allow this?* <!--
3. Click *Allow*.
> The COMMON installation profile appears.<!--Is "Installation profile" the same thing as configuration profile?--> 
4. Click *More Details* to see the profile details and then click the COMMON certificate entry.
5. Scroll down to *Fingerprints* and verify the SHA-256 file hash of the certificate.
6. Click *Back* (top left corner of screen); *Install Profile* (top left corner of screen); and then *Install* (top right corner of screen).
7. When prompted, enter your passcode.
8. Click *Install* (top right corner of screen), and then *Install* once more.
9. Click *Done*.

Next, you'll need to enable full trust for COMMON:

1. From the iOS device's *Home* screen, go to *Settings* -> *General* -> *About* -> *Certificate Trust Settings*.
2. Beneath *Enable Full Trust for Root Certificates*, toggle _ON_ for the Federal Common Policy CA entry. 
3. When the system presents the certificate, click *Continue* .
4. You should now be able to successfully navigate to an intranet site whose TLS certificate was issued by a CA that chains to COMMON.


#### Option 2:&nbsp;&nbsp;Install COMMON Using Apple Configuration Profile
<!--Don't think GUI is needed in title-->
You can use the macOS configuration profile procedures above to install COMMON on iOS devices: [Apple Configuration Profiles](#install-using-an-apple-configuration-profile).<!--Correct? If this type of link will work...?-->

<!--If tvOS is not used by agencies, suggest removing tvOS from affected OSs table.-->

## Frequently Asked Questions

### 1.&nbsp;&nbsp;Why is COMMON being removed? 
The Federal PKI CAs don't comply with Apple's requirements for globally trusted TLS/SSL certificates. Apple's requirements include: 

**a.&nbsp;&nbsp;Requirement for Fully-Qualified Domain Names (FQDNs)**<br>
Apple plans to restrict TLS/SSL certificates to only those certificates using FQDNs ending in .gov, .mil, or fed.us. Some federal agencies issue TLS/SSL certificates to intranet assets. These certificates either:&nbsp;&nbsp;don't have FQDNs; contain intranet domains that don't end in .gov, .mil, or fed.us; or use short names (aliases). Under Apple's requirements, these agencies would need to reissue, re-install, and reconfigure all "non-compliant" certificates and applications. The Federal PKI community has determined that this would have a negative impact on mission applications on the intranets.

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
1. [Apple Keychains](https://developer.apple.com/documentation/security/keychain_services){:target="_blank"}<!--Does this work for useful, general Keychains info link?-->
1. [Apple Configuration Profile Reference](https://developer.apple.com/library/content/featuredarticles/iPhoneConfigurationProfileRef/Introduction/Introduction.html){:target="_blank"}
1. [Over-the-Air Profile Delivery and Configuration](https://developer.apple.com/library/archive/documentation/NetworkingInternet/Conceptual/iPhoneOTAConfiguration/Introduction/Introduction.html#//apple_ref/doc/uid/TP40009505){:target="_blank"}
1. [Mobile Device Management Best Practices](https://developer.apple.com/library/archive/documentation/Miscellaneous/Reference/MobileDeviceManagementProtocolRef/6-MDM_Best_Practices/MDM_Best_Practices.html#//apple_ref/doc/uid/TP40017387-CH5-SW2){:target="_blank"}
