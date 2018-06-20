---
layout: default 
title: Federal PKI Activity Report
collection: tools
permalink: tools/fpkiactivityreport/
---

**Last Update: June 20, 2018**

This report provides a technical and policy compliance status for each Federal Public Key Infrastructure (FPKI) Affiliate.

- [FPKI Affiliate Status Summary](#fpki-affiliate-status-summary)
- [FPKI Management Authority Certificate Activity](#fpkima-certificate-activity)
- [FPKI Repository Availability](#repository-availability)

Resolve issues by contacting one of the teams:  

- Technical issues contact the [FPKIMA Team](mailto:fpki-help@gsa.gov) 
- Certificate Policy issues contact the [Certificate Policy Working Group (CPWG)](mailto:fpkipa_cpwg@listserv.gsa.gov)  

## FPKI Affiliate Status Summary
The operational status for each FPKI Affiliate is summarized for each affiliate connected to the Federal Common Policy CA (FCPCA) or the Federal Bridge CA (FBCA). The overall operational status identifies issues that affect technical interoperability and non-compliance with applicable Certificate Policies (CP). The status is not used for any other purpose such as ranking or rating. 

<details open>
<summary> Affiliates with *Issue* status </summary>

No Affiliate issues reported.
</details>

<details>
<summary> Affiliates with *No Issue* status </summary>

| Federal Agency or Affiliate | FPKIMA CA | Status |
| --------------------------- | --------- | ------ |
| CertiPath Bridge | FBCA & SHA1FRCA | No Issues |
| Department of Defense | FBCA & SHA1FRCA | No Issues |
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
</details><br>

**FPKI Affiliate Status Legend**

- _Significant_: Technical and/or policy issues that will adversely affect interoperability   
- _Moderate_: Technical and/or policy issues that may or may not adversely affect interoperability  
- _No Impact_: Technical and/or policy issues that will not adversely affect interoperability   
- _No Issues_: No technical or policy issues were found in the last thirty days  


## FPKIMA Certificate Activity
The activity listed in this section is limited to the certificates issued BY or TO the Federal Bridge or Federal Common Policy CA.

The following certificates were issued **BY** or **TO** the FPKI Trust Infrastructure in the last 30 days.

| Affiliate | Subject CA | Issuing CA | Serial | Issued Date |
| --------- | ---------- | ---------- | ------ | ------ |
| SAFE BioPharma | SAFE Bridge CA 02 | Federal Bridge CA 2016 | 5c 65 42 19 97 2b ac 88 7b ea 9f 13 09 eb 9e 05 2f b7 75 7e | 06/07/2021 |

The following certificates have been removed from the FPKI Trust Infrastructure in the last 30 days.

| Affiliate | Subject CA | Issuing CA | Serial | Expiration Date |
| --------- | ---------- | ---------- | ------ | ------ |
| SAFE BioPharma | SAFE Bridge CA 02 | Federal Bridge CA 2016 | 9 C6 EB AD 66 1E 5B 89 92 84 4D C9 58 57 7E 94 4C DC EF 52 | 06/23/2018 |

The following certificates are expiring in the next four months and may be re-issued.

| Affiliate | Subject CA | Issuing CA | Serial | Expiration Date |
| --------- | ---------- | ---------- | ------ | ---------- |
| ORC/WidePoint NFI | ORC NFI CA 3 | Federal Bridge CA 2016 | 3E 67 09 5D 45 33 A2 C9 89 FA 67 3F AB 81 7E D5 58 41 74 22 | 07/31/2018 |
| SAFE BioPharma | Federal Bridge CA 2016 | SAFE Bridge CA 02 | 74 00 00 00 09 B0 8D 11 8B 00 3E 66 74 00 00 00 00 00 09 | 08/23/2018 |
| GSA ACES | IdenTrust ACES CA 2 | Federal Bridge CA 2016 | 46 68 3C 1B 51 B5 1C B9 1F 73 97 74 35 E4 3C F8 2B E9 CC 74 | 09/01/2018 |
| IdenTrust NFI | IdenTrust Global Common Root CA 1 | Federal Bridge CA 2016 | 66 FC 51 BF 22 5B D8 C4 E6 11 E1 56 E7 30 A4 83 FF 99 90 C3 | 09/25/2018 |

## Repository Availability 
This is the uptime of FPKIMA and FPKI Affiliate HTTP repositories by a monthly percentage.  For example, 100 is 100% or no downtwime for that month.

<details open>
<summary> Affiliates with less than 100% availability </summary>

| FPKI Entity                                | 06/17 | 07/17 | 08/17 | 09/17 | 10/17 | 11/17 | 12/17 | 01/18 | 02/18 | 03/18 | 04/18 | 05/18 | 12-Month Average |
| ------------------------------------------ | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| DoD Interoperability Root 1                | 100   | 100   | 99.80 | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 99.98 |
| DoD Interoperability Root 2                | 100   | 100   | 99.80 | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 99.98 |
| GPO PCA                                    | 100   | 100   | 100   | 100   | 100   | 96.81 | 100   | 100   | 100   | 100   | 100   | 100   | 99.73 |
| IdenTrust ACES 2                           | 100   | 100   | 100   | 100   | 100   | 99.59 | 100   | 100   | 100   | 100   | 100   | 99.96 | 99.96 |
| IdenTrust Global Common Root CA            | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 99.22 | 99.87 |
| ORC ACES 4 CA                              | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 99.78 | 100   | 100   | 99.98 |
| ORC NFI 2 CA                               | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 99.76 | 100   | 100   | 99.98 |
| ORC NFI 3 CA                               | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 99.76 | 100   | 100   | 99.98 |
| ORC SSP 3                                  | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 99.76 | 100   | 100   | 99.98 |
| ORC SSP 4                                  | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 99.76 | 100   | 100   | 99.98 |
| STRAC Bridge CA                            | 99.80 | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 99.98 | 99.98 | 100   | 99.98 |
| Symantec SSP G4                            | 100   | 100   | 99.90 | 99.93 | 99.98 | 99.68 | 99.98 | 99.86 | 99.80 | 99.89 | 99.98 | 99.98 | 99.91 |
| TSCP SHA-256 Bridge CA                     | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 99.92 | 99.98 | 100   | 100   | 99.99 |
| USPTO                                      | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 100   | 99.76 | 99.95 | 99.98 | 100   | 99.95 |
</details>

<details>
<summary> Affiliates with 100% availability </summary>

| FPKI Entity                                | 
| ------------------------------------------ |
| CertiPath Bridge CA                        |
| CertiPath Bridge CA - G2                   |
| Department of State AD Root CA             |
| DigiCert Federated ID CA-1 CRL3            |
| DigiCert Federated ID CA-1 CRL4            |
| Entrust NFI Root CA                        |
| Entrust NFI Root CA 2                      |
| Entrust Managed Services Root CA           |
| Exostar Federated Identity Service Root CA |
| FPKI EGTSCA 2014 (long-term CRL)           |
| FPKI FBCA2013 (long-term CRL)              |
| FPKI FBCA2016                              |
| FPKI FCPCA                                 |
| FPKI SHA1FRCA G2                           |
| SAFE Bridge CA 2                           |
| Symantec Class 3 NFI CA                    |
| US Treasury Root CA                        |
| Verizon NFI CT-CSSP-CA                     |
| Verizon SSP Betrusted Production CA        |
| Verizon SSP CA 2                           |
<details>
