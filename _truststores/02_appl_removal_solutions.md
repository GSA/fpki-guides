---
layout: default
navtitle: Apple Removal Solutions
title: Apple Removal Solutions
collection: truststores
permalink: truststores/apple/
---
In FY 2019, the U.S. Government is removing the Federal Public Key Infrastructure (FPKI) root certificate from the Apple operating system certificate stores (macOS, iOS, and tvOS). This change will affect all federal agency devices using Apple operating systems and may have impact on the following services:  

- personal identity verification (PIV) authentication to the government networks
- agency web applications implementing client authentication (e.g. PIV authentication)
- validation of digital signatures
- other applications leveraging the Apple certificate store

To mitigate any impact this change may have, agencies will have to manually retrieve the U.S Government root CA certificate, import this certificate into the agency enterprise certificate stores, and ensure this change is propagated throughout their networks. The root certificate is available immediately and will remain unchanged. 

{% include alert-warning.html content="All agencies are encouraged to complete this by August 31, 2018." %} 


## Solutions ##
{% include apple_trust_store_installation.md %}
