To verify the redistribution of the COMMON root CA certificate to your agency's Windows workstations and devices, use one of the options below:

**Automated Solutions (*Recommended*)**
  * [Use BigFix](#use-bigfix)
  * [Use LANDesk 2016](#use-landesk-2016)

**Manual Solutions**
  * [Use Microsoft Certificate Manager](#use-microsoft-certificate-manager)
  * [Use Microsoft Registry Editor](#use-microsoft-registry-editor)

### Use BigFix

1. Download the *BigFix Enterprise Suite (.bes) analysis file*: [*FPKIRootDetection.bes*](../../truststores/FPKIRootDetection.bes){:target="_blank"}.

2. Use *Certutil* or other tool to verify the .bes file's SHA-256 hash (*required*):

    ```
          certutil -hashfile [DOWNLOAD_LOCATION]\FPKIRootDetection.bes SHA256
    ```
    
3. The file's hash must match this one:

    ```
          390f8e6d35412b4e2a818897bdddbfeeff5ce4c99301cd6c170bc3d8610ada36
    ```

4. Log into *BigFix*:&nbsp;&nbsp;**Start** -> **IBM BigFix** -> **IBM BigFix Console**.
5. Import the *FPKIRootDetection.bes* file:&nbsp;&nbsp;**File** -> **Import** -> **Open**. *The Create Analysis window opens.* 
6. Assign the file:&nbsp;&nbsp;for **Create in site**, select *site name*, and for **Create in domain**, select *domain name*. Click **Okay**.
7. From the left side panel, click **Analyses** to see a list of imported analysis files.
8. Click *Federal Common Policy CA Redistribution Detection* (i.e., *FPKIRootDetection.bes*) and click the **Results** tab to see the redistribution analysis. If the analysis was not activated _by default_, right-click the file and then click **Activate Globally**. 
9. For each workstation or device listed, "*Has COMMON Been Redistributed?*" should say **True**. If **False**, you'll need to investigate the cause of the failure. If you can't find a cause, please contact us at fpki@gsa.gov.<br><br /> 
    ![Sample Output]({{site.baseurl}}/img/bigfix-results.jpg){:style="width:90%;"}

### Use LANDesk 2016

**Note:**&nbsp;&nbsp;If your agency uses a version above LANDesk 2016, please see [Ivanti: Install Root Certificates on Windows](https://help.ivanti.com/ap/help/en_US/fd/4.4/Content/FileDirector/Admin/3_Clients/Install_Root_Certificate_on_Windows.htm){:target="_blank"}{:rel="noopener noreferrer"}.<br>

1. Open *LANDesk 2016*:&nbsp;&nbsp;**Start** -> **LANDesk Management** -> **Desktop Manager**.
2. Create a custom registry data item:&nbsp;&nbsp;**Tools** -> **Reporting/Monitoring** -> **Manage software list**.
3. Expand **Custom Data** and click **Registry items**.
4. Click **Add** to add a new registry item.
5. Add the data shown below for Windows 32-bit or 64-bit versions, based on GPO or Certutil distribution of COMMON.<br><br />

    ```
      Microsoft Windows 32-bit Versions

      - GPO Distribution

          Root Key: HKLM
          Key: SOFTWARE\Policies\Microsoft\SystemCertificates\Root\Certificates\905F942FD9F28F679B378180FD4F846347F645C1
          Value: BLOB
          Attribute Name: Custom Data – FCPCAWin32 GPO – Certificate

      - Certutil Distribution
      
          Root Key: HKLM
          Key: SOFTWARE\Microsoft\EnterpriseCertificates\Root\Certificates\905F942FD9F28F679B378180FD4F846347F645C1
          Value: BLOB
          Attribute Name: Custom Data – FCPCAWin32 certutil – Certificate

      Microsoft Windows 64-bit Versions

      - GPO Distribution

          Root Key: HKLM
          Key: SOFTWARE\WOW6432Node\Policies\Microsoft\SystemCertificates\Root\Certificates\905F942FD9F28F679B378180FD4F846347F645C1
          Value: BLOB
          Attribute Name: Custom Data – FCPCAWin64 GPO - Certificate

      - Certutil Distribution

          Root Key: HKLM
          Key: SOFTWARE\WOW6432Node\Microsoft\EnterpriseCertificates\Root\Certificates\905F942FD9F28F679B378180FD4F846347F645C1
          Value: BLOB
          Attribute Name: Custom Data – FCPCAWin64 certutil - Certificate
    ```

6. Create a query for the registry item:&nbsp;&nbsp;from the left side panel, expand **Network View** and click **Queries**. 
7. Right-click **My Queries**, select **New Query**, and enter a *query name* (e.g., *COMMON Verification: Win32 Machines*).
8. Under **Machine Component**, expand **Computer**, click **Custom Data**, and select the registry item.
9. For **Boolean**, select **Exists**.
10. For **Displayed Scanned Values**, click **Insert** and add the *BLOB* value from above.
11. Double-click the *new query name* to verify COMMON redistribution. The results will be similar to these:<br><br />
    ![Sample Output]({{site.baseurl}}/img/landesk-results.jpg){:style="width:90%;"}

### Use Microsoft Certificate Manager

1. Open *Microsoft Certificate Manager*:&nbsp;&nbsp;**Start**; then type **certlm.msc** and press **Enter**.
2. Go to **Trusted Root Certification Authorities** -> **Certificates**. To see whether COMMON was successfully redistributed, look for _Federal Common Policy CA_ shown with **Intended Purposes** of *ALL* and a **Friendly Name** of *None*, as shown here:<br><br />
    ![Trusted Root CA Certificates List]({{site.baseurl}}/img/verify_trust.png){:style="width:90%;"}
    
**Note:** You **may** see more than one copy of COMMON. For example, the screenshot above shows 3 entries for COMMON:
* The first entry (“dashed” border) is from Microsoft's Certificate Trust List (CTL) (i.e., certificate store). Microsoft-distributed copies show multiple **Intended Purposes** values and a **Friendly Name** of *U.S. Government Common Policy*.
* The remaining two entries are examples of enterprise-distributed copies. Enterprise-distributed copies show **Intended Purposes** of *ALL* and a **Friendly Name** of *None*.   

***Optional:***

1. Open *Microsoft Certificate Manager*:&nbsp;&nbsp;**Start**; then type **certlm.msc** and press **Enter**.
2. Select **Trusted Root Certification Authorities** from the left side panel. Then, select **View** -> **Options**.
3. In the **View Options** box, *check* the **Physical certificate stores** checkbox. 
4. At the left side panel, click ">" next to **Trusted Root Certification Authorities** to see the subdirectories.
5. Verify the redistribution of COMMON:<br />
     - For Certutil-redistributed copies of COMMON, click **Enterprise** -> **Certificates**. *COMMON should appear in the certificates list.*<br>
     - For GPO-redistributed copies of COMMON, click **Group Policy** -> **Certificates**. *COMMON should appear in the certificates list.*

### Use Microsoft Registry Editor

1. Verify that COMMON has been redistributed to a specific workstation or device:&nbsp;&nbsp;open the *Microsoft Registry Editor*:&nbsp;&nbsp;**Start**; type **regedit.exe** and press **Enter**.
2. The following registry keys will appear for GPO- or Certutil-redistributed copies of COMMON: 

#### GPO-redistributed COMMON: 
- HKLM:\SOFTWARE\Policies\Microsoft\SystemCertificates\Root\Certificates\905F942FD9F28F679B378180FD4F846347F645C1\
- HKLM:\SOFTWARE\WOW6432Node\Policies\Microsoft\SystemCertificates\Root\Certificates\905F942FD9F28F679B378180FD4F846347F645C1\ 

#### Certutil-redistributed COMMON: 
- HKLM:\SOFTWARE\Microsoft\EnterpriseCertificates\Root\Certificates\905F942FD9F28F679B378180FD4F846347F645C1\
- HKLM:\SOFTWARE\WOW6432Node\Microsoft\EnterpriseCertificates\Root\Certificates\905F942FD9F28F679B378180FD4F846347F645C1\
