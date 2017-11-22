---
layout: default
title: Common Card Authentication Certificate Profile
permalink: profiles/commoncardauth/
---

## Worksheet 12:&nbsp;&nbsp;Common Card Authentication Certificate Profile

| **Field** |       |       | **Value**                             |
| :-------- | :---: | :---: | :-------------------------------     |
| Version   |       |       | V3 (2)                                 |
| Serial Number   |       |       | Must be unique. |
| Issuer Signature Algorithm   |       |       |  One of the following: <BR>sha256 WithRSAEncryption {1 2 840 113549 1 1 11} <BR>ecdsa-with-SHA256 {1.2.840.10045.4.3.2} <BR>ecdsa-with-SHA384 {1.2.840.10045.4.3.3} <BR>ecdsa-with-SHA512 {1.2.840.10045.4.3.4}. | 
| Issuer Distinguished Name   |       |       |  Unique X.500 Issuing CA DN.  |
| Validity Period   |       |       |  No longer than 3 years from date of issue.<BR>Expressed in UTCTime for dates until end of 2049 and GeneralizedTime for dates thereafter.  | 
| Subject   |       |       |   This field may include a NULL DN. If DN is not NULL (i.e., an empty sequence), it must use one of the name forms specified in the Common CP, Section 3.1.1.   |
| Subject Public Key Information   |       |       |   For RSA, must be at least 2048 bit modulus, rsaEncryption {1 2 840 113549 1 1 1}.<BR>For ECC, implicitly specify parameters through an OID associated with a NIST-approved curve referenced in NIST SP 800-78-4.<sup>[1](#1)</sup>   |
| Signature   |       |       |   sha256 WithRSAEncryption {1 2 840 113549 1 1 11}<BR>or ECDSA with appropriate Hash.   |
|               |                 |              |                                       |
| **Extension** |  **Required**   | **Critical** | **Value**                             |
| Key Usage  | Mandatory | True |  digitalSignature.  |
|Authority Information Access   | Mandatory  |  | id-ad-caIssuers {1.3.6.1.5.5.7.48.2} access method entry contains HTTP URL for .p7c file containing certificates issued to Issuing CA.<BR>id-ad-ocsp {1.3.6.1.5.5.7.48.1} access method entry contains HTTP URL for the Issuing CA OCSP Responder. OCSP is required for common CardAuth.  | 
| Subject Key Identifier   | Mandatory |  | Octet string.  |
| CRL Distribution Points   | Mandatory |   |  This extension must appear in all certificates and must include at least an HTTP URI distribution point name.<BR>The reasons and cRLIssuer fields must be omitted. | 
| Certificate Policies   | Mandatory  |  | Applicable certificate policy:<BR>- 2.16.840.1.101.3.2.1.3.17 - id-fpki-common-cardAuth<BR>Other policies may be asserted as well. |
| Authority Key Identifier   | Mandatory  |  | Octet string (same as subject key identifier in Issuing CA certificate). |
| Extended Key Usage   | Mandatory | True |  This extension shall assert only the id-PIV-cardAuth keyPurposeID {2.16.840.1.101.3.6.8}.<BR>The id-PIV-cardAuth keyPurposeID specifies that the public key is used to authenticate the PIV card rather than the PIV cardholder.  |
| Subject Alternative Name   | Mandatory  | If subject name contains<BR>DN, set criticality to FALSE;<BR>otherwise set to TRUE. | Must include FASC-N name form and, after October 15, 2015, must also include a UUID.<BR>No other name forms may be included.  |
| PIV Interim   | Mandatory  |  | The piv-interim (2.16.840.1.101.3.6.9.1) indicator extension is defined in FIPS 201-2, Appendix B.2.<BR>The value of this extension is asserted as follows:<BR>1. TRUE if, at the time of credential issuance: (1) the FBI National Criminal History Fingerprint Check has been completed successfully, and (2) an NACI has been initiated but has not been completed.<BR>2. FALSE if, at the time of credential issuance, the subject’s NACI has been completed and successfully adjudicated.  |
| Subject Directory Attributes   | Optional  |  | This extension may be included to indicate the cardholder's country or countries of citizenship, as specified in **[13??]**.<br>- 1.3.6.1.5.5.7.9.4 - countryOfCitizenship (ISO 3166.<sup>[2](#2)</sup>) | 
| Issuer Alternative Name   | Optional  |  |   | 

-------
<a name="1">1</a>. NIST SP 800-78-4, _Cryptographic Algorithms and Key Sizes for Personal Identity Verification_, W. Timothy Polk, Donna F. Dodson, William E. Burr, Hildegard Ferraiolo, and David Cooper (May 2015).<br>
<a name="2">2</a>. ISO 3166, _Codes for the representation of names of countries and their subdivisions — Part 1: Country codes_ (November 15, 2013). **Footnote said "[13]"-NIST SP 800-78-3(4). Citizenship not specified in [3]-RFC 5280.** 

