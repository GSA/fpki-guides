---
layout: default
navtitle: Apple Removal Solutions
title: Apple Removal Solutions
collection: truststores
permalink: truststores/apple/
---
In FY 2019, the U.S. Government is removing the Federal Public Key Infrastructure (FPKI) root certificate from the Apple certificate stores. This change will affect all federal agency devices using Apple operating systems (macOS, iOS, and tvOS) and may have an impact on the following services:  

- Personal Identity Verification (PIV) credential authentication to government networks
- Agency web applications implementing client authentication (e.g., PIV authentication)
- Validation of digital signatures
- Other applications leveraging the Apple certificate stores

The root certificate is available immediately and will remain unchanged. Please follow one of the options under [Solutions](#solutions) to mitigate negative impacts. 
- [Solutions](#solutions)
- [Frequently Asked Questions](#frequently-asked-questions)

{% include alert-warning.html content="All agencies are encouraged to complete this action by August 31, 2018." %} 

<br>
## Solutions ##
{% include apple_trust_store_installation.md %}

## Frequently Asked Questions 
{% include apple_trust_store_removal_faqs.md %}
