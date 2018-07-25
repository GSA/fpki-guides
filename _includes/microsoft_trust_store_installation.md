To limit the impact to your agency, you'll need to redistribute COMMON as a trusted root certificate on all government-furnished Windows workstations and devices. 

To redistribute COMMON, follow these procedures:
1. [Download a Copy of COMMON](#download-a-copy-of-common)
1. [Verify Your Copy of COMMON](#verify-your-copy-of-common)
1. [Redistribute COMMON](#redistribute-common)

### Download a Copy of COMMON

To download a copy of COMMON, use one of the recommended options:
1. Download from http://http.fpki.gov/fcpca/fcpca.crt. 
1. Email fpki@gsa.gov to request an out-of-band copy for download.

{% include alert-warning.html content="You should never install a root certificate without verifying it. Follow the procedures below to verify the authenticity of your copy of COMMON." %} 


### Verify Your Copy of COMMON

Use one of these options to verify your copy of COMMON. Your certificate details and hash must match the expected values shown below. 

1. [Use Microsoft command line via certutil](#use-microsoft-command-line-via-certutil)
1. [Use Microsoft command line via OpenSSL](#use-microsoft-command-line-via-openssl)
1. [Use Microsoft PowerShell](#use-microsoft-powershell)


| **Federal Common Policy CA (FCPCA/COMMON)**  | **Certificate Details**                             |
| :--------  | :-------------------------------     |
| Federal Common Policy CA<br>(sometimes shown as *U.S. Government Common Policy*) | http://http.fpki.gov/fcpca/fcpca.crt |
| Distinguished Name | cn=Federal Common Policy CA, ou=FPKI, o=U.S. Government, c=US |
| Serial Number | 0130 |
| SHA-1 Thumbprint | 90 5f 94 2f d9 f2 8f 67 9b 37 81 80 fd 4f 84 63 47 f6 45 c1 |
| SHA-256 Thumbprint | 89 4e bc 0b 23 da 2a 50 c0 18 6b 7f 8f 25 ef 1f 6b 29 35 af 32 a9 45 84 ef 80 aa f8 77 a3 a0 6e |


**Note:** For the following procedures, replace *[PATH\\]* with the path to your copy of COMMON.


#### Use Microsoft command line via certutil 
1. Click **Start**, type **cmd**, and press **Enter**.
1. Run command:

    ```
	   certutil -hashfile [PATH\]fcpca.crt SHA256
    ```


#### Use Microsoft command line via OpenSSL
1. Click **Start**, type **cmd**, and press **Enter**.
1. Run command:

    ```
        openssl sha256 [PATH\]fcpca.crt
    ```


#### Use Microsoft PowerShell
1. Click **Start**, type **cmd**, and press **Enter**.
1. Run command:

    ```
        Get-FileHash [PATH\]fcpca.crt | Format-List
    ```

*Sample steps run on Microsoft Server 2012:*
![Sample Steps]({{site.baseurl}}/img/verify.gif){:style="width:85%;"}


### Redistribute COMMON 

Use one of these options to redistribute COMMON:

1. [Use Microsoft certutil](#use-microsoft-certutil)
1. [Use Microsoft Group Policy Object](#use-microsoft-group-policy-object)
1. [Use third-party configuration management tools](#use-third-party-configuration-management-tools)
1. [Manually use Microsoft Certificate Manager](#manually-use-microsoft-certificate-manager)


#### Use Microsoft certutil 

{% include alert-warning.html content="You must have Enterprise Administrator privileges for the Domain to use these procedures. The commands must be run from an agency Domain Controller." %}

1. Click **Start**, type **cmd**, and press **Enter**.
1. Run command:

    ```
        certutil -dspublish -f [PATH\]fcpca.crt RootCA
    ```

1. Verify that COMMON was distributed. Run commands:

    ```
        gpupdate /force
        certutil -viewstore -enterprise
    ```

1. Confirm that COMMON is contained in the output details.
1. [OPTIONAL] Verify the certificate details against [expected values](#verify-your-copy-of-common) shown above (e.g., Serial Number).


*Sample steps run on Microsoft Server 2012:*
![Sample Steps]({{site.baseurl}}/img/certutil.gif){:style="width:85%;"}


#### Use Microsoft Group Policy Object

{% include alert-warning.html content="You must have Enterprise Administrator privileges for the Domain to use these procedures. The commands must be run from an agency Domain Controller." %}

1. Navigate to **Server Manager**.
1. Select **Tools**.
1. Select **Group Policy Management** from the drop-down list.
1. Right-click your desired domain(s), and select **Create a GPO in this domain, and Link it here…**.
1. Enter a GPO **Name** and click **OK**.
1. Right-click the newly created GPO and click **Edit…**.
1. Navigate to **Policies** -> **Windows Settings** -> **Security Settings** -> **Public Key Policies**.  
1. Right-click **Trusted Root Certification Authorities**, and select **Import**. *The Certificate Import Wizard will open*. 
1. Browse to and select your copy of COMMON.
1. Verify that the target **Certificate Store** presents **Trusted Root Certification Authorities**, and select **Next**.
1. Select **Finish** to complete the import.  You'll see the message, *The import was successful*.
1. Close the **Group Policy Management** window.
1. [OPTIONAL] Wait for clients to consume the new policy or force consumption:
- Click **Start**, type **cmd**, and then press **Enter**.
- Run command:

    ```
          gpupdate /force
    ```

*Sample steps run on Microsoft Server 2012:*
![Sample Steps]({{site.baseurl}}/img/gpo.gif){:style="width:85%;"}


#### Use third-party configuration management tools

{% include alert-warning.html content="You must have Enterprise Administrator privileges for the Domain to use these procedures. The commands must be run from an agency Domain Controller." %}

You can use third-party configuration management tools, such as BigFix.

1. Using BigFix, schedule a task and push the certificate file.
- Command (example): 
	
    ```
        certutil -f -addstore root “fcpca.crt”
    ```


#### Manually use Microsoft Certificate Manager
For unmanaged devices, use the following manual procedures:
1. Click **Start**, type **certmgr.msc**, and then press **Enter**.
1. Right-click **Trusted Root Certification Authorities** and select **All Tasks** -> **Import**. *The Certificate Import Wizard will open*. 
1. Browse to and select your copy of COMMON.
1. Verify that the desired **Certificate Store** presents **Trusted Root Certification Authorities**, and select *Next*.
1. Select *Finish* to complete the import. You'll see the message, *the import was successful*.

**Note:** If multiple users share a device, administrators should run **certlm.msc** to concurrently update the certificate stores of those accounts vs. updating each account separately.

