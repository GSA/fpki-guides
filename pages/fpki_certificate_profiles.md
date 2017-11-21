---
layout: default
title: Certificate Profiles
permalink: /certprofiles/
---

These profiles specify the unique parameter settings for X.509 v3 certificates and v2 certificate revocation list (CRL) extensions issued under the _X.509 Certificate Policy For The U.S. Federal PKI Common Policy Framework_ (aka, _Common Policy CP_).[^n] Current updates to these profiles include:
* Revised profile fields, extensions, and values.<!--Validate this with Wendy.-->
* Guidance for certificates issued under policies cross-certified with the Federal Bridge Certification Authority (FBCA).
* Formats and semantics from RFC 5280[^n] to maximize interoperability across federal and external PKI communities. 

Eighteen (18) certificate profiles covered by the _Common Policy CP_ are defined, as well as two profiles for OCSP Responses and CRLs.

## Certificate and Extensions Profile Worksheets

For a mapping of past-to-current profile worksheet numbers, go to:&nbsp;&nbsp;[Worksheet Traceability Matrix](#worksheet-traceability-matrix). 

* Click a link to view a profile worksheet.

### CAs 
 
[1: Self-Signed CA]({{ site.baseurl }}/profiles/selfsignedca/)<BR>
[2: Key Rollover CA]({{ site.baseurl }}/profiles/keyrolloverca/)<BR>
[3: Peer-to-Peer Cross-Certificate]({{ site.baseurl }}/profiles/p2pcrosscert/)<BR>
[4: Intermediate or Subordinate CA]({{ site.baseurl }}/profiles/intorsubca/)<BR>

### PIV

[14. PIV Authentication]({{ site.baseurl }}/profiles/pivauth/)<BR>
[17. Common PIV Content Signing]({{ site.baseurl }}/profiles/commonpivcontentsign/)<BR>

### PIV-I

[8. PIV-I Digital Signature]({{ site.baseurl }}/profiles/pividigsign/)<BR>
[11. PIV-I Key Management]({{ site.baseurl }}/profiles/pivikeymgmt/)<BR>
[13. PIV-I Card Authentication]({{ site.baseurl }}/profiles/pivicardauth/)<BR>
[16. PIV-I Authentication]({{ site.baseurl }}/profiles/piviauth/)<BR>
[18. PIV-I Content Signing]({{ site.baseurl }}/profiles/pivicontentsign/)<BR>

### Common <**Is this a group**?>

[12. Common Card Authentication]({{ site.baseurl }}/profiles/commoncardauth/)<BR>
[10. Common Key Management]({{ site.baseurl }}/profiles/commonkeymgmt/)

### Derived PIV

[15. Derived PIV Authentication]({{ site.baseurl }}/profiles/derivedpivauth/)

### End Entity

[6. End Entity Signature]({{ site.baseurl }}/profiles/endentitysign/)<BR>
[7. Common End Entity Signature]({{ site.baseurl }}/profiles/commonendentitysign/)<BR>

### Devices

[19. Computing and Communications Devices]({{ site.baseurl }}/profiles/devices/)

### CRL and OCSP Responder

[5. CRL]({{ site.baseurl }}/profiles/crl/)<BR>
[20. Delegated OCSP Responder]({{ site.baseurl }}/profiles/delegatedocsp/)

**<Pertains to what group?>**<!--Email to Wendy on 11-20 for her return from leave-->
[9. Key Management]({{ site.baseurl }}/profiles/keymgmt/)
<!--Historical profile worksheet naming for 8-13 doesn't match current worksheet naming. Validate with Wendy next week.-->
## Worksheet Traceability Matrix

| **Certificate Profile Worksheet**   | **SSP[x]**  | **FBCA[x]**     | **PIV-I[x]**     | **Current**   |
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
[^n] These certificate and OCSP/CRL extensions profiles will be published in the upcoming _X.509 Certificate and Certificate Revocation List (CRL) Extensions Profile for the Shared Service Providers (SSP) Program, Federal Bridge, and PIV-I_.<BR>
[^n]RFC 5280, _Internet X.509 Public Key Infrastructure Certificate and Certificate Revocation List (CRL) Profile_, David Cooper, Stefan Santesson, Stephen Farrell, Sharon Boeyen, Russell Housley, and Tim Polk (May 2008).<BR>
[^n]_X.509 Certificate and Certificate Revocation List (CRL) Extensions Profile for the Shared Service Providers (SSP) Program_, FPKIPA, Shared Service Provider Working Group, July 17, 2017.<BR>
[^n]_Federal Public Key Infrastructure (PKI) X.509 Certificate and CRL Exensions Profile_, FPKIPA, July 17, 2017.<BR>
[^n]_X.509 Certificate and Certificate Revocation List (CRL) Extensions Profile for Personal Identity Verification Interoperable (PIV-I) Cards_, FPKIPA, PIV-I Tiger Team, July 17, 2017.

