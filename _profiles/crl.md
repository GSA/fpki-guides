---
layout: default
title: CRL Profile
permalink: /_profiles/crl/
---

## Worksheet 5: Certificate Revocation List (CRL) Certificate Profile

| **Field** |       |       | **Value**                             |
| :-------- | :---: | :---: | :-------------------------------     |
| Version   |       |       | V2 (1)                                 |
| Issuer Signature Algorithm   |       |       |  Must match the issuer Signature Algorithm of the CA’s certificate. One of the following: <br>sha256 WithRSAEncryption {1 2 840 113549 1 1 11} <br>ecdsa-with-SHA256 {1.2.840.10045.4.3.2} <br>ecdsa-with-SHA384 {1.2.840.10045.4.3.3} <br>ecdsa-with-SHA512 {1.2.840.10045.4.3.4}. | 
| Issuer Distinguished Name   |       |       |  Unique X.500 Issuing CA DN.<BR>Issuer name should be encoded exactly as encoded in the issuer fields of the certificates that are covered by this CRL. |
| Effective Date   |       |       |  Expressed in UTCTime for dates until end of 2049 and GeneralizedTime for dates thereafter.  |
| nextUpate   |       |       |  Expressed in UTCTime for dates until end of 2049 and GeneralizedTime for dates thereafter.  | 
| Revoked Certificates List   |       |       |  0 or more 2-tuple of certificate serial number and revocation.<BR>Expressed in UTCTime for dates until end of 2049 and GeneralizedTime for dates thereafter.  | 
| Issuer's Signature   |       |       |   sha256 WithRSAEncryption {1 2 840 113549 1 1 11}<BR>or ECDSA with appropriate Hash.   |
|               |                 |              |                                       |
| **CRL Extension** |  **Required**   | **Critical** | **Value**                             |
| CRL Number  | Mandatory |  |  Monotonically increasing integer (never repeated). | 
| Authority Key Identifier  | Mandatory |  |  Octet String (same as in Authority Key Identifier field in certificates issued by the CA). | 
| Issuing Distribution Point  | Mandatory |  |  This extension appears in segmented CRLs. If the CRL covers all unexpired certificates issued by the CRL issuer (i.e., all unexpired certificates in which the issuer field contains the same name as the issuer field of the CRL), then this extension does not need to be included.<BR>Common and PIV-I prohibit the use of indirect CRLs or CRLs that do not cover all reason codes. |
| onlyContainsUserCerts  | Mandatory |  |  If set to TRUE, this CRL only covers end entity certificates.<BR>(NOTE: If onlyContainsUserCerts is set to TRUE and the CRL covers all end entity certificates issued by the issuer of this CRL, then the distributionPoint field may be omitted.) |
| onlyContainsCACerts   | Mandatory |  |  If set to TRUE, this CRL only covers CA certificates.<BR>If onlyContainsUserCerts is TRUE, this field must be FALSE.<BR>(NOTE: If onlyContainsCACerts is set to TRUE and the CRL covers all CA certificates issued by the issuer of this CRL, then the distributionPoint field may be omitted.) |
| IndirectCRL   | Mandatory |  |  This profile recommends against the use of indirect CRLs.<BR>However, if this CRL covers certificates that were not issued by the issuer of this CRL, then this field must be set to TRUE. |
| FreshestCRL   | Mandatory  |  | If this is **a complete?** for scope CRL, and delta-CRLs are issued for the same scope, then either this CRL or the certificates that it covers should include the FreshestCRL extension. When the FreshestCRL extension is used in a CRL, only the distributionPoint field is used. The reasons and cRLIssuer fields must be omitted. |
| deltaCRLIndicator   | Mandatory  | True | This extension is included if and only if the CRL is a delta CRL.<BR>The BaseCRLNumber shall be identical to the value in the cRLNumber extension of the base CRL. |
| Reason Code   | Optional  |  | Optional.<BR>Must be included when reason code = key compromise or CA compromise.<BR>Any one of these CRL reasons may be asserted: keyCompromise, cAcompromise, affiliationChanged, superseded, or cessationOfOperation.<BR>If the revocation reason is unspecified, then the reasonCode extension should not be included.<BR>The removeFromCRL reason code may only be used in delta CRLs.<BR>The use of certificateHold is discouraged. The certificateHold reason code may only be used for end entity certificates. |
| Invalidity Date   | Optional  |  | Optional.<BR>This extension may be included if the invalidity date precedes the revocation date. |
