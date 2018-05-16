---
layout: default
title:  CTL Test Procedures
permalink: /ctltestprocedures/
---

## How Can I Test?

{% include alert-info.html content="Test results for _Disallow_ did not allow local trust decisions to be overridden, so no further testing will be done." %} 

If your agency is impacted, you can test COMMON validation behavior. This test will confirm whether an enterprise GPO can override a Microsoft CTL setting for three possible conditions:

1. _serverAuth Disallow_,
2. _serverAuth notBefore_, **OR**
3. _no CTL entry_

No further Federal PKI community-wide testing will be done.  If your agency has questions, please email us at **fpki@gsa.gov**.

### Original Testing Schedule (Testing Has Been Concluded)

#### Phase 1&nbsp;&mdash;&nbsp;_serverAuth Disallow_ Testing
- **April 13 -** Start _Disallow_ testing.
- **April 26 -** The FPKI report to Microsoft on _Disallow_ testing status and results.
- **April 27-May 2 -** Remediate _Disallow_ testing based on Microsoft's feedback. Microsoft prepares for _serverAuth notBefore_ testing.
- **May 2 -** Status call/email with Agency CTL testers on _serverAuth Disallow_ test results and/or questions.
- **May 3 -** The FPKI report to Microsoft on final _serverAuth Disallow_ testing.

#### Phase 2&nbsp;&mdash;&nbsp;_serverAuth notBefore_ Testing
- **May 3-16 -** Conduct _serverAuth notBefore_ testing. The FPKI prepares for _no CTL entry_ testing.
- **May 9 -** Status call/email with Agency CTL testers on _serverAuth notBefore_ test results and/or questions.
- **May 17 -** The FPKI report to Microsoft on final _serverAuth notBefore_ testing.

#### Phase 3&nbsp;&mdash;&nbsp;_no CTL entry_ Testing
- **May 18-30 -** Conduct _no CTL entry_ testing.
- **May 30 -** Status call/email with Agency CTL testers on _no CTL entry_ test results and/or questions.
- **May 31 -** The FPKI report to Microsoft on final _no CTL entry_ testing. 
- **May 31 -** Determine next steps.

### Test Procedures

1. For each Windows 10 client endpoint, modify the registry key for the test CTL:

1a. Windows Key + S to search for "regedit". Right click and "Run as administrator"

1b. Browse to [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SystemCertificates\AuthRoot\AutoUpdate]

1c. Right click and create "New String" with name "RootDirURL" with this value http://ctldl.windowsupdate.com/msdownload/update/v3/static/trustedr/en/USPKI

2. Delete these keys:

``` 
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SystemCertificates\AuthRoot\AutoUpdate\EncodedCtl]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SystemCertificates\AuthRoot\AutoUpdate\LastSyncTime]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SystemCertificates\AuthRoot\Certificates] (deleting all cached certificates)
``` 

3. Verify the CTL settings on the endpoint. The notBefore or disallow status **DOES NOT** show up in the user interface. The only way to check the CTL settings is an output of the CTL file.

3a. Open a command prompt as administrator and create a new test directory:

```
mkdir c:\ctltest
```
3b. Run a CTL update command to update all certificates.

```
certutil -generateSSTFromWU
```

3c. Create a text file containing the certificate details: 

```
certutil -verifyCTL AuthRoot > c:\ctltest\certdetail.txt
```

3c. From c:\ctltest\certdetail.txt, search for the COMMON subject "CN=Federal Common Policy CA, OU=FPKI, O=U.S. Government, C=US"

3d. If the test CTL is loaded, it will have the following entry:

```
[905f942fd9f28f679b378180fd4f846347f645c1]
CertId = 1.3.6.1.4.1.311.10.11.3, "CERT_SHA1_HASH_PROP_ID"
Subject = "CN=Federal Common Policy CA, OU=FPKI, O=U.S. Government, C=US"
FriendlyName = "U.S Government Common Policy"
EKU = 1.3.6.1.4.1.311.10.3.4, "Encrypting File System"
EKU = 1.3.6.1.5.5.7.3.1, "Server Authentication"
EKU = 1.3.6.1.5.5.7.3.2, "Client Authentication"
EKU = 1.3.6.1.5.5.7.3.3, "Code Signing"
EKU = 1.3.6.1.5.5.7.3.4, "Secure Email"
EKU = 1.3.6.1.5.5.7.3.6, "IP security tunnel termination"
EKU = 1.3.6.1.5.5.7.3.7, "IP security user"
EKU = 1.3.6.1.5.5.7.3.8, "Time Stamping"
EKU = 1.3.6.1.5.5.7.3.9, "OCSP Signing"
DisallowEKU = 1.3.6.1.5.5.7.3.1, "Server Authentication"
NotBeforeEKU = 1.3.6.1.5.5.7.3.3, "Code Signing"
NotBeforeTime = "2/28/2017 8:00 PM"
MD5KeyId = 93ee7e01c999df57176c2c0a677aa1eb
KeyId = ad0c7a755ce5f398c479980eac28fd97f4e702fc
SHA256Thumbprint = 894ebc0b23da2a50c0186b7f8f25ef1f6b2935af32a94584ef80aaf877a3a06e
SignatureHash = 375dc361146cfbdd26f82cbf8a4c1a173c9b6a11ac61dfe4c28cac281888ed22
SignatureHashAlgorithm = 1.2.840.113549.1.1.11, "sha256RSA", 2.16.840.1.101.3.4.2.1, "sha256", "RSA/SHA256"
PublicKeyLength = 2048
PublicKeyAlgorithm = 1.2.840.113549.1.1.1, "RSA"
``` 

**NOTE - Either DisallowEKU = 1.3.6.1.5.5.7.3.1, "Server Authentication" or NotBeforeEKU = 1.3.6.1.5.5.7.3.3, "Server Authentication" confirm the test CTL is loaded.**

4. Verify the Test CTL has updated

4a. Windows Key + S to search for "regedit". Right click and "Run as administrator"

4b. Browse to [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SystemCertificates\AuthRoot\AutoUpdate]

4c. Confirm "EncodedCtl" and "LastSyncTime" attributes are populated.

5. Open Internet Explorer/Edge or Chrome and clear cache.

```
   Ctrl + Shift + Del
```

6. Go to a website by using an FPKI certificate; and record results. Suggested websites:
Websites Chained to COMMON

- [PKI.Treasury.gov](https://pki.treasury.gov){:target="_blank"} - Treasury Root CA-issued (COMMON-chained)
- [psa.dmdc.osd.mil](https://psa.dmdc.osd.mil/psawebdocs/){:target="_blank"} - DoD Root CA 3-issued (COMMON-chained)
Websites Not-Chained to Common
- [MAX.gov](https://max.gov/){:target="_blank"} - Entrust Root CA-issued (non-COMMON-chained)
- [NIST.gov](https://csrc.nist.gov/){:target="_blank"} - DigiCert Root CA-issued (non-COMMOM-chained)

(% include alert-info.html content="Verify the certificate details and note the validation path." %)

7. Open Internet Explorer/Edge or Chrome and clear cache.

```
   Ctrl + Shift + Del
```

8. Re-Install COMMON using the group policy object procedures: [Install Using Group Policy Objects](#install-using-group-policy-objects).

9. Repeat website tests from Step 6.

10. Once testing is done, return the endpoints to their normal configurations. This step may not be necessary if the endpoint is just for testing:

10a. Windows Key + S to search for "regedit". Right click and "Run as administrator"

10b. Browse to [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SystemCertificates\AuthRoot\AutoUpdate]

10c. Right click and update the "RootDirURL" with this value http://ctldl.windowsupdate.com/msdownload/update/v3/static/trustedr/en

10d. Delete these keys:

``` 
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SystemCertificates\AuthRoot\AutoUpdate\EncodedCtl]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SystemCertificates\AuthRoot\AutoUpdate\LastSyncTime]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SystemCertificates\AuthRoot\Certificates] (deleting all cached certificates)
``` 

11. Report your test results to **fpki@gsa.gov** or post them as an issue to GSA's [FPKI Guides](https://github.com/GSA/fpki-guides/issues) GitHub repository as "CTL Testing - Agency XXX Results." Include:
- OS version
- Browser versions
- Steps used to test
- Websites used with specific website error code
- Any issues encountered
