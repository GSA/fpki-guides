---
layout: default
title: PIV-I Authentication
permalink: profiles/piviauth/
---

## Worksheet 16:&nbsp;&nbsp;PIV-I Authentication Certificate Profile

| **Field** |       |       | **Value**                             |
| :-------- | :---: | :---: | :-------------------------------     |
| Version   |       |       | V3 (2)                                 |
| Serial Number   |       |       | Must be a unique, positive number. |
| Issuer Signature Algorithm   |       |       |  One of the following: <br>sha256WithRSAEncryption {1.2.840.113549.1.1.11} <br>ecdsa-with-SHA256 {1.2.840.10045.4.3.2} <br>ecdsa-with-SHA384 {1.2.840.10045.4.3.3} <br>ecdsa-with-SHA512 {1.2.840.10045.4.3.4} | 
| Issuer   |       |       |  Unique X.500 Issuing CA Distinguished Name (DN).<br>PrintableString encoding should be used whenever possible for Issuer and Subject DNs. |
| Validity Period   |       |       |  No longer than 3 years from date of issue.<br>Expressed in UTCTime for dates until end of 2049 and GeneralizedTime for dates thereafter.  | 
| Subject   |       |       |   Must use one of the name forms specified in the _X.509 Certificate Policy for the U.S. Federal PKI Common Policy Framework_ (aka, Common Policy CP), Section 3.1.1.<br>PrintableString encoding should be used whenever possible for Issuer and Subject Distinguished Names.  |
| Subject Public Key Information   |       |       |   For RSA, must be at least 2048 bit modulus, rsaEncryption {1.2.840.113549.1.1.1}.<br>For ECC, implicitly specify parameters through an OID associated with a NIST-approved curve referenced in NIST SP 800-78-4.   |
| Signature   |       |       |   sha256WithRSAEncryption {1.2.840.113549.1.1.11}<br>or ECDSA with appropriate Hash.   |
|               |                 |              |                                       |
| **Extension** |  **Required**   | **Critical** | **Value**                             |
| Key Usage  | Mandatory | True |  digitalSignature.  |
| Authority Information Access   | Mandatory  |  | id-ad-caIssuers {1.3.6.1.5.5.7.48.2} access method entry that contains HTTP URL for .p7c file containing certificates issued to Issuing CA.<br>id-ad-ocsp {1.3.6.1.5.5.7.48.1} access method entry that contains HTTP URL for the Issuing CA OCSP Responder.<br>OCSP is required for common Authentication.  | 
| Subject Key Identifier   | Mandatory |  | Octet string.  |
| CRL Distribution Points   | Mandatory |   |  This extension must appear in all certificates and include at least one HTTP URI to a file containing a DER-encoded CRL with a file type of _application/pkix-crl_.<br>This profile prohibits CRLs segmented by reason code; therefore, the reasons and cRLIssuer fields must be omitted. | 
| Certificate Policies   | Mandatory  |  | Applicable certificate policy:<br>- 2.16.840.1.101.3.2.1.3.18 - id-fpki-certpcy-pivi-hardware |
| Authority Key Identifier   | Mandatory  |  | Octet string (same as subject key identifier in Issuing CA certificate). |
| Subject Alternative Name   | Mandatory  |  | Must include a UUID that contains the UUID from the CHUID of the PIV-I card encoded as a URI, as specified in RFC 4122,<sup>[2](#2)</sup> Section 3.<br>Any additional name types may be present.<br>Other names may be included to support local applications.  |
| Extended Key Usage   | Optional  | True | If included to support specific applications, this extension should be non-critical.<br>The following 3 values for keyPurposeID should be included:<br>- Microsoft Smart Card Logon<BR>- TLS Client Authentication<BR>- id-pkinit-KPClientAuth<br>Additional key purposes may be specified:<br>- 1.3.6.1.5.5.7.3.2 - TLS client authentication<br>- 1.3.6.1.5.2.3.4 - id-pkinit-KPClientAuth<BR>- 1.3.6.1.5.5.7.3.21 - id-kp-secureShellClient<br>The keyPurposeID value may be implemented as needed by the Subscriber.  | 
| Subject Directory Attributes   | Optional  |  | This extension may be included to indicate the cardholder's country or countries of citizenship, as specified in RFC 5280.<sup>[3](#3)</sup><br>- countryOfCitizenship {1.3.6.1.5.5.7.9.4}<br>ISO 3166 specifies country codes.<sup>[4](#4)</sup> | 
| Issuer Alternative Name   | Optional  |  |   | 

------
<a name="1">1</a>. NIST SP 800-78-4, _Cryptographic Algorithms and Key Sizes for Personal Identity Verification_, W. Timothy Polk, Donna F. Dodson, William E. Burr, Hildegard Ferraiolo, and David Cooper (May 2015).<br>
<a name="2">2</a>. RFC 4122, _A Universally Unique Identifier (UUID) URN Namespace_, P. Leach, M. Mealling, and R. Salz (July 2005).<br>
<a name="3">3</a>. RFC 5280, _Internet X.509 Public Key Infrastructure Certificate and Certificate Revocation List (CRL) Profile_, David Cooper, Stefan Santesson, Stephen Farrell, Sharon Boeyen, Russell Housley, and Tim Polk (May 2008).<br>
<a name="4">4</a>. ISO 3166, _Codes for the representation of names of countries and their subdivisions — Part 1: Country codes_ (November 15, 2013).
