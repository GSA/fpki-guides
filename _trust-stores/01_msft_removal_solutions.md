---
layout: default
navtitle: Microsoft Removal Solutions
title: Microsoft Removal Solutions
collection: trust-stores
permalink: trust-stores/microsoft/
---
In FY 2019, the U.S. Government is removing the Federal Public Key Infrastructure (FPKI) root certificate from the Microsoft certificate store. This change will affect all federal agencies and may have an impact on the following services:  
 
- personal identity verification (PIV) credential authentication to the government networks
- agency web applications implementing client authentication (e.g. PIV authentication)
- authentication to Office 365
- validation of digital signatures
- other applications leveraging the Microsoft certificate store

To mitigate any impact this change may have to your agency network and applications, you will need to manually retrieve the U.S Government root CA certificate, import this certificate into your agency enterprise certificate stores, and ensure this change is propagated throughout the networks. 

The root certificate is available immediately and will remain unchanged. 

{% include alert-warning.html content="All agencies are encouraged to complete this action by December 31, 2018" %} 

## Solutions ##
{% include microsoft_trust_store_installation.md %}