---
layout: default 
title: Federal PKI Activity Report
collection: tools
permalink: tools/fpkiactivityreport/
redirect_to: https://playbooks.idmanagement.gov/fpki/tools/fpkiar/
---

Updated: March 1, 2021

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

| Affiliate | Subject CA | Issuing CA | Serial # & SHA-1 Hash | Issued Date |
| --------- | ---------- | ---------- | --------------------- | ----------- |
| FPKIMA | Federal Bridge CA G4	| Federal Common Policy CA G2 | Serial: 234200beaa6dada658f53b403f418295290cae82 Hash: 97db351e069964297a82040eb760c9cc1d74ba33 | Issued on 10/15/20, Published 2/2/21 |
| FPKIMA | Federal Common Policy CA G2 | Federal Bridge CA G4 | Serial: 129217e6c9126fd816babe02d9192ae2b519e231 Hash: edf2d373f4c56b5186087300638e3c5660c9a090 | Issued on 10/15/20, Published 2/2/21 |

The following certificates were removed from the FPKI Trust Infrastructure in the last 30 days.

| Affiliate | Subject CA | Issuing CA | Serial # & SHA-1 Hash | Action Date |
| --------- | ---------- | ---------- | --------------------- | ----------- |
| N/A | - | - | - | - |


The following certificates are planned for a certificate action in the near future, dates to be determined based on availability.

| Affiliate | Subject CA | Issuing CA | Serial # & SHA-1 Hash | Expiration Date | Action |
| --------- | ---------- | ---------- | --------------------- | --------------- | ------ |
| FPKIMA | Federal Bridge CA G4 | Federal Common Policy CA | Serial: 7994 Hash: e836f3016bfb6e8df274f27fd8a4a5054517b0f1 |	12/12/21 | Revocation |
| FPKIMA | Federal Common Policy CA | Federal Bridge CA G4 | Serial: 198ef944a16068e7c0b85cd2f5b2cfb5de8b2174 Hash: fb3f5e09cac4fe4066f6c48cce31feca02fea677 | 6/30/21 | Revocation |

 

## Repository Availability 
Repository availability is an uptime metric for Certificate Revocation List availability, based on monitoring by the FPKIMA. The table only contains Certification Authorities directly signed by the Federal Common Policy Root CA, Federal Bridge CA 2016 or Federal Bridge CA G4. A metric of "99" in the table below means the Certificate Revocation List was available for 99% of the given month, in other words, the file was not available for 1% of the month. The last column is the 12-month average.

{% include fpkiar-repo-table.html %}
