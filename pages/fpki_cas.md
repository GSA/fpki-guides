---
layout: default
title: Certificate Authorities
permalink: /ca/
---

## Introduction

The Federal Public Key Infrastructure (FPKI) was created out of the E-Government Act of 2002 which directed the General Services Administration (GSA) to establish and operate the Federal Bridge Certification Authority (FBCA).  The FBCA was designed to make it easier for participating federal agencies, partner-suppliers, other governmental organizations, and U.S. citizen constituents to interoperate and convey a level of trust with each other.  In essence, the FPKI provides a cross-certification trust “bridge” function in which participating organizations’ PKIs trust each other via digital certificate validation services. This trusted bridge service occurs transparently for federal Personal Identity Verification (PIV) and Common Access Card (CAC) smartcard users.

Over time, the Federal PKI has grown into a diverse PKI ecosystem of hundreds of certification authorities (CAs) for federal, state and foreign governments, as well as, US commercial participating PKIs.  The FPKI consists of FPKI Trust Infrastructure CAs, Shared Service Providers (SSP) CAs and FPKI Affiliates CAs.  Another component of the FPKI are Identity Credential Access Management (ICAM) applications, which consume (interface with) the FPKI digital certificates for strong authentication, data integrity, digital signature and data encryption functions.

The following diagram is a high-level view of how the FPKI CAs are structured.  Please note that the E-Governance CA (EGCA) is no longer in operation as it has been decommissioned.

![High Level CA Architecture](/img/fpki-CAs-Architecture.png)

## Types of FPKI Certificate Authorities (CAs)


### FPKI Trusted Infrastructure CAs

The FPKI Trust Infrastructure is the backbone of the FPKI hierarchy.  It consists of three main certification authorities (CAs) operated by the FPKI Management Authority (FPKIMA). The FPKIMA is an organization established by the federal government to manage, operate and maintain the FPKI program, policies, technologies and the CA infrastructure services for federal, public and private constituents. The three main CAs are referred to as FPKI Trust Infrastructure CAs.  Any CA in the FPKI can be referred to as a “FPKI CA,” but only these operated by the FPKIMA are FPKI Trust Infrastructure CAs and they are the highest level CAs in the FPKI trust hierarchy.  These next sections describe the three Trusted Infrastructure CAs.

### Common Policy Certificate Authority (_COMMON_) - the root 

Federal Common Policy CA (COMMON) was established to serve as the FPKI hierarchical trust anchor for federal agency CAs in support of HSPD-12 and PIV cards. Through the Shared Service Provider (SSP) program, authorized CAs under COMMON issue certificates for exclusive use by the federal government for federal employees, contractors, and federal devices to include the PKI certificates on the Personal Identity Verification (PIV) card. It was designed so any certificate issued by an FPKI CA can validate to a single point. 
Common policy CA customers are SSP CAs that issue and manage PIV cards for federal agencies that do not have their own PIV-issuing PKIs. In addition, federal legacy PKIs can choose to directly cross-certify with COMMON rather than the federal bridge CA.  The Common policy CA is public facing, and its root certificate is distributed by commercial vendors who include it in their commercial off the shelf product trust stores.  This enables COMMON to be the trust anchor for external relying party organizations and users to trust PKI certificates issued by federal agencies. 

* [Certificate Policy](http://www.idmanagement.gov/sites/default/files/documents/FCPCA%20CP%20v1%2024.pdf" "Download the federal Common Policy Certificate Policy")


### Federal Bridge Certification Authorities (_FBCA_)

The Federal Bridge CA (FBCA) is the PKI Bridge that enables interoperability between different federal PKIs and between Federal and external PKIs including commercial organizations, state, local, and foreign governments. The FBCA provides a means to map participating PKI certificate policies so they validate to the FCPCA trust anchor. 
The FBCA is an identity trust hub that enables peer-to-peer transactions between its member organizations, both federal and non-federal.  The FBCA is cross-certified with the State of Illinois, and with two commercial PKI Bridges: CertiPath, which serves the Aerospace and Defense industry, and SAFE/Biopharma, which provides digital identity and signature standards for the pharmaceutical and healthcare industries. These partners have extended the reach of the FPKI well beyond the boundaries of the federal government. 

* [_FBCA_ certificate](http://http.fpki.gov/bridge/fbca.crt "Download the FBCA Certificate")
  * SHA1 Thumbprint:
  * DN:

* [_FBCA 2013_ certificate](http://http.fpki.gov/bridge/fbca2013.crt "Download the FBCA 2013 Certificate")
  * SHA1 Thumbprint:
  * DN:

* [Certificate Policy](http://www.idmanagement.gov/sites/default/files/documents/FBCA%20Certificate%20Policy%20v2.27.pdf "Download the Federal Bridge Certificate Authority Certificate Policy")
* [Certificate Practices Statement](http://www.idmanagement.gov/sites/default/files/documents/CPS%20FPKI%20v4-6%2020150615-Clean%20Final_v2_redacted.pdf "Download the Federal Bridge Certificate Authority Certificate Practices Statement")

### SHA-1 Federal Root Certification Authority (_SHA1 FRCA_)

SHA1 Federal Root CA (SHA1 FRCA) is a federal CA supporting federal entities that still require using certificates that have the deprecated SHA1 signature hash algorithm.  The SHA1 hash algorithm is an older algorithm that has been deemed to be not secure enough for today’s standards.  Thus, federal organizations should no longer be using certificates with this hash.  However, it is difficult and costly for organizations to quickly switch to stronger algorithms because applications used in the FPKI community cannot process certificates using the more secure SHA-256 algorithm. Therefore, a new parallel SHA-1 FPKI was created to facilitate the interoperability for those unable to transition to SHA-256. 
Use of certificates using SHA-1 under current policy should be limited to applications in which the risks associated with the use of the deprecated SHA1 algorithm have been deemed acceptable and will only be asserted within the SHA-1 FPKI.

* [SHA-1 Federal Root certificate](http://http.fpki.gov/sha1frca/sha1frca.crt "Download the SHA-1 Federal Root Certificate")
  * SHA1 Thumbprint: '80 7c 24 98 e9 0d 55 de 1b e0 e0 d3 c6 5f 16 1a 02 22 ab 71'
  * DN: '_cn=SHA-1 Federal Root CA, ou=FPKI, o=U.S. Government, c=US_'

*  [Certificate Practices Statement]()

As a closing note on the three FPKI Trusted Infrastructure CAs, there used to be a fourth FPKI Trust Infrastructure CA called the E-Governance CA that supported ICAM applications, but it has been decommissioned and is no longer in operation.

### FPKI Participating CAs

A CA which interoperates within the FPKI is called a Participating CA and is either a federal, state, local or foreign government, or federal legacy CA. The following sections describe the various FPKI Participating CAs.

### Shared Service Provider CAs

A Shared Service Provider (SSP) CA is subordinate to the Federal Common Policy CA (FCPCA) which means its Root Certificate has been signed and issued by the FCPCA.  This means any certificates the SSP CA creates, signs and issues to users or devices are in the trust chain of the FCPCA.  An SSP CA is operated and managed by a federal agency or commercial company that has been approved by FPKI Management Authority (FPKIMA).  An SSP CA implementation must go through a certification process and must adhere to strict IT security and federal policy standards and requirements.  Once they meet these specifications, the SSP organization receives an Authority to Operate (ATO) and is contracted by the federal government to issue certificates exclusively to federal employees, contractors and federal devices that are deployed in federal agency networks.

Current SSP CAs that are issuing certificates for federal consumer users and devices are:

•	Organizational Resource Consultants (ORC)
•	Entrust
•	Verizon
•	Symantec
•	U.S. Treasury
•	Department of State

### Private Sector CA

An industry organization that has a PKI participating CA that is cross-certified with the FBCA and has shown a valid need to either conduct business or provide PKI services to the federal government. These CAs are often referred to as Nonfederal Issuers (NFIs).

### Access Certificates for Electronic Services (ACES) CA

A GSA program operated by a contracted private sector participating CA.  In a similar service model to the SSP program of approved vendors issuing certificates with government certificate policies, the ACES CA issues certificates to U.S. citizens, authorized business representatives and unaffiliated non-federal individuals who have a demonstrated need to access federal network systems.  This provides a method of authenticating external federal users who are authorized to access federal resources.

### Other Bridge CAs

Bridge CAs connect member PKIs and are designed to enable interoperability between different PKIs operating under their own Certificate Policy. A bridge CA is not intended to be used as a trust anchor. 

### Other Government CAs

These are CAs managed and operated by state, local, or foreign government organizations. 

### Federal Agency Legacy PKIs

OMB Memo 05-05 issued in 2004 directed all federal agencies to use the SSP CA program instead of establishing their own self-managed PKI unless they were already operating a PKI.   There were a number of agencies that had already deployed and invested significant funding into their own PKI.  Some of these agencies opted out of migrating to the SSP CA program and continue to manage their own existing infrastructures.  These Federal Agency Legacy PKIs operate an internal PKI that is cross-certified with one or more FPKI Trust Infrastructure CAs.

Below is a graphic depiction to show the relationships of the FPKI Trusted Infrastructure CAs, SSP CAs and participating individual federal agency or other organizational CAs.

![FPKI Trust infrastructure](/img/fpki-CAs-High-level.png)
