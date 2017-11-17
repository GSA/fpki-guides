---
layout: default
title: Certificate Profiles
permalink: /certprofiles/
---

This section provides the X.509 v3 certificate and the v2 certificate revocation list (CRL) extensions profiles for the _X.509 Certificate Policy For The U.S. Federal PKI Common Policy Framework_ (aka, _Common Policy CP_). These profiles specify the unique parameter settings for certificates and CRLs issued under the _Common Policy CP_. They also give guidance for those certificates issued under other certificate policies cross-certified with the Federal Bridge Certification Authority (FBCA).

To maximize interoperability across Federal Government and external PKI communities, these profiles now include certain formats and semantics from RFC 5280.<sup>[1](#myfootnote1)</sup> 

* To find a certificate or CRL extensions profile, click the **+** on the left sidebar. Select your profile.  

## History and Traceability

The certificate and CRL extensions profiles for the _Common Policy CP_ have appeared in three previous standards:  SSP (FIPS 201), FBCA, and PIV-I. The current profiles will be published in the _X.509 Certificate and Certificate Revocation List (CRL) Extensions Profile for the Shared Service Providers (SSP) Program, Federal Bridge, and PIV-I_. 

The profile-numbering traceability is below:

### Certificate Profile Traceability Matrix

| **Certificate Profile<BR>Worksheets**   | **SSP**<BR>**(FIPS 201)**        | **FBCA**     | **PIV-I**     | **Current**   |
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



<a name="myfootnote1">1</a>.&nbsp;&nbsp;RFC 5280, _Internet X.509 Public Key Infrastructure Certificate and Certificate Revocation List (CRL) Profile_, David Cooper, Stefan Santesson, Stephen Farrell, Sharon Boeyen, Russell Housley, and Tim Polk (May 2008).

