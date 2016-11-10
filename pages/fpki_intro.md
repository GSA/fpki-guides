---
layout: default
title: Introduction
permalink: /intro/
---
Welcome to the **Federal Public Key Infrastructure** (FPKI) guides!  

On these pages you will find information explaining what the Federal Public Key Infrastructure is, links to tools, links to Certificate Authorities, and tips to help you work with the certificates.  

These guides are [open source](https://github.com/gsa/fpki-guides) and a _work in progress_ and we [welcome contributions]({{ site.baseurl }}/contribute/) from our colleagues.

The information on this page provides introductory information.

1. [What is the FPKI?](#what-is-the-federal-pki)
2. [Why is the FPKI Important?](#why-is-the-federal-pki-important) 
3. [What is in the FPKI Guides?](#what-is-in-the-fpki-guides)
4. [Where Can I Find the Policies and Standards?](#where-can-i-find-the-standards)

### What is the Federal PKI? ###

In a nutshell, the FPKI facilitates secure (trusted) physical and logical access, document sharing, and communications across federal agencies, and between federal agencies and outside bodies such as universities, state and local governments, commercial entities, and other communities of interest. As noted in the following illustration, the FPKI encompasses four core technical capabilities that provide FPKI members various benefits.

<img src="/img/Intro-image1.png"/>

To provide its trust services, the FPKI uses a set of digital certificate standards, processes, and a mission-critical Trust Infrastructure to administer certificates and public-private key pairs, including the ability to issue, maintain, and revoke public key certificates.  It uses a security technique called Public Key Cryptography to authenticate users and data, protect the integrity of transmitted data, and ensure technical non-repudiation and confidentiality. 

> FPKIPA-approved trust relationships (at specified levels of assurance) allow trusted use of certificates issued by the FPKI Community.

The FPKI Community includes federal, industry, state, and community-of-interest representatives who work collaboratively to leverage the FPKI, and to provide trust services for the benefit of the federal government.  

- The [FPKI Policy Authority (FPKIPA)](https://www.idmanagement.gov/IDM/s/article_content_old?tag=a0Gt0000000XNOk) governs the FPKI.  It was created by the [Federal Chief Information Officers (CIO) Council](https://cio.gov/) in 2000 and operates under its authority and direction. The FPKIPA is an interagency body with voting membership limited to participating federal agencies.  Other agencies, industry, and state representatives participate in the FPKIPA as observers. The FPKIPA is supported by several policy and technical working groups.

- The FPKI Management Authority (FPKIMA) [FPKI Management Authority (FPKIMA)](https://www.idmanagement.gov/IDM/s/article_content_old?tag=a0Gt0000000XNNc) operates the FPKI Trust Infrastructure on a day-to-day basis.  The FPKI Trust Infrastructure is the mission-critical federal system/environment that facilitates trust across the FPKI fabric via issuance and acceptance of PKI certificates. Certificates include cross-certificates issued between the FPKI Community and the FPKI Trust Infrastructure.  The FPKIMA also manages an interoperability lab in support of the FPKI community and facilitates the FPKI Technical Working Group. 

- The FPKI also interfaces with external organizations whose actions may impact FPKI operations.  This includes commercial product and service vendors, Relying Parties (RPs), Identity Providers (IdPs), and organizations that publish guidance, mandates, and specifications (e.g., the National Institute of Standards and Technology, Office of Managemement and Budget, CAB/Fourm).   

<img src="/img/Intro-image2.jpg"/>

As illustrated in the diagram below, since its inception the Federal PKI has grown into a diverse, operational PKI ecosystem of hundreds of certification authorities (CAs) for federal and state government agencies as well commercial and other PKIs. 

<img src="/img/Intro-image3.png"/>

### Why is the Federal PKI Important? ###

The FPKI is important to Federal agencies as well as citizens, businesses, and organizations that need access to federal agency services and facilities.  Above all else, it contains the Federal Government's PKI trust anchor, and facilitates trust of PIV, PIV-I, and other government and non-government credentials.  But as the following table shows, the FPKI’s high-assurance trust services provide a wide range of security, business, and technical benefits.

|**Benefit**|**Description**|
|-----------|---------------|
|**Increased security**|Fpr example, greater logical and physical security through strong authentication. PKI credentials reduce identity theft, data breaches, and trust violations inherent in weak credentials such as username/password. Specifically, PKI closes security gaps of user identification and authentication, encryption of sensitive data, and data integrity. It also addresses security issues identified in GAO reports.|
|**Greater Compliance**|Using the Federal PKI means almost automatic compliance with several executive orders, laws, initiatives, and standards (e.g., FISMA, E-Gov Act, NSTIC). Agencies can specify FPKI in contracts to ensure vendor compliance with all government requirements. The FPKI Policy Authority verifies participating CAs are audited and operate in a secure manner.|
|**Improved Interoperability**|Greater interoperability with other federal agencies and non-federal entities that trust FPKI certificates. The FPKI is a federated trust fabric that reduces the need for issuing multiple credentials to end users.|
|**Elimination of Redundancy and Complexity**|The FPKI is a trust broker or hub of logical trust, reducing the need for multiple trust agreements and duplicating associated trust agreement tasks. It also allows end users to use a single credential rather than different credentials across Federal agency web sites.|
|**Increased Return on Investment**|The FPKI improves business processes and efficiencies.  For example, leveraging digital signing, encryption, and non-repudiation allows Federal agencies to migrate from manual processing to automated processing, especially around document processing/sharing, and communications across Federal agencies, and between Federal agencies and outside bodies.  In addition, Federal agencies can reduce operational costs and burdens (e.g., eliminate cost/burden of managing agency-issued credentials, reduce password helpdesk costs). See [The Realized Value of the Federal Public Key Infrastructure (FPKI)](https://www.idmanagement.gov/IDM/s/document_detail?Id=kA0t00000008OgMCAU) for some Federal agency case studies|
|**Greater Access to Government Services**|Since the Federal PKI facilitates identity/credential federation, end users can access more Federal web sites with a single credential.|
|**The FPKI Approved Providers List**|By leveraging the [FPKI Approved Provider List](https://www.idmanagement.gov/IDM/s/article_content_old?tag=a0Gt0000000XRrC), Federal agencies can be sure they are using Providers that meet all necessary Federal government standards, and can be sure of the level of assurance when relying on approved Providers' certificates.  This saves Federal agencies an enormous amount of time and effort, as well as reducing risk.|

Because of all the above, the FPKI has become a critical piece of the Federal IT infrastructure, evidenced by its inclusion in FISMA reporting metrics and FISMA security control requirements.  

### What is in the FPKI Guides? ###

The guides available here will provide you a good starting point to better understand the FPKI and to be able to leverage its many benefits.  You will be given guidance on how to properly implement and configure for PKI.  You will also be given references to various useful PKI resources, tools, and documents.

### Where Can I Find the Policies and Standards? ###

- [Federal Common Certificate Policy](https://www.idmanagement.gov/IDM/s/article_content_old?tag=a0Gt0000000SfwS) 

- [Federal Bridge Certificate Policy](https://www.idmanagement.gov/IDM/s/article_content_old?tag=a0Gt0000000SfwS)

- [FPKI X.509 Certificate and CRL Extensions Profile](https://www.idmanagement.gov/IDM/s/document_detail?Id=kA0t00000008Od8CAE)

- [X.509 Certificate and Certificate Revocation List (CRL) Extensions Profile for PIV-I Cards](https://www.idmanagement.gov/IDM/s/document_detail?Id=kA0t00000008ObiCAE)

- [X.509 Certificate and CRL Extensions Profile for the Shared Service Provider (SSP) Program](https://www.idmanagement.gov/IDM/s/document_detail?Id=kA0t0000000GmdcCAC)

- [OMB 2016 Circular A-130](https://www.whitehouse.gov/sites/default/files/omb/assets/OMB/circulars/a130/a130revised.pdf)

- [OMB Memoandum M-05-05](https://www.whitehouse.gov/sites/default/files/omb/assets/omb/memoranda/fy2005/m05-05.pdf)

- [NIST Special Publication 800-53](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf)







