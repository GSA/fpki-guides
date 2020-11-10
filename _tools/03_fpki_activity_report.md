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
| Entrust | Entrust Managed Services NFI Root CA | Federal Bridge CA G4 | d45ccedd462a2e2718627eeb6e013fc0a0dc6940 | 10/29/20 |
| DigiCert | Symantec Class 3 SSP Intermediate CA – G3 | Federal Bridge CA G4 | 2e0140b2b72765ab0f266f57562c3cfd33fd5eb2 | 10/23/20 |
| FPKIMA | Federal Bridge CA G4 | Federal Common Policy CA G2 | 97db351e069964297a82040eb760c9cc1d74ba33 | 10/15/20 |
| FPKIMA | Federal Common Policy CA G2 | Federal Common Policy CA G2 | 99b4251e2eee05d8292e8397a90165293d116028 | 10/14/20 - Establish |
| Exostar | Exostar Federated Identity Service Signing CA 4 | Exostar Federated Identity Service Root CA 2 | d5f180db664ec80be77d9bfd5484a50cece5a58d | 10/13/20 |


The following certificates were removed from the FPKI Trust Infrastructure in the last 30 days.

| Affiliate | Subject CA | Issuing CA | SHA-1 Hash | Expiration Date |
| --------- | ---------- | ---------- | ------ | ------ |
| FPKIMA | Federal Bridge 2016 | Federal Common Policy CA | bd38b7e253cfc5dd278a927f88833fb44c6af03a | 10/13/20 - Revoked |
| FPKIMA | Federal Common Policy CA | Federal Bridge 2016 | 38341412caa3d72ade61022240411444d21b1de9 | 10/13/20 - Revoked |
| DigiCert | Symantec Class 3 SSP Intermediate CA - G3 | Federal Bridge CA 2016 | a99a0d6510b59b6dc92270eae1f24fbc21d2dcce | 10/25/20 - Remove |

The following certificates are planned for a certificate action in the near future, dates to be determined based on availability.

| Affiliate | Subject CA | Issuing CA | SHA-1 Hash | Expiration Date | Action |
| --------- | ---------- | ---------- | ---------- | ---------- | -------- |
| FPKIMA | Federal Common Policy CA | Federal Bridge CA G4 | 4ac107ee2151f0cb6b54ef350759f7bb51a3fca2 | 12/12/20 | Reissue |




## Repository Availability 
Repository availability is an uptime metric for Certificate Revocation List availability, basaed on monitoring by the FPKIMA. The table only contains Certification Authorities directly signed by the Federal Common Policy Root CA, Federal Bridge CA 2016 or Federal Bridge CA G4. A metric of "99" in the table below means the Certificate Revocation List was available for 99% of the given month, in other words, the file was not available for 1% of the month. The last column is the 12-month average.

{% include fpkiar-repo-table.html %}
