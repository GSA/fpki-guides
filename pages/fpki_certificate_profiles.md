---
layout: default
title: Certificate Profiles
permalink: /certprofiles/
---

These profiles specify the unique parameter settings for X.509 v3 certificates and v2 certificate revocation list (CRL) extensions issued under the _X.509 Certificate Policy For The U.S. Federal PKI Common Policy Framework_ (aka, _Common Policy CP_). Current updates to these profiles include:
* Revised profile fields, extensions, and values.<!--Validate this with Wendy.-->
* Guidance for certificates issued under policies cross-certified with the Federal Bridge Certification Authority (FBCA).
* Formats and semantics from RFC 5280<sup>[1](#1)</sup> to maximize interoperability across federal and external PKI communities. 

Eighteen (18) certificate profiles covered by the _Common Policy CP_ are defined, as well as two profiles for the Online Certificate Status Protocol (OCSP) Responses and Certificate Revocation Lists (CRLs).

## Certificate and Extensions Profile Worksheets

The new profile worksheets are linked below. These will be published in the upcoming _X.509 Certificate and Certificate Revocation List (CRL) Extensions Profile for the Shared Service Providers (SSP) Program, Federal Bridge, and PIV-I_.

The [Worksheet Numbers Traceability Matrix](#worksheet-numbers-traceability-matrix) maps the past-to-current profile worksheet numbering.  

### Certification Authority (CA) 
 
[Worksheet 1: Self-Signed CA]({{ site.baseurl }}/profiles/selfsignedca/)<BR>
[Worksheet 2: Key Rollover CA]({{ site.baseurl }}/profiles/keyrolloverca/)<BR>
[Worksheet 3: Peer-to-Peer Cross-Certificate]({{ site.baseurl }}/profiles/p2pcrosscert/)<BR>
[Worksheet 4: Intermediate or Subordinate CA]({{ site.baseurl }}/profiles/intorsubca/)<BR>

### Personal Identity Verfication (PIV)

[Worksheet 14. PIV Authentication]({{ site.baseurl }}/profiles/pivauth/)<BR>
[Worksheet 17. Common PIV Content Signing]({{ site.baseurl }}/profiles/commonpivcontentsign/)<BR>

### Personal Identity Verfication&mdash;Interoperable (PIV-I)

[Worksheet 8. PIV-I Digital Signature]({{ site.baseurl }}/profiles/pividigsign/)<BR>
[Worksheet 11. PIV-I Key Management]({{ site.baseurl }}/profiles/pivikeymgmt/)<BR>
[Worksheet 13. PIV-I Card Authentication]({{ site.baseurl }}/profiles/pivicardauth/)<BR>
[Worksheet 16. PIV-I Authentication]({{ site.baseurl }}/profiles/piviauth/)<BR>
[Worksheet 18. PIV-I Content Signing]({{ site.baseurl }}/profiles/pivicontentsign/)<BR>

### Derived PIV

[Worksheet 15. Derived PIV Authentication]({{ site.baseurl }}/profiles/derivedpivauth/)

### Common

[Worksheet 7. Common End Entity Signature]({{ site.baseurl }}/profiles/commonendentitysign/)<BR>
[Worksheet 12. Common Card Authentication]({{ site.baseurl }}/profiles/commoncardauth/)<BR>
[Worksheet 10. Common Key Management]({{ site.baseurl }}/profiles/commonkeymgmt/)<BR>
[Worksheet 19. Computing and Communications Devices]({{ site.baseurl }}/profiles/devices/)

### FBCA

[Worksheet 6. End Entity Signature]({{ site.baseurl }}/profiles/endentitysign/)<BR>
[Worksheet 9. Key Management]({{ site.baseurl }}/profiles/keymgmt/)

### Certificate Revocation List (CRL) and Online Certificate Status Prototol (OCSP) Responder

[Worksheet 5. CRL]({{ site.baseurl }}/profiles/crl/)<BR>
[Worksheet 20. Delegated OCSP Responder]({{ site.baseurl }}/profiles/delegatedocsp/)

<!--Historical profile worksheet naming for 8-13+15 doesn't match current worksheet naming. Validate with Wendy next week.-->
## Worksheet Numbers Traceability Matrix

| **Certificate Profile**           | **Shared<BR>Service<BR>Provider<BR>(SSP)<sup>[2](#2)</sup> <BR>**  | **Federal<BR>Bridge<BR>Certification<BR>Authority<BR>(FBCA)<sup>[3](#3)</sup> <BR>**     | **Personal<BR>Identity<BR>Verification<BR>Interoperable<BR>(PIV-I)<sup>[4](#4)</sup>**     | **Current<BR>**   |
| :----------------------------------  | :---------:  | :-----------:    | :-----------:      | :-----------:      |
| Self-Signed CA                       | 1            | 1                |               | 1             |
| Key Rollover CA                      | 2             | 2               |  1            | 2             |
| Peer-to-Peer Cross-Certificate       | 3             | 3                |  2            | 3             |
| Intermediate or Subordinate CA       | 3              | 3               |  2            | 4             |
| CRL                                  | 4              | 4               |  3            | 5             |
| End Entity Signature       |                | 5        |                 | 6             |
| Common End Entity Signature       | 5              |              |               | 7             |
| PIV-I End Entity Signature       |                |              |  6            | 8             |
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

-----------------
<a name="1">1</a>. RFC 5280, _Internet X.509 Public Key Infrastructure Certificate and Certificate Revocation List (CRL) Profile_, David Cooper, Stefan Santesson, Stephen Farrell, Sharon Boeyen, Russell Housley, and Tim Polk (May 2008).<BR>
<a name="2">2</a>. _X.509 Certificate and Certificate Revocation List (CRL) Extensions Profile for the Shared Service Providers (SSP) Program_, FPKIPA, Shared Service Provider Working Group, July 17, 2017.<BR>
<a name="3">3</a>. _Federal Public Key Infrastructure (PKI) X.509 Certificate and CRL Exensions Profile_, FPKIPA, July 17, 2017.<BR>
<a name="4">4</a>. _X.509 Certificate and Certificate Revocation List (CRL) Extensions Profile for Personal Identity Verification Interoperable (PIV-I) Cards_, FPKIPA, PIV-I Tiger Team, July 17, 2017.

