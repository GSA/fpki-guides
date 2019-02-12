---
layout: default 
title: Federal PKI Activity Report
collection: tools
permalink: tools/fpkiactivityreport/
---

Updated: February 5, 2019

This report provides a technical and policy compliance status for each Federal Public Key Infrastructure (FPKI) Affiliate.

- [FPKI Affiliate Status Summary](#fpki-affiliate-status-summary)
- [FPKI Management Authority Certificate Activity](#fpkima-certificate-activity)
- [FPKI Repository Availability](#repository-availability)

Resolve issues by contacting one of the teams:  

- Technical issues contact the [FPKIMA Team](mailto:fpkipa-ma@listserv.gsa.gov) 
- Certificate Policy issues contact the [Certificate Policy Working Group (CPWG)](mailto:fpkipa_cpwg@listserv.gsa.gov)  

## Federal Agency and Affiliate PKI Status Summary
The operational status for each Federal Agency or affiliate connected to the Federal Common Policy CA (FCPCA) or the Federal Bridge CA (FBCA) is summarized below. The overall operational status identifies issues that affect technical interoperability and non-compliance with applicable Certificate Policies (CP). The status is not used for any other purpose such as ranking or rating.

{% include fpkiar-status-table.html %}

## FPKIMA Certificate Activity
The activity listed in this section is limited to the certificates issued BY or TO the Federal Bridge or Federal Common Policy CA.

The following certificates were issued **BY** or **TO** the FPKI Trust Infrastructure in the last 30 days.

| Affiliate | Subject CA | Issuing CA | SHA-1 Hash | Issued Date |
| --------- | ---------- | ---------- | ------ | ------ |
| No Activity | | | | |

The following certificates have been removed from the FPKI Trust Infrastructure in the last 30 days.

| Affiliate | Subject CA | Issuing CA | SHA-1 Hash | Expiration Date |
| --------- | ---------- | ---------- | ------ | ------ |
| Verizon | Verizon Betrusted Production SSP CA A1 | Federal Common Policy CA | 0601BBDAD5A28231BC9436750B4F3A484BAB06C3 | 12/09/2020 |

The following certificates are expiring in the next four months and may be re-issued.

| Affiliate | Subject CA | Issuing CA | SHA-1 Hash | Expiration Date |
| --------- | ---------- | ---------- | ------ | ---------- |
| STRAC Bridge | Federal Bridge CA 2016 | STRAC Bridge Root CA | 05B522AD82D4E1781BAB378E838AF4FFBAE0D7C9 | 02/21/2019 |
| STRAC Bridge | STRAC Bridge Root CA | Federal Bridge CA 2016 | E4F6FBD50205A9645037FEF31EFCC83B78F9D68D | 02/21/2019 |
| CertiPath Bridge | Federal Bridge CA 2016 | CertiPath Bridge CA - G2 | 6305CFA15E6E6AD972847251B6930FEA8D6087DB | 04/30/2019 |

## Repository Availability 
Respository availability is an uptime metric for Certificate Revocation List availability. The table only contains Certification Authorities directly certified with the FPKIMA. A metric of "99" in the table below means the Certificate Revocation List was available for 99% of the given month, in other words, the file was not available for 1% of the month (18 minutes depending on the month). The last column is the 12-Month average.

{% include fpkiar-repo-table.html %}
