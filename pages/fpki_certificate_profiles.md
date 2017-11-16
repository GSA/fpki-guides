---
layout: default
title: Certificate Profiles
permalink: /certprofiles/
---

This section specifies the X.509 v3 certificate profiles and the v2 certificate revocation list (CRL) extensions profiles for the Federal Public Key Infrastructure (FPKI). These profiles give the unique parameter settings needed for certificates and CRLs issued under the _X.509 Certificate Policy For The U.S. Federal PKI Common Policy Framework_ (_Common Policy CP_). They also give guidance for certificates issued under other Certificate Policies that are cross-certified with the Federal Bridge Certification Authority (FBCA).

To maximize interoperability across Federal Government, State, Local, Tribal, and Territorial PKI communities,<!--Is this what Wendy meant by "outside Fed Govt?"--> these profiles include certain formats and semantics from the PKIX Working Group's Internet X.509 PKI certificate and CRL profiles [1](rfc-5280). 

The _Common Policy CP_ covers 18 certificate profiles and two CRL extensions profiles (i.e., OCSP responder and CRL). Click the sidebar navigation **+** sign to see a list of profiles. Click on a profile name.  

These certificate profile "worksheets" appear in three previous documents. The previous worksheet numbers correspond to the current numbers, as shown in the traceablity matrix below.

**Common Policy CP Certificate Profile Worksheet Traceability**

| **Certificate Profile Worksheets**   | **SSP**<BR>**(FIPS 201-2)**        | **FBCA**     | **PIV-I**     | **Current**   |
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

###### RFC 5280, _Internet X.509 Public Key Infrastructure Certificate and Certificate Revocation List (CRL) Profile_, David Cooper, Stefan Santesson, Stephen Farrell, Sharon Boeyen, Russell Housley, and Tim Polk (May 2008).


**Possible Background section:**

1. What is a Certificate Profile?
1. Why do we use Certificate Profiles?

### What is a Certificate Profile?

A **_certificate profile_** is gives the unique parameter settings for a certificate covered under a Certificate Policy. Certificate profiles identify their governing Certificate Policies by citing one or more Object Identifiers (OIDs).  

### Why do we use Certificate Profiles?



