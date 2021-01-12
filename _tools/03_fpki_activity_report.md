---
layout: default 
title: Federal PKI Activity Report
collection: tools
permalink: tools/fpkiactivityreport/
---

Updated: January 4, 2021

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

There were no certificates were issued or published to the FPKI Trust Infrastructure in the last 30 days.

| Affiliate | Subject CA | Issuing CA | Serial # & SHA-1 Hash | Issued Date |
| --------- | ---------- | ---------- | --------------------- | ----------- |
| N/A | - | - | - | - |

The following certificates were removed from the FPKI Trust Infrastructure in the last 30 days.

| Affiliate | Subject CA | Issuing CA | Serial # & SHA-1 Hash | Action Date |
| --------- | ---------- | ---------- | --------------------- | ----------- |
| USPTO | USPTO_INTR_CA1 | Federal Bridge CA G4 | Serial: 189a971b30cc79b60b35e21789db1c479cd949f0 Hash: 978ec2f323452f8f46932b8550663d68b6e96af7 | 12/15/2020 |


The following certificates are planned for a certificate action in the near future, dates to be determined based on availability.

| Affiliate | Subject CA | Issuing CA | Serial # & SHA-1 Hash | Expiration Date | Action |
| --------- | ---------- | ---------- | --------------------- | --------------- | ------ |
| N/A | - | - | - | - | - |

 

## Repository Availability 
Repository availability is an uptime metric for Certificate Revocation List availability, based on monitoring by the FPKIMA. The table only contains Certification Authorities directly signed by the Federal Common Policy Root CA, Federal Bridge CA 2016 or Federal Bridge CA G4. A metric of "99" in the table below means the Certificate Revocation List was available for 99% of the given month, in other words, the file was not available for 1% of the month. The last column is the 12-month average.

{% include fpkiar-repo-table.html %}
