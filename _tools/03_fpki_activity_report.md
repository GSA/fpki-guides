---
layout: default 
title: Federal PKI Activity Report
collection: tools
permalink: tools/fpkiactivityreport/
---

Updated: September 6, 2019

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
| --------- | ---------- | ---------- | ------ | ------ |
| TSCP | TSCP SHA256 Bridge CA | Federal Bridge CA 2016 | 874007002A4A2FFF3EDCF90EB41ADCE7C2FB4915 | 08/06/2019 |
| DoD | DoD Interoperability Root CA 2 | Federal Bridge CA 2016 | 73050D5B629CF6286BE972AFDDFA31D2864B4F35 | 08/06/2019 |
| WidePoint | WidePoint NFI Root 1 | Federal Bridge CA 2016 | 92BC06FE6B27CBE4723F309F34681FC57C8166CE | 08/06/2019 |
| Treasury | US Treasury Root CA | Federal Common Policy CA | 48CE02A99AE2CC4f790F2989AA153ED565B7E4D2 | 08/14/2019 |
| Entrust | Entrust Managed Services Root CA | Federal Common Policy CA | A09655170C87D0FBFE0328B99A7BAF4A1CF0B5D9 | 08/14/2019 |

The following certificates have been removed from the FPKI Trust Infrastructure in the last 30 days.

| Affiliate | Subject CA | Issuing CA | SHA-1 Hash | Expiration Date |
| --------- | ---------- | ---------- | ------ | ------ |
| Verizon | CT-CSSP-CA-A1 | Federal Bridge CA 2016 | 687066BCE56B6E20AEA0C605B9B6679342269F21 | Revoked - 08/06/2019 |
| Verizon | Federal Bridge CA 2016 | CT-CSSP-CA-A1 | 73DCCF6418522B69A50A96721AEB96441E6EF3C0 | Revoked - 08/08/2019 |
| TSCP | TSCP SHA256 Bridge CA | Federal Bridge CA 2016 | 949E7F407D71EEE663709D5D2A680460146CE530 | Expired - 08/11/2019 |
| WidePoint | Federal Bridge CA 2016 | ORC NFI CA 2 | E5B1E78672EEA3702A7C713B63D238DB1EBC601B | Revoked - 08/14/2019 |
| WidePoint | ORC NFI CA 2 | Federal Bridge CA 2016 | B055C6EE104E01EB688C8FB4F87CF77CA376AFDB | Revoked - 08/14/2019 |
| DoD | DoD Interoperability Root CA 2 | Federal Bridge CA 2016 | 949E7F407D71EEE663709D5D2A680460146CE530 | Expired - 08/15/2019 |

The following certificates are expiring or a planned certificate activity in the next four months and may be re-issued.

| Affiliate | Subject CA | Issuing CA | SHA-1 Hash | Expiration Date | Action |
| --------- | ---------- | ---------- | ---------- | ---------- | -------- |
| FPKIMA | Federal Common Policy CA | Federal Bridge CA 2016 | E5AE09B5237F70B25EF517381D781FA0067FE40C | 11/08/2019 | Under PA Decision to re-issue |
| FPKIMA | Federal Bridge CA 2016 | Federal Common Policy CA | e5ae09b5237f70b25ef517381d781fa0067fe40c | 11/08/2019 | Re-issue |
| FPKIMA | SHA-1 Federal Root CA G2 | Federal Common Policy CA | 27c589ff2853bd1949cfa433f36a5e285b2e2c7c | 12/31/2019 | Let expire |
| CertiPath Bridge | CertiPath Bridge CA - G2 | Federal Bridge CA 2016 | 4d4392ed9abaa619c97dd4ce668937f5d486f1c9 | 12/15/2019 | Re-issue |
| USPTO | USPTO_INTR_CA1 | Federal Bridge CA 2016 | 0704ea9633a45a9a39123bac28be01078c6bfd3a | 12/15/2019 | Re-issue |
| GSA ACES | ORC ACES 4 | Federal Bridge CA 2016 | 5573fcc5e6ffff2b710181accaa2efdadb8f0f4e | 8/21/2020 | Revoke due to decommission |
| WidePoint | ORC NFI CA 3 | Federal Bridge CA 2016 | b625da07302016d2837023bab94b6e0d76fc2e45 | 7/17/2021 | Revoke due to migration |

The following certificates will be re-issued with the existing expiration date as part of the Federal Bridge CA 2019 re-key. This migration will occur between November 2019 - February 2020. Once a modified certificate is issued, the below certificates will be revoked.

| Affiliate | Subject CA | Issuing CA | SHA-1 Hash |
| --------- | ---------- | ---------- | ---------- |
| GPO PCA | GPO PCA | Federal Bridge CA 2016 | b8eabb18ed544c9fcfb299bd5d322127e6f48d90 |
| DigiCert | Symantec Class 3 SSP Intermediate CA - G3 | Federal Bridge CA 2016 | 914531f5a610914005422e56d6711218133b1048 |
| Entrust | Entrust Managed Services NFI Root CA | Federal Bridge CA 2016 | 220508b0ab72e2ee3acaa6a9ef5001c87c523ea4 |
| SAFE BioPharma Bridge | SAFE Bridge CA 02 | Federal Bridge CA 2016 | 5c654219972bac887bea9f1309eb9e052fb7757e |
| GSA ACES | IdenTrust ACES CA 2 | Federal Bridge CA 2016 | ab973a75fa594f5a97c53e3c50244ae06ca610a8 |
| IdenTrust | IdenTrust Global Common Root CA 1 | Federal Bridge CA 2016 | 052454753d53ff2376737fa7798ec72fab82833c |
| STRAC Bridge | STRAC Bridge Root Certification Authority | Federal Bridge CA 2016 | 1f92eb3654f60a9092811f7948afff45c09a6ca9 |
| DigiCert | DigiCert Federated ID L3 CA | Federal Bridge CA 2016 | 33514b5b7c0616724d9e174f59d7aa080740b8c3 |
| TSCP Bridge | TSCP SHA256 Bridge CA | Federal Bridge CA 2016 | 874007002a4a2fff3edcf90eb41adce7c2fb4915 |
| WidePoint | WidePoint NFI Root 1 | Federal Bridge CA 2016 | 92bc06fe6b27cbe4723f309f34681fc57c8166ce |
| DoD | DoD Interoperability Root CA 2 | Federal Bridge CA 2016 | 73050d5b629cf6286be972afddfa31d2864b4f35 |


## Repository Availability 
Respository availability is an uptime metric for Certificate Revocation List availability. The table only contains Certification Authorities directly certified with the FPKIMA. A metric of "99" in the table below means the Certificate Revocation List was available for 99% of the given month, in other words, the file was not available for 1% of the month (18 minutes depending on the month). The last column is the 12-Month average.

{% include fpkiar-repo-table.html %}
