---
layout: default 
title: Federal PKI Activity Report
collection: tools
permalink: tools/fpkiactivityreport/
---

Updated: August 13, 2019

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

The following certificates have been removed from the FPKI Trust Infrastructure in the last 30 days.

| Affiliate | Subject CA | Issuing CA | SHA-1 Hash | Expiration Date |
| --------- | ---------- | ---------- | ------ | ------ |
| DoD | DoD Interoperability Root CA 2 | Federal Bridge CA 2016 | 949E7F407D71EEE663709D5D2A680460146CE530 | 08/15/2019 |
| TSCP | TSCP SHA256 Bridge CA | Federal Bridge CA 2016 | 949E7F407D71EEE663709D5D2A680460146CE530 | 08/11/2019 |

The following certificates are expiring in the next four months and may be re-issued.

| Affiliate | Subject CA | Issuing CA | SHA-1 Hash | Expiration Date |
| --------- | ---------- | ---------- | ------ | ---------- |
| FPKIMA | Federal Common Policy CA | Federal Bridge CA 2016 | E5AE09B5237F70B25EF517381D781FA0067FE40C | 11/08/2019 |

## Repository Availability 
Respository availability is an uptime metric for Certificate Revocation List availability. The table only contains Certification Authorities directly certified with the FPKIMA. A metric of "99" in the table below means the Certificate Revocation List was available for 99% of the given month, in other words, the file was not available for 1% of the month (18 minutes depending on the month). The last column is the 12-Month average.

{% include fpkiar-repo-table.html %}
