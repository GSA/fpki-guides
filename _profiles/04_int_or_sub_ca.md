---
layout: default
title: Intermediate or Subordinate CA Certificate Profile
permalink: profiles/intorsubca/
---

## Worksheet 4:&nbsp;&nbsp;Intermediate or Subordinate CA Certificate Profile

| **Field** |       |       | **Value**                             |
| :-------- | :---: | :---: | :-------------------------------     |
| Version   |       |       | V3 (2)                                 |
| Serial Number   |       |       | Must be a unique positive number. |
| Issuer Signature Algorithm   |       |       |  One of the following: <br>sha256 WithRSAEncryption {1 2 840 113549 1 1 11} <br>ecdsa-with-SHA256 {1.2.840.10045.4.3.2} <br>ecdsa-with-SHA384 {1.2.840.10045.4.3.3} <br>ecdsa-with-SHA512 {1.2.840.10045.4.3.4}. | 
| Issuer Distinguished Name   |       |       |  Unique X.500 Issuing CA DN. <BR>For CAs operating under the Common Policy CP (i.e., _X.509 Certificate Policy for the U.S. Federal PKI Common Policy Framework_), must use one of the name forms specified in the Common Policy CP, Section 3.1.1.<br>PrintableString encoding should be used wherever possible for Issuer and Subject Distinguished Names. |
| Validity Period   |       |       |  No longer than 10 years from date of issue.<BR>expressed in UTCTime for dates until end of 2049 and GeneralizedTime for dates thereafter.  | 
| Subject   |       |       |   Unique X.500 Issuing CA DN.<br>For CAs operating under the Common Policy CP, must use one of the name forms specified in the Common Policy CP, Section 3.1.1.<br>Subject Distinguished Name should be encoded exactly as it is encoded in the Issuer field of certificates issued by the subject.<br>PrintableString encoding should be used wherever possible for Issuer and Subject Distinguished Names.   |
| Subject Public Key Information   |       |       |   For RSA, must be at least 2048 bit modulus, rsaEncryption {1 2 840 113549 1 1 1}.<BR>For ECC, implicitly specify parameters through an OID associated with a NIST-approved curve referenced in NIST SP 800-78-4.<sup>[1](#1)</sup>   |
| Signature   |       |       |   sha256 WithRSAEncryption {1 2 840 113549 1 1 11}<BR>or ECDSA with appropriate Hash.   |
|               |                 |              |                                       |
| **Extension** |  **Required**   | **Critical** | **Value**                             |
| Authority Key Identifier  | Mandatory |  |  Octet string; typically derived using the SHA-1 hash of the signer’s public key. |
| Subject Key Identifier  | Mandatory |  |  Octet string; typically derived using the SHA-1 hash of the subject public key.<BR>This extension is required to assist in path development.<BR>The value in this field must be the same value that the subject CA uses in the authority key identifier extension of the certificates and CRLs that it signs with the private key that corresponds to the subject public key included in this certificate. |
| Key Usage  | Mandatory | True |  keyCertSign, cRLSign, DigitalSignature (optional), nonRepudiation (optional).<br>DigitalSignature and nonRepudiation are allowed only when the CA also signs OCSP responses. |
| Basic Constraints   | Mandatory | True |  cA=True; path length constraint is optional. |
| Subject Information Access   | Mandatory |  |  id-ad-caRepository (1.3.6.1.5.5.7.48.5) access method entry containing at least one HTTP URL for .p7c file containing certificates issued by this CA.<BR>Certificates may also include a URI name form to specify an LDAP-accessible directory server.<BR>Each URI must point to a location where CA certificates issued by the subject of this certificate may be found. <BR>SubjectInfoAccess may be omitted if the subject CA does not issue any CA certificates. |
| Certificate Policies   | Mandatory  |  | Applicable certificate policy identifiers. |
| CRL Distribution Points   | Mandatory  |  | This extension must appear in all certificates and include at least one HTTP URI to a file containing a DER-encoded CRL with a file type of _application/pkix-crl_<br>.Common and PIV-I prohibit the use of indirect CRLs or CRLs segmented by reason code. |
| Authority Information Access   | Mandatory  |  | authorityInfoAccess consists of a sequence of accessMethod and accessLocation pairs.<BR>id-ad-caIssuers {1.3.6.1.5.5.7.48.2} access method entry containing HTTP URL for .p7c file containing certificates issued to this CA;<BR>LDAP URI may optionally be included.<BR>id-ad-ocsp {1.3.6.1.5.5.7.48.1} access method entry contains HTTP URL for the Issuing CA OCSP Responder, if available.<BR>OCSP is mandatory for CAs issuing PIV, PIV-I, or TLS subscriber certificates. |
| Policy Constraints   | Optional  |  | Either requireExplicitPolicy or inhibitPolicyMapping may be present.<br>If present, this extension should be marked as noncritical, to support legacy applications that cannot process policyConstraints.<br>InhibitPolicyMapping SkipCerts = 0 for a CA certificate issued under the same CP as issuing CA, to not allow transitive trust. |
| Inhibit Any Policy   | Optional  |  | SkipCerts=0. |
| Name Constraints   | Optional  | True | If present, any combination of permitted and excluded subtrees may appear.<BR>If permitted and excluded subtrees overlap, the excluded subtree takes precedence. |
| Issuer Alternative Name   | Optional  |  | Any name types may be present; most common is rfc822Name for email of PKI administrator. |
| Subject Alternative Name   | Optional  |  | Any name types may be present; most common is rfc822Name for email of subject PKI administrator. |

-------
<a name="1">1</a>. NIST SP 800-78-4, _Cryptographic Algorithms and Key Sizes for Personal Identity Verification_, W. Timothy Polk, Donna F. Dodson, William E. Burr, Hildegard Ferraiolo, and David Cooper (May 2015).<br>
