---
layout: default
title: PIV-I Card Authentication
permalink: profiles/pivicardauth/
---

## Worksheet 13:&nbsp;&nbsp;PIV-I Card Authentication Certificate Profile

| **Field** |       |       | **Value**                             |
| :-------- | :---: | :---: | :-------------------------------     |
| Version   |       |       | V3 (2)                                 |
| Serial Number   |       |       | Must be unique. |
| Issuer Signature Algorithm   |       |       |  One of the following: <br>sha256 WithRSAEncryption {1 2 840 113549 1 1 11} <br>ecdsa-with-SHA256 {1.2.840.10045.4.3.2} <br>ecdsa-with-SHA384 {1.2.840.10045.4.3.3} <br>ecdsa-with-SHA512 {1.2.840.10045.4.3.4}. | 
| Issuer Distinguished Name   |       |       |  Unique X.500 Issuing CA DN.  |
| Validity Period   |       |       |  No longer than 3 years from date of issue.<BR>Expressed in UTCTime for dates until end of 2049 and GeneralizedTime for dates thereafter.  | 
| Subject   |       |       |   MUST include a Non-NULL Subject DN. See naming requirements in _NIST Recommendation for X.509 Path Validation_.<sup>[1](#1)</sup>   |
| Subject Public Key Information   |       |       |   For RSA, must be at least 2048 bit modulus, rsaEncryption {1 2 840 113549 1 1 1}.<br>For ECC, implicitly specify parameters through an OID associated with a NIST-approved curve referenced in NIST SP 800-78-4.<sup>[2](#2)</sup>   |
| Signature   |       |       |   sha256 WithRSAEncryption {1 2 840 113549 1 1 11}<BR>or ECDSA with appropriate Hash.   |
|               |                 |              |                                       |
| **Extension** |  **Required**   | **Critical** | **Value**                             |
| Key Usage  | Mandatory | True |  digitalSignature.  |
|Authority Information Access   | Mandatory  |  | id-ad-caIssuers {1.3.6.1.5.5.7.48.2} access method entry contains HTTP URL for .p7c file containing certificates issued to Issuing CA.<br>id-ad-ocsp {1.3.6.1.5.5.7.48.1} access method entry contains HTTP URL for the Issuing CA OCSP Responder. OCSP is required for PIV-I CardAuth.  | 
| Subject Key Identifier   | Mandatory |  | Octet string.  |
| CR LDistribution Points   | Mandatory |   |  This extension must appear in all certificates and must include at least an HTTP URI distribution point name.<BR>The reasons and cRLIssuer fields must be omitted. | 
| Certificate Policies   | Mandatory  |  | Applicable certificate policy.<BR>Must have a policy mapping to PIV-I cardAuth.<BR>Other policies may be asserted as well. |
| Authority Key Identifier   | Mandatory  |  | Octet string (same as subject key identifier in Issuing CA certificate). |
| Extendedkeyusage   | Mandatory | True |  This extension shall assert only the id-PIV-cardAuth keyPurposeID {2.16.840.1.101.3.6.8}.<BR>The id-PIV-cardAuth keyPurposeID specifies that the public key is used to authenticate the PIV-I card rather than the PIV-I cardholder.  |
|Subject Alternative Name   | Mandatory  | Otherwise set criticality to TRUE. | Must include a UUID. No other name forms may be included.<BR>This field contains the UUID from the CHUID of the PIV-I card encoded as a URI, as specified in RFC 4122, Section 3.<sup>[3](#3)</sup>  |
| Subject Directory Attributes   | Optional  |  | This extension may be included to indicate the cardholder's country or countries of citizenship, as specified in RFC 5280.<sup>[4](#4)</sup><br>countryOfCitizenship {1.3.6.1.5.5.7.9.4} (ISO 3166<sup>[5](#5)</sup>) | 
| Issuer Alternative Name   | Optional  |  |   | 

--------
<a name="1">1</a>. [_NIST Recommendation for X.509 Path Validation_](https://csrc.nist.gov/projects/pki-testing/){target="_blank"}, Version 0.5 (May 2004).
<a name="2">2</a>. NIST SP 800-78-4, _Cryptographic Algorithms and Key Sizes for Personal Identity Verification_, W. Timothy Polk, Donna F. Dodson, William E. Burr, Hildegard Ferraiolo, and David Cooper (May 2015).<br>
<a name="3">3</a>. RFC 4122, _A Universally Unique IDentifier (UUID) URN Namespace_, P. Leach, M. Mealling, and R. Salz (July 2005).<br>
<a name="4">4</a>. **<Originally said "[13]" (NIST SP 800-78-2). RFC 5280 doesn't specify citizenship>** RFC 5280, _Internet X.509 Public Key Infrastructure Certificate and Certificate Revocation List (CRL) Profile_, David Cooper, Stefan Santesson, Stephen Farrell, Sharon Boeyen, Russell Housley, and Tim Polk (May 2008).<br>
<a name="5">5</a>. ISO 3166, _Codes for the representation of names of countries and their subdivisions — Part 1: Country codes_ (November 15, 2013).

