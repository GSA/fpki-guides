You will need to download the COMMON root CA certificate **and** install the root certificate on government-furnished Apple devices.  Installations should use enterprise configuration management tools.  These steps should only be completed by the agency enterprise administrators or network engineers.  

* [Download Options](#download-options)
* [Installation Options](#installation-options)

When downloading the COMMON root CA certificate, you'll need to verify that the certificate contains these details:

| **Federal Common Policy CA (FCPCA/COMMON)**  | **Certificate Details**                             |
| :--------  | :-------------------------------     |
| Federal Common Policy CA<br>(sometimes shown as _U.S. Government Common Policy_) | http://http.fpki.gov/fcpca/fcpca.crt |
| Distinguished Name | cn=Federal Common Policy CA, ou=FPKI, o=U.S. Government, c=US |
| SHA-1 Thumbprint | 90 5f 94 2f d9 f2 8f 67 9b 37 81 80 fd 4f 84 63 47 f6 45 c1 |
| SHA-256 Thumbprint | 89 4e bc 0b 23 da 2a 50 c0 18 6b 7f 8f 25 ef 1f 6b 29 35 af 32 a9 45 84 ef 80 aa f8 77 a3 a0 6e |

{% include alert-warning.html content="You should never install a root certificate without verifying it." %} 


### Download Options
You will need to download the COMMON root CA certificate and install it on government-furnished Apple devices using one of these options:

* [Option 1. Download Using a Web Browser](#option-1-download-using-a-web-browser)
* [Option 2. Download Using Terminal](#option-2-download-using-terminal)
* [Option 3. Email Us](#option-3-email-us)


**Note:**&nbsp;&nbsp;For all options, replace _{DOWNLOAD_LOCATION}_ with your preferred file download location (e.g., `/Users/Sam.Jackson/Downloads`).

#### Option 1. Download Using a Web Browser

1. Open your web browser.
2. Navigate to the COMMON root CA certificate located at this URL:  http://http.fpki.gov/fcpca/fcpca.crt
3. When prompted, save the certificate file to your download location.
4. Click the *Spotlight* icon and search for _terminal_. 
5. Double-click the Terminal icon (black monitor icon with white ">_") to open a window.
6. Verify that the certificate's hash matches the SHA-256 Thumbprint in the certificate details above.

    ```
	$ shasum -a 256 {DOWNLOAD_LOCATION}/fcpca.crt
    ```
    
#### Option 2. Download Using Terminal

1. Click the *Spotlight* icon and search for _terminal_.
2. Double-click the Terminal icon (black monitor icon with white ">_") to open a window.
3. Download a copy of the COMMON root CA certificate:

    ```
	$ curl -o {DOWNLOAD_LOCATION}/fcpca.crt "http://http.fpki.gov/fcpca/fcpca.crt"
    ```

4. Verify that the certificate's hash matches the SHA-256 Thumbprint in the certificate details above.

    ```
	$ shasum -a 256 {DOWNLOAD_LOCATION}/fcpca.crt
    ```

#### Option 3. Email Us

Email us at fpki@gsa.gov to request an out-of-band copy of the COMMON root CA certificate.

### Installation Options

Install COMMON in your agency government-furnished Apple devices using these options: 

* [Option 1. Install Using an Apple Configuration Profile](#option-1-install-using-an-apple-configuration-profile)
* [Option 2. Install Using Command Line](#option-2-install-using-command-line)
* [Option 3. Install Using Apple Keychain](#option-3-install-using-apple-keychain)
* [Option 4. Install Using Safari Web Browser](#option-4-install-using-safari-web-browser)


#### Option 1. Install Using an Apple Configuration Profile
This option works for both macOS and iOS devices.

Apple Configuration Profiles (XML files) can be used to distribute trusted root certificates to your agency's enterprise Apple devices.  Create a Configuration Profile by using Apple's Configurator 2 application. An example configuration profile is included beneath the configuration creation instructions:

1. Download and install Configurator 2 from the Apple App Store.
2. Open Configurator and click *File* -> *New Profile*.
3. Under *General*, enter a unique profile *Name*. ("Federal Common Policy Certification Authority Profile" was used for this example.)
4. Enter a unique profile *Identifier*. ("FCPCA-0001" was used for this example.)
5. Browse to local *certificate* copies on your device. Select those that you'd like to add to the profile. (For this example, a copy of the Federal Common Policy CA root certificate was used.)
6. Click *File* -> *Save* to save your profile to a preferred file location.

This example configuration profile will install COMMON as a trusted root CA for _both macOS and iOS_ devices. Before using the profile, you should verify its suitability for your agency. To use the profile, copy the XML information and save it to a file with a `.mobileconfig` extension. 


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

##### Distribute Configuration Profiles 
The configuration profile can be distributed: 

1. Using Apple's _Configurator 2_ application with devices connected via USB 
2. In an email message to select agency users.  Email messages should never be used outside your agency domain.
3. On an agency intranet webpage 
4. [Over-the-air profile delivery and configuration](https://developer.apple.com/library/archive/documentation/NetworkingInternet/Conceptual/iPhoneOTAConfiguration/Introduction/Introduction.html#//apple_ref/doc/uid/TP40009505){:target="_blank"}
5. [Over-the-air using a Mobile Device Management server](https://developer.apple.com/library/archive/documentation/Miscellaneous/Reference/MobileDeviceManagementProtocolRef/6-MDM_Best_Practices/MDM_Best_Practices.html#//apple_ref/doc/uid/TP40017387-CH5-SW2){:target="_blank"} 

**Note:** In **iOS**, you must manually enable trust for SSL when you install a profile that is sent to you via email or downloaded from an intranet site. Certificates installed with Configurator, MDM, or as part of an MDM enrollment profile are automatically trusted for SSL. Instructions for enabling full trust of certificates distributed by email or downloaded from an intranet site are listed [here](#enable-full-trust-for-COMMON-in-iOS).


#### Option 2. Install Using Command Line
This option is for macOS devices only. 

1. Command line:

    ```
	$ sudo security add-trusted-cert -d -r trustRoot -k "/Library/Keychains/System.keychain" {DOWNLOAD_LOCATION}/fcpca.crt
    ```

#### Option 3. Install Using Apple Keychain
This option is for macOS devices only. 

1. Browse to your downloaded copy of the COMMON root CA certificate.
2. Double-click on the file.
3. When prompted, enter your password to install the certificate.

Non-administrative users may follow the steps above to install COMMON in the Login Keychain specific to their account. This will not impact other user accounts on a device. 


#### Option 4. Install Using Safari Web Browser
This option is for iOS devices only. 

1. Launch Safari.
2. Navigate to the COMMON root CA certificate located at this URL: http://http.fpki.gov/fcpca/fcpca.crt<br>
> System message appears: *The website is trying to open Settings to show you a configuration profile. Do you want to allow this?*<br>
3. Click *Allow*.<br>
> The COMMON Configuration Profile appears.<br> 
4. Click *More Details* and then the COMMON certificate entry.
5. Scroll down to *Fingerprints* and verify the certificate's SHA-256 hash.
6. At top left of screen, click *Back* and *Install Profile*. Then, click *Install* (top right).
7. When prompted, enter your device passcode.
8. Click *Install* (top right), and *Install* again.
9. Click *Done*.

#### Enable full trust for COMMON 
These instructions are specific to iOS.

1. From the iOS device's *Home* screen, go to *Settings* -> *General* -> *About* -> *Certificate Trust Settings*.
2. Beneath *Enable Full Trust for Root Certificates*, toggle _ON_ for the Federal Common Policy CA entry. 
3. When certificate appears, click *Continue*.
4. You can now successfully navigate to an intranet site whose TLS certificate was issued by a Federal PKI CA.
