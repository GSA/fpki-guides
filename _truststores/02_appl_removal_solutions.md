---
layout: default
navtitle: Apple Removal Solutions
title: Apple Removal Solutions
collection: truststores
permalink: truststores/apple/
---
In FY 2019, the U.S. Government is removing the Federal Public Key Infrastructure (FPKI) root certificate from the Apple operating system certificate stores (macOS, iOS, and tvOS). This change will affect all federal agency devices using Apple operating systems and may have an impact on the following services:  

- Personal Identity Verification (PIV) authentication to government networks
- Agency web applications implementing client authentication (e.g., PIV authentication)
- Validation of digital signatures
- Other applications leveraging the Apple certificate store

To mitigate any impact this change may have, agencies will have to manually retrieve the U.S. Government root CA certificate, import this certificate into agency enterprise certificate stores, and ensure that this change is propagated throughout the networks. The root certificate is available immediately and will remain unchanged. 

{% include alert-warning.html content="All agencies are encouraged to complete this action by August 31, 2018." %} 


## Solutions ##
{% include apple_trust_store_installation.md %}
