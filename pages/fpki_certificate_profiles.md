---
layout: default
title: Certificate Profiles
permalink: /certprofiles/
---

These profiles specify the unique parameter settings needed for X.509 v3 certificates and v2 certificate revocation list (CRL) extensions issued under the _X.509 Certificate Policy For The U.S. Federal PKI Common Policy Framework_ (aka, _Common Policy CP_). They will be published in the upcoming _X.509 Certificate and Certificate Revocation List (CRL) Extensions Profile for the Shared Service Providers (SSP) Program, Federal Bridge, and PIV-I_. 

The current updates include:
* Revised certificate and CRL extensions values.
* Guidance for certificates issued under certificate policies cross-certified with the Federal Bridge Certification Authority (FBCA).
* Formats and semantics taken from RFC 5280[^n] to promote interoperability across federal and external PKI communities. 

## Certificate and Extensions Profile Worksheets

Go to:&nbsp;&nbsp;[Historical Worksheet Numbering](#historical-worksheet-numbering) to trace previous to current worksheet numbers. 

* Click a link to view a profile worksheet.

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

## Historical Worksheet Numbering 

| **Certificate Profile Worksheet**   | **SSP**<BR>**(FIPS 201)**        | **FBCA**     | **PIV-I**     | **Current**   |
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



[^n]RFC 5280, _Internet X.509 Public Key Infrastructure Certificate and Certificate Revocation List (CRL) Profile_, David Cooper, Stefan Santesson, Stephen Farrell, Sharon Boeyen, Russell Housley, and Tim Polk (May 2008).<BR>
[^n]_X.509 Certificate and Certificate Revocation List (CRL) Extensions Profile for the Shared Service Providers (SSP) Program_, FPKIPA, Shared Service Provider Working Group, July 17, 2017.<BR>
[^n]_Federal Public Key Infrastructure (PKI) X.509 Certificate and CRL Exensions Profile_, FPKIPA, July 17, 2017.<BR>
[^n]_X.509 Certificate and Certificate Revocation List (CRL) Extensions Profile for Personal Identity Verification Interoperable (PIV-I) Cards_, FPKIPA, PIV-I Tiger Team, July 17, 2017.<BR>

