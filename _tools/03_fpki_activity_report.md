---
layout: default 
title: Federal PKI Activity Report
collection: tools
permalink: tools/fpkiactivityreport/
---

Updated: January 6, 2020

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

The following certificates were issued **BY** or **TO** the FPKI Trust Infrastructure in the last 30 days.

| Affiliate | Subject CA | Issuing CA | SHA-1 Hash | Issued Date |
| --------- | ---------- | ---------- | ---------- | ----------- |
| FPKIMA |	U.S. Department of State AD Root CA	| Federal Common Policy CA	|1590010562a39ad8b1455acf76c03737aebf6	|	12/18/2019 |
| FPKIMA |	Federal Bridge CA G4	| Federal Common Policy CA	| e836f3016bfb6e8df274f27fd8a4a5054517b0f1 | 12/12/2019 |
| FPKIMA	| Federal Common Policy CA	| Federal Bridge CA G4	| 4ac107ee2151f0cb6b54ef350759f7bb51a3fca2 | 12/12/2019 |
| CertiPath |	CertiPath Bridge CA - G2	| Federal Bridge CA G4	| 3bfc4df881682f8846bff486d422025aee7494d8 | 12/12/2019 |
| DigiCert	| DigiCert Federated ID L3 CA	| Federal Bridge CA G4	| 17eaffeebc2f01cf5538b875d6b6b584fa88e27f | 12/16/2019 |
| DoD	| DoD Interoperability Root CA 2	| Federal Bridge CA G4	| ad9f51f8030956e9b85423256911868fd7a370cb	| 12/16/2019 |
| Entrust	| Entrust Managed Services NFI Root CA	| Federal Bridge CA G4	| 313f87f0eb4f8e6c658f5e66f58764282c54fba4 | 12/16/2019 |
| GPO	| GPO PCA	| Federal Bridge CA G4	| de8171556288add44e16d631653c46adab4dcf79 | 12/16/2019 |
| GSA ACES |	IdenTrust ACES CA 2	| Federal Bridge CA G4	| 1e5a60b592dfdbeea3d99a5225abc5e2239b987e | 12/17/2019 |
| IdenTrust	| IdenTrust Global Common Root CA 1	| Federal Bridge CA G4	| 2800ea6ecdeb8efc1cf4c042d712e8622e0cbb1a | 12/17/2019 |
| SAFE	| SAFE Bridge CA 02	| Federal Bridge CA G4	| 600319e6c322229f88e0f434ba96fb0dfd00252e | 12/17/2019 |
| STRAC	| STRAC Bridge Root Certification Authority	| Federal Bridge CA G4	| c6d4d588000e823cfaf2ecf551ebcd3827fd71b6 | 12/17/2019 |
| DigiCert	| Symantec Class 3 SSP Intermediate CA - G3	| Federal Bridge CA G4	| a99a0d6510b59b6dc92270eae1f24fbc21d2dcce | 12/18/2019 |
| TSCP	| TSCP SHA256 Bridge CA	| Federal Bridge CA G4	| db3f9cceb6c6be4c03e0997070d09e7e0e7ee38a | 12/18/2019 |
| USPTO	| USPTO_INTR_CA1	| Federal Bridge CA G4	9| 78ec2f323452f8f46932b8550663d68b6e96af7 | 12/12/2019 |


The following certificates have been removed from the FPKI Trust Infrastructure in the last 30 days.

| Affiliate | Subject CA | Issuing CA | SHA-1 Hash | Expiration Date | Action |
| --------- | ---------- | ---------- | ------ | ------ | ------ |
| CertiPath Bridge	| CertiPath Bridge CA - G2	| Federal Bridge CA 2016	| 4d4392ed9abaa619c97dd4ce668937f5d486f1c9	| 12/15/2019 | Expired |
| USPTO	| USPTO_INTR_CA1	| Federal Bridge CA 2016	| 0704ea9633a45a9a39123bac28be01078c6bfd3a	| 12/15/2019 | Expired |
| USPTO	| Federal Bridge CA 2016	| USPTO_INTR_CA1	| d8d860c11f216ad1fe07e15caf19b3083c83dbba	| 12/19/2019 | Expired |
| FPKIMA	| SHA-1 Federal Root CA G2	| Federal Common Policy CA	| 27c589ff2853bd1949cfa433f36a5e285b2e2c7c	| 12/31/2019 | Expired |
| State	| U.S. Department of State AD Root CA	| Federal Common Policy CA	| c8feb56d0efa3b3b4e2777986304cc19118676a4	| 1/27/2020 | Renewed |
| Treasury	| US Treasury Root CA	| Federal Common Policy CA	| 5a87922b5eaf1d63198a951b2ab6f59b2f16c131	| 8/29/2021 | Renewed |
| CertiPath	| SHA-1 Federal Root CA G2	| CertiPath Bridge CA |	81777b472d6d561d1774d12322f827cab9ff534b	| 12/31/2019 | Expired |
| CertiPath	| CertiPath Bridge CA	| SHA-1 Federal Root CA G2	| 71fb94efbcfc8fffaab00db73e92da36a0e601fa	| 12/29/2019 | Expired |
| DoD	| SHA-1 Federal Root CA G2	| DoD Interoperability Root CA 1	| da2d8ab6ad1a2fe94fbbb8f0e4f887922d2a20bd	| 10/30/2020 | Expired |


The following certificates are planned for a certificate action in the next four months.

| Affiliate | Subject CA | Issuing CA | SHA-1 Hash | Expiration Date | Action |
| --------- | ---------- | ---------- | ---------- | ---------- | -------- |
| Exostar |  Exostar Federated Identity Service Root CA 2 | Federal Bridge CA 2016 | fbe0def19bfe627f4c28c95a211acd7cc3c7afb2 | 4/30/2020 | Re-issue |
| WidePoint | ORC NFI CA 3 | Federal Bridge CA 2016 | b625da07302016d2837023bab94b6e0d76fc2e45 | 7/17/2021 | Revoke due to migration |
| WidePoint	| WidePoint NFI Root 1	| Federal Bridge CA 2016	| 92bc06fe6b27cbe4723f309f34681fc57c8166ce	| 8/6/2022 | Revoke due to migration |

Revocation of the corresponding certificates re-issued with the existing expiration date as part of the migration to Federal Bridge CA G4  will be coordinated with the Affiliate .

## Repository Availability 
Repository availability is an uptime metric for Certificate Revocation List availability. The table only contains Certification Authorities directly certified with the FPKIMA. A metric of "99" in the table below means the Certificate Revocation List was available for 99% of the given month, in other words, the file was not available for 1% of the month (18 minutes depending on the month). The last column is the 12-Month average.

{% include fpkiar-repo-table.html %}
