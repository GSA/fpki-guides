---
layout: default 
title: Federal PKI Activity Report
collection: tools
permalink: tools/fpkiactivityreport/
---

Updated: July 17,2018

This report provides a technical and policy compliance status for each Federal Public Key Infrastructure (FPKI) Affiliate.

- [FPKI Affiliate Status Summary](#fpki-affiliate-status-summary)
- [FPKI Management Authority Certificate Activity](#fpkima-certificate-activity)
- [FPKI Repository Availability](#repository-availability)

Resolve issues by contacting one of the teams:  

- Technical issues contact the [FPKIMA Team](mailto:fpkipa-ma@listserv.gsa.gov) 
- Certificate Policy issues contact the [Certificate Policy Working Group (CPWG)](mailto:fpkipa_cpwg@listserv.gsa.gov)  


## FPKI Affiliate Status Summary
The operational status for each FPKI Affiliate is summarized for each affiliate connected to the Federal Common Policy CA (FCPCA) or the Federal Bridge CA (FBCA). The overall operational status identifies issues that affect technical interoperability and non-compliance with applicable Certificate Policies (CP). The status is not used for any other purpose such as ranking or rating. 

| Federal Agency or Affiliate CA | FPKIMA CA | Status |
| ------------------------------ | --------- | ------ |
| CertiPath Bridge | FBCA | No Issues |
| Department of Defense | FBCA | No Issues |
| DigiCert NFI | FBCA | No Issues |
| Entrust Managed Services NFI | FBCA | No Issues |
| Exostar NFI | FBCA | No Issues |
| Government Printing Office | FBCA | No Issues |
| GSA Access Certificate for Electronic Services (GSA ACES) | FBCA | No Issues |
| IdenTrust NFI | FBCA | No Issues |
| WidePoint/ORC NFI | FBCA | No Issues |
| SAFE BioPharma Bridge | FBCA | No Issues |
| STRAC Bridge | FBCA | No Issues |
| TSCP Bridge | FBCA | No Issues |
| US Patent and Trademark Office (PTO) | FBCA | No Issues |
| Verizon Business NFI | FBCA | No Issues |
| Department of State | FCPCA | No Issues |
| DigiCert/Symantec/Verisign SSP | FCPCA | No Issues |
| Entrust Managed Services SSP | FCPCA | No Issues |
| WidePoint/ORC SSP | FCPCA | No Issues |
| US Treasury SSP | FCPCA | No Issues |
| Verizon Business SSP | FCPCA | No Issues |

**FPKI Affiliate Status Legend**

- _Significant_: Technical and/or policy issues that will adversely affect interoperability   
- _Moderate_: Technical and/or policy issues that may or may not adversely affect interoperability  
- _No Impact_: Technical and/or policy issues that will not adversely affect interoperability   
- _No Issues_: No technical or policy issues were found in the last thirty days  


## FPKIMA Certificate Activity
The activity listed in this section is limited to the certificates issued BY or TO the Federal Bridge or Federal Common Policy CA.

The following certificates were issued **BY** or **TO** the FPKI Trust Infrastructure in the last 30 days.

| Affiliate | Subject CA | Issuing CA | Serial | Expiration Date |
| --------- | ---------- | ---------- | ------ | ------ |
| WidePoint/ORC NFI | ORC NFI CA 3 | Federal Bridge CA 2016 | 2C 3B 16 DE 61 32 CF 08 93 C5 55 BB 86 63 20 0E 01 6E 62 04 | 07/17/2021 |

The following certificates have been removed from the FPKI Trust Infrastructure in the last 30 days.

| Affiliate | Subject CA | Issuing CA | Serial | Expiration Date |
| --------- | ---------- | ---------- | ------ | ------ |
| SAFE BioPharma | SAFE Bridge CA 02 | Federal Bridge CA 2016 | 9 C6 EB AD 66 1E 5B 89 92 84 4D C9 58 57 7E 94 4C DC EF 52 | 06/23/2018 |
| ORC/WidePoint NFI | ORC NFI CA 3 | Federal Bridge CA 2016 | 3E 67 09 5D 45 33 A2 C9 89 FA 67 3F AB 81 7E D5 58 41 74 22 | 07/31/2018 |

The following certificates are expiring in the next four months and may be re-issued.

| Affiliate | Subject CA | Issuing CA | Serial | Expiration Date |
| --------- | ---------- | ---------- | ------ | ---------- |
| SAFE BioPharma | Federal Bridge CA 2016 | SAFE Bridge CA 02 | 74 00 00 00 09 B0 8D 11 8B 00 3E 66 74 00 00 00 00 00 09 | 08/23/2018 |
| GSA ACES | IdenTrust ACES CA 2 | Federal Bridge CA 2016 | 46 68 3C 1B 51 B5 1C B9 1F 73 97 74 35 E4 3C F8 2B E9 CC 74 | 09/01/2018 |
| IdenTrust NFI | IdenTrust Global Common Root CA 1 | Federal Bridge CA 2016 | 66 FC 51 BF 22 5B D8 C4 E6 11 E1 56 E7 30 A4 83 FF 99 90 C3 | 09/25/2018 |

## Repository Availability 
This is the uptime of FPKIMA and FPKI Affiliate HTTP repositories by a monthly percentage.  For example, 100 is 100% or no downtwime for that month.

| FPKI Entity                                | 07/17 | 08/17 | 09/17 | 10/17 | 11/17 | 12/17 | 01/18 | 02/18 | 03/18 | 04/18 | 05/18 | 06/18 | 12-Month Average |
| ------------------------------------------ | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ---------------- |
| CertiPath Bridge CA                        | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   |
| CertiPath Bridge CA - G2                   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   |
| Department of State AD Root CA             | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   |
| DigiCert Federated ID CA-1 CRL3            | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   |
| DigiCert Federated ID CA-1 CRL4            | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   |
| DigiCert - Symantec Class 3 NFI CA         | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   |
| DigiCert - Symantec SSP G4                 | 100   | 99.90 | 99.93 | 99.98 | 99.68 | 99.98 | 99.86 | 99.80 | 99.89 | 99.98 | 99.98 | 100   | 99.91 |
| DigiCert - Verisign SSP G3                 | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   |
| DoD Interoperability Root 1                | 100   | 99.80 | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 99.98 |
| DoD Interoperability Root 2                | 100   | 99.80 | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 99.98 |
| Entrust NFI Root CA                        | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   |
| Entrust NFI Root CA 2                      | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   |
| Entrust Managed Services Root CA           | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   |
| Exostar Federated Identity Service Root CA | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   |
| FPKI EGTSCA 2014                           | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   |
| FPKI FBCA2013                              | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   |
| FPKI FBCA2016                              | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   |
| FPKI FCPCA                                 | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   |
| FPKI SHA1FRCA G2                           | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   |
| GPO PCA                                    | 100   | 100   | 100   | 100   | 96.81 | 100   | 100   | 100   | 100   | 100   | 100   | 99.89 | 99.72 |
| IdenTrust ACES 2                           | 100   | 100   | 100   | 100   | 99.59 | 100   | 100   | 100   | 100   | 100   | 99.96 | 100   | 99.96 |
| IdenTrust Global Common Root CA            | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 99.22 | 99.24 | 99.87 |
| ORC ACES 4 CA                              | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 99.78 | 100   | 100   | 100   | 99.98 | 
| ORC NFI 2 CA                               | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 99.76 | 100   | 100   | 100   | 99.98 |
| ORC NFI 3 CA                               | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 99.76 | 100   | 100   | 100   | 99.98 |
| ORC SSP 3                                  | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 99.76 | 100   | 100   | 100   | 99.98 |
| ORC SSP 4                                  | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 99.76 | 100   | 100   | 100   | 99.98 |
| SAFE Bridge CA 2                           | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   |  
| STRAC Bridge CA                            | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 99.98 | 99.98 | 100   | 100   | 99.99 |
| TSCP SHA-256 Bridge CA                     | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 99.92 | 99.98 | 100   | 100   | 100   | 99.99 |
| US Treasury Root CA                        | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   |
| USPTO                                      | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 99.76 | 99.95 | 99.98 | 100   | 99.98 | 99.95 |
| Verizon NFI CT-CSSP-CA                     | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   |
| Verizon SSP Betrusted Production CA        | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   |
| Verizon SSP CA 2                           | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   |
