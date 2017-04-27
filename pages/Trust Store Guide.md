
---
layout: page
title: Trust Store Management Guide
permalink: /Trust-Store-Management-Guide/
---

**First, An Important Note**
======================

The Federal Public Key Infrastructure Management Authority (FPKIMA) has designed and created this *Trust Store Management Guide* as an education resource for Department, Agency, corporate, and other organizational system level administrators and managers who use the Federal Public Key Infrastructure (FPKI) as part of regular business practices. Some items identified in this guide may require changes to system configuration including registry and trust store settings. These types of changes should not be implemented without proper change management and system owner authorization. 

The FPKIMA makes no claim, representation, or warranty that the steps identified in this guide are a best approach to implementation. That will depend on individual organizational processes and requirements to make that determination. Please send any questions or comments to [FPKI-Help@GSA.gov](file:///C:\Users\kenmye03\AppData\Local\Microsoft\Windows\INetCache\Content.Outlook\N3H4VS6W\FPKI-Help@GSA.gov).

**Introduction**
============
The Federal Public Key Infrastructure (Federal PKI) was created out of the E-Government Act of 2002 which directed the General Services Administration to establish and operate the Federal Bridge Certification Authority. From this pilot program, the Federal PKI has grown into a diverse PKI ecosystem of hundreds of certification authorities for federal and state government agencies as well as foreign and US commercial entities. The purpose of this technical implementation guide is to help relying parties take advantage of the Federal PKI to meet logical and physical identity, credential, and access management (ICAM) requirements. The majority of material in this guide was collected from agency and industry best practices for implementing Federal PKI certificates. As feedback is collected, more operating system and application instructions will be integrated and updated.

**Trust Anchor Management**
============

A PKI trust anchor (a PKI's root certification authority's signing certificate called a "root certificate") establishes a chain of trust that is used to verify other PKI certificates signed by it. Operating systems and some software manufacturers such as Microsoft, Apple, Mozilla, Java, and Opera maintain a trusted root store of approved trust anchors. The Federal PKI trust anchor (the Federal Common Policy Certification Authority's root certificate) is included in Microsoft, Adobe, and Apple trust stores out of the box, but it is good practice to always verify that is the case.

The reliable method to ensure a relying party can trust all Federal PKI certificates is to install the Federal PKI trust anchor, intermediate, and issuing certificates either in the user trust store or a temporary trust store used by applications for certificate validation. Follow the simple instructions below to download and configure the Federal PKI Trust Anchor and Federal PKI Intermediate Certificates. Note that this process will have to be performed every time a new PKI certificate is issued by a Federal PKI Certification Authority. 

A better method worth considering is having your system perform dynamic path validation or use a Server-based Validation Protocol (SCVP) service.

**How to Manage a PKI Trust Store**
-----------------------------------

Managing a PKI trust store is very important to ensure certificates validate to the proper trust anchor.  However, managing a PKI trust store can be difficult given the nature of the federal and industry PKI marketplace. For example, the Microsoft Trust Store alone contains over 330 third-party root certification authorities but not all of them are needed depending on system requirements, and so many could present an attack vector if not managed properly. Each root has a specific purpose such as server authentication (SSL/HTTPS), client authentication (digital signature), and code signing, and can be removed or trimmed if not needed.

There are two essential things you can do to immediately optimize your trust store management:

- **Identify your PKI trust anchor needs based on use cases.** If the system is only intended to operate within the federal government then all non-FPKI trust anchors should be removed, or if it is a completely closed system then potentially all pre-loaded anchors can be removed except those to validate required updates.

- **Trim intermediate cross-certificates to prevent validation looping.** Cross-certificates allow an organization to trust other PKI credentials yet use its own organizational trust anchor. This occurs by two certification authorities issuing certificates to each other to allow transitive trust, but it can also cause issues in certificate validation. Instructions to fix a certificate validation loop are located in the certificate path validation section of this document.

The following plays will provide guidance in how to manage a trust store:

1. [Play 1 Download and Install the Federal Common Policy Trust Anchor](#play-1-download-and-install-the-federal-common-policy-trust-anchor)
2. [Play 2 Download and Install the FPKI Intermediate and Issuing CAs](#play-2-download-and-install-the-fpki-intermediate-and-issuing-cas)
3. [Play 3 Trust Store Management via Group Policy Object](#play-3-trust-store-management-via-group-policy-object)
4. [Play 4 Set Dynamic Path Validation in Windows](#play-4-set-dynamic-path-validation-in-windows)
5. [Play 5 How to Fix Certificate Validation Looping](#play-5-how-to-fix-certificate-validation-looping)

***Play 1 Download and Install the Federal Common Policy Trust Anchor***
-----------------------------------------------

There are three basic steps to downloading and installing the Federal Common Policy Trust Anchor in your trust store, as listed below and described in more detail in Figure 1. 

1.  Download the Federal Common Policy Trust Anchor from <http://http.fpki.gov/fcpca/fcpca.crt>.  Once downloaded:
    
    - Be sure to verify the thumbprint of what you download (it should be: *90 5f 94 2f d9 f2 8f 67 9b 37 81 80 fd 4f 84 63 47 f6 45 c1*).
    - Verify that the issuer and subject DNs in the Trust Anchor certificate are "cn=Federal Common Policy CA" and "ou=FPKI, o=U.S. Government, c=US" respectively.
    
2.  Install the Trust Anchor into your trust store.
3.  Verify that the Trust Anchor was successfully added to your trust store.

<img src="/img/TSG-image2.png"/>
<img src="/img/TSG-image3.png"/>

<span id="_Toc430633602" class="anchor"></span>*Figure 1. Installing the Federal Common Policy Trust Anchor*

***Play 2 Download and Install the FPKI Intermediate and Issuing CAs***
--------------------------------------------------------------

1.  Download the following P7 files:

    - <http://http.fpki.gov/fcpca/caCertsIssuedByfcpca.p7c>

    - <http://http.fpki.gov/bridge/caCertsIssuedByfbca2013.p7c>

    - <http://http.fpki.gov/sha1frca/caCertsIssuedBysha1frca.p7c>

2.  Once downloaded, do a windows search for “mmc.exe” (Microsoft Management Console).

3.  Once opened, click ctrl + M to open the snap-in menu.

    <img src="/img/TSG-image4.png"/>

<span id="_Toc430633603" class="anchor"></span>*Figure 2. Open the Certificate Snap-in*

1.  Click on “Certificates”, add, and then “OK”. A tree hierarchy should appear with the different certificate folders.

2.  Click on the “Intermediate Certificate Authorities” Folder and then on the “Certificates” subfolder.

<img src="/img/TSG-image5.png"/>

<span id="_Toc430633604" class="anchor"></span>*Figure 3. Install FPKI Intermediate Certificates*

1.  Click on the “Action” tab on the top navigation bar and then import.

2.  Follow the prompts to import the FPKI P7 files that were downloaded.

Installing these files should solve 99% of all FPKI trust chain issues, but in some cases there are more Intermediate CAs that will need to be installed. A troubleshooting guide is provided in [Play 5](#play-5-how-to-fix-certificate-validation-looping).

***Play 3 Trust Store Management via Group Policy Object***
--------------------------------------------------------

For enterprise trust store management, the most efficient method for maintaining trust stores in a Windows environment is through a Group Policy Object.

1.  Follow the [Play 1](#play-1-download-and-install-the-federal-common-policy-trust-anchor) instructions to download the Federal Common Policy Trust Anchor.

2.  Open a command prompt as an administrator on the forest domain controller.

3.  Type ***certutil –f –dspublish &lt;location of FCPCA&gt;.crt***[1] ***RootCA***

4.  View the Enterprise Trusted Root, type ***certutil –viewstore –enterprise root***

Once the Federal Common Policy Trust Anchor is installed in the Active Directory forest’s Trusted Root CA store, issuing CAs should be published in the Network Authentication (NTAuth) store to prevent the ability of fraudulent user’s smart card containing valid userPrincipalName (UPN) within the Subject Alternative Name (SAN) field issued from a non-trusted issuing CA.

1.  Open a command prompt as an administrator on the forest domain controller.

2.  Type ***certutil –dspublish –f &lt;issuing ca file name&gt;.cer NTAuthCA***

3.  Follow step two for all issuing CAs

4.  View the NTAuth Trusted Root, type ***certutil –viewstore –enterprise NTAuth***

While not required, to improve the speed of certificate validation publish the Intermediate CAs to the domain’s intermediate certificate store.

1.  Open a command prompt as an administrator on the forest domain controller.

2.  Type ***certutil –dspublish –f &lt;intermediate ca file name&gt;.cer subCA***

3.  Follow step two for all Intermediate CAs

4.  View the NTAuth Trusted Root, type ***certutil –viewstore –enterprise***

The new GPO will be updated on the users system when they log off and back on or the user can open a command prompt and type “***gpupdate***”.<span id="_Toc427935610" class="anchor"><span id="_Toc427935611" class="anchor"><span id="_Toc427935612" class="anchor"></span></span></span>

***Play 4 Set Dynamic Path Validation in Windows***
------------------------------------------

Dynamic path validation differs from static in that the certificate validation software will build the path based on the AIA entry in the certificate. If the Federal Common Policy Trust Anchor is installed, rather than importing all Intermediate CA certificates, enable dynamic path validation in Microsoft Windows and let CAPI discover and validate intermediate certificates that are required to validate a certificate.

The following steps will set up Microsoft CAPI to conduct dynamic path validation.

> NOTE -THIS STEP REQUIRES ADDING A REGISTRY ENTRY IN WINDOWS. ENSURE YOU HAVE THE PROPER PRIVILEGES AND AUTHORITY TO DO SO BEFORE PROCEEDING.

1.  Press the Windows + “S” button combination to search for “regedit.exe”

2.  Under the HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\Cryptography\\OID\\ EncodingType 0\\CertDllCreateCertificateChainEngine\\Config folder, create a new DWORD entry.

3.  Add MaxAIAUrlRetrievalCertCount as the name and double click to open it

4.  Make the value “30”

5.  Close regedit and then reboot

Setting Windows to conduct dynamic validation will also help find new Federal PKI CA certificates when they are issued or reissued.

***Play 5 How to Fix Certificate Validation Looping***
---------------------------------------------

Certificate validation looping is when a certificate validates past the Federal Common Policy Trust Anchor. It is caused by a misconfigured trust store and can be operating system specific. Microsoft CAPI uses the certificate path with the most certificate information against which certificates are in the Microsoft Trust Store. Because the Federal Common Policy Certification Authority is cross-certified with the Federal Bridge Certification Authority, a federal certificate could validate to a commercial trust store.

<img src="/img/TSG-image6.jpg"/>

<span id="_Toc430633605" class="anchor"></span>*Figure 4. Example of a Certificate Validation Loop*

Figure 4 is an example of a NASA certificate validating through the Federal Common Policy Certification Authority and the Federal Bridge Certification Authority to a VeriSign Trust Anchor. Follow the  instructions below to fix a certificate validation loop only if the Federal Common Policy Certification Authority is your Trust Anchor.

1.  Do a windows search for “mmc.exe” (Microsoft Management Console).

2.  Once opened, click ctrl + M to open the snap-in menu.

    <img src="/img/TSG-image4.png"/>
    
<span id="_Toc430633606" class="anchor"></span>*Figure 5. Open the Certificate Manager Snap-In*

1.  Click on “Certificates”, add, and then “OK.” A tree hierarchy should appear with the different certificate folders.

2.  Click on the “Intermediate Certificate Authorities” folder and then on the “Certificates” subfolder.

<img src="/img/TSG-image5.png"/>

<span id="_Toc430633607" class="anchor"></span>*Figure 6. Remove the Federal PKI Participating CA Cross-Certificates*

1.  Sort on the “issued to” field.

2.  Delete all certificates “issued to” the Federal Bridge (Federal Bridge CA and Federal Bridge CA 2013) except the ones issued by the Federal Common Policy Certification Authority.

3.  Delete all certificates “issued to” the Federal Common Policy Certification Authority.

##**Acronyms**
|Acronym|Definition|
|---|---|
|**CA**|Certification Authority|
|**CAPI**|Microsoft Crypto Application Programming Interface|
|**FBCA**|Federal Bridge Certification Authority
|**FCPCA**|Federal Common Policy Certification Authority|
|**FPKI**|Federal Public Key Infrastructure|
|**FPKIMA**|Federal PKI Management Authority|
|**FPKIPA**|Federal PKI Policy Authority|
|**GPO**|Group Policy Object|
|**GSA**|General Services Administration|
|**ICAM**|Identity, Credential, and Access Management|
|**OID**|Object Identifier|
|**SAN**|Subject Alternate Name
|**SCVP**|Server-Based Certificate Validation Protocol|
|**SHA1 FRCA**|SHA-1 Federal Root Certification Authority|
|**UPN**|User Principal Name|

[1] Microsoft can understand either a .crt or .cer certificate extension. A P7 file can also be used if there are multiple certificates.
