---
layout: default 
title: Federal PKI Activity Report
collection: tools
permalink: tools/fpkiactivityreport/
---

Updated: May 12, 2020

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

No certificates were issued and/or published to the FPKI Trust Infrastructure in the last 30 days.

| Affiliate | Subject CA | Issuing CA | SHA-1 Hash | Issued Date |
| --------- | ---------- | ---------- | ------ | ------ |
| No Activity | |  |  |  |


No certificates were removed from the FPKI Trust Infrastructure in the last 30 days.

| Affiliate | Subject CA | Issuing CA | SHA-1 Hash | Expiration Date |
| --------- | ---------- | ---------- | ------ | ------ |
| No Activity |  |  |  |  |


The following certificates are planned for a certificate action in the near future, dates to be determined based on availability.

| Affiliate | Subject CA | Issuing CA | SHA-1 Hash | Expiration Date | Action |
| --------- | ---------- | ---------- | ---------- | ---------- | -------- |
| DigiCert | DigiCert Class 3 SSP Intermediate CA - G4 | Federal Bridge CA G4 | TBD | TBD | Issue |
| WidePoint | ORC NFI CA 3 | Federal Bridge CA 2016 | b625da07302016d2837023bab94b6e0d76fc2e45 | 7/17/2021 | Revocation |
| WidePoint | WidePoint NFI Root 1 | Federal Bridge CA 2016 | 92bc06fe6b27cbe4723f309f34681fc57c8166ce | 8/6/2022 | Revocation |
| GPO | GPO PCA | Federal Bridge CA 2016 | b8eabb18ed544c9fcfb299bd5d322127e6f48d90 | 8/3/2020 | Revocation |
| DigiCert | DigiCert Federated ID L3 CA | Federal Bridge CA 2016 | 33514b5b7c0616724d9e174f59d7aa080740b8c3 | 2/28/2022 | Revocation |
| DigiCert | Symantec Class 3 SSP Intermediate CA - G3 | Federal Bridge CA 2016 | 914531f5a610914005422e56d6711218133b1048 | 10/25/2020 | Revocation |
| DigiCert | VeriSign SSP Intermediate CA - G3 | Federal Common Policy CA | e9c8715b871db1d87bb65ba2a5bbfa8000df7861 | 12/9/2020 | Revocation|
| Entrust | Entrust Managed Services NFI Root CA | Federal Bridge CA 2016 | 220508b0ab72e2ee3acaa6a9ef5001c87c523ea4 | 11/16/2020 | Revocation |
| SAFE | SAFE Bridge CA 02 | Federal Bridge CA 2016 | 5c654219972bac887bea9f1309eb9e052fb7757e | 6/7/2021 | Revocation |
| DoD | Federal Bridge CA 2016 | DoD Interoperability Root CA 2 | be06084e8922a5ea91056e65cbf4b627e7e001fe | 5/9/2020 | Removal |
| DoD | DoD Interoperability Root CA 2 | Federal Bridge CA 2016 | 73050d5b629cf6286be972afddfa31d2864b4f35 | 8/6/2022 | Revocation |
| STRAC | STRAC Bridge Root Certification Authority | Federal Bridge CA 2016 | 1f92eb3654f60a9092811f7948afff45c09a6ca9 | 2/14/2022 | Revocation |

## Repository Availability 
Repository availability is an uptime metric for Certificate Revocation List availability. The table only contains Certification Authorities directly signed by the Federal Common Policy Root CA, Federal Bridge CA 2016 or Federal Bridge CA G4. A metric of "99" in the table below means the Certificate Revocation List was available for 99% of the given month, in other words, the file was not available for 1% of the month (18 minutes depending on the month). The last column is the 12-month average.

{% include fpkiar-repo-table.html %}
