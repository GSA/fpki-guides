---
layout: default
title: Common Key Management Certificate Profile
permalink: profiles/commonkeymgmt/
---

## Worksheet 10:&nbsp;&nbsp;Common Key Management Certificate Profile

| **Field** |       |       | **Value**                             |
| :-------- | :---: | :---: | :-------------------------------     |
| Version   |       |       | V3 (2)                                 |
| Serial Number   |       |       | Must be unique. |
| Issuer Signature Algorithm   |       |       |  One of the following: <br>sha256 WithRSAEncryption {1 2 840 113549 1 1 11} <br>ecdsa-with-SHA256 {1.2.840.10045.4.3.2} <br>ecdsa-with-SHA384 {1.2.840.10045.4.3.3} <br>ecdsa-with-SHA512 {1.2.840.10045.4.3.4}. | 
| Issuer Distinguished Name   |       |       |  Unique X.500 Issuing CA DN.  |
| Validity Period   |       |       |  No longer than 3 years from date of issue.<BR>Expressed in UTCTime for dates until end of 2049 and GeneralizedTime for dates thereafter.  | 
| Subject   |       |       |   Unique X.500 subject DN of the owner of the subject public key in the certificate.<BR>   |
| Subject Public Key Information   |       |       |   For RSA, must be at least 2048 bit modulus, rsaEncryption {1 2 840 113549 1 1 1}.<BR>For ECC, implicitly specify parameters through an OID associated with a NIST-approved curve referenced in NIST SP 800-78-4[^n].   |
| Signature   |       |       |   sha256 WithRSAEncryption {1 2 840 113549 1 1 11}<BR>or ECDSA with appropriate Hash.   |
|               |                 |              |                                       |
| **Extension** |  **Required**   | **Critical** | **Value**                             |
| Key Usage  | Mandatory | True |  keyEncipherment&mdash;when subject public key is RSA.<BR>keyAgreement&mdash;when subject public key is DH, ECC, or KEA. |
|Authority Information Access   | Mandatory  |  | id-ad-caIssuers {1.3.6.1.5.5.7.48.2} access method entry contains HTTP URL for .p7c file containing certificates issued to Issuing CA.<BR>id-ad-ocsp {1.3.6.1.5.5.7.48.1} access method entry contains HTTP URL for the Issuing CA OCSP Responder. | 
| Subject Key Identifier   | Mandatory |  | Octet string.  |
| CRL Distribution Points   | Mandatory |   |  This extension must appear in all certificates and must include at least an HTTP URI distribution point name.<BR>The reasons and cRLIssuer fields must be omitted. | 
| Certificate Policies   | Mandatory  |  | Applicable certificate policies.<BR>Three policy OIDs are defined for key-management certificates issued to human subscribers under the Common CP.<BR>End entity certificates should assert one of the three policies:<BR>- 2.16.840.1.101.3.2.1.3.6 - id-fpki-common-policy<BR>- 2.16.840.1.101.3.2.1.3.7 - id-fpki-common-hardware<BR>- 2.16.840.1.101.3.2.1.3.16 - id-fpki-common-High<BR>Other policy OIDs may be asserted as well. |
| Authority Key Identifier   | Mandatory  |  | Octet string (same as subject key identifier in Issuing CA certificate). |
| Extended Key Usage   | Optional |  |  If included to support specific applications, the extension should be non-critical.<BR>The 2 values listed for keyPurposeID should be included for key-management purposes:<BR>- 1.3.6.1.5.5.7.3.4 - Id-kp-emailProtection<BR>- 1.3.6.1.4.311.10.3.4 - Encrypting File System<BR>Additional key purposes may be specified.  |
|Subject Alternative Name   | Optional  |  |   |
| SubjectDirectoryAttributes   | Optional  |  | This extension may be included to indicate the cardholder's country or countries of citizenship, as specified in **_<need referenced document info--ISO 3166?_>**[^n].<BR>countryOfCitizenship {1.3.6.1.5.5.7.9.4} - ISO 3166 Country Code(s). | 
| IssuerAltName   | Optional  |  |   | 
| FreshestCRL   | Optional  |  |   | 

------
[^n] **ISO 3166? Need referenced document info.**<BR>
[^n] NIST SP 800-78-4, _Cryptographic Algorithms and Key Sizes for Personal Identity Verification_, W. Timothy Polk, Donna F. Dodson, William E. Burr, Hildegard Ferraiolo, and David Cooper (May 2015).
