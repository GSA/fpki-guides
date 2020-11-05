---
layout: default
navtitle: Microsoft Removal Solutions
title: Microsoft Removal Solutions
collection: truststores
permalink: truststores/microsoft/
---
In FY 2019, the U.S. Government is removing the Federal Common Policy Certification Authority (CA) root certificate from the Microsoft certificate store (also called a *trust store*). This change will affect all federal agencies and may have an impact on the following services:  
 
- Personal Identity Verification (PIV) credential authentication to the government networks
- Agency web applications implementing client authentication (e.g., PIV authentication)
- Authentication to Office 365
- Validation of digital signatures
- Other applications leveraging the Microsoft certificate store

To mitigate any impact this change may have on agency networks and applications, you will need to manually retrieve the FCPCA (i.e., COMMON) root certificate (sometimes also called the U.S. Government root CA certificate), import this certificate into agency enterprise certificate stores, and ensure that this change is propagated throughout the networks. 

The root certificate is available immediately and will remain unchanged. Please follow one of the options under [Solutions](#solutions) to mitigate negative impacts. 

- [Solutions](#solutions)
- [Verify Redistribution of COMMON](#verify-redistribution-of-common)
- [Frequently Asked Questions](#frequently-asked-questions)

{% include alert-warning.html content="All agencies are encouraged to complete this action as soon as possible." %} 

<br>
## Solutions
{% include microsoft_trust_store_installation.md %}

<br>
## Verify Redistribution of COMMON
{% include microsoft_trust_store_verification.md %}

<br>
## Frequently Asked Questions
{% include microsoft_trust_store_removal_faqs.md %}
