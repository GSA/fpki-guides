---
layout: default
title: Delegated OCSP Responder
permalink: profiles/delegatedocsp/
---

## Worksheet 20:&nbsp;&nbsp;Delegated OCSP Responder Certificate Profile

| **Field** |       |       | **Value**                             |
| :-------- | :---: | :---: | :-------------------------------     |
| Version   |       |       | V3 (2)                                 |
| Serial Number   |       |       | Must be unique positive number. |
| Issuer Signature Algorithm   |       |       |  One of the following:<br>sha256 WithRSAEncryption {1 2 840 113549 1 1 11}<br>ecdsa-with-SHA256 {1.2.840.10045.4.3.2}<br>ecdsa-with-SHA384 {1.2.840.10045.4.3.3}<br>ecdsa-with-SHA512 {1.2.840.10045.4.3.4}. | 
| Issuer Distinguished Name   |       |       |  Unique X.500 Issuing CA DN.  |
| Validity Period   |       |       |  No longer than 3 years from date of issue.<BR>Expressed in UTCTime for dates until end of 2049 and GeneralizedTime for dates thereafter.  | 
| Subject   |       |       |   Unique X.500 subject DN.   |
| Subject Public Key Information   |       |       |   For RSA, must be at least 2048 bit modulus, rsaEncryption {1 2 840 113549 1 1 1}.<br>For ECC, implicitly specify parameters through an OID associated with a NIST-approved curve referenced in NIST SP 800-78-4.<sup>[1](#1)</sup>.   |
| Signature   |       |       |   sha256 WithRSAEncryption {1 2 840 113549 1 1 11}<br>or ECDSA with appropriate Hash.   |
|               |                 |              |                                       |
| **Extension** |  **Required**   | **Critical** | **Value**                             |
| Authority Key Identifier   | Mandatory  |  | Octet string (same as subject key identifier in Issuing CA certificate). |
| Subject Key Identifier   | Mandatory |  | Octet string.  |
| Key Usage  | Mandatory | True |  digitalSignature.  | 
| id-pkix-ocsp-nocheck   | Mandatory |  | NULL.  | 
| Extended Key Usage   | Mandatory  |  | id-kp-OCSPSigning {1.3.6.1.5.5.7.3.9}.  | 
| CRL Distribution Points   | Mandatory |   |   | 
| Certificate Policies   | Mandatory  |  | All certificate policy OIDs in certificates for which this Responder is authoritative.  | 
| Subject Alternative Name   | Optional  |  |   | 
| Basic Constraints   | Optional  |  |   |
| Subject Alternative Name   | Optional  |  | dnsName must be present for TLS public serverAuthentication certificates.<br>Other name forms may be present, based on certificate type.  | 
| Authority Information Access   | Optional  |  | id-ad-caIssuers access method entry contains HTTP URL for .p7c file containing certificates issued to Issuing CA. | 
| Issuer Alternative Name   | Optional  |  |   | 

--------
<a name="1">1</a>. NIST SP 800-78-4, _Cryptographic Algorithms and Key Sizes for Personal Identity Verification_, W. Timothy Polk, Donna F. Dodson, William E. Burr, Hildegard Ferraiolo, and David Cooper (May 2015).
