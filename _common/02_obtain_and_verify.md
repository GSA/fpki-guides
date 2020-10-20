---
layout: default 
title: 2. Obtain and verify a copy of the Federal Common Policy CA G2 certificate
collection: common
permalink: common/obtain-and-verify/
---

To limit the impact to your agency, you will need to distribute the Federal Common Policy CA G2 (FCPCA G2) certificate as a _trusted root certificate_ to all government-furnished workstations and devices **as soon as possible**.

### Download a Copy of FCPCA G2

To download a copy of FCPCA G2, use one of these recommended options:
1. Download from http://repo.fpki.gov/fcpca/fcpcag2.crt
1. Email fpki-help@gsa.gov to request an out-of-band copy for download.

{% include alert-warning.html content="<b>You should never install a root certificate without verifying it.</b> Use the procedures below to verify the authenticity of your copy of FCPCA G2. Your certificate details and hash must match the expected values shown below." %} 

| **Federal Common Policy CA G2 (FCPCA G2)**  | **Certificate Details**                             |
| :--------  | :-------------------------------     |
| Distinguished Name | cn=Federal Common Policy CA G2, ou=FPKI, o=U.S. Government, c=US |
| Serial Number | 21e5b9a0cc956de278ca012ba8fdc58a98b3fbea |
| SHA-1 Thumbprint | 99B4251E2EEE05D8292E8397A90165293D116028 |
| SHA-256 Thumbprint | 5F9AECC24616B2191372600DD80F6DD320C8CA5A0CEB7F09C985EBF0696934FC |

### Verify Your Copy of FCPCA G2

To verify your copy of FCPCA G2, use one of these options: 

#### On Windows: Use Microsoft Certutil
1. Click **Start**, type **cmd**, and press **Enter**.
1. Run command:
<br>
    ```
	   certutil -hashfile {DOWNLOAD_LOCATION}\fcpcag2.crt SHA256
    ```

*Sample steps run on Microsoft Server 2016:*
![Sample Steps]({{site.baseurl}}/img/verify.gif){:style="width:85%;"}

<br>

#### On macOS: Use Terminal
1. Click the **Spotlight** icon and search for _Terminal_.
2. Double-click the **Terminal** icon (black monitor icon with white ">_") to open a window.
3. Run command:
<br>
    ```
	$ shasum -a 256 {DOWNLOAD_LOCATION}/fcpcag2.crt
    ```
    

*Sample steps run on macOS Catalina (10.15):*
<br>
<video width="85%" controls>
  <source src="{{site.baseurl}}/video/download_and_verify.mp4" type="video/mp4">
</video>
<br>

#### On Linux/Unix: Use the Command Line
1. Open the command line.
2. Run command:
<br>
    ```
	$ sha256sum {DOWNLOAD_LOCATION}/fcpcag2.crt
    ```

<br>

Next, [distribute the Federal Common Policy CA G2 certificate as an Operating System Trusted Root]({{site.baseurl}}/common/distribute-os/).
