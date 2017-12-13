---
layout: default
title: Certificate Profiles
permalink: /certprofiles/
---

The certificate profiles for the _X.509 Certificate Policy for the U.S. Federal PKI Common Policy Framework_<sup>[1](#1)</sup> have been simplified to increase compatibility across federal and other PKI communities. They specify the updated settings for the X.509 v3 certificates and v2 certificate revocation lists (CRLs) issued under this policy. They also give guidance for certificates issued under other Certificate Policies that are cross-certified with the Federal Bridge Certification Authority (FBCA). (These profiles will be published in the upcoming X.509 Certificate and CRL Extensions Profile for the Shared Service Providers [SSP] Program, FBCA, and PIV-Interoperable [PIV-I].)

**Note:**&nbsp;&nbsp;Certificate profile formats and semantics are defined by X.509 and further described in RFC 5280.<sup>[2](#2)</sup> These profiles state where they deviate from RFC 5280.

## Certificate and CRL Extensions Profile Worksheets

To trace the past-to-current profile numbering, see the [Worksheet Numbers Traceability Matrix](#worksheet-numbers-traceability-matrix). (**Note:**&nbsp;&nbsp;Some profile worksheet titles have changed.)

Nine profiles have been defined:

Worksheet 1. PIV, Derived PIV, and PIV-I Authentication<br>
Worksheet 2. PIV Card Auth, PIV-I Card Auth<br>
Worksheet 3. PIV Key Management, PIV-I Key Management, FBCA Key Management<br>
Worksheet 4. End Entity Signature / PIV, PIV-I Dig Sig, FBCA End Entity Signature<br>
Worksheet 5. PIV Content Signing, PIV-I Content Signing<br>
Worksheet 6. CA Certificates (all four)<br>
Worksheet 7. Devices<br>
Worksheet 8. CRL<br>
Worksheet 9. OCSP<br>

## Worksheet Numbers Traceability Matrix

| **Certificate Profile**           | **Shared<br>Service<br>Provider<br>(SSP)<sup>[3](#3)</sup><br>**  | **Federal<br>Bridge<br>Certification<br>Authority<br>(FBCA)<sup>[4](#4)</sup><br>**     | **Personal<br>Identity<br>Verification<br>Interoperable<br>(PIV-I)<sup>[5](#5)</sup>**     | **Current<br>**   |
| :----------------------------------  | :---------:  | :-----------:    | :-----------:      | :-----------:      |
| Self-Signed CA                       | 1            | 1                |               | [6]({{ site.baseurl }}/profiles/selfsignedca/)             |
| Key Rollover CA                      | 2             | 2               |  1            | [6]({{ site.baseurl }}/profiles/keyrolloverca/)             |
| Peer-to-Peer Cross-Certificate       | 3             | 3                |  2            | [6]({{ site.baseurl }}/profiles/p2pcrosscert/)             |
| Intermediate or Subordinate CA       | 3              | 3               |  2            | [6]({{ site.baseurl }}/profiles/intorsubca/)             |
| CRL                                  | 4              | 4               |  3            | [8]({{ site.baseurl }}/profiles/crl/)             |
| End Entity Signature       |                | 5        |                 | [4]({{ site.baseurl }}/profiles/endentitysign/)             |
| Common End Entity Signature       | 5              |              |               | [4]({{ site.baseurl }}/profiles/commonendentitysign/)             |
| PIV-I End Entity Signature       |                |              |  6            | [4]({{ site.baseurl }}/profiles/pividigsign/)             |
| End Entity Key Management       |                |  6           |               | [3]({{ site.baseurl }}/profiles/keymgmt/)             |
| Common End Entity Key Management       | 6               |             |               | [3]({{ site.baseurl }}/profiles/commonkeymgmt/)             |
| PIV-I End Entity Key Management       |                |             | 7              | [3]({{ site.baseurl }}/profiles/pivikeymgmt/)             |
| PIV Card Authentication       | 8               |             |               | [2]({{ site.baseurl }}/profiles/commoncardauth/)             |
| PIV-I Card Authentication       |                |             |  4             | [2]({{ site.baseurl }}/profiles/pivicardauth/)             |
| PIV Authentication       |  9              |             |               | [1]({{ site.baseurl }}/profiles/pivauth/)             |
| Common Derived PIV Authentication       |  11              |             |               | [1]({{ site.baseurl }}/profiles/derivedpivauth/)             |
| PIV-I Authentication       |                |             |  5             | [1]({{ site.baseurl }}/profiles/piviauth/)             |
| Common PIV Content Signing       | 10               |             |               | [5]({{ site.baseurl }}/profiles/commonpivcontentsign/)             |
| PIV-I Content Signing       |                |             |  8             | [5]({{ site.baseurl }}/profiles/pivicontentsign/)             |
| Computing and Communications Devices       | 7               |             |               | [7]({{ site.baseurl }}/profiles/devices/)             |
| Delegated OCSP Responder       | 12               |             | 9             | [9]({{ site.baseurl }}/profiles/delegatedocsp/)             |

-----------------
<a name="1">1</a>. _X.509 Certificate Policy for the U.S. Federal PKI Common Policy Framework_, v1.27, June 29, 2017.<br>
<a name="2">2</a>. RFC 5280, _Internet X.509 Public Key Infrastructure Certificate and Certificate Revocation List (CRL) Profile_, David Cooper, Stefan Santesson, Stephen Farrell, Sharon Boeyen, Russell Housley, and Tim Polk (May 2008).<br>
<a name="3">3</a>. _X.509 Certificate and Certificate Revocation List (CRL) Extensions Profile for the Shared Service Providers (SSP) Program_, July 17, 2017.<br>
<a name="4">4</a>. _Federal Public Key Infrastructure (PKI) X.509 Certificate and CRL Extensions Profile_, July 17, 2017.<br>
<a name="5">5</a>. _X.509 Certificate and Certificate Revocation List (CRL) Extensions Profile for Personal Identity Verification Interoperable (PIV-I) Cards_, July 17, 2017.

