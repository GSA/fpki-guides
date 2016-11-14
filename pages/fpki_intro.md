---
layout: default
title: Introduction
permalink: /
---
## Introduction to FPKI Guides ##

Welcome to the **Federal Public Key Infrastructure** (FPKI) guides!  

On these pages you will find information about the Federal Public Key Infrastructure, as well as commonly used links, tools, tips, and user guides for leveraging the FPKI.  

These guides are [open source](https://github.com/gsa/fpki-guides) and a _work in progress_ and we [welcome contributions]({{ site.baseurl }}/contribute/) from our colleagues.

The information on this page provides introductory information to answer the following questions:

1. [What is the FPKI?](#what-is-the-fpki)
2. [Why Should Agencies Use the FPKI?](#why-should-agencies-use-the-fpki)
3. [Why is the FPKI Important?](#why-is-the-fpki-important) 
4. [What is in the FPKI Guides?](#what-is-in-the-fpki-guides)
5. [Where Can I Find the Policies and Standards?](#where-can-i-find-the-policies-and-standards)

### What is the FPKI? ###
[![Image of the Federal PKI Certification Authorities](img/Intro-image3.png){:style="width:40%;float:right;"}](https://raw.githubusercontent.com/djpackham/fpki-guides/gh-pages/img/Intro-image3.png)
*High-level Illustration of the FPKI Certification Authorities*{:style="float:right;clear:both;font-size:14px;text-align:center;margin:20px 0 0 0;width:40%;"}

In a nutshell, the FPKI is a network of hundreds of certification authorities (CAs) that issue:

- PIV credentials and person identity certificates
- PIV-Interoperable credentials and person identity certificates
- Other person identity certificates
- Device identity certificates

The participating Certification Authorities and the Policies, Processes, and Auditing of all the participants is referred to as the Federal Public Key Infrastructure (FPKI).

The FPKI Community includes federal, industry, state, and other interested representatives who work together to provide FPKI services for the benefit of the federal government.

### Why Should Agencies Use the FPKI? ###

All Agencies should use the FPKI to enhance their security and trust for: 

* Physical and logical access
* Document sharing
* Communications across federal agencies, and outside bodies such as universities, state and local governments, commercial entities, and other communities of interest.

At a high-level, the FPKI provides four core technical capabilities:
[![Illustration of the four core FPKI capabilities](img/fpki-core.png){:style="width:40%;float:right;"}](https://raw.githubusercontent.com/djpackham/fpki-guides/gh-pages/img/fpki-core.png)
*The Four Core FPKI Capabilities*{:style="float:right;clear:both;font-size:14px;text-align:center;margin:20px 0 0 0;width:40%;"}

* Trust with Federal agencies and Industry
* Support for technical non-repudiation
* Strong authentication & encryption
* Strong digital signature

These four core capabilities are made possible by leveraging digital certificates, their standards, processes, and a mission-critical Trust Infrastructure to administer the certificates. The Trust Infrastructure provides the technical functionality for issuing, maintaining, and revoking the certificates.

Learn more about certificates and Public Key Infrastructure in general by visiting the [Public Key Infrastructure section](pages/pki.md).

### Why is the FPKI Important? ###

The FPKI is important to Federal agencies as well as citizens, businesses, and organizations that need access to federal agency services and facilities.  It contains the Federal Government's Trust Infrastructure, and facilitates trust of PIV, PIV-I, and other government and non-government credentials.  As the following table shows, the FPKI provides a wide range of security, business, and technical benefits.

|**Benefit**|**Description**|
|-----------|---------------|
|**Increased security**|Greater logical and physical security through strong authentication. PKI credentials reduce identity theft, data breaches, and trust violations inherent in weak credentials such as username/password. Specifically, PKI closes security gaps of user identification and authentication, encryption of sensitive data, and data integrity. It also addresses security issues identified in Government Accountablility Office (GAO) reports.|
|**Greater Compliance**|Using the Federal PKI means almost automatic compliance with several Executive Orders, laws, initiatives, and standards (e.g., FISMA, E-Gov Act, NSTIC). Agencies can specify FPKI in contracts to ensure vendor compliance with all government requirements. The FPKI Policy Authority verifies participating CAs are audited and operate in a secure manner.|
|**Improved Interoperability**|Greater interoperability with other federal agencies and non-federal organizations that trust FPKI certificates. The FPKI helps reduce the need for issuing multiple credentials to users.|
|**Elimination of Redundancy and Complexity**|The FPKI helps reduce the need for multiple trust agreements and duplicating associated trust agreement tasks. It also allows users to use a single credential rather than different credentials across Federal agency web sites.|
|**Increased Return on Investment**|The FPKI improves business processes and efficiencies.  For example, leveraging digital signing, encryption, and non-repudiation allows Federal agencies to migrate from manual processing to automated processing, especially around document processing/sharing, and communications across Federal agencies, and between Federal agencies and outside bodies.  In addition, Federal agencies can reduce operational costs and burdens (e.g., eliminate cost/burden of managing agency-issued credentials, reduce password helpdesk costs). See [The Realized Value of the Federal Public Key Infrastructure (FPKI)](https://www.idmanagement.gov/IDM/s/document_detail?Id=kA0t00000008OgMCAU) for some Federal agency case studies|
|**The FPKI Approved Providers List**|By leveraging the [FPKI Approved Provider List](https://www.idmanagement.gov/IDM/s/article_content_old?tag=a0Gt0000000XRrC), Federal agencies can be sure they are using Providers that meet all necessary Federal government standards, and can be sure of the level of assurance when relying on approved Providers' certificates.  This saves Federal agencies an enormous amount of time and effort, as well as reducing risk.|

### What is in the FPKI Guides? ###

The FPKI Guides provide:

* An overview of the FPKI, Trust Stores, and Public Key Infrastructure elements
* Common links to Certification Authority certificates and other FPKI artifacts
* Links to useful FPKI tools
* User Guides that provide guidance for specific scenarios like digitally signing an email using Outlook

All these guides need your contributions. We want you to contribute and share lessons learned, and any other information you think is helpful for your colleagues.

### Where Can I Find the Policies and Standards? ###

- [Federal Common Certificate Policy](https://www.idmanagement.gov/IDM/s/article_content_old?tag=a0Gt0000000SfwS) 

- [Federal Bridge Certificate Policy](https://www.idmanagement.gov/IDM/s/article_content_old?tag=a0Gt0000000SfwS)

- [FPKI X.509 Certificate and CRL Extensions Profile](https://www.idmanagement.gov/IDM/s/document_detail?Id=kA0t00000008Od8CAE)

- [X.509 Certificate and Certificate Revocation List (CRL) Extensions Profile for PIV-I Cards](https://www.idmanagement.gov/IDM/s/document_detail?Id=kA0t00000008ObiCAE)

- [X.509 Certificate and CRL Extensions Profile for the Shared Service Provider (SSP) Program](https://www.idmanagement.gov/IDM/s/document_detail?Id=kA0t0000000GmdcCAC)

- [OMB 2016 Circular A-130](https://www.whitehouse.gov/sites/default/files/omb/assets/OMB/circulars/a130/a130revised.pdf)

- [OMB Memoandum M-05-05](https://www.whitehouse.gov/sites/default/files/omb/assets/omb/memoranda/fy2005/m05-05.pdf)

- [NIST Special Publication 800-53](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf)
