---
layout: default
title: PIV-I Authentication Certificate Profile
permalink: profiles/piviauth/
---

## Worksheet 16:&nbsp;&nbsp;PIV-I Authentication Certificate Profile

| **Field** |       |       | **Value**                             |
| :-------- | :---: | :---: | :-------------------------------     |
| Version   |       |       | V3 (2)                                 |
| Serial Number   |       |       | Must be unique. |
| Issuer Signature Algorithm   |       |       |  One of the following: <br>sha256 WithRSAEncryption {1 2 840 113549 1 1 11} <br>ecdsa-with-SHA256 {1.2.840.10045.4.3.2} <br>ecdsa-with-SHA384 {1.2.840.10045.4.3.3} <br>ecdsa-with-SHA512 {1.2.840.10045.4.3.4}. | 
| Issuer Distinguished Name   |       |       |  Unique X.500 Issuing CA DN.  |
| Validity Period   |       |       |  No longer than 3 years from date of issue.<BR>Expressed in UTCTime for dates until end of 2049 and GeneralizedTime for dates thereafter.  | 
| Subject   |       |       |   Must use one of the name forms specified in the Common CP, Section 3.1.1.   |
| Subject Public Key Information   |       |       |   For RSA, must be at least 2048 bit modulus, rsaEncryption {1 2 840 113549 1 1 1}.<BR>For ECC, implicitly specify parameters through an OID associated with a NIST-approved curve referenced in NIST SP 800-78-2.   |
| Signature   |       |       |   sha256 WithRSAEncryption {1 2 840 113549 1 1 11}<BR>or ECDSA with appropriate Hash.   |
|               |                 |              |                                       |
| **Extension** |  **Required**   | **Critical** | **Value**                             |
| KeyUsage  | Mandatory | True |  digitalSignature.  |
|AuthorityInfoAccess   | Mandatory  |  | **id-ad-caIssuers** {1.3.6.1.5.5.7.48.2} access method entry contains HTTP URL for .p7c file containing certificates issued to Issuing CA.<BR>**id-ad-ocsp** {1.3.6.1.5.5.7.48.1} access method entry contains HTTP URL for the Issuing CA OCSP Responder. OCSP is required for common Authentication.  | 
| SubjectKeyIdentifier   | Mandatory |  | Octet string.  |
| CRLDistributionPoints   | Mandatory |   |  This extension must appear in all certificates and must include at least an HTTP URI distribution point name.<BR>The reasons and cRLIssuer fields must be omitted. | 
| CertificatePolicies   | Mandatory  |  | Applicable certificate policy:<BR>2.16.840.1.101.3.2.1.3.13 - id-fpki-common-Authentication |
| AuthorityKeyIdentifier   | Mandatory  |  | Octet string (same as subject key identifier in Issuing CA certificate). |
|SubjectAlternativeName   | Mandatory  |  | Must include a UUID that contains the UUID from the CHUID of the PIV-I card encoded as a URI, as specified in RFC 4122, Section 3.<BR>Any additional name types may be present.<BR>Other names may be included to support local applications.  |
| Extendedkeyusage   | Optional  | True | If included to support specific applications, this extension should be non-critical.<BR>The following 3 values for keyPurposeID should be included:<BR>- Microsoft Smart Card Logon<BR>- TLS Client Authentication<BR>- id-pkinit-KPClientAuth.<BR>Additional key purposes may be specified:<BR>- 1.3.6.1.5.5.7.3.2 - TLS client authentication<BR>- 1.3.6.1.5.2.3.4 - id-pkinit-KPClientAuth<BR>- 1.3.6.1.5.5.7.3.21 - id-kp-secureShellClient<BR>The key purpose value may be implemented as needed by the Subscriber.  | 
| SubjectDirectoryAttributes   | Optional  |  | This extension may be included to indicate the cardholder's country or countries of citizenship, as specified in RFC 5280 [3].<BR>countryOfCitizenship {1.3.6.1.5.5.7.9.4} - ISO 3166 Country Code(s). | 
| IssuerAltName   | Optional  |  |   | 
