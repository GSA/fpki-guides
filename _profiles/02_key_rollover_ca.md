---
layout: default
title: Key Rollover CA Certificate Profile
permalink: profiles/keyrollover/
---

## Worksheet 2:&nbsp;&nbsp;Key Rollover CA Certificate Profile

| **Field** |       |       | **Value**                             |
| :-------- | :---: | :---: | :-------------------------------     |
| Version   |       |       | V3 (2)                                 |
| Serial Number   |       |       | Must be a unique, positive number. |
| Issuer Signature Algorithm   |       |       |  One of the following: <br>sha256 WithRSAEncryption {1 2 840 113549 1 1 11} <br>ecdsa-with-SHA256 {1.2.840.10045.4.3.2} <br>ecdsa-with-SHA384 {1.2.840.10045.4.3.3} <br>ecdsa-with-SHA512 {1.2.840.10045.4.3.4}. | 
| Issuer Distinguished Name   |       |       |  Unique X.500 Issuing CA DN. <BR>For CAs operating under the Common Policy CP (i.e., _X.509 Certificate Policy for the U.S. Federal PKI Common Policy Framework_), must use one of the name forms specified in the Common Policy CP, Section 3.1.1. |
| Validity Period   |       |       |  Expressed in UTCTime for dates until end of 2049 and GeneralizedTime for dates thereafter.  | 
| Subject   |       |       |   Unique X.500 Issuing CA DN.<BR>For CAs operating under the Common Policy CP, must use one of the name forms specified in the Common Policy CP, Section 3.1.1.   |
| Subject Public Key Information   |       |       |   For RSA, must be at least 2048 bit modulus, rsaEncryption {1 2 840 113549 1 1 1}.<BR>For ECC, implicitly specify parameters through an OID associated with a NIST-approved curve referenced in NIST SP 800-78-2.   |
| Signature   |       |       |   sha256 WithRSAEncryption {1 2 840 113549 1 1 11}<BR>or ECDSA with appropriate Hash.   |
|               |                 |              |                                       |
| **Extension** |  **Required**   | **Critical** | **Value**                             |
| AuthorityKeyIdentifier  | Mandatory |  |  Octet string; typically derived using the SHA-1 hash of the signer’s public key. |
| KeyUsage  | Mandatory | True |  keyCertSign, cRLSign, DigitalSignature (optional), nonRepudiation (optional). |
| BasicConstraints   | Mandatory | True |  cA=True; path length constraint not included. |
| SubjectInfoAccess   | Mandatory |  |  id-ad-caRepository (1.3.6.1.5.5.7.48.5) access method entry containing at least one HTTP URL for .p7c file containing certificates issued by this CA.<BR>Certificates may also include a URI name form to specify an LDAP-accessible directory server.<BR>Each URI must point to a location where CA certificates issued by the subject of this certificate may be found.  |
| SubjectKeyIdentifier   | Mandatory |  | Octet string; typically derived using the SHA-1 hash of the subject public key.   |
|Certificate Policies   | Mandatory  |  | Application certificate policy identifiers. |
|cRLDistributionPoints   | Mandatory  |  | This extension must appear in all certificates and must include at least an HTTP URI distribution point name.<BR>Common and PIV-I prohibit the use of indirect CRLs or CRLs segmented by reason code. |
|authorityInfoAccess   | Mandatory  |  | authorityInfoAccess consists of a sequence of accessMethod and accessLocation pairs.<BR>id-ad-caIssuers {1.3.6.1.5.5.7.48.2} access method entry containing HTTP URL for .p7c file containing certificates issued to this CA;<BR>LDAP URI may optionally be included.<BR>id-ad-ocsp {1.3.6.1.5.5.7.48.1} access method entry contains HTTP URL for the Issuing CA OCSP Responder, if available. |
|IssuerAltName   | Optional  |  | Any name types may be present; most common is rfc822Name for email of PKI administrator. |

