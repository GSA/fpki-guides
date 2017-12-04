---
layout: default
title: Computing and Communications Devices
permalink: profiles/devices/
---

## Worksheet 19:&nbsp;&nbsp;Computing and Communications Devices Certificate Profile

| **Field** |       |       | **Value**                             |
| :-------- | :---: | :---: | :-------------------------------     |
| Version   |       |       | V3 (2)                                 |
| Serial Number   |       |       | Must be a unique, positive number. |
| Issuer Signature Algorithm   |       |       |  One of the following: <br>sha256WithRSAEncryption {1.2.840.113549.1.1.11} <br>ecdsa-with-SHA256 {1.2.840.10045.4.3.2} <br>ecdsa-with-SHA384 {1.2.840.10045.4.3.3} <br>ecdsa-with-SHA512 {1.2.840.10045.4.3.4} | 
| Issuer   |       |       |  Unique X.500 Issuing CA DN.<br>PrintableString encoding should be used whenever possible for Issuer and Subject Distinguished Names. |
| Validity Period   |       |       |  No longer than 3 years from date of issue.<br>Expressed in UTCTime for dates until end of 2049 and GeneralizedTime for dates thereafter.  | 
| Subject   |       |       |   Unique X.500 Subject DN.<br>PrintableString encoding should be used whenever possible for Issuer and Subject Distinguished Names.  |
| Subject Public Key Information   |       |       |   For RSA, must be at least 2048 bit modulus, rsaEncryption {1.2.840.113549.1.1.1}.<br>For ECC, implicitly specify parameters through an OID associated with a NIST-approved curve referenced in NIST SP 800-78-4.<sup>[1](#1)</sup>   |
| Signature   |       |       |   sha256WithRSAEncryption {1.2.840.113549.1.1.11}<br>or ECDSA with appropriate Hash.   |
|               |                 |              |                                       |
| **Extension** |  **Required**   | **Critical** | **Value**                             |
| Authority Key Identifier   | Mandatory  |  | Octet string (same as subject key identifier in Issuing CA certificate). |
| Subject Key Identifier   | Mandatory |  | Octet string.  |
| Key Usage  | Mandatory | True | digitalSignature<br>nonRepudiation must NOT be asserted for devices.<br>keyEncipherment may be asserted when public key is RSA.<br>keyAgreement may be asserted when public key is elliptic curve.  | 
| Authority Information Access   | Mandatory  |  | id-ad-caIssuers {1.3.6.1.5.5.7.48.2} access method entry that contains HTTP URL for .p7c file containing certificates issued to Issuing CA.<br>id-ad-ocsp {1.3.6.1.5.5.7.48.1} access method entry that contains HTTP URL for the Issuing CA OCSP Responder.  |
| Subject Alternative Name   | Mandatory  |  |   | 
| Basic Constraints   | Mandatory  |  |   | 
| CRL DistributionPoints   | Mandatory |   | This extension must appear in all certificates and include at least one HTTP URI to a file containing a DER-encoded CRL with a file type of _application/pkix-crl_.<br>This profile prohibits CRLs segmented by reason code; therefore, the reasons and cRLIssuer fields must be omitted. | 
| Certificate Policies   | Mandatory  |  | Applicable certificate policies must indicate device certificates.  |
| Extended Key Usage   | Optional  |  |  | 
| Subject Alternative Name   | Optional  |  | dnsName must be present for TLS public serverAuthentication certificates.<br>Other name forms may be present, based on certificate type.  | 
| Issuer Alternative Name   | Optional  |  |   | 

--------
<a name="1">1</a>. NIST SP 800-78-4, _Cryptographic Algorithms and Key Sizes for Personal Identity Verification_, W. Timothy Polk, Donna F. Dodson, William E. Burr, Hildegard Ferraiolo, and David Cooper (May 2015).
