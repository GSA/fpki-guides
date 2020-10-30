---
layout: default 
title: 3. Distribute the certificate to Operating Systems
collection: common
permalink: common/distribute-os/
---

{% include alert-info.html content="<strong>We're calling for all solutions!</strong> If you'd like to share one of your agency's playbooks to distribute a trusted root CA certificate to an Operating System trust store, create an <a href=\"https://github.com/GSA/fpki-guides/issues/new\" target=\"_blank\">issue on GitHub</a> or email us at fpkirootupdate@gsa.gov." %}

To distribute the Federal Common Policy CA G2 (FCPCA G2) certificate, use one of these options:

### Microsoft Solutions
1. [Use Microsoft Certutil](#use-microsoft-certutil)
1. [Use Microsoft Group Policy Object (GPO)](#use-microsoft-group-policy-object-gpo)
1. [Use third-party configuration management tools](#use-third-party-configuration-management-tools)
1. [Use Microsoft Certificate Manager for unmanaged devices](#manually-use-microsoft-certificate-manager-for-unmanaged-devices)

### macOS Solutions
1. [Use an Apple Configuration Profile](#create-distribute-and-install-an-apple-configuration-profile)
1. [Use Command Line](#install-fcpca-g2-using-command-line)
1. [Use Apple Keychain](#install-fcpca-g2-using-apple-keychain-access)

### iOS Solutions
1. [Use an Apple Configuration Profile](#install-fcpca-g2-using-an-apple-configuration-profile-in-ios)
1. [Use the Safari Web Browser](#install-fcpca-g2-using-safari-web-browser)
1. [Enable Full Trust for FCPCA G2](#enable-full-trust-for-fcpca-g2)

### Linux/Unix Solutions
1. [Use the command line](#use-the-command-line)


{% include alert-warning.html content="<strong>Important!</strong> If your enterprise systems do not have <a href=\"https://fpki.idmanagement.gov/truststores/#how-do-i-set-dynamic-path-validation-for-the-microsoft-trust-store-in-windows-operating-systems\" target=\"_blank\">dynamic path validation</a> enabled, you may also need to distribute the <a href=\"../certificates\">intermediate CA certificates</a> issued by the Federal Common Policy CA G2.  These certificates will available after November 18, 2020." %}

<br>




---------------------------------------------------


## Microsoft Solutions

### Use Microsoft Certutil 

{% include alert-warning.html content="You must have Enterprise Administrator privileges for the Domain to use these procedures. The commands must be run from an agency Domain Controller." %}

1. Click **Start**, type **cmd**, and press **Enter**.
1. Run command:
    ```
        certutil -dspublish -f [PATH\]fcpcag2.crt RootCA
    ```

1. To verify that FCPCA G2 was distributed, run commands:
    ```
        gpupdate /force
        certutil -viewstore -enterprise
    ```

1. Confirm that FCPCA G2 is contained in the output details.
1. Verify the certificate details against the [expected values]({{site.baseurl}}/common/obtain-and-verify) (e.g., serial number, hash, etc.).


*Sample steps run on Microsoft Server 2016:*
![Sample Steps]({{site.baseurl}}/img/certutil.gif){:style="width:85%;"}


### Use Microsoft Group Policy Object (GPO)

{% include alert-warning.html content="You must have Enterprise Administrator privileges for the Domain to use these procedures. The commands must be run from an agency Domain Controller." %}

1. Navigate to **Server Manager**.
1. Select **Tools**.
1. Select **Group Policy Management** from the drop-down list.
1. Right-click your desired domain(s), and select **Create a GPO in this domain, and Link it here…**.
1. Enter a GPO **Name** and click **OK**.
1. Right-click the newly created *Group Policy Object (GPO)* and click **Edit…**.
1. Navigate to **Policies** -> **Windows Settings** -> **Security Settings** -> **Public Key Policies**.  
1. Right-click **Trusted Root Certification Authorities**, and select **Import**. *The Certificate Import Wizard will open*. 
1. Browse to and select your copy of FCPCA G2.
1. Verify that the target **Certificate Store** presents **Trusted Root Certification Authorities**, and select **Next**.
1. Select **Finish** to complete the import.  You'll see the message, *The import was successful*.
1. Close the **Group Policy Management** window.
1. Wait for clients to consume the new policy.
1. [OPTIONAL] You can force client consumption:  click **Start**, type **cmd**, press **Enter**, and run command:
    ```
          gpupdate /force
    ```

*Sample steps run on Microsoft Server 2016:*
![Sample Steps]({{site.baseurl}}/img/gpo.gif){:style="width:85%;"}

### Use third-party configuration management tools

{% include alert-warning.html content="You must have Enterprise Administrator privileges for the Domain to use these procedures. The commands must be run from an agency Domain Controller." %}

You can use third-party configuration management tools, such as BigFix.

1. Using BigFix, schedule a task and push the certificate file. Run command (example): 
    ```
        certutil -f -addstore root “fcpcag2.crt”
    ```

### Use Microsoft Certificate Manager for unmanaged devices

To distribute FCPCA G2 to unmanaged devices:

1. Click **Start**, type **certmgr.msc**, and then press **Enter**.
1. Right-click **Trusted Root Certification Authorities** and select **All Tasks** -> **Import**. *The Certificate Import Wizard will open*. 
1. Browse to and select your copy of FCPCA G2.
1. Verify that the desired **Certificate Store** presents **Trusted Root Certification Authorities**, and select *Next*.
1. Select *Finish* to complete the import. You'll see the message, *The import was successful*.

> **Note:** If several users share a device, you can run **certlm.msc** to simultaneously update the certificate stores for the accounts on the device (vs. updating each account separately). 

<br>

---------------------------------------------------


## macOS Solutions

### Create, Distribute, and Install an Apple Configuration Profile

For **macOS and [iOS](#install-fcpca-g2-using-an-apple-configuration-profile-in-ios)** government-furnished devices, you can use Apple Configuration Profiles (XML files) to distribute and automatically install FCPCA G2.  

These steps will help you to create, distribute, and install profiles using Apple’s free *Configurator 2* application. Third-party applications are available.

{% include alert-warning.html content="Only System or Mobile Device Management (MDM) Administrators should create, distribute, and install Apple Configuration Profiles." %} 

### Create an Apple Configuration Profile

1. As an administrator, you will need to first [download and verify]({{site.baseurl}}/common/obtain-and-verify/) a copy of FCPCA G2 to your device.   
2. Then, download and install *Configurator 2* from the Apple App Store.
3. Open *Configurator 2* and click **File** -> **New Profile**.
4. Under the **General** tab, enter a unique profile **Name** ("Federal FCPCA G2 Policy Certification Authority Profile" was used for this example) and **Identifier** ("FCPCAG2-0001" was used for this example).
5. Under the **Certificates** tab, click **Configure**; then browse to and select your verified copy of FCPCA G2.
6. (*Optional*) Add additional agency-specific configurations or customizations. 
7. Click **File** -> **Save** to save your profile to your preferred location. 
8. Follow the steps to [distribute](#distribute-an-apple-configuration-profile) the profile across your enterprise.

**Note:**&nbsp;&nbsp;This video shows you how to create an Apple Configuration Profile. The steps and example below also show you how to do this.<br><br>This profile can be reused.
<br>
<video width="85%" controls>
  <source src="{{site.baseurl}}/video/create_profile.mp4" type="video/mp4">
</video>
<br>

<p align="center">
<b>APPLE CONFIGURATION PROFILE (EXAMPLE)</b>
</p>

{% include alert-warning.html content="Before using this profile, you should verify its suitability for your agency." %} 

To use this profile, copy the XML information and save it as a `.mobileconfig` file. 

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>PayloadContent</key>
	<array>
		<dict>
			<key>PayloadCertificateFileName</key>
			<string>fcpcag2.crt</string>
			<key>PayloadContent</key>
			<data>
			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
			ee/xJ/c0cIHZWMw0HoRZPbo=
			</data>
			<key>PayloadDescription</key>
			<string>Adds a CA root certificate</string>
			<key>PayloadDisplayName</key>
			<string>Federal Common Policy CA G2</string>
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
	<string>Federal Common Policy Certification Authority G2 Profile</string>
	<key>PayloadIdentifier</key>
	<string>FCPCAG2-0001</string>
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

### Distribute an Apple Configuration Profile

{% include alert-warning.html content="Only System or MDM Administrators should use these steps. You should never email an Apple Configuration Profile to someone outside your agency's domain." %} 

Use Apple's _Configurator 2_ to distribute your Apple Configuration Profile to government-furnished **macOS and iOS** devices in these ways: 

- Physically connect to the user's device.
- Email a profile to specific users.* 
- Share a profile on an agency intranet webpage.*
- [Share via over-the-air profile delivery and configuration (Apple Developer Library)](https://developer.apple.com/library/archive/documentation/NetworkingInternet/Conceptual/iPhoneOTAConfiguration/Introduction/Introduction.html#//apple_ref/doc/uid/TP40009505){:target="_blank"}.
- [Share via over-the-air delivery and configuration from an MDM server (Apple Developer Library)](https://developer.apple.com/library/archive/documentation/Miscellaneous/Reference/MobileDeviceManagementProtocolRef/6-MDM_Best_Practices/MDM_Best_Practices.html#//apple_ref/doc/uid/TP40017387-CH5-SW2){:target="_blank"}. (Third-party applications are available.)
> **For iOS only***&nbsp;&mdash;&nbsp;If you download and install FCPCA G2 from an email or an intranet website, you will need to _manually enable SSL trust for FCPCA G2_. This is not needed if you use Configurator 2 with over-the-air (OTA) methods or an MDM enrollment profile to install FCPCA G2. (See [Enable Full Trust for FCPCA G2](#enable-full-trust-for-fcpca-g2).)

### Install an Apple Configuration Profile

We recommend using an automated method to install Apple Configuration Profiles on government-furnished Apple devices (e.g., a desktop configuration management or MDM tool), which will distribute FCPCA G2. (If you have questions about third-party products, email us at fpki@gsa.gov.)

You can also manually install a profile. 

**Note:**&nbsp;&nbsp;This video shows you how to manually install an Apple Configuration Profile on **macOS**.
<br>
<video width="85%" controls>
  <source src="{{site.baseurl}}/video/manual_install_profile.mp4" type="video/mp4">
</video>
<br>

### Install FCPCA G2 Using Command Line

{% include alert-info.html content="These steps will install FCPCA G2 in the System Keychain. System administrators should use these steps. Non-administrators will encounter permission errors." %}

1. Click the **Spotlight** icon and search for *terminal*.
2. Double-click the **Terminal** icon (black monitor icon with white “>_”) to open a window.
3. Run the following command:

    ```
	$ sudo security add-trusted-cert -d -r trustRoot -k "/Library/Keychains/System.keychain" {DOWNLOAD_LOCATION}/fcpcag2.crt
    ```
    
**Note:**&nbsp;&nbsp;This video shows you how to install FCPCA G2 using the command line.
<br>
<video width="85%" controls>
  <source src="{{site.baseurl}}/video/install_command_line.mp4" type="video/mp4">
</video>
<br>

### Install FCPCA G2 Using Apple Keychain Access

You can use one of these methods to install FCPCA G2 by using Apple Keychain Access:

* System Keychain
* Login Keychain

#### System Keychain
{% include alert-info.html content="These steps will install FCPCA G2 in the System Keychain. System administrators should use these steps.  Non-administrators will encounter permission errors." %}

1. Click the **Spotlight** icon and search for *Keychain Access*.
2. Double-click the **Keychain Access** icon to open the application.
3. Click the *System* keychain from the left-hand navigation.
4. Click **File** -> **Import Items**
5. Browse to and select your verified copy of FCPCA G2.
6. When prompted, enter your *administrator* username and password.
7. Keychain Access will present the installed certificate.

**Note:**&nbsp;&nbsp;This video shows you how to install FCPCA G2 by using the Apple Keychain Access import process.
<br>
<video width="85%" controls>
  <source src="{{site.baseurl}}/video/keychain_gui_admin.mp4" type="video/mp4">
</video>
<br>
#### Login Keychain

{% include alert-info.html content="These steps will install FCPCA G2 in the login Keychain. Both system administrators and non-administrators can use these steps." %}

1. Browse to your downloaded, verified copy of FCPCA G2.
2. Double-click on the file.
3. Keychain Access will open and present the installed certificate.

**Note:**&nbsp;&nbsp;This video shows non-administrators how to install FCPCA G2 by using<br>the Apple Keychain Access import process.
<br>
<video width="85%" controls>
  <source src="{{site.baseurl}}/video/keychain_gui_non_admin.mp4" type="video/mp4">
</video>
<br>


<br>

---------------------------------------------------


## iOS Solutions

### Install FCPCA G2 Using an Apple Configuration Profile in iOS
Apple Configuration Profiles can be used to install FCPCA G2 on both macOS and iOS devices. 

Review the [Apple Configuration Profiles](#install-an-apple-configuration-profile) guidance above.

### Install FCPCA G2 Using Safari Web Browser
The Safari web browser can be used to install FCPCA G2 on **iOS devices only**. 

{% include alert-info.html content="These steps will install FCPCA G2 as a trusted root certificate. System administrators or non-administrators can use these steps." %}

1. Launch **Safari**.
2. Navigate to the FCPCA G2 root CA certificate: http://repo.fpki.gov/fcpca/fcpcag2.crt.<br>
> System message says: *The website is trying to open Settings to show you a configuration profile. Do you want to allow this?*<br>
3. Click **Allow**.<br>
> The FCPCA G2 configuration profile appears.<br> 
4. Click **More Details** and then the FCPCA G2 certificate entry.
5. Scroll down to **Fingerprints** and verify the certificate's SHA-256 hash against the [expected value]({{site.baseurl}}/common/obtain-and-verify).
6. At the top left of screen, click **Back** and **Install Profile**. Then, click **Install** (top right).
7. When prompted, enter your device **passcode**.
8. Click **Install** (top right), and **Install** again.
9. Click **Done**.
10. Follow the steps below to enable [full trust for FCPCA G2](#enable-full-trust-for-fcpca-g2).

**Note:**&nbsp;&nbsp;This video shows you how to install FCPCA G2 using the Safari web browser.
<br>
<video width="300" controls>
  <source src="{{site.baseurl}}/video/ios_safari_configuration-g2.mp4" type="video/mp4">
</video>
<br>


### Enable Full Trust for FCPCA G2 
This option works for **iOS** devices only.

{% include alert-info.html content="These steps will enable “full trust” for certificates that chain to FCPCA G2. Both system administrators and non-administrators can use these steps." %}

1. From the iOS device's **Home** screen, go to **Settings** -> **General** -> **About** -> **Certificate Trust Settings**.
2. Beneath **Enable Full Trust for Root Certificates**, toggle _ON_ for the FCPCA G2 root CA certificate entry. 
3. When the certificate appears, click **Continue**.
4. You can now successfully navigate to any intranet website whose SSL certificate was issued by a Federal Public Key Infrastructure (FPKI) CA.

<img src="{{site.baseurl}}/img/ios_full_trust-g2.jpg" alt="iOS full trust" width="300">


<br>

---------------------------------------------------


## Linux/Unix Solutions

### Use the Command Line
1. Launch the command line.


2. Change directory
    ```
        cd /usr/local/share/ca-certificates/
    ```

1. Copy your verified copy of FCPCA G2 into the folder and set permissions:

    ```
	sudo cp [PATH\]fcpcag2.crt .
        sudo chmod 644 [PATH\]fcpcag2.crt
    ```

1. Update Trusted Certificates:
    ```
        sudo update-ca-certificates
    ```


<br>



Next, [verify distribution of the Federal Common Policy CA G2 certificate as an Operating System Trusted Root]({{site.baseurl}}/common/verify-os-distribution/).
