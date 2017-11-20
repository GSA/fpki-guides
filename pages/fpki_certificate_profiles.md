---
layout: default
title: Certificate Profiles
permalink: /certprofiles/
---

Certificate profiles specify the unique parameter settings needed for certificates and CRLs issued under a certificate policy. 

The links below will take you to the X.509 v3 certificate and the v2 certificate revocation list (CRL) extensions profiles for the _X.509 Certificate Policy For The U.S. Federal PKI Common Policy Framework_ (aka, _Common Policy CP_). 

**Notes on _Common Policy CP_ Certificate Profile Worksheets:** 
* They also include guidance for certificates issued under certificate policies cross-certified with the Federal Bridge Certification Authority (FBCA), as well as certain formats and semantics from RFC 5280[^n] to promote interoperability across PKI communities. 
* Previous versions of these certificate profile worksheets appeared in the SSP[^n], FBCA[^], and PIV-I[^]. To trace the profiles' worksheet numbering, go to: [Historical Worksheet-Numbering Table](#historical certificate-profile-worksheet-numbering)  

## Certificate Profile Worksheets

### CAs 
 
[Self-Signed CA]({{ site.baseurl }}/profiles/selfsignedca/)<BR>
[Key Rollover CA]({{ site.baseurl }}/profiles/keyrollover/)<BR>
[Peer-to-Peer Cross-Certificate]({{ site.baseurl }}/profiles/p2pcrosscert/)<BR>
[Intermediate or Subordinate CA]({{ site.baseurl }}/profiles/intorsubca/)<BR>

### PIV

[PIV Card Authentication]({{ site.baseurl }}/profiles/pivcardauth/)<BR>
[PIV Authentication]({{ site.baseurl }}/profiles/pivauth/)<BR>
[Common PIV Content Signing]({{ site.baseurl }}/profiles/commonpivcontentsign/)<BR>


### PIV-I

[PIV-I End Entity Signature]({{ site.baseurl }}/profiles/pivieesign/)<BR>
[PIV-I End Entity Key Management]({{ site.baseurl }}/profiles/pivieekeymgmt/)<BR>
[PIV-I Card Authentication]({{ site.baseurl }}/profiles/pivicardauth/)<BR>
[PIV-I Authentication]({{ site.baseurl }}/profiles/piviauth/)<BR>
[PIV-I Content Signing]({{ site.baseurl }}/profiles/pivicontentsign/)<BR>

### Derived PIV

[Derived PIV Authentication]({{ site.baseurl }}/profiles/derivedpivauth/)

### End Entity

[End Entity Signature]({{ site.baseurl }}/profiles/eesign/)<BR>
[End Entity Key Management]({{ site.baseurl }}/profiles/eekeymgmt/)<BR>
[Common End Entity Key Management]({{ site.baseurl }}/profiles/commoneekeymgmt/)<BR>

### Devices

[Computing and Communications Devices]({{ site.baseurl }}/profiles/devices/)

### CRL and OCSP

[CRL]({{ site.baseurl }}/profiles/crl/)<BR>
[Delegated OCSP Responder]({{ site.baseurl }}/profiles/delegatedocsp/)

## Historical Certificate Profile Worksheet Numbering

The certificate and CRL extensions profiles for the _Common Policy CP_ have appeared in three previous standards:  SSP (FIPS 201), FBCA, and PIV-I. The current profiles will be published in the upcoming document, X.509 Certificate and Certificate Revocation List (CRL) Extensions Profile for the Shared Service Providers (SSP) Program, Federal Bridge, and PIV-I. 

The profile-numbering traceability is below:

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
| Computing and Communications Devices       | 7               |             |               | 19             |
| Delegated OCSP Responder       | 12               |             | 9             | 20             |



[^n]RFC 5280, _Internet X.509 Public Key Infrastructure Certificate and Certificate Revocation List (CRL) Profile_, David Cooper, Stefan Santesson, Stephen Farrell, Sharon Boeyen, Russell Housley, and Tim Polk (May 2008).
[^n]SSP
[^n]FBCA
[^n]PIV-I

