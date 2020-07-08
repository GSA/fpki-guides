---
layout: default 
title: Federal PKI Activity Report
collection: tools
permalink: tools/fpkiactivityreport/
---

Updated: July 7, 2020

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

The following certificate was issued and published to the FPKI Trust Infrastructure in the last 30 days.

| Affiliate | Subject CA | Issuing CA | SHA-1 Hash | Issued Date |
| --------- | ---------- | ---------- | ------ | ------ |
| SAFE | Federal Bridge CA G4 | SAFE Bridge CA 02 | f63f8b52f872ce8db9ff655a215d36a28fefe673 | 6/24/20 |
| GPO | GPO PCA | Federal Bridge CA G4 | 52db35c57036a5641bb8dd6b552391a7815681dd | 6/25/20 |

The following certificates were removed from the FPKI Trust Infrastructure in the last 30 days.

| Affiliate | Subject CA | Issuing CA | SHA-1 Hash | Expiration Date |
| --------- | ---------- | ---------- | ------ | ------ |
| DigiCert | VeriSign SSP Intermediate CA - G3 | Federal Common Policy CA | e9c8715b871db1d87bb65ba2a5bbfa8000df7861 | 12/9/2020 |
| STRAC | Federal Bridge CA 2016 | STRAC Bridge Root Certification Authority | ee02bdb684ab4714c5f25300c41c5b8f328b0cd9 | 2/19/2022 |
| SAFE | Federal Bridge CA 2016 | SAFE Bridge CA 02 | 540c2ac59f8b5bab1b6adf421a7c50f0901e3d54 | 8/23/2021 |
| WidePoint | Federal Bridge CA 2016 | ORC NFI CA 3 | 739425b5e2fd18cc84efb67415bafacb67e0d3a8 | 7/12/2020 |
| GPO |GPO PCA | Federal Bridge CA G4 | de8171556288add44e16d631653c46adab4dcf79 | 8/3/20 |

The following certificates are planned for a certificate action in the near future, dates to be determined based on availability.

| Affiliate | Subject CA | Issuing CA | SHA-1 Hash | Expiration Date | Action |
| --------- | ---------- | ---------- | ---------- | ---------- | -------- |
| GPO | GPO PCA | Federal Bridge CA 2016 | b8eabb18ed544c9fcfb299bd5d322127e6f48d90 | 8/3/2020 | Revocation |
| SAFE | SAFE Bridge CA 02 | Federal Bridge CA 2016 | 5c654219972bac887bea9f1309eb9e052fb7757e | 6/7/2021 | Revocation |
| GPO | Federal Bridge CA 2016 | GPO PCA | b5d40be94f2e014f510b2964366f1013f41af30e | 8/4/2020 | Revocation |
| Entrust | Federal Bridge CA 2016 | Entrust Managed Services NFI Root CA | 5a186cb0fc1bb48bf3b83f60f86b2703a63a0ded | 11/20/2020 | Revocation |
| FPKIMA | Federal Bridge CA 2016 | Federal Common Policy CA | bd38b7e253cfc5dd278a927f88833fb44c6af03a | 10/28/2020 | Revocation |


## Repository Availability 
Repository availability is an uptime metric for Certificate Revocation List availability, basaed on monitoring by the FPKIMA. The table only contains Certification Authorities directly signed by the Federal Common Policy Root CA, Federal Bridge CA 2016 or Federal Bridge CA G4. A metric of "99" in the table below means the Certificate Revocation List was available for 99% of the given month, in other words, the file was not available for 1% of the month. The last column is the 12-month average.

{% include fpkiar-repo-table.html %}
