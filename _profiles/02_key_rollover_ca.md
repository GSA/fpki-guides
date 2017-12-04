---
layout: default
title: Key Rollover CA Certificate Profile
permalink: profiles/keyrolloverca/
---

## Worksheet 2:&nbsp;&nbsp;Key Rollover CA Certificate Profile

| **Field** |       |       | **Value**                             |
| :-------- | :---: | :---: | :-------------------------------     |
| Version   |       |       | V3 (2)                                 |
| Serial Number   |       |       | Must be a unique, positive number. |
| Issuer Signature Algorithm   |       |       |  One of the following: <br>sha256WithRSAEncryption {1.2.840.113549.1.1.11} <br>ecdsa-with-SHA256 {1.2.840.10045.4.3.2} <br>ecdsa-with-SHA384 {1.2.840.10045.4.3.3} <br>ecdsa-with-SHA512 {1.2.840.10045.4.3.4} | 
| Issuer   |       |       |  Unique X.500 Issuing CA DN. <br>CAs operating under the _X.509 Certificate Policy for the U.S. Federal PKI Common Policy Framework_ (aka, Common Policy CP) must use one of the name forms specified in Section 3.1.1.<br>PrintableString encoding should be used whenever possible for Issuer and Subject Distinguished Names. |
| Validity Period   |       |       |  Expressed in UTCTime for dates until end of 2049 and GeneralizedTime for dates thereafter.  | 
| Subject   |       |       |   Unique X.500 Issuing CA DN.<br>CAs operating under the Common Policy CP must use one of the name forms specified in Section 3.1.1.<br>PrintableString encoding should be used whenever possible for Issuer and Subject Distinguished Names.  |
| Subject Public Key Information   |       |       |   For RSA, must be at least 2048 bit modulus, rsaEncryption {1.2.840.113549.1.1.1}.<br>For ECC, implicitly specify parameters through an OID associated with a NIST-approved curve referenced in NIST SP 800-78-4.<sup>[1](#1)</sup>   |
| Signature   |       |       |   sha256WithRSAEncryption {1.2.840.113549.1.1.11}<br>or ECDSA with appropriate Hash.   |
|               |                 |              |                                       |
| **Extension** |  **Required**   | **Critical** | **Value**                             |
| Authority Key Identifier  | Mandatory |  |  Octet string (typically derived using the SHA-1 hash of the signer’s public key.) |
| Key Usage  | Mandatory | True |  keyCertSign<br>cRLSign<br>digitalSignature (optional)<br>nonRepudiation (optional).<br>DigitalSignature and nonRepudiation are allowed only when the CA also signs OCSP responses. |
| Basic Constraints   | Mandatory | True |  cA=True; path length constraint not included. |
| Subject Information Access   | Mandatory |  |  id-ad-caRepository {1.3.6.1.5.5.7.48.5} access method entry that contains at least one HTTP URL for .p7c file containing certificates issued by this CA.<br>Certificates may also include a URI name form to specify an LDAP-accessible directory server.<br>Each URI must point to a location where CA certificates issued by the subject of this certificate may be found.  |
| Subject Key Identifier   | Mandatory |  | Octet string (typically derived using the SHA-1 hash of the subject public key).   |
| Certificate Policies   | Mandatory  |  | Applicable certificate policy identifiers. |
| CRL Distribution Points   | Mandatory  |  | This extension must appear in all certificates and include at least one HTTP URI to a file containing a DER-encoded CRL with a file type of _application/pkix-crl_. This profile prohibits CRLs segmented by reason code; therefore, the reasons and cRLIssuer fields must be omitted.  |
| Authority Information Access   | Mandatory  |  | authorityInfoAccess consists of a sequence of accessMethod and accessLocation pairs.<br>id-ad-caIssuers {1.3.6.1.5.5.7.48.2} access method entry that contains HTTP URL for .p7c file containing certificates issued to this CA.<br>LDAP URI may be optionally included.<br>id-ad-ocsp {1.3.6.1.5.5.7.48.1} access method entry that contains HTTP URL for the Issuing CA OCSP Responder, if available. |
| Issuer Alternative Name   | Optional  |  | Any name types may be present; most common is rfc822Name for email of PKI administrator. |

-------
<a name="1">1</a>. NIST SP 800-78-4, _Cryptographic Algorithms and Key Sizes for Personal Identity Verification_, W. Timothy Polk, Donna F. Dodson, William E. Burr, Hildegard Ferraiolo, and David Cooper (May 2015).<br>
