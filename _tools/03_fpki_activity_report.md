---
layout: default 
title: Federal PKI Activity Report
collection: tools
permalink: tools/fpkiactivityreport/
---

Updated: September 4th, 2018

This report provides a technical and policy compliance status for each Federal Public Key Infrastructure (FPKI) Affiliate.

- [FPKI Affiliate Status Summary](#fpki-affiliate-status-summary)
- [FPKI Management Authority Certificate Activity](#fpkima-certificate-activity)
- [FPKI Repository Availability](#repository-availability)

Resolve issues by contacting one of the teams:  

- Technical issues contact the [FPKIMA Team](mailto:fpkipa-ma@listserv.gsa.gov) 
- Certificate Policy issues contact the [Certificate Policy Working Group (CPWG)](mailto:fpkipa_cpwg@listserv.gsa.gov)  


## FPKI Affiliate Status Summary
The operational status for each FPKI Affiliate is summarized for each affiliate connected to the Federal Common Policy CA (FCPCA) or the Federal Bridge CA (FBCA). The overall operational status identifies issues that affect technical interoperability and non-compliance with applicable Certificate Policies (CP). The status is not used for any other purpose such as ranking or rating. {% include fpkiar-status-table.html %}

**FPKI Affiliate Status Legend**

- _Significant_: Technical and/or policy issues that will adversely affect interoperability   
- _Moderate_: Technical and/or policy issues that may or may not adversely affect interoperability  
- _No Impact_: Technical and/or policy issues that will not adversely affect interoperability   
- _No Issues_: No technical or policy issues were found in the last thirty days  


## FPKIMA Certificate Activity
The activity listed in this section is limited to the certificates issued BY or TO the Federal Bridge or Federal Common Policy CA.

The following certificates were issued **BY** or **TO** the FPKI Trust Infrastructure in the last 30 days.

| Affiliate | Subject CA | Issuing CA | SHA-1 Hash | Issued Date |
| --------- | ---------- | ---------- | ------ | ------ |
| IdenTrust | IdenTrust Global Common Root CA 1 | Federal Bridge CA 2016 |  05 24 54 75 3d 53 ff 23 76 73 7f a7 79 8e c7 2f ab 82 83 3 | 08/21/2018 |
| GSA ACES | IdenTrust ACES CA 2 | Federal Bridge CA 2016 | ab 97 3a 75 fa 59 4f 5a 97 c5 3e 3c 50 24 4a e0 6c a6 10 a8 | 08/21/2018 |
| SAFE BioPharma | Federal Bridge CA 2016 | SAFE Bridge CA 02 | 54 0c 2a c5 9f 8b 5b ab 1b 6a df 42 1a 7c 50 f0 90 1e 3d 54 | 08/23/2018 |
| US Treasury | US Treasury Root CA | Federal Common Policy CA | 5a 87 92 2b 5e af 1d 63 19 8a 95 1b 2a b6 f5 9b 2f 16 c1 31 | 08/29/2018 |

The following certificates have been removed from the FPKI Trust Infrastructure in the last 30 days.

| Affiliate | Subject CA | Issuing CA | SHA-1 Hash | Expiration Date |
| --------- | ---------- | ---------- | ------ | ------ |
| SAFE BioPharma | Federal Bridge CA 2016 | SAFE Bridge CA 02 | df 46 c9 ce 19 ab ce d8 4d 2f 83 4e b7 d0 46 2c 82 33 9f cd | 08/23/2018 |
| GSA ACES | IdenTrust ACES CA 2 | Federal Bridge CA 2016 | f2 82 e5 05 30 11 13 e7 36 8a 26 2e 4e 3d fe 23 ed 39 c9 54 | 09/01/2018 |
| IdenTrust NFI | IdenTrust Global Common Root CA 1 | Federal Bridge CA 2016 | 8f 0c 18 76 9e 9e 6d 48 c5 8e 41 8e 9b d5 79 84 a7 ae 49 f4 | 09/25/2018 |
| US Treasury | US Treasury Root CA | Federal Common Policy CA | 08 06 df cc EAea a0 2d da 83 60 Aac 0d 2c 81 7e 3c 5c f5 dd 05 | 04/18/2019 |

The following certificates are expiring in the next four months and may be re-issued.

| Affiliate | Subject CA | Issuing CA | SHA-1 Hash | Expiration Date |
| --------- | ---------- | ---------- | ------ | ---------- |
| No Activity | | | |

## Repository Availability 
This is the uptime of FPKIMA and FPKI Affiliate HTTP repositories by a monthly percentage.  For example, 100 is 100% or no downtwime for that month.

| FPKI Entity                                | 09/17 | 10/17 | 11/17 | 12/17 | 01/18 | 02/18 | 03/18 | 04/18 | 05/18 | 06/18 | 07/18 | 08/18 | 12-Month Average |
| ------------------------------------------ | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ---------------- |
| CertiPath Bridge CA                        | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   |
| CertiPath Bridge CA - G2                   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   |
| Department of State AD Root CA             | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   |
| DigiCert Federated ID CA-1 CRL3            | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 99.94   | 99.99   |
| DigiCert Federated ID CA-1 CRL4            | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   |
| DigiCert - Symantec Class 3 NFI CA         | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   |
| DigiCert - Symantec SSP G4                 | 99.93 | 99.98 | 99.68 | 99.98 | 99.86 | 99.80 | 99.89 | 99.98 | 99.98 | 100   | 100   | 100   | 99.92 |
| DigiCert - Verisign SSP G3                 | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   |
| DoD Interoperability Root 1                | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   |
| DoD Interoperability Root 2                | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   |
| Entrust NFI Root CA                        | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   |
| Entrust NFI Root CA 2                      | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   |
| Entrust Managed Services Root CA           | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   |
| Exostar Federated Identity Service Root CA | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   |
| FPKI EGTSCA 2014                           | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   |
| FPKI FBCA2013                              | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   |
| FPKI FBCA2016                              | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   |
| FPKI FCPCA                                 | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   |
| FPKI SHA1FRCA G2                           | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   |
| GPO PCA                                    | 100   | 100   | 96.81 | 100   | 100   | 100   | 100   | 100   | 100   | 99.89 | 98.40 | 100   | 99.59 |
| IdenTrust ACES 2                           | 100   | 100   | 99.59 | 100   | 100   | 100   | 100   | 100   | 99.96 | 100   | 100   | 100   | 99.96 |
| IdenTrust Global Common Root CA            | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 99.22 | 99.24 | 100   | 100   | 99.87 |
| ORC ACES 4 CA                              | 100   | 100   | 100   | 100   | 100   | 100   | 99.78 | 100   | 100   | 100   | 100   | 100   | 99.98 | 
| ORC NFI 2 CA                               | 100   | 100   | 100   | 100   | 100   | 100   | 99.76 | 100   | 100   | 100   | 100   | 100   | 99.98 |
| ORC NFI 3 CA                               | 100   | 100   | 100   | 100   | 100   | 100   | 99.76 | 100   | 100   | 100   | 100   | 100   | 99.98 |
| ORC SSP 3                                  | 100   | 100   | 100   | 100   | 100   | 100   | 99.76 | 100   | 100   | 100   | 100   | 100   | 99.98 |
| ORC SSP 4                                  | 100   | 100   | 100   | 100   | 100   | 100   | 99.76 | 100   | 100   | 100   | 100   | 100   | 99.98 |
| SAFE Bridge CA 2                           | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   |  
| STRAC Bridge CA                            | 100   | 100   | 100   | 100   | 100   | 100   | 99.98 | 99.98 | 100   | 100   | 99.92 | 99.98 | 99.99 |
| TSCP SHA-256 Bridge CA                     | 100   | 100   | 100   | 100   | 100   | 99.92 | 99.98 | 100   | 100   | 100   | 100   | 100   | 99.99 |
| US Treasury Root CA                        | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   |
| USPTO                                      | 100   | 100   | 100   | 100   | 100   | 99.76 | 99.95 | 99.98 | 100   | 99.98 | 100   | 100   | 99.97 |
| Verizon NFI CT-CSSP-CA                     | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   |
| Verizon SSP Betrusted Production CA        | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   |
| Verizon SSP CA 2                           | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   |
