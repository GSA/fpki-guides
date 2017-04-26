---
layout: default
title: Introduction
permalink: /
---

Welcome to the **Federal Public Key Infrastructure** (FPKI) guides!  In these guides, you will find information about the Federal Public Key Infrastructure including commonly used links, tools, tips, and information for leveraging the FPKI.  

These guides are [open source](https://github.com/gsa/fpki-guides){:target="_blank"} and a _work in progress_ and we [welcome contributions]({{ site.baseurl }}/contribute/) from our colleagues.  All these guides need your contributions.
We want you to contribute and share lessons learned, and any information you think is helpful for your colleagues.

The information on this page provides introductory information to answer the following questions:

1. [What is the Fedearl Public Key Infrastructure?](#what-is-the-federal-public-key-infrastructure)
2. [What is an example?](#what-is-an-example)
2. [Why should agencies use the Federal PKI?](#why-should-agencies-use-the-federal-pki)
3. [Why is the Federal PKI Important?](#why-is-the-federal-pki-important)
4. [What is in the Federal PKI Guides?](#what-is-in-the-federal-pki-guides)
5. [Where can I find the policies and standards?](#where-can-i-find-the-policies-and-standards)

### What is the Federal Public Key Infrastructure?
![Image of the Federal PKI Certification Authorities](img/Intro-image3.png){:style="width:40%;float:right;"}
*High-level Illustration of the FPKI Certification Authorities*{:style="float:right;clear:both;font-size:14px;text-align:center;margin:20px 0 0 0;width:40%;"}

The Federal PKI (FPKI) is a network of hundreds of certification authorities (CAs) that issue:

- PIV credentials and person identity certificates
- PIV-Interoperable credentials and person identity certificates
- Other person identity certificates
- Enterprise device identity certificates

The participating Certification Authorities and the _policies, processes, and auditing_ of all the participants is referred to as the Federal Public Key Infrastructure (FPKI).

The FPKI includes US federal, State, Local, Tribal, Territorial, international governments, and commercial organizations (industry partners) who work together to provide services for the benefit of the federal government and our citizens.

### What is an example?
To give a simple example, we'll explain the PIV certificates.  Although we have many other types of identity certificates, it's easiest to explain with **PIV** since you might have one:

* Identity certificates are issued and digitally signed by a _Certificate Authority_.  
* The _Certificate Authority_ that issued and digitally signed your PIV certificates is called an _Intermediate Certificate Authority_ because it was issued a certificate by another _Certificate Authority_.  
* This process of issuing and signing continues until there is one  _Certificate Authority_ that is called the _Root Certificate Authority_.

![Example of an identity certificate with intermediate and root]({{site.baseurl}}/img/pivcertificatechain_small.png){:style="float:center"}

The full process of proving identity when issuing the certificates, auditing the certificate authorities, and the cryptographic protections of the digital signatures establish the basis of Trust.

For the US Federal Government Executive branch agencies, there is one Root Certificate Authority named _Federal Common Policy Certificate Authority (COMMON)_, and dozens of Intermediate Certificate Authorities, and Bridged Certificate Authorities.  

*  [A graph of the federal public key infrastructure, including the business communities](https://fpki-graph.fpki-lab.gov/){:target="_blank"}


### Why should agencies use certificates from the Federal PKI?

All federal agencies should leverage certificates from the Federal PKI to enhance their security and trust for:

* Physical and logical access to government building and networks
* Document sharing, digital signatures and encrypted person to person communications
* Communications across federal agencies, and outside bodies such as universities, state and local governments, commercial entities, and other communities of interest that participate in the Federal PKI.

The Federal PKI provides four core technical capabilities:
![Illustration of the four core FPKI capabilities](img/fpki-core.png){:style="width:40%;float:right;"}
*The Four Core FPKI Capabilities*{:style="float:right;clear:both;font-size:14px;text-align:center;margin:20px 0 0 0;width:40%;"}

* Trust between federal agencies, industry partners and other government partners
* Support for technical non-repudiation
* Strong authentication & encryption
* Strong digital signature

These four core capabilities are made possible by leveraging digital certificates, their standards, processes, and a mission-critical trust infrastructure to administer the certificates. The trust infrastructure provides the technical functionality for issuing, maintaining, and revoking the certificates.

### Why is the Federal PKI important?

The Federal PKI is important to Federal agencies as well as industry partners and other government partners that need access to federal agency information systems and buildings.  It contains the Federal Government's Trust Infrastructure, and facilitates trust of PIV, PIV-I, and other government and non-government pki-based credentials.

|**Benefit**|**Description**|
|-----------|---------------|
|**Increased security**|PKI credentials help reduce data breaches and trust violations inherent in weak credentials. Specifically, PKI closes security gaps of user identification and authentication, encryption of sensitive data, and data integrity. It also helps address issues identified in Government Accountability Office (GAO) reports.|
|**Greater Compliance**|Using the Federal PKI enables compliance with several Executive Orders, laws, initiatives, and standards (e.g. eGov Act, OMB A-130). |
|**Interoperability**|The Federal PKI helps reduce the need for issuing multiple identity and authentication credentials to government users, government partners, and government services.|
|**Elimination of Redundancy and Complexity**|The Federal PKI helps reduce the need for multiple trust agreements and duplicating associated trust agreement tasks. It also allows users to use a single credential rather than different credentials across Federal agency networks.|
|**Return on Investment**|The Federal PKI improves business processes and efficiencies.  For example, leveraging digital signing and encryption allows Federal agencies to migrate to automated processing of digital documents and communications across federal agencies, and between federal agencies and partners.  In addition, Federal agency systems and networks across government can reduce operational costs and burdens by eliminating the cost of performing duplicative identity proofing procedures and reduce password service desk costs.

### What is in the Federal PKI guides?
<!-- place holder -->

### Where can I find the Certificate Policies and Standards?

|**Policy or Standard**|**Description**|
|-----------|---------------|
|[Federal Common Certificate Policy](https://www.idmanagement.gov/IDM/s/article_content_old?tag=a0Gt0000000SfwS){:target="_blank"}| Certificate Policy |
|[Federal Bridge Certificate Policy](https://www.idmanagement.gov/IDM/s/article_content_old?tag=a0Gt0000000SfwS){:target="_blank"}| Certificate Policy |
|[X.509 Certificate and CRL Extensions Profile](https://www.idmanagement.gov/IDM/s/document_detail?Id=kA0t00000008Od8CAE){:target="_blank"}| |
|[X.509 Certificate and Certificate Revocation List (CRL) Extensions Profile for PIV-I Cards](https://www.idmanagement.gov/IDM/s/document_detail?Id=kA0t00000008ObiCAE){:target="_blank"}||
|[X.509 Certificate and CRL Extensions Profile for the Shared Service Provider (SSP) Program](https://www.idmanagement.gov/IDM/s/document_detail?Id=kA0t0000000GmdcCAC){:target="_blank"}||
|[OMB 2016 Circular A-130](https://www.whitehouse.gov/sites/default/files/omb/assets/OMB/circulars/a130/a130revised.pdf){:target="_blank"}||
|[OMB Memorandum M-05-05](https://www.whitehouse.gov/sites/default/files/omb/assets/omb/memoranda/fy2005/m05-05.pdf){:target="_blank"}||
