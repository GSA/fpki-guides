---
layout: default
title: Introduction
permalink: /
---
Welcome to the **Federal Public Key Infrastructure** (FPKI) guides!  In these guides, you will find information about the Federal Public Key Infrastructure including commonly used links, tools, tips, and information for leveraging the Federal PKI.  

These guides are [open source](https://github.com/gsa/fpki-guides){:target="_blank"} and a _work in progress_ and we [welcome contributions]({{ site.baseurl }}/contribute/) from our colleagues.  We encourage you to contribute and share information you think is helpful for your colleagues.

The information on this page provides introductory information to answer the following questions:

- [What is the Federal PKI?](#what-is-the-federal-pki)
- [What is an example?](#what-is-an-example)
- [Why should agencies use certificates from the Federal PKI?](#why-should-agencies-use-certificates-from-the-federal-pki)
- [Why is the Federal PKI important?](#why-is-the-federal-pki-important)
- [Where can I find the Policies and Standards?](#where-can-i-find-the-policies-and-standards)


### What is the Federal PKI?
![Image of the Federal PKI Certification Authorities](img/Intro-image3.png){:style="width:40%;float:right;"}
*High-level Illustration of the FPKI Certification Authorities*{:style="float:right;clear:both;font-size:14px;text-align:center;margin:20px 0 0 0;width:40%;"}

The Federal PKI is a network of hundreds of certification authorities (CAs) that issue:

- PIV credentials and person identity certificates
- PIV-Interoperable credentials and person identity certificates
- Other person identity certificates
- Enterprise device identity certificates

The participating Certification Authorities and the Policies, Processes, and Auditing of all the participants is referred to as the Federal Public Key Infrastructure (FPKI).

The FPKI includes US federal, State, Local, Tribal, Territorial, international governments, and commercial organizations who work together to provide services for the benefit of the federal government.


### What is an example?
We explain the PIV certificates as a simple example.  Although we have many other types of identity certificates, it's easiest to explain with **PIV** since you might have one:

* Identity certificates are issued and digitally signed by a _Certification Authority_.  
* The _Certification Authority_ that issued and digitally signed your PIV certificates is called an _Intermediate Certification Authority_ because it was issued a certificate by another _Certification Authority_.  
* This process of issuing and signing continues until there is one  _Certification Authority_ that is called the _Root Certification Authority_.

![Example of an identity certificate with intermediate and root]({{site.baseurl}}/img/pivcertificatechain_small.png){:style="float:center"}

The full process of proving identity when issuing the certificates, auditing the certificate authorities, and the cryptographic protections of the digital signatures establish the basis of Trust.

For the US Federal Government Executive branch agencies, there is one Root Certification Authority named _Federal Common Policy Certification Authority (COMMON)_, and dozens of Intermediate Certification Authorities, and Bridged Certification Authorities.  

*  [A graph of the federal public key infrastructure, including the business communities](https://fpki.idmanagement.gov/tools/fpkigraph/){:target="_blank"}


### Why should Agencies use certificates from the Federal PKI?

All Agencies should use the Federal PKI to enhance their security and trust for:

* Facilities access, network access, and application access for high risk applications 
* Document sharing and digital signatures
* Signed and encrypted email communications across federal agencies

The Federal PKI provides four core technical capabilities:
![Illustration of the four core FPKI capabilities](img/fpki-core.png){:style="width:40%;float:right;"}
*The Four Core FPKI Capabilities*{:style="float:right;clear:both;font-size:14px;text-align:center;margin:20px 0 0 0;width:40%;"}

* Trust with Federal agencies and Industry
* Support for technical non-repudiation
* Strong authentication & encryption
* Strong digital signature

These four core capabilities are made possible by leveraging digital certificates, their standards, processes, and a mission-critical Trust Infrastructure to administer the certificates. 


### Why is the Federal PKI important?

The Federal PKI is important to Federal agencies as well as businesses and other government entities that need access to federal facilities or participate in delivering federal government services.    

|**Benefit**|**Description**|
|-----------|---------------|
|**Security**| Improved facilities, network and application access through cryptographic based, federated authentication. PKI credentials reduce data breaches inherent in weak credentials such as username/password. Specifically, PKI closes security gaps of user identification and authentication, encryption of sensitive data, and data integrity. |
|**Compliance**| Using the Federal PKI means compliance with several Executive Orders, laws, initiatives, and standards (e.g. FISMA, E-Gov Act). The Federal PKI verifies participating CAs are audited and operated in a secure manner.|
|**Interoperability**|Improved interoperability with other federal agencies and non-federal organizations that trust Federal PKI certificates. The Federal PKI helps reduce the need for issuing multiple credentials to users.|
|**Return on Investment**|The Federal PKI improves business processes and efficiencies.  For example, leveraging digital signing, encryption, and non-repudiation allows Federal agencies to migrate from manual processing to automated processing, especially around document processing/sharing, and communications across Federal agencies, and between Federal agencies and outside bodies.  


### Where can I find the Policies and Standards?

* [Federal Common Certificate Policy](https://www.idmanagement.gov/wp-content/uploads/sites/1171/uploads/fpki-x509-cert-common-policy.pdf){:target="_blank"} is the certificate policy for the Federal Root Certification Authority.
* [Federal Bridge Certificate Policy](https://www.idmanagement.gov/wp-content/uploads/sites/1171/uploads/FBCA-Certificate-Policy-v2.31-06-29-17.pdf){:target="_blank"} is the certificate policy for the Federal Bridge Certification Authority.
* [X.509 Certificate and CRL Extensions Profile](https://www.idmanagement.gov/wp-content/uploads/sites/1171/uploads/fpki-x509-cert-profiles.pdf){:target="_blank"} specifies certificate and certificate revocation list (CRL) extension profiles for FPKI infrastructure systems.
* [X.509 Certificate and Certificate Revocation List (CRL) Extensions Profile for PIV-I Cards](https://www.idmanagement.gov/wp-content/uploads/sites/1171/uploads/fpki-pivi-cert-profiles.pdf){:target="_blank"} specifies certificate and certificate revocation list (CRL) extension profiles for use with Personal Identity Verification Interoperable (PIV-I) cards.
* [X.509 Certificate and CRL Extensions Profile for the Shared Service Provider (SSP) Program](https://www.idmanagement.gov/wp-content/uploads/sites/1171/uploads/fpki-cert-profile-ssp.pdf){:target="_blank"} specifies certificate and certificate revocation list (CRL) extension profiles for certificates and CRLs issued under COMMON.
* [OMB 2016 Circular A-130](https://www.whitehouse.gov/sites/whitehouse.gov/files/omb/circulars/A130/a130revised.pdf){:target="_blank"} establishes general policy for the planning, budgeting, governance, acquisition, and management of Federal information, personnel, equipment, funds, IT resources and supporting infrastructure and services.
* [OMB Memorandum M-05-05](https://www.whitehouse.gov/sites/whitehouse.gov/files/omb/memoranda/2005/m05-05.pdf){:target="_blank"}  requires the use of an SSP to mitigate the risk of commercial managed services for public key infrastructure (PKI) and electronic signatures.
