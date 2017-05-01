---
layout: default
title: Introduction
permalink: /
---

Welcome to the **Federal Public Key Infrastructure** (FPKI) guides!  In these guides, you will find information about the Federal Public Key Infrastructure including commonly used links, tools, tips, and information for leveraging the FPKI.  

These guides are [open source](https://github.com/gsa/fpki-guides){:target="_blank"} and a _work in progress_ and we [welcome contributions]({{ site.baseurl }}/contribute/) from our colleagues.  All these guides need your contributions.
We want you to contribute and share lessons learned, and any information you think is helpful for your colleagues.

The information on this page provides introductory information to answer the following questions:

1. [What is the FPKI?](#what-is-the-federal-pki)
2. [What is an example?](#what-is-an-example)
2. [Why should agencies use the FPKI?](#why-should-agencies-use-certificates-from-the-fpki)
3. [Why is the FPKI important?](#why-is-the-fpki-important)
5. [Where can I find the Policies and Standards?](#where-can-i-find-the-policies-and-standards)


### What is the FPKI?
![Image of the Federal PKI Certification Authorities](img/Intro-image3.png){:style="width:40%;float:right;"}
*High-level Illustration of the FPKI Certification Authorities*{:style="float:right;clear:both;font-size:14px;text-align:center;margin:20px 0 0 0;width:40%;"}

The Federal PKI is a network of hundreds of certification authorities (CAs) that issue:

- PIV credentials and person identity certificates
- PIV-Interoperable credentials and person identity certificates
- Other person identity certificates
- Device identity certificates

The participating Certification Authorities and the Policies, Processes, and Auditing of all the participants is referred to as the Federal Public Key Infrastructure (FPKI).

The FPKI includes US federal, State, Local, Tribal, Territorial, international governments, and commercial organizations who work together to provide services for the benefit of the federal government.


### What is an example?
To give a simple example, we'll explain the PIV certificates.  Although we have many other types of identity certificates, it's easiest to explain with **PIV** since you might have one:

* Identity certificates are issued and digitally signed by a _Certificate Authority_.  
* The _Certificate Authority_ that issued and digitally signed your PIV certificates is called an _Intermediate Certificate Authority_ because it was issued a certificate by another _Certificate Authority_.  
* This process of issuing and signing continues until there is one  _Certificate Authority_ that is called the _Root Certificate Authority_.

![Example of an identity certificate with intermediate and root]({{site.baseurl}}/img/pivcertificatechain_small.png){:style="float:center"}

The full process of proving identity when issuing the certificates, auditing the certificate authorities, and the cryptographic protections of the digital signatures establish the basis of Trust.

For the US Federal Government Executive branch agencies, there is one Root Certificate Authority named _Federal Common Policy Certificate Authority (COMMON)_, and dozens of Intermediate Certificate Authorities, and Bridged Certificate Authorities.  

*  [A graph of the federal public key infrastructure, including the business communities](https://fpki-graph.fpki-lab.gov/){:target="_blank"}


### Why should Agencies use certificates from the FPKI?

All Agencies should use the FPKI to enhance their security and trust for:

* Physical and logical access
* Document sharing
* Communications across federal agencies, and outside bodies such as universities, state and local governments, commercial entities, and other communities of interest.

The FPKI provides four core technical capabilities:
![Illustration of the four core FPKI capabilities](img/fpki-core.png){:style="width:40%;float:right;"}
*The Four Core FPKI Capabilities*{:style="float:right;clear:both;font-size:14px;text-align:center;margin:20px 0 0 0;width:40%;"}

* Trust with Federal agencies and Industry
* Support for technical non-repudiation
* Strong authentication & encryption
* Strong digital signature

These four core capabilities are made possible by leveraging digital certificates, their standards, processes, and a mission-critical Trust Infrastructure to administer the certificates. The Trust Infrastructure provides the technical functionality for issuing, maintaining, and revoking the certificates.


### Why is the FPKI important?

The FPKI is important to Federal agencies as well as citizens, businesses, and organizations that need access to federal agency services and facilities.  It contains the Federal Government's Trust Infrastructure, and facilitates trust of PIV, PIV-I, and other government and non-government credentials.

|**Benefit**|**Description**|
|-----------|---------------|
|**Increased security**|Greater logical and physical security through strong authentication. PKI credentials reduce identity theft, data breaches, and trust violations inherent in weak credentials such as username/password. Specifically, PKI closes security gaps of user identification and authentication, encryption of sensitive data, and data integrity. It also addresses security issues identified in Government Accountability Office (GAO) reports.|
|**Greater Compliance**|Using the Federal PKI means almost automatic compliance with several Executive Orders, laws, initiatives, and standards (e.g. FISMA, E-Gov Act). Agencies can specify FPKI in contracts to ensure vendor compliance with all government requirements. The FPKI Policy Authority verifies participating CAs are audited and operate in a secure manner.|
|**Improved Interoperability**|Greater interoperability with other federal agencies and non-federal organizations that trust FPKI certificates. The FPKI helps reduce the need for issuing multiple credentials to users.|
|**Elimination of Redundancy and Complexity**|The FPKI helps reduce the need for multiple trust agreements and duplicating associated trust agreement tasks. It also allows users to use a single credential rather than different credentials across Federal agency networks.|
|**Increased Return on Investment**|The FPKI improves business processes and efficiencies.  For example, leveraging digital signing, encryption, and non-repudiation allows Federal agencies to migrate from manual processing to automated processing, especially around document processing/sharing, and communications across Federal agencies, and between Federal agencies and outside bodies.  In addition, Federal agencies can reduce operational costs and burdens (e.g., eliminate cost/burden of managing agency-issued credentials, reduce password service desk costs).
|**The FPKI Approved Providers List**|By leveraging the [FPKI Approved Provider List](https://www.idmanagement.gov/IDM/s/article_content_old?tag=a0Gt0000000XRrC){:target="_blank"}, Federal agencies can be sure they are using Providers that meet all necessary Federal government standards, and can be sure of the level of assurance when relying on approved Providers' certificates.  This saves Federal agencies an enormous amount of time and effort, as well as reducing risk.|


### Where can I find the Policies and Standards?

* [Federal Common Certificate Policy](https://www.idmanagement.gov/IDM/s/article_content_old?tag=a0Gt0000000SfwS){:target="_blank"} is the certificate policy for the Federal Root Certificate Authority.
* [Federal Bridge Certificate Policy](https://www.idmanagement.gov/IDM/s/article_content_old?tag=a0Gt0000000SfwS){:target="_blank"} is the certificate policy for the Federal Bridge Certificate Authority.
* [X.509 Certificate and CRL Extensions Profile](https://www.idmanagement.gov/IDM/s/document_detail?Id=kA0t00000008Od8CAE){:target="_blank"} specifies certificate and certificate revocation list (CRL) extension profiles for FPKI infrastructure systems.
* [X.509 Certificate and Certificate Revocation List (CRL) Extensions Profile for PIV-I Cards](https://www.idmanagement.gov/IDM/s/document_detail?Id=kA0t00000008ObiCAE){:target="_blank"} specifies certificate and certificate revocation list (CRL) extension profiles for use with Personal Identity Verification Interoperable (PIV-I) cards.
* [X.509 Certificate and CRL Extensions Profile for the Shared Service Provider (SSP) Program](https://www.idmanagement.gov/IDM/s/document_detail?Id=kA0t0000000GmdcCAC){:target="_blank"} specifies certificate and certificate revocation list (CRL) extension profiles for certificates and CRLs issued under COMMON.
* [OMB 2016 Circular A-130](https://www.whitehouse.gov/sites/whitehouse.gov/files/omb/circulars/A130/a130revised.pdf){:target="_blank"} establishes general policy for the planning, budgeting, governance, acquisition, and management of Federal information, personnel, equipment, funds, IT resources and supporting infrastructure and services.
* [OMB Memorandum M-05-05](https://www.whitehouse.gov/sites/whitehouse.gov/files/omb/memoranda/2005/m05-05.pdf){:target="_blank"}  requires the use of an SSP to mitigate the risk of commercial managed services for public key infrastructure (PKI) and electronic signatures.
