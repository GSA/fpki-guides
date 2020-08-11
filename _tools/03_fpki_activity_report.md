---
layout: default 
title: Federal PKI Activity Report
collection: tools
permalink: tools/fpkiactivityreport/
---

Updated: August 11, 2020

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

No certificates were issued or published to the FPKI Trust Infrastructure in the last 30 days.

| Affiliate | Subject CA | Issuing CA | SHA-1 Hash | Issued Date |
| --------- | ---------- | ---------- | ------ | ------ |
| No activity to report|  |   |   |  |


The following certificates were removed from the FPKI Trust Infrastructure in the last 30 days.

| Affiliate | Subject CA | Issuing CA | SHA-1 Hash | Expiration Date |
| --------- | ---------- | ---------- | ------ | ------ |
| GPO | GPO PCA | Federal Bridge CA 2016 | b8eabb18ed544c9fcfb299bd5d322127e6f48d90 | 8/3/20 |
| GPO | Federal Bridge CA 2016 | GPO PCA | b5d40be94f2e014f510b2964366f1013f41af30e | 8/4/20 |
| SAFE | SAFE Bridge CA 02 | Federal Bridge CA 2016 | 5c654219972bac887bea9f1309eb9e052fb7757e | 6/7/21 |

The following certificates are planned for a certificate action in the near future, dates to be determined based on availability.

| Affiliate | Subject CA | Issuing CA | SHA-1 Hash | Expiration Date | Action |
| --------- | ---------- | ---------- | ---------- | ---------- | -------- |
| ACES | IdenTrust ACES CA 2 | Federal Bridge CA G4 | 1e5a60b592dfdbeea3d99a5225abc5e2239b987e | 8/21/21 | Revoke on 8/18/20 |
| Entrust | Federal Bridge CA 2016 | Entrust Managed Services NFI Root CA | 5a186cb0fc1bb48bf3b83f60f86b2703a63a0ded | 11/20/2020 | Revocation |
| Entrust | Entrust Managed Services NFI Root CA | Federal Bridge CA 2016 | 313f87f0eb4f8e6c658f5e66f58764282c54fba4 | 11/16/20 | Reissue |
| DigiCert | Symantec Class 3 SSP Intermediate CA - G3 | Federal Bridge CA 2016 | a99a0d6510b59b6dc92270eae1f24fbc21d2dcce | 10/25/20 | Remove |
| FPKIMA | Federal Bridge CA 2016 | Federal Common Policy CA | bd38b7e253cfc5dd278a927f88833fb44c6af03a | 10/28/2020 | Revocation |
| FPKIMA | Federal Common Policy CA | Federal Bridge CA 2016 | 38341412caa3d72ade61022240411444d21b1de9 | 10/28/20 | Revocation or removal |
| FPKIMA | Federal Common Policy CA | Federal Bridge CA G4 | 4ac107ee2151f0cb6b54ef350759f7bb51a3fca2 | 12/12/20 | Reissue |



## Repository Availability 
Repository availability is an uptime metric for Certificate Revocation List availability, basaed on monitoring by the FPKIMA. The table only contains Certification Authorities directly signed by the Federal Common Policy Root CA, Federal Bridge CA 2016 or Federal Bridge CA G4. A metric of "99" in the table below means the Certificate Revocation List was available for 99% of the given month, in other words, the file was not available for 1% of the month. The last column is the 12-month average.

{% include fpkiar-repo-table.html %}
