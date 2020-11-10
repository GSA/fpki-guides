---
layout: default 
title: Federal PKI Activity Report
collection: tools
permalink: tools/fpkiactivityreport/
---

Updated: November 8, 2020

This report provides a technical and policy compliance status for each Federal Public Key Infrastructure (FPKI) Affiliate.

- [FPKI Affiliate Status Summary](#fpki-affiliate-status-summary)
- [FPKI Management Authority Certificate Activity](#fpkima-certificate-activity)
- [FPKI Repository Availability](#repository-availability)

Resolve issues by contacting one of the teams:  

- Technical issues contact the [FPKIMA Team](mailto:fpki-help@gsa.gov) 
- Certificate Policy issues contact the [Certificate Policy Working Group (CPWG)](mailto:fpkipa_cpwg@listserv.gsa.gov)  

## Federal Agency and Affiliate PKI Status Summary
The operational status for each Federal Agency or affiliate connected to the Federal Common Policy CA (FCPCA) or the Federal Bridge CA (FBCA) is summarized below. The overall operational status identifies issues that affect technical interoperability and non-compliance with applicable Certificate Policies (CP). The status is not used for any other purpose such as ranking or rating.

{% include fpkiar-status-table.html %}

## FPKIMA Certificate Activity
The activity listed in this section is limited to the certificates issued BY or TO the Federal Bridge or Federal Common Policy CA.

The following certificates were issued or published to the FPKI Trust Infrastructure in the last 30 days.

| Affiliate | Subject CA | Issuing CA | SHA-1 Hash | Issued Date |
| --------- | ---------- | ---------- | ------ | ------ |
| Entrust | Entrust Managed Services NFI Root CA | Federal Bridge CA G4 | d45ccedd462a2e2718627eeb6e013fc0a0dc6940 | 10/29/2020 |
| DigiCert | Symantec Class 3 SSP Intermediate CA – G3 | Federal Bridge CA G4 | 2e0140b2b72765ab0f266f57562c3cfd33fd5eb2 | 10/22/2020 |
| FPKIMA | Federal Common Policy CA  | Federal Bridge CA G4 | fb3f5e09cac4fe4066f6c48cce31feca02fea677 |  |
| FPKIMA | Federal Bridge CA G4 | Federal Common Policy CA G2 | 97db351e069964297a82040eb760c9cc1d74ba33 | 10/15/2020 - Issued (not published) |
| FPKIMA | Federal Common Policy CA G2 | Federal Bridge CA G4 | edf2d373f4c56b5186087300638e3c5660c9a090 | 10/15/2020 - Issued (not published) |
| FPKIMA | Federal Common Policy CA G2 | Federal Common Policy CA G2 | 99b4251e2eee05d8292e8397a90165293d116028 | 10/14/2020 - Establish |

The following certificates were removed from the FPKI Trust Infrastructure in the last 30 days.

| Affiliate | Subject CA | Issuing CA | SHA-1 Hash | Expiration Date |
| --------- | ---------- | ---------- | ------ | ------ |
| FPKIMA | Federal Bridge 2016 | Federal Common Policy CA | bd38b7e253cfc5dd278a927f88833fb44c6af03a | 10/13/20 - Revoked |
| FPKIMA | Federal Common Policy CA | Federal Bridge 2016 | 38341412caa3d72ade61022240411444d21b1de9 | 10/13/20 - Revoked |

The following certificates are planned for a certificate action in the near future, dates to be determined based on availability.

| Affiliate | Subject CA | Issuing CA | SHA-1 Hash | Expiration Date | Action |
| --------- | ---------- | ---------- | ---------- | ---------- | -------- |
| SAFE | TBD | Federal Bridge CA G4 | TBD | TBD | Issue - 11/12/2020 |
| USPTO | USPTO_INTR_CA1 | Federal Bridge CA G4 | 978ec2f323452f8f46932b8550663d68b6e96af7 | 12/12/2022 | Re-issue 11/12/2020 |
| DigiCert | DigiCert Federal SSP Intermediate CA - G5 | Federal Common Policy CA G2 | TBD | 12/13/2028 | Issue – 11/18/2020 |
| DigiCert | Symantec SSP Intermediate CA - G4 | Federal Common Policy CA G2 | TBD | 11/12/2024 | Issue – 11/18/2020 |
| Entrust | Entrust Managed Services Root CA | Federal Common Policy CA G2 | TBD | 8/14/2029 | Issue – 11/18/2020 |
| State | U.S. Department of State AD Root CA | Federal Common Policy CA G2 | TBD | 11/18/2023 | Issue – 11/18/2020 |
| Treasury | US Treasury Root CA | Federal Common Policy CA G2 | TBD | 8/14/2022 | Issue – 11/18/20 |
| WidePoint | ORC SSP 4 | Federal Common Policy CA G2 | TBD | 1/21/2024 | Issue – 11/18/20 |
| WidePoint | WidePoint ORC SSP 5 | Federal Common Policy CA G2 | TBD | 11/18/2030 | Issue – 11/18/20 |
| Verizon | Verizon SSP CA A2 | Federal Common Policy CA G2 | TBD | 12/6/2026 | Issue – 11/18/20 |

 

## Repository Availability 
Repository availability is an uptime metric for Certificate Revocation List availability, based on monitoring by the FPKIMA. The table only contains Certification Authorities directly signed by the Federal Common Policy Root CA, Federal Bridge CA 2016 or Federal Bridge CA G4. A metric of "99" in the table below means the Certificate Revocation List was available for 99% of the given month, in other words, the file was not available for 1% of the month. The last column is the 12-month average.

{% include fpkiar-repo-table.html %}
