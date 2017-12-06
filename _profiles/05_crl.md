---
layout: default
title: Certificate Revocation List (CRL) Certificate Profile
permalink: profiles/crl/
---

## Worksheet 5:&nbsp;&nbsp;Certificate Revocation List (CRL) Certificate Profile

| **Field** |       |       | **Value**                             |
| :-------- | :---: | :---: | :-------------------------------     |
| Version   |       |       | V2 (1)                                 |
| Issuer Signature Algorithm   |       |       |  Must match the Issuer Signature Algorithm of the CA’s certificate. One of the following: <br>sha256WithRSAEncryption {1.2.840.113549.1.1.11} <br>ecdsa-with-SHA256 {1.2.840.10045.4.3.2} <br>ecdsa-with-SHA384 {1.2.840.10045.4.3.3} <br>ecdsa-with-SHA512 {1.2.840.10045.4.3.4} | 
| Issuer   |       |       |  Unique X.500 Issuing CA Distinguished Name (DN).<br>Issuer name should be encoded exactly as encoded in the Issuer fields of the certificates that are covered by this CRL.<br>PrintableString encoding should be used whenever possible for Issuer DNs. |
| Effective Date   |       |       |  Expressed in UTCTime for dates until end of 2049 and GeneralizedTime for dates thereafter.  |
| Next Upate   |       |       |  Expressed in UTCTime for dates until end of 2049 and GeneralizedTime for dates thereafter.  | 
| Revoked Certificates List   |       |       |  0 or more 2-tuple of certificate serial number and revocation.<br>Expressed in UTCTime for dates until end of 2049 and GeneralizedTime for dates thereafter.  | 
| Issuer's Signature   |       |       |   sha256WithRSAEncryption {1.2.840.113549.1.1.11}<br>or ECDSA with appropriate Hash.   |
|               |                 |              |                                       |
| **CRL Extension** |  **Required**   | **Critical** | **Value**                             |
| CRL Number  | Mandatory |  |  Monotonically increasing integer (never repeated). | 
| Authority Key Identifier  | Mandatory |  |  Octet string (same as in Authority Key Identifier field in certificates issued by the CA). | 
| Issuing Distribution Point  | Mandatory |  |  This extension appears in segmented CRLs.<br>If the CRL covers all unexpired certificates issued by the CRL issuer (i.e., all unexpired certificates in which the Issuer field contains the same name as the Issuer DN field of the CRL), then this extension need not be included.<br>Common and PIV-I prohibit the use of indirect CRLs or CRLs that do not cover all reason codes. |
| Only Contains User Certs  | Mandatory |  |  If set to TRUE, this CRL covers only end entity certificates.<br>**NOTE:**&nbsp;&nbsp;If onlyContainsUserCerts is set to TRUE and the CRL covers all end entity certificates issued by the issuer of this CRL, then the distributionPoint field may be omitted. |
| Only Contains CA Certs   | Mandatory |  |  If set to TRUE, this CRL covers only CA certificates.<br>If onlyContainsUserCerts is TRUE, then this field must be FALSE.<br>**NOTE:**&nbsp;&nbsp;If onlyContainsCACerts is set to TRUE, and the CRL covers all CA certificates issued by the issuer of this CRL, then the distributionPoint field may be omitted. |
| Indirect CRL   | Mandatory |  |  This profile recommends against the use of indirect CRLs.<br>However, if this CRL covers certificates that were not issued by the issuer of this CRL, then this field must be set to TRUE. |
| Freshest CRL   | Mandatory  |  | If this is a complete-for-scope CRL, and delta-CRLs are issued for the same scope, then either this CRL or the certificates that the CRL covers should include the FreshestCRL extension.<br>When the FreshestCRL extension is used in a CRL, only the distributionPoint field is used.<br>The reasons and cRLIssuer fields must be omitted. |
| Delta CRL Indicator   | Mandatory  | True | This extension is included if, and only if, the CRL is a delta CRL.<br>The BaseCRLNumber must be identical to the value in the cRLNumber extension of the base CRL. |
| **CRL Entry Extension** |  **Required**   | **Critical** | **Value**                             |
| Reason Code   | Optional  |  | Must be included when reasonCode is _keyCompromise_ or _cAcompromise_.<br>Any of these CRL reasons may be asserted:<BR>- keyCompromise<br>- cAcompromise<br>- affiliationChanged<br>- superseded<br>- cessationOfOperation<br>If the revocation reason is unspecified, then the reasonCode extension should not be included.<br>The removeFromCRL reason code may only be used in delta CRLs.<br>The use of certificateHold is discouraged. The certificateHold reason code may be used only for end entity certificates. |
| Invalidity Date   | Optional  |  | This extension may be included if the invalidity date precedes the revocation date. |
