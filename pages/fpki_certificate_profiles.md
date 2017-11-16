---
layout: default
title: Certificate Profiles
permalink: /certprofiles/
---

### [**Who needs to create certificate profiles? Who is the audience?**]

### What is a Certificate Profile?<!--maybe?-->

A **_certificate profile_** gives the unique parameter settings for a certificate covered under a Certificate Policy. 

### Why do we use Certificate Profiles?<!--maybe?-->

### How do we create Certificate Profiles?<!--maybe?-->

This section identifies the X.509 v3 certificate profiles and the v2 certificate revocation list (CRL) extensions profiles for the Federal Public Key Infrastructure (FPKI). These profiles give the unique parameter settings needed for certificates and CRLs issued under the _X.509 Certificate Policy For The U.S. Federal PKI Common Policy Framework_ (_Common Policy CP_). They also give guidance for certificates issued under other Certificate Policies that are cross-certified with the Federal Bridge Certification Authority (FBCA).

To maximize interoperability across Federal Government, State, Local, Tribal, and Territorial PKI communities,<!--Is this what Wendy meant by "outside Fed Govt?"--> these certificate profiles include certain formats and semantics taken from RFC 5280.<sup>[1](#myfootnote1)</sup> 

* Use the left-hand sidebar (**+**) to navigate to the certificate and CRL extensions profiles covered by the _Common Policy CP_.  

The certificate profiles _worksheets_ have appeared in three standards prior to the current _X.509 Certificate and Certificate Revocation List (CRL) Extensions Profile for the Shared Service Providers (SSP) Program, Federal Bridge, and PIV-I_. The certificate profiles and numbering are given in the traceability matrix below:

**Common Policy CP Certificate Profile Worksheet Traceability Matrix**

| **Certificate Profile<BR>Worksheets**   | **SSP**<BR>**(FIPS 201-2)**        | **FBCA**     | **PIV-I**     | **Current**   |
| :----------------------------------  | :------:        | :-----------:      | :-----------:      | :-----------:      |
| Self-Signed CA                       | 1              | 1            |               | 1             |
| Key Rollover CA                      | 2              | 2            |  1            | 2             |
| Peer-to-Peer Cross-Certificate       | 3              | 3            |  2            | 3             |
| Intermediate or Subordinate CA       | 3              | 3            |  2            | 4             |
| CRL       | 4              | 4            |  3            | 5             |
| End Entity Signature       |                | 5            |               | 6             |
| Common End Entity Signature       | 5              |              |               | 7             |
| PIV-I End Entity Signature Certificate Profile       |                |              |  6            | 8             |
| End Entity Key Management       |                |  6           |               | 9             |
| Common End Entity Key Management       | 6               |             |               | 10             |
| PIV-I End Entity Key Management       |                |             | 7              | 11             |
| PIV Card Authentication       | 8               |             |               | 12             |
| PIV-I Card Authentication       |                |             |  4             | 13             |
| PIV Authentication       |  9              |             |               | 14             |
| Common Derived PIV Authentication       |  11              |             |               | 15             |
| PIV-I Authentication       |                |             |  5             | 16             |
| Common PIV Content Signing       | 10               |             |               | 17             |
| PIV-I Content Signing       |                |             |  8             | 18             |
| PIV-I Content Signing       |                |             |  8             | 18             |
| Computing and Communications Devices       | 7               |             |               | 19             |
| Delegated OCSP Responder       | 12               |             | 9             | 20             |


<a name="myfootnote1">1</a>:&nbsp;&nbsp;RFC 5280, _Internet X.509 Public Key Infrastructure Certificate and Certificate Revocation List (CRL) Profile_, David Cooper, Stefan Santesson, Stephen Farrell, Sharon Boeyen, Russell Housley, and Tim Polk (May 2008).

