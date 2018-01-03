---
layout: default
title: Certificate Profiles
permalink: /certprofiles/
collection: profiles
---
To encourage certificate compatibility across federal and PKI communities, we simplified the new worksheets.<sup>[1](#1)</sup> These worksheets still specify all the unique settings for the X.509<sup>[2](#2)</sup> v3 certificates and v2 CRLs issued under:

* _X.509 Certificate Policy for the U.S. Federal PKI Common Policy Framework_ (aka, _Common Policy CP_)<sup>[3](#3)</sup>
* _X.509 Certificate Policy for the Federal Bridge Certification Authority_ (aka, _FBCA CP_)<sup>[4](#4)</sup> 

These worksheets also give guidance for issuing certificates under policies that are cross-certified with the FBCA.  
<!--Didn't see any worksheets with statements to this effect.-->

## Worksheets

We've restructured the 20 past worksheets to create nine worksheets: 

* [Worksheet 1. PIV Authentication, Derived PIV Authentication, and PIV-I Authentication]({{ site.baseurl }}/profiles/allpivauth/)<br>
* Worksheet 2. PIV Card Authentication and PIV-I Card Authentication<br>
* Worksheet 3. PIV Key Management, PIV-I Key Management, and FBCA Key Management<br>
* Worksheet 4. **PIV?** Common End Entity Signature, (FBCA) End Entity Signature, and PIV-I Digital Signature<br>
* Worksheet 5. PIV Content Signing and PIV-I Content Signing<br>
* Worksheet 6. Self-Signed CA, Key Rollover CA, Peer-to-Peer Cross Certificate, and Intermediate or Subordinate CA<br>
* Worksheet 7. Devices <!--renamed Computing and Communications Devices--><br>
* Worksheet 8. Certificate Revocation Lists (CRLs)<br>
* Worksheet 9. Online Certificate Status Protocol (OCSP)<br>

See the past-to-new worksheet mapping in the [**Traceability Table**](#traceability) below. 

## Traceability Table

<!--These links don't work yet-->

| **Certificate Profile Worksheet**           | **Shared<br>Service<br>Providers<br>(SSP)<sup>[5](#5)</sup><br>**  | **FPKI<br>Certificate<br>and CRL Extensions<br>(Re: FBCA)<sup>[6](#6)</sup><br>**     | **Personal<br>Identity<br>Verification<br>Interoperable<br>(PIV-I)<sup>[7](#7)</sup>**     | **Current<br>**   |
| :----------------------------------  | :---------:  | :-----------:    | :-----------:      | :-----------:      |
| PIV Authentication       |  9              |             |               | [1]({{ site.baseurl }}/profiles/all pivauth/)       |
| Derived PIV Authentication       |  11              |             |               | [1]({{ site.baseurl }}/profiles/allpivauth/)             |
| PIV-I Authentication       |                |             |  5             | [1]({{ site.baseurl }}/profiles/allpivauth/)    |
| PIV Card Authentication       | 8               |             |               | [2]({{ site.baseurl }}/profiles/commoncardauth/)             |
| PIV-I Card Authentication       |                |             |  4             | [2]({{ site.baseurl }}/profiles/pivicardauth/)             |
| (PIV?) (Common) End Entity Key Management       | 6               |             |               | [3]({{ site.baseurl }}/profiles/commonkeymgmt/)    |
| PIV-I Key Management       |                |             | 7              | [3]({{ site.baseurl }}/profiles/pivikeymgmt/)        |
| (FBCA?) (End Entity) Key Management       |                |  6           |               | [3]({{ site.baseurl }}/profiles/keymgmt/) |
| Common End Entity Signature       | 5              |              |               | [4]({{ site.baseurl }}/profiles/commonendentitysign/)             |
| (FBCA?) End Entity Signature       |                | 5        |                 | [4]({{ site.baseurl }}/profiles/endentitysign/)             |
| PIV-I Digital Signature       |                |              |  6            | [4]({{ site.baseurl }}/profiles/pividigsign/)             |
| (Common) PIV Content Signing       | 10               |             |               | [5]({{ site.baseurl }}/profiles/commonpivcontentsign/)             |
| PIV-I Content Signing       |                |             |  8             | [5]({{ site.baseurl }}/profiles/pivicontentsign/)             |
| Self-Signed CA                       | 1            | 1                |               | [6]({{ site.baseurl }}/profiles/xxxx/)             |
| Key Rollover CA                      | 2             | 2               |  1            | [6]({{ site.baseurl }}/profiles/keyrolloverca/)             |
| Peer-to-Peer Cross-Certificate       | 3             | 3                |  2            | [6]({{ site.baseurl }}/profiles/p2pcrosscert/)             |
| Intermediate or Subordinate CA       | 3              | 3               |  2            | [6]({{ site.baseurl }}/profiles/intorsubca/)             |
| Devices (Computing and Communications Devices)       | 7               |             |               | [7]({{ site.baseurl }}/profiles/devices/)             |
| CRL                                  | 4              | 4               |  3            | [8]({{ site.baseurl }}/profiles/crl/)             |
| OCSP       | 12               |             | 9             | [9]({{ site.baseurl }}/profiles/delegatedocsp/)             |

-----------------
<a name="1">1</a>. These profiles will be published in the upcoming X.509 Certificate and CRL Extensions Profile for the Shared Service Providers (SSP) Program, FBCA, and PIV-Interoperable (PIV-I).<br>
<a name="2">2</a>.Certificate profile formats and semantics are defined by X.509 and further described in RFC 5280.<sup>[8](#8)</sup> The FPKI worksheets state where they deviate from RFC 5280.
<a name="3">3</a>. _X.509 Certificate Policy for the U.S. Federal PKI Common Policy Framework_, v1.27, June 29, 2017.<br>
<a name="4">4</a>. _X.509 Certificate Policy For The Federal Bridge Certification Authority (FBCA)_, Version 2.31, June 29, 2017<br>
<a name="5">5</a>. _X.509 Certificate and Certificate Revocation List (CRL) Extensions Profile for the Shared Service Providers (SSP) Program_, July 17, 2017.<br>
<a name="6">6</a>. _Federal Public Key Infrastructure (PKI) X.509 Certificate and CRL Extensions Profile_, July 17, 2017.<br>
<a name="7">7</a>. _X.509 Certificate and Certificate Revocation List (CRL) Extensions Profile for Personal Identity Verification Interoperable (PIV-I) Cards_, July 17, 2017.<br>
<a name="8">8</a>. RFC 5280, _Internet X.509 Public Key Infrastructure Certificate and Certificate Revocation List (CRL) Profile_, David Cooper, Stefan Santesson, Stephen Farrell, Sharon Boeyen, Russell Housley, and Tim Polk (May 2008).<br>
