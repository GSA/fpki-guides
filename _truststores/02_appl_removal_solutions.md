---
layout: default
navtitle: Apple Removal Solutions
title: Apple Removal Solutions
collection: truststores
permalink: truststores/apple/
---
In September 2018, the U.S. Government removed the Federal Common Policy Certification Authority (CA) root certificate from the Apple certificate stores (also called *trust stores*). This change affects all federal agency devices using Apple macOS Mojave, iOS 12, or tvOS 12 and may have an impact on the following services:  

- Personal Identity Verification (PIV) credential authentication to government networks
- Agency web applications implementing client authentication (e.g., PIV authentication)
- Validation of digital signatures
- Other applications that leverage the Apple certificate stores

The root certificate is available immediately and will remain unchanged. Please use one of the [Solutions](#solutions) to mitigate negative impacts. 
- [Solutions](#solutions)
- [Frequently Asked Questions](#frequently-asked-questions)

<br>
## Solutions ##
{% include apple_trust_store_installation.md %}

<br>
## Frequently Asked Questions 
{% include apple_trust_store_removal_faqs.md %}
