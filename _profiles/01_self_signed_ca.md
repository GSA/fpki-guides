---
layout: default
title: Self-Signed CA Certificate Profile
permalink: profiles/selfsignedca/
---

## Worksheet 1:&nbsp;&nbsp;Self-Signed CA Certificate Profile

| **Field** |       |       | **Value**                             |
| :-------- | :---: | :---: | :-------------------------------     |
| Version   |       |       | V3 (2)                                 |
| Serial Number   |       |       | Must be a unique positive number. |
| Issuer Signature Algorithm   |       |       |  One of the following: <br>sha256 WithRSAEncryption {1 2 840 113549 1 1 11} <br>ecdsa-with-SHA256 {1.2.840.10045.4.3.2} <br>ecdsa-with-SHA384 {1.2.840.10045.4.3.3} <br>ecdsa-with-SHA512 {1.2.840.10045.4.3.4} | 
| Issuer Distinguished Name   |       |       |  Unique X.500 Issuing CA DN.<br>For CAs operating under the Common Policy CP (i.e., _X.509 Certificate Policy for the U.S. Federal PKI Common Policy Framework_), must use one of the name forms specified in the Common Policy CP, Section 3.1.1.<br>PrintableString encoding should be used wherever possible for Issuer and Subject Distinguished Names. |
| Validity Period   |       |       |  No longer than 37 years from date of issue, 20 years for the FCPCA, 6 years for the FBCA, and 10 years for other CAs issuing under the Common Policy CP.<br>Expressed in UTCTime for dates until end of 2049 and GeneralizedTime for dates thereafter.  | 
| Subject   |       |       |   Unique X.500 Subject DN must match the Issuer DN.<br>PrintableString encoding should be used wherever possible for Issuer and Subject Distinguished Names.   |
| Subject Public Key Information   |       |       |   For RSA, must be at least 2048 bit modulus, rsaEncryption {1 2 840 113549 1 1 1}.<BR>For ECC, implicitly specify parameters through an OID associated with a NIST-approved curve referenced in NIST SP 800-78-4.<sup>[1](#1)</sup>   |
| Signature   |       |       |   sha256 WithRSAEncryption {1 2 840 113549 1 1 11} or ECDSA with appropriate Hash.   |
|               |                 |              |                                       |
| **Extension** |  **Required**   | **Critical** | **Value**                             |
| Key Usage  | Mandatory | True |  keyCertSign, cRLSign, digitalSignature (optional), nonRepudiation (optional). DigitalSignature and nonRepudiation are allowed only when the CA also signs OCSP responses.  |
| Basic Constraints   | Mandatory | True |  cA=True; path length constraint not included. |
| Subject Information Access   | Mandatory |  |  id-ad-caRepository (1.3.6.1.5.5.7.48.5) access method entry containing at least one HTTP URL for .p7c file containing certificates issued by this CA.<BR>Certificates may also include a URI name form to specify an LDAP accessible directory server.<BR>Each URI must point to a location where CA certificates issued by the subject of this certificate may be found.  |
| Subject Key Identifier   | Mandatory |  | Octet string   |
|Issuer Alternative Name   | Optional  |  | Any name types may be present; most common is rfc822Name for email of PKI administrator. |

------
<a name="1">1</a>. NIST SP 800-78-4, _Cryptographic Algorithms and Key Sizes for Personal Identity Verification_, W. Timothy Polk, Donna F. Dodson, William E. Burr, Hildegard Ferraiolo, and David Cooper (May 2015).
