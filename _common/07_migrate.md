---
layout: default 
title: 7. Migrate to the Federal Common Policy CA G2
collection: common
permalink: common/migrate/
---

{% include alert-info.html content="<strong>We're calling for all solutions!</strong> If you'd like to share one of your agency's playbooks to distrust a CA certificate, create an <a href=\"https://github.com/GSA/fpki-guides/issues/new\" target=\"_blank\">issue on GitHub</a> or email us at fpki@gsa.gov." %}

To migrate to the Federal Common Policy CA G2 (FCPCA G2) as your agency's federal trust anchor, you'll need to:
1. [**disable enterprise distribution**](#1-disable-distribution-of-the-federal-common-policy-ca) of the Federal Common Policy CA as a _trusted root_ CA certificate
1. [**distrust**](#2-distrust-the-federal-common-policy-ca) the Federal Common Policy CA

<p>Federal Common Policy CA certificate details are below:</p>

| **Federal Common Policy CA (generation 1)**  | **Certificate Details**                             |
| :--------  | :-------------------------------     |
| Federal Common Policy CA<br>(sometimes shown as *U.S. Government Common Policy*) | http://http.fpki.gov/fcpca/fcpca.crt |
| Distinguished Name | cn=Federal Common Policy CA, ou=FPKI, o=U.S. Government, c=US |
| Serial Number | 0130 |
| SHA-1 Thumbprint | 90 5f 94 2f d9 f2 8f 67 9b 37 81 80 fd 4f 84 63 47 f6 45 c1 |
| SHA-256 Thumbprint | 89 4e bc 0b 23 da 2a 50 c0 18 6b 7f 8f 25 ef 1f 6b 29 35 af 32 a9 45 84 ef 80 aa f8 77 a3 a0 6e |

## 1. Disable distribution of the Federal Common Policy CA

Reference the distribution mechanisms [here]({{site.baseurl}}/common/distribute-os/) to review how the Federal Common Policy CA certificate **could** be distributed across your enterprise.  Ensure all existing distribution mechanisms are disabled. Sample procedures to disable the distribution of the Federal Common Policy CA (generation 1) are listed below:

- [Microsoft Certutil](#if-the-federal-common-policy-ca-was-distributed-using-microsoft-certutil)
- [Microsoft Group Policy Object (GPO)](#if-the-federal-common-policy-ca-was-distributed-using-a-group-policy-object)
- [an Apple Configuration Profile (macOS or iOS)](#if-the-federal-common-policy-ca-was-distributed-using-an-apple-configuration-profile)

<br>

### If the Federal Common Policy CA was distributed using Microsoft Certutil...
{% include alert-warning.html content="You must have Enterprise Administrator privileges for the Domain to use these procedures. The commands must be run from an agency Domain Controller." %}

1. Navigate to **Server Manager**.
1. Select **Tools**.
1. Select **ADSI Edit** from the drop-down list.
1. Select **Action -> Connect to** from the top navigation.
1. Select **Configuration** from the drop-down list beneath the **Select a well known Naming Context:** radio button and click **OK**.
1. Browse to the **CN=AIA** directory (within "CN=Public Key Services, CN=Services"), right click the entry for the Federal Common Policy CA and select **Delete**.
1. Browse to the **CN=Certification Authorities** directory (within "CN=Public Key Services, CN=Services"), right click the entry for the Federal Common Policy CA and select **Delete**.

<br>

### If the Federal Common Policy CA was distributed using a Microsoft Group Policy Object...
{% include alert-warning.html content="You must have Enterprise Administrator privileges for the Domain to use these procedures. The commands must be run from an agency Domain Controller." %}

1. Navigate to **Server Manager**.
1. Select **Tools**.
1. Select **Group Policy Management** from the drop-down list.
1. Expand the **Group Policy Objects** directory.
1. Right click the Group Policy Object distributing the Federal Common Policy CA and select **Delete**.

<br>

### If the Federal Common Policy CA was distributed using an Apple Configuration Profile...
1. Identify how the profile is being distributed across the enterprise (e.g., over-the-air profile delivery or from an MDM server)
2. Use local knowledge to disable the distribution.  If you are having trouble with a specific product, email us at fpki-help@gsa.gov.

<br>

## 2. Distrust the Federal Common Policy CA 

Use one of the methods below to distrust the Federal Common Policy CA (generation 1).

<br>

### Use Microsoft Group Policy Object (GPO)

{% include alert-warning.html content="You must have Enterprise Administrator privileges for the Domain to use these procedures. The commands must be run from an agency Domain Controller." %}

1. Navigate to **Server Manager**.
1. Select **Tools**.
1. Select **Group Policy Management** from the drop-down list.
1. Right-click your desired domain(s), and select **Create a GPO in this domain, and Link it here…**.
1. Enter a GPO **Name** and click **OK**.
1. Right-click the newly created *Group Policy Object (GPO)* and click **Edit…**.
1. Navigate to **Policies** -> **Windows Settings** -> **Security Settings** -> **Public Key Policies**.  
1. Right-click **Untrusted Certificates**, and select **Import**. *The Certificate Import Wizard will open*. 
1. Browse to and select your copy of FCPCA G2.
1. Verify that the target **Certificate Store** presents **Untrusted Certificates**, and select **Next**.
1. Select **Finish** to complete the import.  You'll see the message, *The import was successful*.
1. Close the **Group Policy Management** window.
1. Wait for clients to consume the new policy.
1. [OPTIONAL] You can force client consumption:  click **Start**, type **cmd**, press **Enter**, and run command:
    ```
          gpupdate /force
    ```
	
*Sample steps run on Microsoft Server 2016:*
![Sample Steps]({{site.baseurl}}/img/distrust-gpo.gif){:style="width:85%;"}
<br>

<br>

### Use macOS Terminal

{% include alert-info.html content="These steps will remove the Federal Common Policy CA certificate from the System and Login Keychains. System administrators should use these steps. Non-administrators will encounter permission errors." %}

**Note:** Many Mobile Device Management (MDM) platforms allow administrators to push the command below across an enterprise, rather than running it on individual workstations. _Use automation wherever possible_.

1. Click the **Spotlight** icon and search for *terminal*.
2. Double-click the **Terminal** icon (black monitor icon with white “>_”) to open a window.
3. Run the following command:

    ```
	$ sudo security delete-certificate -c "Federal Common Policy CA" /Library/Keychains/System.keychain && sudo security delete-certificate -c "Federal Common Policy CA" login.keychain
    ```
    
**Note:**&nbsp;&nbsp;This video shows you how to remove the Federal Common Policy CA certificate using the command line.
<br>
<video width="85%" controls>
  <source src="{{site.baseurl}}/video/remove_command_line.mp4" type="video/mp4">
</video>
<br>


