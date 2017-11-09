---
layout: default
title: PIV Authentication Certificate Profile
permalink: profiles/pivauth/
---

## Worksheet 14:&nbsp;&nbsp;PIV Authentication Certificate Profile

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
|AuthorityInfoAccess   | Mandatory  |  | **id-ad-caIssuers** {1.3.6.1.5.5.7.48.2} access method entry contains HTTP URL for .p7c file containing certificates issued to Issuing CA.<BR>**id-ad-ocsp** {1.3.6.1.5.5.7.48.1} access method entry contains HTTP URL for the Issuing CA OCSP Responder. OCSP is required for common CardAuth.  | 
| SubjectKeyIdentifier   | Mandatory |  | Octet string.  |
| CRLDistributionPoints   | Mandatory |   |  This extension must appear in all certificates and must include at least an HTTP URI distribution point name.<BR>The reasons and cRLIssuer fields must be omitted. | 
| CertificatePolicies   | Mandatory  |  | Applicable certificate policy:<BR>2.16.840.1.101.3.2.1.3.13	- id-fpki-common-Authentication. |
| AuthorityKeyIdentifier   | Mandatory  |  | Octet string (same as subject key identifier in Issuing CA certificate). |
|SubjectAlternativeName   | Mandatory  |  | Must include FASC-N name form and, after October 15, 2015, must also include a UUID.<BR>The FASC-N specifies the FASC-N of the PIV Card that contains the corresponding PIV Authentication key.<BR>Any additional name types may be present.<BR>Other names may be included to support local applications.  |
|piv-interim<BR>(2.16.840.1.101.3.6.9.1)   | Mandatory  |  | The PIV interim indicator extension is defined in FIPS 201-2, Appendix B.2. The value of this extension is asserted as follows:<BR>1. TRUE if, at the time of credential issuance: (1) the FBI National Criminal History Fingerprint Check has been completed successfully, and (2) an NACI has been initiated but has not been completed.<BR>2. FALSE if, at the time of credential issuance, the subject’s NACI has been completed and successfully adjudicated.  |
| Extendedkeyusage   | Optional  | True | If included to support specific applications, this extension should be non-critical.<BR>The following 3 values for keyPurposeID should be included:<BR>- Microsoft Smart Card Logon<BR>- TLS Client Authentication<BR>- -pkinit-KPClientAuth.<BR>Additional key purposes may be specified:<BR>- 3.6.1.5.5.7.3.2 - TLS client authentication<BR>- 3.6.1.5.2.3.4 - id-pkinit-KPClientAuth<BR>- 3.6.1.5.5.7.3.21 - id-kp-secureShellClient<BR>The key purpose value may be implemented as needed by the Subscriber.  | 
| SubjectDirectoryAttributes   | Optional  |  | This extension may be included to indicate the cardholder's country or countries of citizenship, as specified in RFC 5280 [3].<BR>countryOfCitizenship {1.3.6.1.5.5.7.9.4} - ISO 3166 Country Code(s). | 
| IssuerAltName   | Optional  |  |   | 
