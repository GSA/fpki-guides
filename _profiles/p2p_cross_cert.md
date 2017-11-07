---
layout: default
title: Peer-to-Peer Cross-Certicate Certificate Profile
permalink: /_profiles/p2pcrosscert/
---

## Worksheet 3: Peer-to-Peer Cross-Certificate Profile

| **Field** |       |       | **Value**                             |
| :-------- | :---: | :---: | :-------------------------------     |
| Version   |       |       | V3 (2)                                 |
| Serial Number   |       |       | Must be a unique positive number. |
| Issuer Signature Algorithm   |       |       |  One of the following: <br>sha256 WithRSAEncryption {1 2 840 113549 1 1 11} <br>ecdsa-with-SHA256 {1.2.840.10045.4.3.2} <br>ecdsa-with-SHA384 {1.2.840.10045.4.3.3} <br>ecdsa-with-SHA512 {1.2.840.10045.4.3.4}. | 
| Issuer Distinguished Name   |       |       |  Unique X.500 Issuing CA DN. <BR>For CAs operating under the Common Policy CP (i.e., _X.509 Certificate Policy for the U.S. Federal PKI Common Policy Framework_), must use one of the name forms specified in the Common Policy CP, Section 3.1.1. |
| Validity Period   |       |       |  No longer than 3 years from date of issue; expressed in UTCTime for dates until end of 2049 and GeneralizedTime for dates thereafter.  | 
| Subject   |       |       |   Unique X.500 Issuing CA DN.<BR>For CAs operating under the Common Policy CP, must use one of the name forms specified in the Common Policy CP, Section 3.1.1.<BR>Subject name should be encoded exactly as it is encoded in the issuer field of certificates issued by the subject.   |
| Subject Public Key Information   |       |       |   For RSA, must be at least 2048 bit modulus, rsaEncryption {1 2 840 113549 1 1 1}.<BR>For ECC, implicitly specify parameters through an OID associated with a NIST-approved curve referenced in NIST SP 800-78-2.   |
| Signature   |       |       |   sha256 WithRSAEncryption {1 2 840 113549 1 1 11}<BR>or ECDSA with appropriate Hash.   |
|               |                 |              |                                       |
| **Extension** |  **Required**   | **Critical** | **Value**                             |
| AuthorityKeyIdentifier  | Mandatory |  |  Octet string; typically derived using the SHA-1 hash of the signer’s public key. |
| SubjectKeyIdentifier  | Mandatory | True |  Octet string; typically derived using the SHA-1 hash of the signer’s public key. |
| KeyUsage  | Mandatory | True |  keyCertSign, cRLSign, DigitalSignature (optional), nonRepudiation (optional). |
| BasicConstraints   | Mandatory | True |  cA=True; path length constraint is optional. |
| SubjectInfoAccess   | Mandatory |  |  id-ad-caRepository (1.3.6.1.5.5.7.48.5) access method entry containing at least one HTTP URL for .p7c file containing certificates issued by this CA.<BR>Certificates may also include a URI name form to specify an LDAP-accessible directory server.<BR>Each URI must point to a location where CA certificates issued by the subject of this certificate may be found. <BR>SubjectInfoAccess may be omitted if the subject CA does not issue any CA certificates. |
| SubjectKeyIdentifier   | Mandatory |  | Octet String; typically derived using the SHA-1 hash of the subject public key.   |
| Certificate Policies   | Mandatory  |  | Application certificate policy identifiers. |
| cRLDistributionPoints   | Mandatory  |  | This extension must appear in all certificates and must include at least an HTTP URI distribution point name. Common and PIV-I prohibit the use of indirect CRLs or CRLs segmented by reason code. |
| authorityInfoAccess   | Mandatory  |  | authorityInfoAccess consists of a sequence of accessMethod and accessLocation pairs.<BR>id-ad-caIssuers {1.3.6.1.5.5.7.48.2} access method entry containing HTTP URL for .p7c file containing certificates issued to this CA; LDAP URI may optionally be included.<BR>id-ad-ocsp {1.3.6.1.5.5.7.48.1} access method entry contains HTTP URL for the Issuing CA OCSP Responder, if available. |
| policyMappings  | Mandatory  |  | Pairs of issuerDomainPolicy OID that map to the equivalent subjectDomainPolicy OID. |
| policyConstraints   | Optional  |  | At least one of requireExplicitPolicy or inhibitPolicyMapping must be present. When present, this extension should be marked as noncritical, to support legacy applications that cannot process policyConstraints.<BR>InhibitPolicyMapping skipcerts should be 1 in certs issued to a cross-certified Bridge; 0 when issued to a member of the issuing Bridge CA; and 2 within the FPKI trust infrastructure to a CA which may issue a cross-certificate to a Bridge. |
| inhibitAnyPolicy   | Optional  |  | SkipCerts=0. |
| nameConstraints   | Optional  | True | If present, any combination of permitted and excluded subtrees may appear.<BR>If permitted and excluded subtrees overlap, the excluded subtree takes precedence.<BR>It is recommended that name constraints only be imposed on the directoryName name form. |
| IssuerAltName   | Optional  |  | Any name types may be present; most common is rfc822Name for email of PKI administrator. |
