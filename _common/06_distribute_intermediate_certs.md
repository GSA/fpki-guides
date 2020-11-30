---
layout: default 
title: 6. Distribute the CA certificates issued by the Federal Common Policy CA G2 (optional)
collection: common
permalink: common/certificates/
---

To simplify certificate path building within your enterprise, you can *optionally* distribute the CA certificates [issued by the Federal Common Policy CA (FCPCA) G2](#certificates-issued-by-the-federal-common-policy-ca-g2). Sample procedures for the distribution of intermediate CA certificates are below:


### Use Microsoft Group Policy Object (GPO)

{% include alert-warning.html content="You must have enterprise administrator privileges for the domain to use these procedures. You must run the commands from an agency domain controller." %}

1. Navigate to **Server Manager**.
1. Select **Tools**.
1. Select **Group Policy Management** from the drop-down list.
1. Right-click your desired domain(s), and select **Create a GPO in this domain, and Link it here**.
1. Enter a GPO **Name** and click **OK**.
1. Right-click the newly created GPO and click **Edit**.
1. Navigate to **Policies** > **Windows Settings** > **Security Settings** > **Public Key Policies**.  
1. Right-click **Intermediate Certification Authorities**, and select **Import**.

	The Certificate Import Wizard appears
	
1. Browse to and select the certificates [issued by the FCPCA G2](#certificates-issued-by-the-federal-common-policy-ca-g2) that you want to distribute.
1. Verify that the target **Certificate Store** presents **Intermediate Certification Authorities**, and select **Next**.
1. Select **Finish** to complete the import. 

	A success message appears.
	
1. Close the **Group Policy Management** window.
1. Wait for clients to consume the new policy.
1. (*Optional*) To force client consumption, click **Start**, type **cmd**, press **Enter**, and run the following command:
    ```
          gpupdate /force
    ```
	
<br>
	
### Use macOS/iOS Configuration Profile

{% include alert-warning.html content="Only System or Mobile Device Management (MDM) Administrators should create, distribute, and install Apple configuration profiles." %} 

#### Create an Apple configuration profile

1. As an administrator, download and verify the certificates [issued by the FCPCA G2](#certificates-issued-by-the-federal-common-policy-ca-g2) that you want to distribute.   
2. Download and install *Configurator 2* from the Apple App Store.
3. Open *Configurator 2* and click **File** > **New Profile**.
4. On the **General** tab, enter a unique profile **Name** (for example, *FPKI Intermediate CA Certificate Distribution Profile*) and **Identifier** (for example, *FCPCAG2-Intermediate-0001*).
5. On the **Certificates** tab, click **Configure**.
6. Browse to and select the certificates you want to distribute.
7. (*Optional*) Add additional agency-specific configurations or customizations. 
8. Click **File** > **Save** to save your profile to your preferred location. 
9. Follow the steps to [distribute](../distribute-os/#distribute-an-apple-configuration-profile) the profile to macOS and iOS devices across your enterprise.

**Note:**&nbsp;&nbsp;The following video shows you how to create an Apple configuration profile. 

<br>
<video width="85%" controls>
  <source src="{{site.baseurl}}/video/create_profile.mp4" type="video/mp4">
</video>
<br>

---------------------------------------------------


### Certificates issued by the Federal Common Policy CA G2

{% include alert-info.html content="Review the <a href=\"https://fpki.idmanagement.gov/notifications/#notifications\" target=\"_blank\">System Notifications</a> page or follow us on <a href=\"https://github.com/GSA/fpki-guides/issues/\" target=\"_blank\">GitHub</a> to learn when new certificates are issued.  If you're looking for certificates <i>issued to</i> the FCPCA G2, email us at fpki-help@gsa.gov." %} 

The following certificates are published in the Federal Common Policy CA G2 certificate's Subject Information Access extension bundle located at http://repo.fpki.gov/fcpca/caCertsIssuedByfcpcag2.p7c.

- [Issued to: Federal Bridge CA G4](#issued-to-federal-bridge-ca-g4)
- [Issued to: U.S. Department of State AD Root CA](#issued-to-us-department-of-state-ad-root-ca)
- [Issued to: US Treasury Root CA](#issued-to-us-treasury-root-ca)
- [Issued to: DigiCert Federal SSP Intermediate CA - G5](#issued-to-digicert-federal-ssp-intermediate-ca---g5)
- [Issued to: Symantec SSP Intermediate CA - G4](#issued-to-symantec-ssp-intermediate-ca---g4)
- [Issued to: Entrust Managed Services Root CA](#issued-to-entrust-managed-services-root-ca)
- [Issued to: Verizon SSP CA A2](#issued-to-verizon-ssp-ca-a2)
- [Issued to: ORC SSP 4](#issued-to-orc-ssp-4)
- [Issued to: WidePoint SSP CA 5](#issued-to-widepoint-ssp-ca-5)

#### Issued to: Federal Bridge CA G4

| Certificate Attribute | Value                                              |
| :--------  | :--------------------------------------------------------     |
| Distinguished Name | CN=Federal Bridge CA G4, OU=FPKI, O=U.S. Government, C=US    |
| Validity | October 15, 2020 to December 6, 2029 |
| Serial Number | 234200beaa6dada658f53b403f418295290cae82  |
| SHA-1 Thumbprint | 97db351e069964297a82040eb760c9cc1d74ba33 |
| SHA-256 Thumbprint | 74383CA1BB648F96EFE9E6ECADB5A8A359E7DF9BA262EF7C02BD004EAB3895F4  |
| Download Location | Click [here](../../certs/federal_bridge_ca_g4.cer)|

#### Issued to: U.S. Department of State AD Root CA

| Certificate Attribute | Value                                              |
| :--------  | :--------------------------------------------------------     |
| Distinguished Name | CN=U.S. Department of State AD Root CA, CN=AIA, CN=Public Key Services,<br> CN=Services, CN=Configuration, DC=state, DC=sbu |
| Validity | November 18, 2020 to November 18, 2023 |
| Serial Number | 27634fd321cbfd8c7efc0aeb02876f63da4c0c09 |
| SHA-1 Thumbprint | 9b3849f7047964a6654988054956e478ccb75ded |
| SHA-256 Thumbprint | 9744734dbd34f28d3c87a9094387388e7623a272437c612e88d251138c1db93c |
| Download Location | Click [here](../../certs/US_Department_of_State_AD_Root_CA.cer)|

#### Issued to: US Treasury Root CA

| Certificate Attribute | Value                                              |
| :--------  | :--------------------------------------------------------     |
| Distinguished Name | OU=US Treasury Root CA, OU=Certification Authorities, <br>OU=Department of the Treasury, O=U.S. Government, C=US |
| Validity | November 18, 2020 to August 14, 2022 |
| Serial Number | 2013db2cd30dd29d17edc48535c5e00d8916cf02 |
| SHA-1 Thumbprint | d7d298927d339efa414f2565923e28b98acd970a |
| SHA-256 Thumbprint | 209ce84f4b4811542c5c4754a73a9c272ae1458c04493c89c74ed6773aca553f |
| Download Location | Click [here](../../certs/US_Treasury_Root_CA.cer)|

#### Issued to: DigiCert Federal SSP Intermediate CA - G5

| Certificate Attribute | Value                                              |
| :--------  | :--------------------------------------------------------     |
| Distinguished Name | CN=DigiCert Federal SSP Intermediate CA - G5, O=DigiCert, Inc., C=US |
| Validity | November 18, 2020 to December 13, 2028 |
| Serial Number | 24bc168f9ccb30cfcef8f0a58f26f10181869266 |
| SHA-1 Thumbprint | 9aecfbe2de8aea49d220bbf799172c00527fe756 |
| SHA-256 Thumbprint | ea86e0baf55eef020ed58196af865f2fa72a77d1be70a779b65a9cbf0b5ee3f2 |
| Download Location | Click [here](../../certs/DigiCert_Federal_SSP_Intermediate_CA_-_G5.cer)|

#### Issued to: Symantec SSP Intermediate CA - G4

| Certificate Attribute | Value                                              |
| :--------  | :--------------------------------------------------------     |
| Distinguished Name | CN=Symantec SSP Intermediate CA - G4, O=Symantec Corporation, C=US |
| Validity | November 18, 2020 to November 12, 2024 |
| Serial Number | 262bd1f025c8af37334545666ea6c9ea946c2c34 |
| SHA-1 Thumbprint | 4c40f62b5c3f13533a8f8a1d44f8b027aaa0fd3d |
| SHA-256 Thumbprint | 09d3f1a7d2e0be1a8d043fdf5d16bf8bf18e0dff2f397f27b0b8ee962de59de5 |
| Download Location | Click [here](../../certs/Symantec_SSP_Intermediate_CA_-_G4.cer)|

#### Issued to: Entrust Managed Services Root CA

| Certificate Attribute | Value                                              |
| :--------  | :--------------------------------------------------------     |
| Distinguished Name | OU=Entrust Managed Services Root CA, OU=Certification Authorities,<br> O=Entrust, C=US |
| Validity | November 18, 2020 to August 14, 2029 |
| Serial Number | 215e78d99648b021c6394a6566d8e00f46a1e595 |
| SHA-1 Thumbprint | 07f5dc58f83778d5b5738a988292c00a674a0f40 |
| SHA-256 Thumbprint | e3d6b1b33d0a5df0630b32bf17f9fb632b0471a6cac561f164aa6429ef0699a1 |
| Download Location | Click [here](../../certs/Entrust_Managed_Services_Root_CA.cer) |

#### Issued to: Verizon SSP CA A2

| Certificate Attribute | Value                                              |
| :--------  | :--------------------------------------------------------     |
| Distinguished Name | CN=Verizon SSP CA A2, OU=SSP, O=Verizon, C=US |
| Validity | November 18, 2020 to December 6, 2026 |
| Serial Number | 25fca834ada24a4455a2db0ff4cef7c411198e3a |
| SHA-1 Thumbprint | b2167fd38ff47bb910d8dcc32fcc3b7b63a09ff7 |
| SHA-256 Thumbprint | 226508d2a1c926a7092218e743ccd01bab8273291feef66941691592fa7c12b8 |
| Download Location | Click [here](../../certs/Verizon_SSP_CA_A2.cer)|

#### Issued to: ORC SSP 4

| Certificate Attribute | Value                                              |
| :--------  | :--------------------------------------------------------     |
| Distinguished Name | CN=ORC SSP 4, O=ORC PKI, C=US |
| Validity | November 18, 2020 to January 21, 2024 |
| Serial Number | 20a0e513367881559a5e7d20d35fa7c6739a42ab |
| SHA-1 Thumbprint | 3e6610b03daca9fa07e1093b60ccb8927c42d83b  |
| SHA-256 Thumbprint | 7cd7f21d04beb99d9f833be8697138e3ad4e11313897ee573c066132d21ab5f8 |
| Download Location | Click [here](../../certs/ORC_SSP_4.cer)|

#### Issued to: WidePoint SSP CA 5

| Certificate Attribute | Value                                              |
| :--------  | :--------------------------------------------------------     |
| Distinguished Name | CN=WidePoint ORC SSP 5, O=ORC PKI, C=US |
| Validity | November 19, 2020 to November 5, 2030  |
| Serial Number | 210b3f17db750e616eb25f3f0b4933e5a98c449b |
| SHA-1 Thumbprint | 80f4731a60fd5f2eb0468d0629310daa50ad210d |
| SHA-256 Thumbprint | 70200179049bdc8cbe94b4880730609489f324f2a770477f7c1859401e644c72 |
| Download Location | Click [here](../../certs/WidePoint_ORC_SSP_5.cer)|

<br>

Next, [migrate to the FCPCA G2]({{site.baseurl}}/common/migrate/).

