---
layout: default
title: CITE Participation Guide
collection: tools
permalink: /tools/citeguide
---

# Community Interoperability Test Environment (CITE) Participation Guidance

Prepared By: The FPKI Technical Working Group (TWG)  <br>
An FPKI Policy Authority Working Group

Last Update: January 24th, 2019
 
## Overview

The Federal Public Key Infrastructure (FPKI) has been the subject of various transitions and evolutions during its years of existence. This includes hardware and software upgrades, configuration and architecture changes, implementation of higher complexity keys and algorithms, and implementation of new application capabilities. The impact on continued interoperability throughout these transitions has highlighted the need for an integrated test environment.

The Community Interoperability Test Environment (CITE) was established as the FPKI integrated test environment. CITE provides the FPKI community with a test environment that mimics the production FPKI hierarchy. It is operated by the Federal PKI Management Authority (FPKIMA) and contains a Test Federal Common Policy and Test Federal Bridge. The FPKIMA operated Test Common and Federal Bridge issue test CA certificates to participating Shared Service Providers, Federal Agency PKI, and Non-Federal Affiliates (referred to as FPKI Partners) to perform interoperability and other forms of testing outlined in this document. CITE has two main purposes:

1. Ensure proper functionality of respective system changes prior to deploying them in a production environment.
2. Identify and resolve technical issues across FPKI Partners, and

The FPKI Community can use CITE to evaluate PKI or application changes in a test environment that mimics the production FPKI hierarchy and test potential interoperability issues before those changes are deployed to the FPKI.

## Document Scope

This document serves as the CITE participation guidelines, which provides the terms and conditions of CITE participation. Participation in CITE refers to the establishment of a continuous test environment integrated with the CITE. CITE Participants are certified or cross-certified FPKI Partners.

Modifications to this document and any waivers are controlled by the FPKI TWG.

## Testing Use Cases

CITE is available for testing infrastructure components and Relying Party applications. Additional types of testing may be identified and conducted as necessary and to the extent supported by CITE. CITE should not be used for system stress testing. Infrastructure testing ensures that upgrades, patches, policy changes, new products, and any other changes within the FPKI do not adversely affect interoperability.

Relying Party application testing ensures that application modules operate as intended. In addition, application testing ensures that the system as a whole performs adequately on the platform onto which the application will be deployed, and that it interoperates properly within the FPKI environment (i.e., no adverse affect within the FPKI environment).

Some examples of testing conducted in the CITE are:
1. Interoperability testing between cross-certified Certification Authorities (CAs);
2. Transition testing to new algorithms (e.g., SHA-2, ECC);
3. PIV and PIV-I card interoperability testing;
4. Repository access testing when using content delivery networks, load balancers, or other networking configurations; and
5. Path discovery and/or validation testing for a particular application

When testing is successful in CITE, assurance is gained that the proposed change(s) will operate in the FPKI as intended. When tests fail in the CITE, issues are identified and addressed without FPKI impact.

## Terms and Conditions

To ensure the CITE provides effective services and comprehensive test results, each participating FPKI Partner should emulate its production environment as closely as possible in the CITE. To the extent possible, the test environment should include the same products, logical architecture, and community integration relationships as in the production environment.

The closer the test environment is to the production, the more likely issues can be discovered and resolved early in the development and testing process; thus reducing operational issues in the production environment. For example, if a Federal Agency PKI includes both HTTP and LDAP URIs in its production certificates, both types of URIs should be included in its CITE test certificates, along with operational repositories corresponding to those URIs. Therefore, both methods available in production can be tested in the CITE.

## Technical Specifications

This section details the CITE technical specifications, which apply to all participating parties.

1. The CITE services shall be internet accessible.
2. Repository availability and technical support should be maintained as detailed in the Repository Availability and Technical Support Availability sections.
3. Test environments should emulate the corresponding production environment as closely as possible
a. Each FPKI Partner CA hierarchy must mimic their production environment. An FPKI Partner may limit the number of included Test CAs to one certified or cross-certified CA and either an intermediate and/or issuing CA.
b. All CAs must have the name "Test" in the Distinguished Names (DNs).
c. Internal CA components (e.g. hardware security modules, network zones, or other non-internet accessible components) may not be replicated in the test environment.
d. The CITE repositories should match those in the corresponding production environment as accurately as possible, including operating system versions and patch levels, protocols, and product version and patch levels.
e. All CITE CA certificates, Certificate Revocation Lists (CRLs), and cross-certificates must be publicly accessible in the associated repository.
f. Certificate revocation information should, when applicable, be made available using the same mechanism(s) as in the production environment (e.g., OCSP, CRLs).
4. Participating FPKI Partners should provide expired, revoked, and valid test end-entity certificates, including private keys, for application and relying party tests. The sample certificates should represent each of the certificate policies and certificate types they issue from the corresponding production environment. The sample certificates should be hosted on a publicly accessible directory or website and shared with the FPKI TWG. The website or directory address may be made available through this guide.
5. All CITE CA, cross-certificate, and end-entity certificates should match their production counterparts, as applicable.
a. Test certificates and CRL profiles (including version, key length, extensions, and syntax) shall match that of the production environment.
b. The CITE CRLs may have a significantly longer validation period than is required in production.
c. The CITE CA certificates and cross-certificates shall depict the same trust relationships as in the production environment.
d. Participating FPKI Partners are strongly encouraged to use certificates that assert test certificate policy Object Identifiers (OIDs), when testing with CITE. See Appendix A for test OIDs and their production equivalent.
e. Resource references (such as CRL Distribution Points and Authority Information Access (AIA) points in the CITE certificates must correspond to appropriately functional repositories.

{% include alert-warning.html content="If publicly posting private keys for testing purposes, the corresponding certificates are required to assert test certificate policy OIDs (see [Appendix A](#Appendix-A) for test certificate policy OIDs)." %}

## Scheduled and Unscheduled Testing

Testing and support requests (to include certificate issuance and management requests) should be scheduled and coordinated. This will allow FPKI Partners to appropriately plan and schedule any technical support needed for successful testing.

{% include alert-info.html heading="Testing requests can be submitted to the FPKI TWG at fpki-ttips@listserv.gsa.gov. All testing requests should be submitted ten business days in advance." %}

For unscheduled testing, the CITE and FPKI Partner repositories are internet accessible and available for testing (including vendors and other Relying Parties). Unscheduled testing may be conducted at any time if the below is true.
1. All parties involved agree to provide the necessary support; or
2. The testing party does not need support from any other participating FPKI Partner (in which case, the testing party is willing to accept that services may or may not be available).

## Repository Availability

CITE and FPKI Partner repositories should be available during regular business hours for scheduled and unscheduled testing. The CITE repository services operated by the FPKIMA are internet accessible, operational, and may be available up to 24 hours a day, 7 days a week with the exception of scheduled downtime, non-business hours, and federal holidays. The FPKI Partners will be notified in advance to the extent possible of any downtime and its scheduled duration. Any downtime notices may be posted to the FPKI Guides system notification page at https://fpki.idmanagement.gov/notifications/.

{% include alert-warning.html content="CITE, at a minimum, will provide 20% availability per month. CITE should not be used or relied upon for near-production availability." %}

Each FPKI Partner is encouraged to leave its repository services operational and available 24 hours a day, 7 days a week. However, this is not required and there is no limitation on scheduled downtime during off hours. The below table depicts the repository availability requirements as they apply to the timeframes.

| Days | Time | Description | Repository Availability Requirement |
| ---- | ---- | ----------- | ----------------------------------- |
| Mon - Fri | 0900 – 1700 EST | Business Hours (excluding federal holidays) | CITE and FPKI Partner Repository services should be operational and available, except for scheduled downtime |
| Mon - Fri | 1700 – 0900 EST | Non-Business hours | No requirement |
| Sat - Sun | 0001 - 0000 EST | Non-Business hours | No requirement |

## Technical Support Availability

Participating FPKI Partners shall provide the FPKI TWG with email and phone information for at least two technical points of contact (POCs) – one primary and one backup – to provide technical support when necessary. In lieu of providing individual names for technical POCs, participating FPKI Partners may establish a group or other organizational-based email addresses for communications with the appropriate technical POCs. This information will only be made available (in a controlled manner) to FPKI Partners, FPKI Applicants (if applicable), and vendors supporting the FPKI as needed during testing or troubleshooting. FPKI Partners involved in testing shall provide the issuance, management, and troubleshooting necessary to help resolve any issues.

{% include alert-warning.html content="FPKIMA and FPKI Partner technical support is only available for scheduled testing with any outage resolved on a best effort basis. " %}

## Test Websites

| FPKI Partner | Website URL |
| ------------ | ----------- |
| No test websites established at this time | |
