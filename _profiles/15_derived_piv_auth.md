---
layout: default
title: Derived PIV Authentication
permalink: profiles/derivedpivauth/
---

## Worksheet 15:&nbsp;&nbsp;Derived PIV Authentication Certificate Profile

| **Field** |       |       | **Value**                             |
| :-------- | :---: | :---: | :-------------------------------     |
| Version   |       |       | V3 (2)                                 |
| Serial Number   |       |       | Must be unique. |
| Issuer Signature Algorithm   |       |       |  One of the following: <br>sha256 WithRSAEncryption {1 2 840 113549 1 1 11} <br>ecdsa-with-SHA256 {1.2.840.10045.4.3.2} <br>ecdsa-with-SHA384 {1.2.840.10045.4.3.3} <br>ecdsa-with-SHA512 {1.2.840.10045.4.3.4}. | 
| Issuer Distinguished Name   |       |       |  Unique X.500 Issuing CA DN.  |
| Validity Period   |       |       |  No longer than 3 years from date of issue.<BR>Expressed in UTCTime for dates until end of 2049 and GeneralizedTime for dates thereafter.  | 
| Subject   |       |       |   Must use one of the name forms specified in the Common CP, Section 3.1.1.   |
| Subject Public Key Information   |       |       |   For RSA, must be at least 2048 bit modulus, rsaEncryption {1 2 840 113549 1 1 1}.<BR>For ECC, implicitly specify parameters through an OID associated with a NIST-approved curve referenced in NIST SP 800-78-4.<sup>[1](#1)</sup>   |
| Signature   |       |       |   sha256 WithRSAEncryption {1 2 840 113549 1 1 11}<BR>or ECDSA with appropriate Hash.   |
|               |                 |              |                                       |
| **Extension** |  **Required**   | **Critical** | **Value**                             |
| Key Usage  | Mandatory | True |  digitalSignature.  |
| Authority Information Access   | Mandatory  |  | id-ad-caIssuers {1.3.6.1.5.5.7.48.2} access method entry contains HTTP URL for .p7c file containing certificates issued to Issuing CA.<br>id-ad-ocsp {1.3.6.1.5.5.7.48.1} access method entry contains HTTP URL for the Issuing CA OCSP Responder.<br>OCSP is required for common Derived PIVAuth and Derived PIVAuth Hardware.  | 
| Subject Key Identifier   | Mandatory |  | Octet string.  |
| CRL Distribution Points   | Mandatory |   |  This extension must appear in all certificates and must include at least an HTTP URI distribution point name.<BR>The reasons and cRLIssuer fields must be omitted. | 
| Certificate Policies   | Mandatory  |  | Applicable certificate policy: <BR>2.16.840.1.101.3.2.1.3.40 - id-fpki-common-derived-pivAuth<br>2.16.840.1.101.3.2.1.3.41 - id-fpki-common-derived-pivAuth-hardware |
| Authority Key Identifier   | Mandatory  |  | Octet string (same as subject key identifier in Issuing CA certificate). |
| Subject Alternative Name   | Mandatory  |  | Must include a UUID.<BR>Any additional name types may be present.<BR>Other names may be included to support local applications.  |
| PIV Interim    | Mandatory  |  | The piv-interim indicator {2.16.840.1.101.3.6.9.1} extension is defined in FIPS 201-2, Appendix B.2. The value of this extension is asserted as follows:<br>1. TRUE if, at the time of credential issuance:<br>(1) the FBI National Criminal History Fingerprint Check has been completed successfully, and<br>(2) an NACI has been initiated but has not been completed.<br>2. FALSE if, at the time of credential issuance, the subject’s NACI has been completed and successfully adjudicated.  |
| Extended Key Usage   | Optional  | True | If included to support specific applications, this extension should be non-critical.<br>The following 2 values for keyPurposeID should be included:<br>- TLS Client Authentication<br>- id-pkinit-KPClientAuth.<br>Additional key purposes may be specified:<br>- 1.3.6.1.5.5.7.3.2 - TLS client authentication<br>- 1.3.6.1.5.2.3.4 - id-pkinit-KPClientAuth<br>- 1.3.6.1.5.5.7.3.21 - id-kp-secureShellClient<br>The key purpose value may be implemented as needed by the Subscriber.  | 
| Subject Directory Attributes   | Optional  |  | This extension may be included to indicate the cardholder's country or countries of citizenship, as specified in RFC 5280.<sup>[2](#2)</sup> <br>- countryOfCitizenship {1.3.6.1.5.5.7.9.4}<br>ISO 3166<sup>[3](#3)</sup> specifies country codes. | 
| Issuer Alternative Name   | Optional  |  |   | 

------
<a name="1">1</a>. NIST SP 800-78-4, _Cryptographic Algorithms and Key Sizes for Personal Identity Verification_, W. Timothy Polk, Donna F. Dodson, William E. Burr, Hildegard Ferraiolo, and David Cooper (May 2015).<br>
<a name="2">2</a>. RFC 5280, _Internet X.509 Public Key Infrastructure Certificate and Certificate Revocation List (CRL) Profile_, David Cooper, Stefan Santesson, Stephen Farrell, Sharon Boeyen, Russell Housley, and Tim Polk (May 2008).<br>
<a name="3">3</a>. ISO 3166, _Codes for the representation of names of countries and their subdivisions — Part 1: Country codes_ (November 15, 2013). 
