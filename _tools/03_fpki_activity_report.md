---
layout: default 
title: Federal PKI Activity Report
collection: tools
permalink: tools/fpkiactivityreport/
---

Updated: March 3, 2020

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

The following certificates have been issued and/or published to the FPKI Trust Infrastructure in the last 30 days.

| Affiliate | Subject CA | Issuing CA | SHA-1 Hash | Issued Date |
| --------- | ---------- | ---------- | ------ | ------ |
| CertiPath | CertiPath Bridge CA - G3 | Federal Bridge CA G4 | 77d6cf512ec6054e9ddf37a37d83c4955228e21c | 2/18/2020 |
| CertiPath | Federal Bridge CA G4 | CertiPath Bridge CA - G3 | f01f590afc18706240ebeab75b5c3e6defd67fb0 | 1/20/2020 |
| Exostar | Exostar Federated Identity Service Root CA 2 | Federal Bridge CA G4 | 3930a7c9ce718d0994394feea49a4ada1ebf665d | 2/25/2020 |
| STRAC | Federal Bridge CA G4 | STRAC Bridge Root Certification Authority | c5229a1bc85e3d6a0b75442cd8b4a91182b6fe14 | 1/8/2020 |
| WidePoint | WidePoint NFI Root 2 | Federal Bridge CA G4 | b0b49b217bce1b18fb374dc629d5f100ba9dde49 | 2/4/2020 |


The following certificates have been removed from the FPKI Trust Infrastructure in the last 30 days.

| Affiliate | Subject CA | Issuing CA | SHA-1 Hash | Expiration Date |
| --------- | ---------- | ---------- | ------ | ------ |
| ACES | IdenTrust ACES CA 2 | Federal Bridge CA 2016 | ab973a75fa594f5a97c53e3c50244ae06ca610a8 | 8/21/2021 |
| IdenTrust | IdenTrust Global Common Root CA 1 | Federal Bridge CA 2016 | 052454753d53ff2376737fa7798ec72fab82833c | 8/21/2021 |
| TSCP | TSCP SHA256 Bridge CA | Federal Bridge CA 2016 | 874007002a4a2fff3edcf90eb41adce7c2fb4915 | 8/6/2022 |
| TSCP | Federal Bridge CA 2016 | TSCP SHA256 Bridge CA | 4cb9718730e6b17e8f2b43249820bceeca0780ca | 5/15/2020 |
| CertiPath | Federal Bridge CA 2016 | CertiPath Bridge CA - G2 | fce64c867d1af8e1c1ff5b07a869af5f3e6f823f | 4/30/2020 |

The following certificates are planned for a certificate action in the next four months.

| Affiliate | Subject CA | Issuing CA | SHA-1 Hash | Expiration Date | Action |
| --------- | ---------- | ---------- | ---------- | ---------- | -------- |
| WidePoint | ORC NFI CA 3 | Federal Bridge CA 2016 | b625da07302016d2837023bab94b6e0d76fc2e45 | 7/17/2021 | Revoke 4/1/2020 |
| WidePoint | WidePoint NFI Root 1 | Federal Bridge CA 2016 | 92bc06fe6b27cbe4723f309f34681fc57c8166ce | 8/6/2022 | Revoke 3/17/2020 |
| Exostar | Exostar Federated Identity Service Root CA 2 | Federal Bridge CA 2016 | fbe0def19bfe627f4c28c95a211acd7cc3c7afb2 | 4/30/2020 | Revoke 3/17/2020 |
| GPO | GPO PCA | Federal Bridge CA 2016 | b8eabb18ed544c9fcfb299bd5d322127e6f48d90 | 8/3/2020 | Revoke 3/17/2020 |
| DigiCert | DigiCert Federated ID L3 CA | Federal Bridge CA 2016 | 33514b5b7c0616724d9e174f59d7aa080740b8c3 | 2/28/2022 | Revoke 3/17/2020 |
| DigiCert | Symantec Class 3 SSP Intermediate CA - G3 | Federal Bridge CA 2016 | 914531f5a610914005422e56d6711218133b1048 | 10/25/2020 | Revoke 3/17/2020 |
| Entrust | Entrust Managed Services NFI Root CA | Federal Bridge CA 2016 | 220508b0ab72e2ee3acaa6a9ef5001c87c523ea4 | 11/16/2020 | Revoke 3/17/2020 |
| SAFE | SAFE Bridge CA 02 | Federal Bridge CA 2016 | 5c654219972bac887bea9f1309eb9e052fb7757e | 6/7/2021 | 3/17/2020 |

## Repository Availability 
Repository availability is an uptime metric for Certificate Revocation List availability. The table only contains Certification Authorities directly signed by the Federal Common Policy Root CA, Federal Bridge CA 2016 or Federal Bridge CA G4. A metric of "99" in the table below means the Certificate Revocation List was available for 99% of the given month, in other words, the file was not available for 1% of the month (18 minutes depending on the month). The last column is the 12-month average.

{% include fpkiar-repo-table.html %}
