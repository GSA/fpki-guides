---
layout: default 
title: Frequently Asked Questions
collection: common
permalink: common/faq/
---
 
 
- [Will my PIV credentials break or need to be updated or replaced when this change occurs](#will-my-piv-credentials-break-or-need-to-be-updated-or-replaced-when-this-change-occurs)
- [Is the Federal Common Policy CA changing?](#is-the-federal-common-policy-ca-changing)
- [When will this change happen?](#when-will-this-change-happen)
- [When will the certificates issued by the Federal Common Policy CA get revoked?](#when-will-the-certificates-issued-by-the-federal-common-policy-ca-get-revoked)
- [Which types of systems will this change affect?](#which-types-of-systems-will-this-change-affect)
- [Which operating systems will this change affect?](#which-operating-systems-will-this-change-affect)
- [What happens if I don’t distribute the FCPCA G2?](#what-happens-if-i-dont-distribute-the-fcpca-g2)
- [What errors can occur in Windows if I don’t distribute the FCPCA G2?](#what-errors-can-occur-in-windows-if-i-dont-distribute-the-fcpca-g2)
- [What errors can occur in macOS if I don’t distribute the FCPCA G2?](#what-errors-can-occur-in-macos-if-i-dont-distribute-the-fcpca-g2)
- [What errors can occur in iOS if I don’t distribute the FCPCA G2?](#what-errors-can-occur-in-ios-if-i-dont-distribute-the-fcpca-g2)
- [How can I verify that the FCPCA G2 has been successfully distributed to my workstation or device?](#how-can-i-verify-that-the-fcpca-g2-has-been-successfully-distributed-to-my-workstation-or-device)
- [My agency gets PIV cards from [Issuer Name]. I won’t be affected by this change, right?](#do-i-need-to-distribute-the-fcpca-g2-to-my-bring-your-own-device-byod-program-device)
- [Why aren't some Entrust Federal Shared Service Provider issued PIV credential certificates chaining to FCPCA G2?](#why-arent-some-entrust-federal-shared-service-provider-issued-piv-credential-certificates-chaining-to-fcpca-g2)
- [Do I need to distribute the FCPCA G2 to my Bring Your Own Device (BYOD) program device?](#do-i-need-to-distribute-the-fcpca-g2-to-my-bring-your-own-device-byod-program-device)
- [How do I configure my unmanaged Windows system to trust the new Federal Common Policy CA G2?](#how-do-i-configure-my-unmanaged-windows-system-to-trust-the-new-federal-common-policy-ca-g2) 

 
 
## Will my PIV credentials break or need to be updated or replaced when this change occurs?

No. PIV credentials will *not* be affected by this change.  For example, the graphic below shows the current and future state of certificate validation for a PIV credential issued by the USAccess Program.  Although two certificates in the chain are being updated, the PIV credential certificates are *not* affected. 
<br>
![current_and_future_state]({{site.baseurl}}/img/FCPCA_G2_Transition.jpg) 

## Is the Federal Common Policy CA changing?

Yes. In **October 2020**, the Federal Government established a new Federal Public Key Infrastructure (FPKI) Root Certification Authority (CA) known as the **Federal Common Policy CA (FCPCA) G2**. 

Between December 2020 and May 2021, CAs cross-certified by the existing FCPCA will be migrated to the FCPCA G2. Once the migration is complete, the existing FCPCA will be decommissioned (planned for May 2021). 

## When will this change happen?

Timeline:
- **October 14, 2020**: The Federal PKI Management Authority (FPKIMA) established the new FCPCA G2.
- **October 15, 2020**: The FPKIMA issued and distributed a cross certificate from the FCPCA G2 to the Federal Bridge CA G4.
- **November 18, 2020**: The FPKIMA issued and distributed certificates to migrate agency and affiliate CAs cross-certified by the existing FCPCA to the FCPCA G2.
- **December 2020 to May 2021**: All agencies transition from using the existing FCPCA as a trust anchor to the FCPCA G2.
- **May 2021**: The FPKIMA decommissions the existing FCPCA.

## When will the certificates issued by the Federal Common Policy CA get revoked?
In preparation for decomissioning, the Federal Common Policy CA must revoke all active CA certificates it has issued. Details related to the CA certificates issued by the Federal Common Policy CA, to include planned revocation date, are listed below:

**Note:** Follow our [GitHub Issue](https://github.com/GSA/fpki-guides/issues/841){:target="_blank"} for the latest information possible.

#### Issued to: Federal Bridge CA G4

| Certificate Attribute | Value                                              |
| :--------  | :--------------------------------------------------------     |
| Distinguished Name | CN=Federal Bridge CA G4, OU=FPKI, O=U.S. Government, C=US    |
| Validity | December 12, 2019 to December 12, 2021  |
| Serial Number | 7994    |
| SHA-1 Thumbprint | e836f3016bfb6e8df274f27fd8a4a5054517b0f1  |
| Planned Revocation Date | **To Be Determined** |

#### Issued to: U.S. Department of State AD Root CA

| Certificate Attribute | Value                                              |
| :--------  | :--------------------------------------------------------     |
| Distinguished Name | CN=U.S. Department of State AD Root CA, CN=AIA, CN=Public Key Services,<br> CN=Services, CN=Configuration, DC=state, DC=sbu |
| Validity | December 18, 2019 to December 18, 2022   |
| Serial Number | 79f9    |
| SHA-1 Thumbprint | ce11590010562a39ad8b1455acf76c03737aebf6  |
| Planned Revocation Date | **April 22, 2021** |

#### Issued to: US Treasury Root CA

| Certificate Attribute (1 of 2) | Value                                              |
| :--------  | :--------------------------------------------------------     |
| Distinguished Name | OU=US Treasury Root CA, OU=Certification Authorities, <br>OU=Department of the Treasury, O=U.S. Government, C=US |
| Validity | August 14, 2019 to August 14, 2022  |
| Serial Number | 734b   |
| SHA-1 Thumbprint | 48ce02a99ae2cc4f790f2989aa153ed565b7e4d2   |
| Planned Revocation Date | **To Be Determined** |

| Certificate Attribute (2 of 2) | Value                                              |
| :--------  | :--------------------------------------------------------     |
| Distinguished Name | OU=US Treasury Root CA, OU=Certification Authorities, <br>OU=Department of the Treasury, O=U.S. Government, C=US |
| Validity | August 29, 2018 to August 29, 2021   |
| Serial Number | 6405    |
| SHA-1 Thumbprint | 5a87922b5eaf1d63198a951b2ab6f59b2f16c131  |
| Planned Revocation Date | **To Be Determined** |

#### Issued to: DigiCert Federal SSP Intermediate CA - G5

| Certificate Attribute | Value                                              |
| :--------  | :--------------------------------------------------------     |
| Distinguished Name | CN=DigiCert Federal SSP Intermediate CA - G5, O=DigiCert, Inc., C=US |
| Validity | December 13, 2018 to December 13, 2028  |
| Serial Number | 66c0    |
| SHA-1 Thumbprint | 98b58247ac8a2bc6f348f03e8d22884d8345fc0f  |
| Planned Revocation Date | **To Be Determined** |

#### Issued to: Symantec SSP Intermediate CA - G4

| Certificate Attribute | Value                                              |
| :--------  | :--------------------------------------------------------     |
| Distinguished Name | CN=Symantec SSP Intermediate CA - G4, O=Symantec Corporation, C=US |
| Validity | November 12, 2014 to November 12, 2024   |
| Serial Number | 258e   |
| SHA-1 Thumbprint | 6a382438fd21037018daf3f422a2132bea2be817  |
| Planned Revocation Date | **To Be Determined** |

#### Issued to: Entrust Managed Services Root CA

| Certificate Attribute (1 of 2) | Value                                              |
| :--------  | :--------------------------------------------------------     |
| Distinguished Name | OU=Entrust Managed Services Root CA, OU=Certification Authorities,<br> O=Entrust, C=US |
| Validity | August 14, 2019 to August 14, 2029  |
| Serial Number | 734a   |
| SHA-1 Thumbprint | a09655170c87d0fbfe0328b99a7baf4a1cf0b5d9  |
| Planned Revocation Date | **April 22, 2021** |

| Certificate Attribute (2 of 2) | Value                                              |
| :--------  | :--------------------------------------------------------     |
| Distinguished Name | OU=Entrust Managed Services Root CA, OU=Certification Authorities,<br> O=Entrust, C=US |
| Validity | July 30, 2015 to July 30, 2025  |
| Serial Number | 2e26   |
| SHA-1 Thumbprint | 39c1d3b64e756a3267bfe5fecb103da892ca0611  |
| Planned Revocation Date | **April 22, 2021** |

#### Issued to: Verizon SSP CA A2

| Certificate Attribute | Value                                              |
| :--------  | :--------------------------------------------------------     |
| Distinguished Name | CN=Verizon SSP CA A2, OU=SSP, O=Verizon, C=US |
| Validity | December 5, 2018 to December 6, 2026  |
| Serial Number | 65f8   |
| SHA-1 Thumbprint | 477bf4017d25cde276cdddf756d40ca591d76f6d  |
| Planned Revocation Date | **April 22, 2021** |

#### Issued to: ORC SSP 4

| Certificate Attribute | Value                                              |
| :--------  | :--------------------------------------------------------     |
| Distinguished Name | CN=ORC SSP 4, O=ORC PKI, C=US |
| Validity | August 31, 2015 to January 21, 2024  |
| Serial Number | 2ef9    |
| SHA-1 Thumbprint | 3a70323069a4c41bc95663152e9ccc7111bb0623  |
| Planned Revocation Date | **April 22, 2021** |



## Which types of systems will this change affect?

This change will affect any system that requires the ability to validate certificates issued by the Federal PKI.  This includes systems configured for Personal Identity Verification (PIV) credential authentication to government networks or web applications, systems that require the ability to verify digital signatures that leverage PIV or similar credentials, and systems that host applications or services that leverage the Federal Common Policy CA as a root CA.

Classified systems are not affected by this change.

## Which operating systems will this change affect?

All major operating systems (i.e., Microsoft Windows, macOS, iOS, *nix) will be affected.

## What happens if I don’t distribute the FCPCA G2?

1. **(*High Impact*) Authentication failures**
	- Workstations 
	- Websites  
	- Applications (internal and cross-agency)
	- Virtual Private Networks (VPNs)

2. **(*Medium Impact*) Error fatigue**
	- Unexpected application errors and system behavior for legacy and government-off-the-shelf (GOTS) products

3. **(*Low Impact*) Digital signature validation failures**
	- Email
	- Documents and files (for example, Microsoft Word)

## What errors can occur in Windows if I don't distribute the FCPCA G2?

*Sample Chrome error when a user navigates to an intranet site whose SSL/TLS certificate doesn't chain<br>to a trusted root CA:*
     <br>
     ![error_navigation]({{site.baseurl}}/img/error_navigation.png)

*Sample Chrome error when PIV authentication fails because the user’s certificate doesn't chain<br>to a trusted root CA:*
     <br>
     ![error_piv_auth]({{site.baseurl}}/img/error_piv_auth.png)

*Sample Microsoft Outlook error when a digital signature certificate for an email doesn't chain<br>to a trusted root CA:*
     <br>
     <br>
     ![error_sig_val]({{site.baseurl}}/img/error_sig_val.png)
	 
## What errors can occur in macOS if I don't distribute the FCPCA G2?

*Sample Safari error when a user navigates to an intranet site whose SSL/TLS certificate doesn't chain<br>to a trusted root CA:*
     <br>
     ![safari_untrusted_ssl]({{site.baseurl}}/img/safari_untrusted_ssl.png){:style="width:85%;"}
    
*Sample Safari error where client (PIV) authentication fails because a user’s certificate doesn't chain to a trusted root CA:*
     <br>
     ![safari_untrusted_auth]({{site.baseurl}}/img/safari_untrusted_auth.png){:style="width:85%;"}
   
*Sample Chrome error when a user navigates to an intranet site whose SSL/TLS certificate doesn't chain<br>to a trusted root CA:*
     <br>
     ![chrome_untrusted_ssl]({{site.baseurl}}/img/chrome_untrusted_ssl.png){:style="width:85%;"}

*Sample Chrome error where client (PIV) authentication fails because a user’s certificate doesn't chain to a trusted root CA:*
     <br>
     ![chrome_untrusted_auth]({{site.baseurl}}/img/chrome_untrusted_auth.png){:style="width:85%;"}

## What errors can occur in iOS if I don't distribute the FCPCA G2?

*Sample Safari error when a user navigates to an intranet site whose SSL/TLS certificate doesn't chain<br>to a trusted root CA:*
     <br>
     ![ios_safari_untrusted_ssl]({{site.baseurl}}/img/ios_safari_untrusted_ssl.png){:style="width:30%;"}

*Sample Chrome error when a user navigates to an intranet site whose SSL/TLS certificate doesn't chain<br>to a trusted root CA:*
     <br>
     ![ios_chrome_untrusted_ssl]({{site.baseurl}}/img/ios_chrome_untrusted_ssl.png){:style="width:30%;"}

## How can I verify that the FCPCA G2 has been successfully distributed to my workstation or device?

Please review the steps to [verify distribution of the FCPCA G2]({{site.baseurl}}/common/verify-os-distribution/).

## My agency gets PIV cards from [Issuer Name]. I won’t be affected by this change, right?

This change *does not* affect your PIV credential issuer, nor how agency credentials are generated or issued.

This change *does* affect how federal enterprise workstations and devices validate PIV credential certificates.  

## Why aren't some Entrust Federal Shared Service Provider issued PIV credential certificates chaining to FCPCA G2?

Entrust Federal Shared Service Provider (SSP) PIV credential certificates issued before August 13, 2019, chain through an older version of the Entrust Managed Services Root CA on their way to the Federal Common Policy CA than certificates issued since.  This older version of the Entrust Managed Services Root CA will not receive a certificate from the Federal Common Policy CA G2.

To ensure PIV credential certificates issued by the Entrust Federal SSP before August 13, 2019 validate to the Federal Common Policy CA G2, you may need to distribute [this](../../certs/Entrust_Managed_Services_Root_CA_Link.cer) "link certificate" as an intermediate CA certificate.  The link certificate allows workstations to build a path from the older Entrust Managed Services Root CA to the current version, which has been issued a certificate by the Federal Common Policy CA G2.  Review how to distribute intermediate CA certificates [here]({{site.baseurl}}/common/certificates/).

Workstations capable of performing dynamic path validation **do not** require manual distribution of the link certificate.

The graphic below shows a certificate chaining to the Federal Common Policy CA G2 through the Entrust Managed Services Root CA link certificate, denoted with a red asterisk (" <span style="color:red">*</span>.")

![Link Certificate Path]({{site.baseurl}}/img/link-cert-path.png) 

## Do I need to distribute the FCPCA G2 to my Bring Your Own Device (BYOD) program device?

As a BYOD program device user, you'll need to distribute the FCPCA G2 if you:
- use your PIV credential to log into intranet sites or VPNs,
- validate PIV digital signatures in emails or documents, or
- navigate to intranet pages whose SSL/TLS certificates chain to the FCPCA G2.

## How do I configure my unmanaged Windows system to trust the new Federal Common Policy CA G2?
1. Download the new Federal Common Policy CA G2 certificate from http://repo.fpki.gov/fcpca/fcpcag2.crt
2. Download the intermediate CA certificates issued by the Federal Common Policy CA G2 from http://repo.fpki.gov/fcpca/caCertsIssuedByfcpcag2.p7c
3. Rename the extension of the recently downloaded caCertsIssuedByfcpcag2.p7**c** to caCertsIssuedByfcpcag2.p7**b**
4. Update your Trust Store:
     - Click **Start**, type **certmgr.msc**, and press **Enter**.
     - Right-click **Trusted Root Certification Authorities** (on the left-hand navigation), and select **All Tasks** > **Import**. Click **Next** once the Certificate Import Wizard opens.
     - Browse to and select your copy of the FCPCA G2. Click **Next** several times until the certificate import process is complete.
     - When prompted, verify the certificate thumbprint matches *99B4251E2EEE05D8292E8397A90165293D116028* (additional spaces may appear depending on your Windows Version).
     - Click **Next**.
     - Right-click **Intermediate Certification Authorities** (on the left-hand navigation), and select **All Tasks** > **Import**. Click **Next** once the Certificate Import Wizard opens.
     - Browse to and select your copy of caCertsIssuedByfcpcag2.p7b, making sure "All Files" are presented to view the .p7b file (this appears in a drop-down box next to the "File Name" input box).  Click **Next** several times until the certificate import process is complete.

**Note:** The following .gif demonstrates the steps outlined above.

![configure unmanaged device]({{site.baseurl}}/img/unmanaged-device.gif){:style="width:85%;"}


