---
layout: default
title: PIV Authentication
permalink: profiles/allpivauth/
---

This profile specifies the updated settings for PIV, PIV-I, and Derived PIV Authentication certificates. (These profiles were published previously as _Worksheets 9 and 11_ [SSP<sup>[1](#1)</sup>] and _Worksheet 5_ [PIV-I<sup>[2](#2)</sup>].)

**These extracted Section 7 requirements, except for the "OCSP Port 80" statement, are already given in the combine Worksheet, so they add 95% redundant information.**

**Note:**&nbsp;&nbsp;Critical extensions that are not listed in these worksheets MUST NOT be included in certificates or CRLs issued under the _X.509 Certificate Policy for the U.S. Federal PKI Common Policy Framework_ (aka, Common Policy CP). Certificate and CRL issuers may include additional information in non-critical extensions for local use but should not expect clients in the Federal PKI to process this information.  

## Extension Requirements

### PIV Authentication

* The Online Certificate Status Protocol (OCSP) server must respond on Port 80 to provide certificate statuses. 
* _Authority Information Access_ must include an access method of type id-ad-ocsp. The access location must be an HTTP Uniform Resource Identifier (URI).
* _Certificate Policies_ must assert the id-fpki-common-authentication policy OID.
* _Subject Alternative Name_ must include the Federal Agency Smart Card Number (FASC-N) and Universally Unique Identifier UUID<!--UUID from section 7.2--> from the PIV card that holds the certificates. The Subject Alternative Name may contain name forms beyond the FASC-N and UUID when required by applications with which the certificate will be used.
* _Key Usage_ bit, nonRepudiation, is not allowed. DigitalSignature is mandatory.
* _PIV Interim_ must state that the Subject's National Agency Check with Inquiries (NACI) has been completed and successfully adjudicated at certificate issuance.

### Derived PIV Authentication

* _Key Usage_ bit, nonRepudiation, is not allowed. DigitalSignature is mandatory.
* _PIV Interim_ must state that the Subject's NACI has been completed and successfully adjudicated at certificate issuance.

### PIV-I Authentication Extensions

**Add note about certificates issued under the FBCA?**

* The Online Certificate Status Protocol (OCSP) server must respond on Port 80 to provide certificate statuses. 
* _Authority Information Access_ must include an access method of type id-ad-ocsp. The access location must be an HTTP Uniform Resource Identifier (URI).
* _Subject Alternative Name_ must include the UUID from the PIV-I card that holds the certificates and NOT include any other name forms.
* _Key Usage_ bit, nonRepudiation, is not allowed. DigitalSignature is mandatory.

## Worksheet XX:&nbsp;&nbsp;PIV, PIV-I, and Derived PIV Authentication Certificate Profile

| **Field**  | **Value**                             |
| :--------  | :-------------------------------     |
| Version   | V3                                 |
| Serial Number    | Must be a unique, positive number. |
| Issuer Signature Algorithm   |  One of the following:<br>sha256WithRSAEncryption {1.2.840.113549.1.1.11}<br>ecdsa-with-SHA256 {1.2.840.10045.4.3.2}<br>ecdsa-with-SHA384 {1.2.840.10045.4.3.3}<br>ecdsa-with-SHA512 {1.2.840.10045.4.3.4} | 
| Issuer   |  Unique X.500 Issuing CA Distinguished Name (DN).<br>PrintableString encoding should be used whenever possible for Issuer and Subject DNs. |
| Validity Period  |  No longer than 3 years from date of issue.<br>Expressed in UTCTime for dates until end of 2049 and GeneralizedTime for dates thereafter.  | 
| Subject   |   Must use one of the name forms specified in the _X.509 Certificate Policy for the U.S. Federal PKI Common Policy Framework_ (aka, Common Policy CP), Section 3.1.1.<br>PrintableString encoding should be used whenever possible for Issuer and Subject DNs.   |
| Subject Public Key Information  |   For RSA, must be at least 2048 bit modulus, rsaEncryption {1.2.840.113549.1.1.1}.<br>For ECC, implicitly specify parameters through an OID associated with a NIST-approved curve referenced in NIST SP 800-78-4.<sup>[3](#3)</sup>   |
| Signature   |   sha256WithRSAEncryption {1.2.840.113549.1.1.11}<br>or ECDSA with appropriate Hash.   |


| **Extension** |  **Required**   | **Critical** | **PIV (14)** | **Derived PIV (15)**  |  **PIV-I (16)** |
| :-------- | :---: | :---: | :---- | :-----  | :-----     |
| **Source**  |  |  | [SSP 9](https://www.idmanagement.gov/wp-content/uploads/sites/1171/uploads/fpki-cert-profile-ssp.pdf){:target="_blank"}  |  [SSP 11](https://www.idmanagement.gov/wp-content/uploads/sites/1171/uploads/fpki-cert-profile-ssp.pdf){:target="_blank"}  |  [PIV-I 5](https://www.idmanagement.gov/wp-content/uploads/sites/1171/uploads/fpki-pivi-cert-profiles.pdf){:target="_blank"}   |
| Key Usage  | Mandatory | True |  digitalSignature  | digitalSignature  | digitalSignature  |
| Authority Information Access   | Mandatory  |  | id-ad-caIssuers {1.3.6.1.5.5.7.48.2} access method entry that contains HTTP URI for .p7c file containing certificates issued to Issuing CA.<br>id-ad-ocsp {1.3.6.1.5.5.7.48.1} access method entry that contains HTTP URI for the Issuing CA OCSP Responder.<br>OCSP is required for common Authentication.  | id-ad-caIssuers {1.3.6.1.5.5.7.48.2} access method entry that contains HTTP URI for .p7c file containing certificates issued to Issuing CA.<br>id-ad-ocsp {1.3.6.1.5.5.7.48.1} access method entry that contains HTTP URI for the Issuing CA OCSP Responder.<br>OCSP is required for common Derived PIVAuth and Derived PIVAuth Hardware.  | id-ad-caIssuers {1.3.6.1.5.5.7.48.2} access method entry that contains HTTP URI for .p7c file containing certificates issued to Issuing CA.<br>id-ad-ocsp {1.3.6.1.5.5.7.48.1} access method entry that contains HTTP URI for the Issuing CA OCSP Responder.<br>OCSP is required for common Authentication.  |
| Subject Key Identifier   | Mandatory |  | Octet string  | Octet string  | Octet string  |
| CRL Distribution Points   | Mandatory |   |  This extension must appear in all certificates and include at least one HTTP URI to a file containing a DER-encoded CRL with a file type of _application/pkix-crl_.<br>This profile prohibits CRLs segmented by reason code; therefore, omit the reasons and cRLIssuer fields. | This extension must appear in all certificates and include at least one HTTP URI to a file containing a DER-encoded CRL with a file type of _application/pkix-crl_.<br>This profile prohibits CRLs segmented by reason code; therefore, omit the reasons and cRLIssuer fields. | This extension must appear in all certificates and include at least one HTTP URI to a file containing a DER-encoded CRL with a file type of _application/pkix-crl_.<br>This profile prohibits CRLs segmented by reason code; therefore, omit the reasons and cRLIssuer fields. |  
| Certificate Policies   | Mandatory  |  | Applicable certificate policy:<br>id-fpki-common-authentication {2.16.840.1.101.3.2.1.3.13}   | Applicable certificate policy:<br>id-fpki-common-derived-pivAuth {2.16.840.1.101.3.2.1.3.40} <br>id-fpki-common-derived-pivAuth-hardware {2.16.840.1.101.3.2.1.3.41}  | Applicable certificate policy:<br>id-fpki-certpcy-pivi-hardware {2.16.840.1.101.3.2.1.3.18}  | 
| Authority Key Identifier   | Mandatory  |  | Octet string (same as subject key identifier in Issuing CA certificate). | Octet string (same as subject key identifier in Issuing CA certificate). | Octet string (same as subject key identifier in Issuing CA certificate). |  
| Subject Alternative Name   | Mandatory  |  | Must include FASC-N name form and, after October 15, 2015, must also include a UUID.<br>The FASC-N specifies the FASC-N of the PIV card that contains the corresponding PIV Authentication key.<br>Any additional name types may be present.<br>Other names may be included to support local applications.  | Must include a UUID.<br>Any additional name types may be present.<br>Other names may be included to support local applications.  | Must include a UUID that contains the UUID from the CHUID of the PIV-I card encoded as a URI, as specified in RFC 4122,<sup>[4](#4)</sup> Section 3.<br>Any additional name types may be present.<br>Other names may be included to support local applications.  | 
| PIV Interim   | Mandatory  |  | The piv-interim indicator {2.16.840.1.101.3.6.9.1} extension is defined in FIPS 201-2, Appendix B.2, as PIV NACI indicator. The value of this extension is asserted as follows:<br>1. TRUE if, at the time of credential issuance:<br>(1) the FBI National Criminal History Fingerprint Check has been completed successfully, and<br>(2) an NACI has been initiated but has not been completed.<br>2. FALSE if, at the time of credential issuance, the subject’s NACI has been completed and successfully adjudicated. | The piv-interim indicator {2.16.840.1.101.3.6.9.1} extension is defined in FIPS 201-2, Appendix B.2, as PIV NACI indicator. The value of this extension is asserted as follows:<br>1. TRUE if, at the time of credential issuance:<br>(1) the FBI National Criminal History Fingerprint Check has been completed successfully, and<br>(2) an NACI has been initiated but has not been completed.<br>2. FALSE if, at the time of credential issuance, the subject’s NACI has been completed and successfully adjudicated.  |   | 
| Extended Key Usage   | Optional  | True | If included to support specific applications, this extension should be non-critical. The following values for keyPurposeID should be included:<br>Microsoft Smart Card Logon<br>TLS Client Authentication<br>pkinit-KPClientAuth<br>Additional key purposes may be specified:<br>TLS Client Authentication {3.6.1.5.5.7.3.2}<br>id-pkinit-KPClientAuth {3.6.1.5.2.3.4}<br>id-kp-secureShellClient {3.6.1.5.5.7.3.21}<br>The keyPurposeID value may be implemented as needed by the subscriber.  | If included to support specific applications, this extension should be non-critical. The following values for keyPurposeID should be included:<br>TLS Client Authentication<br>pkinit-KPClientAuth<br>Additional key purposes may be specified:<br>TLS Client Authentication {3.6.1.5.5.7.3.2}<br>id-pkinit-KPClientAuth {3.6.1.5.2.3.4}<br>id-kp-secureShellClient {3.6.1.5.5.7.3.21}<br>The keyPurposeID value may be implemented as needed by the subscriber.  |  If included to support specific applications, this extension should be non-critical. The following values for keyPurposeID should be included:<br>Microsoft Smart Card Logon<br>TLS Client Authentication<br>pkinit-KPClientAuth<br>Additional key purposes may be specified:<br>TLS Client Authentication {3.6.1.5.5.7.3.2}<br>id-pkinit-KPClientAuth {3.6.1.5.2.3.4}<br>id-kp-secureShellClient {3.6.1.5.5.7.3.21}<br>The keyPurposeID value may be implemented as needed by the subscriber. | 
| Subject Directory Attributes   | Optional  |  | This extension may be included to indicate the cardholder's country or countries of citizenship, as specified in RFC 5280.<sup>[5](#5)</sup><br>countryOfCitizenship {1.3.6.1.5.5.7.9.4}<br>ISO 3166<sup>[4](#4)</sup> specifies country codes. | Same as for PIV Authentication.  | Same as for PIV Authentication.  |
| Issuer Alternative Name   | Optional  |  |   |   |   | 

------
<a name="1">1</a>. _X.509 Certificate and Certificate Revocation List (CRL) Extensions Profile for the Shared Service Providers (SSP) Program)_ (July 17, 2017).
<a name="2">2</a>. _X.509 Certificate and Certificate Revocation List (CRL) Extensions Profile for Personal Identity Verification Interoperable (PIV-I) Cards_, July 17, 2017.
<a name="3">3</a>. NIST SP 800-78-4, _Cryptographic Algorithms and Key Sizes for Personal Identity Verification_, W. Timothy Polk, Donna F. Dodson, William E. Burr, Hildegard Ferraiolo, and David Cooper (May 2015).<br>
<a name="4">4</a>. RFC 4122, _A Universally Unique Identifier (UUID) URN Namespace_, P. Leach, M. Mealling, and R. Salz (July 2005).<br>
<a name="5">5</a>. RFC 5280, _Internet X.509 Public Key Infrastructure Certificate and Certificate Revocation List (CRL) Profile_, David Cooper, Stefan Santesson, Stephen Farrell, Sharon Boeyen, Russell Housley, and Tim Polk (May 2008).<br>
<a name="6">6</a>. ISO 3166, _Codes for the representation of names of countries and their subdivisions — Part 1: Country codes_ (November 15, 2013). 
