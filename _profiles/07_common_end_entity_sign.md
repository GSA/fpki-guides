---
layout: default
title: Common End Entity Signature Certificate Profile
permalink: profiles/commonendentitysign/
---

## Worksheet 7:&nbsp;&nbsp;Common End Entity Signature Certificate Profile

| **Field** |       |       | **Value**                             |
| :-------- | :---: | :---: | :-------------------------------     |
| Version   |       |       | V3 (2)                                 |
| Serial Number   |       |       | Must be unique. |
| Issuer Signature Algorithm   |       |       |  One of the following: <br>sha256WithRSAEncryption {1.2.840.113549.1.1.11} <br>ecdsa-with-SHA256 {1.2.840.10045.4.3.2} <br>ecdsa-with-SHA384 {1.2.840.10045.4.3.3} <br>ecdsa-with-SHA512 {1.2.840.10045.4.3.4}. | 
| Issuer   |       |       |  Unique X.500 Issuing CA DN. PrintableString encoding should be used whenever possible for Issuer and Subject Distinguished Names.  |
| Validity Period   |       |       |  No longer than 3 years from date of issue.<BR>Expressed in UTCTime for dates until end of 2049 and GeneralizedTime for dates thereafter.   | 
| Subject   |       |       |   Unique X.500 subject DN of the owner of the subject public key in the certificate.<BR>Must use one of the name forms specified in the Common CP, Section 3.1.1. PrintableString encoding should be used whenever possible for Issuer and Subject Distinguished Names.   |
| Subject Public Key Information   |       |       |   For RSA, must be at least 2048 bit modulus, rsaEncryption {1.2.840.113549.1.1.1}.<BR>For ECC, implicitly specify parameters through an OID associated with a NIST-approved curve referenced in NIST SP 800-78-4.<sup>[1](#1)</sup>   |
| Signature   |       |       |   sha256WithRSAEncryption {1.2.840.113549.1.1.11}<br>or ECDSA with appropriate Hash.   |
|               |                 |              |                                       |
| **Extension** |  **Required**   | **Critical** | **Value**                             |
| Key Usage  | Mandatory | True |  digitalSignature, nonRepudiation. |
| Authority Information Access   | Mandatory  |  | id-ad-caIssuers {1.3.6.1.5.5.7.48.2} access method entry contains HTTP URL for .p7c file containing certificates issued to Issuing CA.<BR>id-ad-ocsp {1.3.6.1.5.5.7.48.1} access method entry contains HTTP URL for the Issuing CA OCSP Responder. | 
| Subject Key Identifier   | Mandatory |  | Octet string.  |
| CRL Distribution Points   | Mandatory |   |  This extension must appear in all certificates and must include at least an HTTP URI distribution point name.<br>This extension must appear in all certificates and include at least one HTTP URI to a file containing a DER-encoded CRL with a file type of _application/pkix-crl_.<br>The reasons and cRLIssuer fields must be omitted.<!--New statement created redundancy. Wendy needs to adjust 2 statements.--> | 
| Certificate Policies   | Mandatory  |  | Applicable certificate policies&mdash;at least one of:<BR>- 2.16.840.1.101.3.2.1.3.6 - id-fpki-common-policy<BR>- 2.16.840.1.101.3.2.1.3.7 - id-fpki-common-hardware<BR>- 2.16.840.1.101.3.2.1.3.16 - id-fpki-common-High. |
| Authority Key Identifier   | Mandatory  |  | Octet string (same as subject key identifier in Issuing CA certificate). |
| Extended Key Usage   | Optional |  |  If included to support specific applications, the extension should be non-critical.<BR>The 3 values listed for keyPurposeID should be included for signing purposes:<BR>- 1.3.6.1.5.5.7.3.4 - Id-kp-emailProtection<BR>- 1.3.6.1.4.1.311.10.3.12 - MSFT Document Signing<BR>- 1.2.840.113583.1.1.5 - Adobe-Certified Document Signing.<BR>Additional key purposes may be specified.  |
|Subject Alternative Name   | Optional  |  |   |
| Subject Directory Attributes   | Optional  |  | This extension may be included to indicate the cardholder's country or countries of citizenship, as specified in RFC 5280.<sup>[2](#2)</sup><BR>- countryOfCitizenship {1.3.6.1.5.5.7.9.4}<br>ISO 3166<sup>[3](#3)</sup> specifies country codes. | 
| Issuer Alternative Name   | Optional  |  |   | 

-------
<a name="1">1</a>. NIST SP 800-78-4, _Cryptographic Algorithms and Key Sizes for Personal Identity Verification_, W. Timothy Polk, Donna F. Dodson, William E. Burr, Hildegard Ferraiolo, and David Cooper (May 2015).<br>
<a name="2">2</a>. RFC 5280, _Internet X.509 Public Key Infrastructure Certificate and Certificate Revocation List (CRL) Profile_, David Cooper, Stefan Santesson, Stephen Farrell, Sharon Boeyen, Russell Housley, and Tim Polk (May 2008).<br>
<a name="3">3</a>. ISO 3166, _Codes for the representation of names of countries and their subdivisions — Part 1: Country codes_ (November 15, 2013).
