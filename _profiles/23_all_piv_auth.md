---
layout: default
title: PIV, Derived PIV, and PIV-I Authentication Certificate Profile Worksheet
permalink: profiles/allpivauth3/
---
This worksheet specifies the unique settings required for:

* X.509 **PIV Authentication** certificates issued under the _X.509 Certificate Policy for the U.S. Federal PKI Common Policy Framework_ (aka, _Common Policy CP_)<sup>[1](#1)</sup>
* X.509 **Derived PIV Authentication** certificates issued under the _Common Policy CP_
* X.509 **PIV-I Authentication** certificates issued under the  _X.509 Certificate Policy for the Federal Bridge Certification Authority_ (aka, _FBCA CP_)<sup>[2](#2)</sup>

For standard certificate information, see the _ITU-T X.509 Recommendation_<sup>[3](#3)</sup> and RFC 5280.<sup>[4](#4)</sup>

## Traceability

This worksheet supersedes three previously published worksheets:

|  **Superseded Certificate Profiles<br>and Worksheet Numbers**  | **Superseded Worksheets** | 
| :----:| :----: |
| [SSP 9](https://www.idmanagement.gov/wp-content/uploads/sites/1171/uploads/fpki-cert-profile-ssp.pdf){:target="_blank"}<sup>[5](#5)</sup>  |  PIV Authentication  | 
| [SSP 11](https://www.idmanagement.gov/wp-content/uploads/sites/1171/uploads/fpki-cert-profile-ssp.pdf){:target="_blank"}  |  Common Derived PIV Authentication  | 
| [PIV-I 5](https://www.idmanagement.gov/wp-content/uploads/sites/1171/uploads/fpki-pivi-cert-profiles.pdf){:target="_blank"}<sup>[6](#6)</sup>  | PIV-I Authentication  | 

## Mandatory Base Certificate

| **Field**  | **Value**                             |
| :--------  | :-------------------------------     |
| **Version**   | V3                                 |
| **Serial Number**    | Must be a unique, positive number. |
| **Issuer Signature Algorithm**   |  One of the following:<br>sha256WithRSAEncryption {1.2.840.113549.1.1.11}<br>ecdsa-with-SHA256 {1.2.840.10045.4.3.2}<br>ecdsa-with-SHA384 {1.2.840.10045.4.3.3}<br>ecdsa-with-SHA512 {1.2.840.10045.4.3.4} | 
| **Issuer**   |  Unique X.500 Issuing CA Distinguished Name (DN). PrintableString encoding should be used whenever possible for Issuer and Subject DNs. |
| **Validity Period**  |  No longer than 3 years from date of issue. Expressed in UTCTime for dates until end of 2049 and GeneralizedTime for dates thereafter.  | 
| **Subject**   |   For PIV and Derived PIV certificates, must use a name form specified in the _Common Policy CP_, Section 3.1. For PIV-I, must use a name form specified in the _FBCA CP_, Section 7.1.4. PrintableString encoding should be used whenever possible for Issuer and Subject DNs.   |
| **Subject Public Key Information**  |   For RSA, must be at least 2048 bit modulus, rsaEncryption {1.2.840.113549.1.1.1}. For ECC, implicitly specify parameters through an OID associated with an approved curve from NIST SP 800-78-4.<sup>[7](#7)</sup>   |
| **Signature**   |   sha256WithRSAEncryption {1.2.840.113549.1.1.11} or ECDSA with appropriate hash.   |

## Mandatory Extensions Common to PIV, Derived PIV, and PIV-I Authentication

_These **Mandatory** extensions apply to **all** PIV, Derived PIV, and PIV-I Authentication certificates._

| **Mandatory<br>Extension** |  **Critical** | **Value** | 
| :-------- | :-----: | :----- | 
| **Key Usage**  | True |  digitalSignature. nonRepudiation is NOT allowed.  | 
| **Authority Information Access**  |  | id-ad-caIssuers {1.3.6.1.5.5.7.48.2} access method entry that contains an HTTP URI for a .p7c file containing certificates issued to Issuing CA.<br>id-ad-ocsp {1.3.6.1.5.5.7.48.1} access method entry that contains an HTTP URI for the OCSP server that provides status information about the certificate. |
| **Subject Key Identifier**   |  | Octet string  | 
| **CRL Distribution Points**   | |  Must appear in all certificates and include at least one HTTP URI to a file containing a DER-encoded CRL with an _application/pkix-crl_ file type. Omit the reasons and cRLIssuer fields. | 
| **Authority Key Identifier**   |  | Octet string (same as Subject Key Identifier in Issuing CA certificate). |  

## Mandatory Extensions Unique to PIV, Derived PIV, or PIV-I Authentication

_These **Mandatory** extensions are **unique** to either PIV, Derived PIV, or PIV-I Authentication certificates._

| **Mandatory<br>Extension**  | **Critical** | **PIV** | **Derived PIV**  |  **PIV-I** |
| :-------- | :------ | :----- | :-----  | :-----     |
| **Certificate Policies**   |  | id-fpki-common-<br>authentication {2.16.840.1.101.3.2.1.3.13}  |  id-fpki-common-derived-pivAuth {2.16.840.1.101.3.2.1.3.40}<br>_**OR**_ id-fpki-common-derived-pivAuth-hardware {2.16.840.1.101.3.2.1.3.41}  | A policy OID that maps to id-fpki-certpcy-pivi-hardware {2.16.840.1.101.3.2.1.3.18}.   |
| **Subject Alternative Name**   |  | Must include FASC-N name form. After October 15, 2015, must also include a UUID encoded as a URI, as specified in RFC 4122,<sup>[8](#8)</sup> Section 3. Additional name forms may be present to support local applications.  | Must include a UUID encoded as a URI, as specified in RFC 4122, Section 3. Additional name forms may be present to support local applications.  | Same value as for Derived PIV.  | 
| **PIV Interim**   |  | piv-interim indicator {2.16.840.1.101.3.6.9.1}, defined in FIPS 201-2 as _PIV NACI indicator_. FALSE, if NACI successfully adjudicated at issuance. TRUE, if FBI NCHC successful, but adjudication not finalized. Also TRUE if NACI initiated but not completed at issuance.  | Same value as for PIV.  |   | 

## Optional Extensions Common to PIV, Derived PIV, and PIV-I Authentication

_These **Optional** extensions apply to **all** PIV, Derived PIV, and PIV-I Authentication certificates._

| **Optional<br>Extension**  | **Critical** | **Value** |
| :-------- | :------ | :----- |
| **Extended Key Usage**   | True | If included, EKU should be non-critical and include:<br>Microsoft Smart Card Logon {1.3.6.1.4.1.311.20.2.2}, only if the private key is on a<br>smart card.<br>TLS Client Authentication {3.6.1.5.5.7.3.2}<br>pkinit-KPClientAuth {3.6.1.5.2.3.4}<br>Additional key purposes may be specified (e.g., id-kp-secureShellClient {3.6.1.5.5.7.3.21}). | 
| **Subject Directory Attributes** |    | May be included to identify the cardholder's country/countries of citizenship, as specified in RFC 5280. countryOfCitizenship {1.3.6.1.5.5.7.9.4}. ISO 3166<sup>[9](#9)</sup> specifies country codes. | 
| **Issuer Alternative Name**     |   |   |  

------
<a name="1">1</a>. _X.509 Certificate Policy for the U.S. Federal PKI Common Policy Framework_, v1.27, June 29, 2017.<br>
<a name="2">2</a>. _X.509 Certificate Policy For The Federal Bridge Certification Authority (FBCA)_, Version 2.31, June 29, 2017<br>
<a name="3">3</a>. ITU-I X.509 Recommendation (October 2016).<br>
<a name="4">4</a>. RFC 5280, _Internet X.509 Public Key Infrastructure Certificate and Certificate Revocation List (CRL) Profile_, David Cooper, Stefan Santesson, Stephen Farrell, Sharon Boeyen, Russell Housley, and Tim Polk (May 2008).<br>
<a name="5">5</a>. _X.509 Certificate and Certificate Revocation List (CRL) Extensions Profile for the Shared Service Providers (SSP) Program)_ (July 17, 2017).<br>
<a name="6">6</a>. _X.509 Certificate and Certificate Revocation List (CRL) Extensions Profile for Personal Identity Verification Interoperable (PIV-I) Cards_, July 17, 2017.<br>
<a name="7">7</a>. NIST SP 800-78-4, _Cryptographic Algorithms and Key Sizes for Personal Identity Verification_, W. Timothy Polk, Donna F. Dodson, William E. Burr, Hildegard Ferraiolo, and David Cooper (May 2015).<br>
<a name="8">8</a>. RFC 4122, _A Universally Unique Identifier (UUID) URN Namespace_, P. Leach, M. Mealling, and R. Salz (July 2005).<br>
<a name="9">9</a>. ISO 3166, _Codes for the representation of names of countries and their subdivisions — Part 1: Country codes_ (November 15, 2013). 
