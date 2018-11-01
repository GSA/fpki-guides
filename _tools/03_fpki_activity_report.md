---
layout: default 
title: Federal PKI Activity Report
collection: tools
permalink: tools/fpkiactivityreport/
---

Updated: October 2, 2018

This report provides a technical and policy compliance status for each Federal Public Key Infrastructure (FPKI) Affiliate.

- [FPKI Affiliate Status Summary](#fpki-affiliate-status-summary)
- [FPKI Management Authority Certificate Activity](#fpkima-certificate-activity)
- [FPKI Repository Availability](#repository-availability)

Resolve issues by contacting one of the teams:  

- Technical issues contact the [FPKIMA Team](mailto:fpkipa-ma@listserv.gsa.gov) 
- Certificate Policy issues contact the [Certificate Policy Working Group (CPWG)](mailto:fpkipa_cpwg@listserv.gsa.gov)  


## FPKI Affiliate Status Summary
The operational status for each FPKI Affiliate is summarized for each affiliate connected to the Federal Common Policy CA (FCPCA) or the Federal Bridge CA (FBCA). The overall operational status identifies issues that affect technical interoperability and non-compliance with applicable Certificate Policies (CP). The status is not used for any other purpose such as ranking or rating. 

| Federal Agency or Affiliate CA | FPKIMA CA | Status |
| ------------------------------ | --------- | ------ |
| CertiPath Bridge | FBCA | No Issues |
| Department of Defense | FBCA | No Issues |
| DigiCert/Symantec/Verisign NFI | FBCA | No Issues |
| Entrust Managed Services NFI | FBCA | No Issues |
| Exostar NFI | FBCA | No Issues |
| Government Printing Office | FBCA | No Issues |
| GSA Access Certificate for Electronic Services (GSA ACES) | FBCA | No Issues |
| IdenTrust NFI | FBCA | No Issues |
| WidePoint/ORC NFI | FBCA | No Issues |
| SAFE BioPharma Bridge | FBCA | No Issues |
| STRAC Bridge | FBCA | No Issues |
| TSCP Bridge | FBCA | No Issues |
| US Patent and Trademark Office (PTO) | FBCA | No Issues |
| Verizon Business NFI | FBCA | No Issues |
| Department of State | FCPCA | No Issues |
| DigiCert/Symantec/Verisign SSP | FCPCA | No Issues |
| Entrust Managed Services SSP | FCPCA | No Issues |
| WidePoint/ORC SSP | FCPCA | No Issues |
| US Treasury SSP | FCPCA | No Issues |
| Verizon Business SSP | FCPCA | No Issues |

**FPKI Affiliate Status Legend**

- _Significant_: Technical and/or policy issues that will adversely affect interoperability   
- _Moderate_: Technical and/or policy issues that may or may not adversely affect interoperability  
- _No Impact_: Technical and/or policy issues that will not adversely affect interoperability   
- _No Issues_: No technical or policy issues were found in the last thirty days  


## FPKIMA Certificate Activity
The activity listed in this section is limited to the certificates issued BY or TO the Federal Bridge or Federal Common Policy CA.

The following certificates were issued **BY** or **TO** the FPKI Trust Infrastructure in the last 30 days.

| Affiliate | Subject CA | Issuing CA | SHA-1 Hash | Issued Date |
| --------- | ---------- | ---------- | ------ | ------ |
| No Activity | | | | |

The following certificates have been removed from the FPKI Trust Infrastructure in the last 30 days.

| Affiliate | Subject CA | Issuing CA | SHA-1 Hash | Expiration Date |
| --------- | ---------- | ---------- | ------ | ------ |
| IdenTrust NFI | IdenTrust Global Common Root CA 1 | Federal Bridge CA 2016 | 8f 0c 18 76 9e 9e 6d 48 c5 8e 41 8e 9b d5 79 84 a7 ae 49 f4 | 09/25/2018 |
| US Treasury | US Treasury Root CA | Federal Common Policy CA | 08 06 df cc EAea a0 2d da 83 60 Aac 0d 2c 81 7e 3c 5c f5 dd 05 | 04/18/2019 |

The following certificates are expiring in the next four months and may be re-issued.

| Affiliate | Subject CA | Issuing CA | SHA-1 Hash | Expiration Date |
| --------- | ---------- | ---------- | ------ | ---------- |
| No Activity | | | | |

## Repository Availability 
This is the uptime of FPKIMA and FPKI Affiliate HTTP repositories by a monthly percentage.  For example, 100 is 100% or no downtwime for that month.

{% include fpkiar-repo-table.html %}
