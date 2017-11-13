---
layout: default
title: Computing and Communications Devices Certificate Profile
permalink: profiles/devices/
---

## Worksheet 19:&nbsp;&nbsp;Computing and Communications Devices Certificate Profile

| **Field** |       |       | **Value**                             |
| :-------- | :---: | :---: | :-------------------------------     |
| Version   |       |       | V3 (2)                                 |
| Serial Number   |       |       | Must be unique positive number. |
| Issuer Signature Algorithm   |       |       |  One of the following: <br>sha256 WithRSAEncryption {1 2 840 113549 1 1 11} <br>ecdsa-with-SHA256 {1.2.840.10045.4.3.2} <br>ecdsa-with-SHA384 {1.2.840.10045.4.3.3} <br>ecdsa-with-SHA512 {1.2.840.10045.4.3.4}. | 
| Issuer Distinguished Name   |       |       |  Unique X.500 Issuing CA DN.  |
| Validity Period   |       |       |  No longer than 3 years from date of issue.<BR>Expressed in UTCTime for dates until end of 2049 and GeneralizedTime for dates thereafter.  | 
| Subject   |       |       |   Unique X.500 subject DN.   |
| Subject Public Key Information   |       |       |   For RSA, must be at least 2048 bit modulus, rsaEncryption {1 2 840 113549 1 1 1}.<BR>For ECC, implicitly specify parameters through an OID associated with a NIST-approved curve referenced in NIST SP 800-78-2.   |
| Signature   |       |       |   sha256 WithRSAEncryption {1 2 840 113549 1 1 11}<BR>or ECDSA with appropriate Hash.   |
|               |                 |              |                                       |
| **Extension** |  **Required**   | **Critical** | **Value**                             |
| AuthorityKeyIdentifier   | Mandatory  |  | Octet string (same as subject key identifier in Issuing CA certificate). |
| SubjectKeyIdentifier   | Mandatory |  | Octet string.  |
| KeyUsage  | Mandatory | True |  digitalSignature<BR>nonRepudiation - Must NOT be asserted for devices.<BR>keyEncipherment - May be asserted when public key is RSA.<BR>keyAgreement - May be asserted when public key is elliptic curve.  | 
|AuthorityInfoAccess   | Mandatory  |  | **id-ad-caIssuers** {1.3.6.1.5.5.7.48.2} access method entry contains HTTP URL for .p7c file containing certificates issued to Issuing CA.<BR>**id-ad-ocsp** {1.3.6.1.5.5.7.48.1} access method entry contains HTTP URL for the Issuing CA OCSP Responder.  |
|SubjectAlternativeName   | Mandatory  |  |   | 
|BasicConstraints   | Mandatory  |  |   | 
| CRLDistributionPoints   | Mandatory |   |   | 
| CertificatePolicies   | Mandatory  |  | Applicable certificate policies must indicate device certificates.  |
| Extendedkeyusage   | Optional  |  |  | 
|SubjectAltName   | Optional  |  | dnsName - Must be present for TLS public serverAuthentication certificates.<BR>Other name forms may be present, based on certificate type.  | 
| IssuerAltName   | Optional  |  |   | 
