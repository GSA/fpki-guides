---
layout: default
title: Common PIV Content-Signing
permalink: profiles/commonpivcontentsign/
---

## Worksheet 17:&nbsp;&nbsp;Common PIV Content-Signing Certificate Profile

| **Field** |       |       | **Value**                             |
| :-------- | :---: | :---: | :-------------------------------     |
| Version   |       |       | V3 (2)                                 |
| Serial Number   |       |       | Must be a unique, positive number. |
| Issuer Signature Algorithm   |       |       |  One of the following: <br>sha256WithRSAEncryption {1.2.840.113549.1.1.11} <br>ecdsa-with-SHA256 {1.2.840.10045.4.3.2} <br>ecdsa-with-SHA384 {1.2.840.10045.4.3.3} <br>ecdsa-with-SHA512 {1.2.840.10045.4.3.4} | 
| Issuer   |       |       |  Unique X.500 Issuing CA Distinguished Name (DN).<br>PrintableString encoding should be used whenever possible for Issuer and Subject DNs. |
| Validity Period   |       |       |  No longer than 9 years from date of issue.<br>Expressed in UTCTime for dates until end of 2049 and GeneralizedTime for dates thereafter.  | 
| Subject   |       |       |   Unique X.500 Subject DN. Must use one of the name forms specified in the _X.509 Certificate Policy for the U.S. Federal PKI Common Policy Framework_ (aka, Common Policy CP), Section 3.1.1.<br>PrintableString encoding should be used whenever possible for Issuer and Subject DNs.   |
| Subject Public Key Information   |       |       |   For RSA, must be at least 2048 bit modulus,<br>rsaEncryption {1.2.840.113549.1.1.1}.<br>For ECC, implicitly specify parameters through an OID associated with a NIST-approved curve referenced in NIST SP 800-78-4.<sup>[1](#1)</sup>   |
| Signature   |       |       |   sha256WithRSAEncryption {1.2.840.113549.1.1.11}<BR>or ECDSA with appropriate Hash.   |
|               |                 |              |                                       |
| **Extension** |  **Required**   | **Critical** | **Value**                             |
| Key Usage  | Mandatory | True |  c=yes; digitalSignature  | 
| Extended Key Usage   | Mandatory  | True | Id-PIV-content-signing keyPurposeID {2.16.840.1.101.3.6.7} specifies that the public key may be used to verify signatures on PIV CHUIDs and PIV biometrics.  |
| Authority Information Access   | Mandatory  |  | id-ad-caIssuers {1.3.6.1.5.5.7.48.2} access method entry that contains HTTP URL for .p7c file that contains certificates issued to Issuing CA.<br>id-ad-ocsp {1.3.6.1.5.5.7.48.1} access method entry that contains HTTP URL for the Issuing CA OCSP Responder.<br>OCSP is required for PIV content-signer certificates.  |
| Subject Key Identifier   | Mandatory |  | Octet string  |
| CRL Distribution Points   | Mandatory |   | This extension must appear in all certificates and include at least one HTTP URI to a file containing a DER-encoded CRL with a file type of _application/pkix-crl_. This profile prohibits CRLs segmented by reason code; therefore, the reasons and cRLIssuer fields must be omitted. | 
| Certificate Policies   | Mandatory  |  | id-PIV-content-signing {2.16.840.1.101.3.6.7} |
| Authority Key Identifier   | Mandatory  |  | Octet string (same as subject key identifier in Issuing CA certificate). |
| Subject Alternative Name   | Optional  |  |   |
| Issuer Alternative Name   | Optional  |  |   | 
| Subject Directory Attribute   | Optional  |  |   | 

------
<a name="1">1</a>. NIST SP 800-78-4, _Cryptographic Algorithms and Key Sizes for Personal Identity Verification_, W. Timothy Polk, Donna F. Dodson, William E. Burr, Hildegard Ferraiolo, and David Cooper (May 2015).
