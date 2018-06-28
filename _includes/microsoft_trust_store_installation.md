To limit the impact to your agency, you'll need to install COMMON as a trusted root certificate on all government-furnished Windows workstations and devices.  

Procedures are presented in three steps:
1. [Download a copy of COMMON](#download-a-copy-of-common)
1. [Verify your copy of COMMON](#verify-your-copy-of-common)
1. [Redistribute COMMON](#redistribute-common)


### Download a copy of COMMON

There are two recommended options for obtaining a copy of COMMON:
1. Download from http://http.fpki.gov/fcpca/fcpca.crt 
1. Email fpki@gsa.gov to request an out-of-band copy

{% include alert-warning.html content="You should never install a root certificate without verifying it. Follow the instructions below to verify the authenticity of your copy of COMMON." %} 


### Verify your copy of COMMON

Certificate details to support verification are presented below:

| **Federal Common Policy CA (FCPCA/COMMON)**  | **Certificate Details**                             |
| :--------  | :-------------------------------     |
| Federal Common Policy CA<br>(sometimes shown as *U.S. Government Common Policy*) | http://http.fpki.gov/fcpca/fcpca.crt |
| Distinguished Name | cn=Federal Common Policy CA, ou=FPKI, o=U.S. Government, c=US |
| Serial Number | 0130 |
| SHA-1 Thumbprint | 90 5f 94 2f d9 f2 8f 67 9b 37 81 80 fd 4f 84 63 47 f6 45 c1 |
| SHA-256 Thumbprint | 89 4e bc 0b 23 da 2a 50 c0 18 6b 7f 8f 25 ef 1f 6b 29 35 af 32 a9 45 84 ef 80 aa f8 77 a3 a0 6e |

Using one of the three methods below, verify certificate details and digest/hash match the expected values shown above. 

1. [Microsoft command line via certutil](#microsoft-command-line-via-certutil)
1. [Microsoft command line via OpenSSL](#microsoft-command-line-via-openssl)
1. [Microsoft PowerShell](#microsoft-powershell)

Note: Replace *[PATH/]* with the path to your copy of COMMON in all examples below.


#### Microsoft command line via certutil 
1. Click **Start**, type **cmd**, and press **Enter**
1. Run the command below:

    ```
	   certutil -hashfile [PATH\]fcpca.crt SHA256
    ```


#### Microsoft command line via OpenSSL
1. Click **Start**, type **cmd**, and press **Enter**
1. Run the command below:

    ```
        openssl sha256 [PATH\]fcpca.crt
    ```


#### Microsoft PowerShell
1. Click **Start**, type **cmd**, and press **Enter**
1. Run the command below:

    ```
        Get-FileHash [PATH\]fcpca.crt | Format-List
    ```

*Sample steps run on Microsoft Server 2012 presented below:*
![Sample Steps]({{site.baseurl}}/img/verify.gif){:style="width:85%;"}


### Redistribute Common 

Four options to redistribute COMMON are presented below:

1. [Using Microsoft certutil](#using-microsoft-certutil)
1. [Using Microsoft Group Policy Object](#using-microsoft-group-policy-object)
1. [Using Third Party Configuration Management Tools](#using-third-party-configuration-management-tools)
1. [Manually using Microsoft Certificate Manager](#manually-using-microsoft-certificate-manager)


#### Using Microsoft certutil 

To redistribute COMMON via certutil, you must have Enterprise Administrator privileges.

From an agency Domain Controller:
1. Click **Start**, type **cmd**, and press **Enter**
1. Run command:

    ```
        certutil -dspublish -f [PATH\]fcpca.crt RootCA
    ```

Verify that COMMON was distributed:

1. Run commands:

    ```
        gpupdate /force
        certutil -viewstore -enterprise
    ```

1. Confirm that COMMON is contained in the output details
1. [OPTIONAL] Verify the certificate details against expected values (e.g., serial #)


*Sample steps run on Microsoft Server 2012 presented below:*
![Sample Steps]({{site.baseurl}}/img/certutil.gif){:style="width:85%;"}


#### Using Microsoft Group Policy Object

To redistribute COMMON via GPO, you must have Enterprise Administrator privileges.

From an agency Domain Controller:
1. Navigate to **Server Manager**
1. Select **Tools**
1. Select **Group Policy Management** from the drop-down list
1. Right-click your desired domain(s) and select **Create a GPO in this domain, and Link it here…**
1. Enter a GPO **Name** and click **OK**
1. Right-click the newly created GPO and click **Edit…**
1. Navigate to **Policies** -> **Windows Settings** -> **Security Settings** -> **Public Key Policies**  
1. Right-click **Trusted Root Certification Authorities**, and select **Import**. *The Certificate Import Wizard will open*. 
1. Browse to and select your copy of COMMON
1. Verify that the target **Certificate Store** presents **Trusted Root Certification Authorities**, and select **Next**
1. Select **Finish** to complete the import.  A confirmation message will display stating *the import was successful*.
1. Close the **Group Policy Management** window
1. [OPTIONAL] Wait for clients to consume the new policy or force consumption:
- Click Start, type cmd, and then press Enter
- Run command:

    ```
          gpupdate /force
    ```

*Sample steps run on Microsoft Server 2012 presented below:*
![Sample Steps]({{site.baseurl}}/img/gpo.gif){:style="width:85%;"}


#### Using Third Party Configuration Management Tools

You can use third-party configuration management tools, such as BigFix

1. Using BigFix, schedule a task and push the certificate file.
- Command (example): 
	
    ```
        certutil -f -addstore root “fcpca.crt”
    ```


#### Manually using Microsoft Certificate Manager
For unmanaged devices, the following manual procedures will be required:
1. Click **Start**, type **certmgr.msc**, and then press **Enter**
1. Right click **Trusted Root Certification Authorities** and select **All Tasks** -> **Import**. *The Certificate Import Wizard will open*. 
1. Browse to and select your copy of COMMON
1. Verify that the target **Certificate Store** presents **Trusted Root Certification Authorities**, and select *Next*
1. Select *Finish* to complete the import. A confirmation message will display stating *the import was successful*.



