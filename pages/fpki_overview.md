---
layout: default
title: Federal PKI Overview
permalink: /overview/
---

## Overview

The Federal Public Key Infrastructure encompasses the Certificate Authorities which issue:

1. PIV credentials and person identity certificates 
2. PIV-Interoperable credentials and person identity certificates
3. Other person identity certificates
4. Device identity certificates

The participating Certificate Authorities **and** the Policies, Processes, and Auditing of all the participants is referred to as the **Federal Public Key Infrastructure (FPKI)**

## Example
To give a simple example, we'll explain the PIV certificates.  Although we have many other types of identity certificates, it's easiest to explain with **PIV** since you might have one: 

* Identity certificates are issued and digitally signed by a _Certificate Authority_.  
* The _Certificate Authority_ that issued and digitally signed your PIV certificates is called an _Intermediate Certificate Authority_ because it was issued a certificate by another _Certificate Authority_.  
* This process of issuing and signing continues until there is one  _Certificate Authority_ that is called the _Root Certificate Authority_.

The full process of proving identity when issuing the certificates, auditing the certificate authorities, and the cryptographic protections of the digital signatures establish the basis of Trust. 

![Example of an identity certificate with intermediate and root](../img/certificatechain_small.png){:style="float:center"}

The US Federal Government has also established Trust with other Certificate Authorities which serve business communities, State and Local government communities, and international government communities.

For the US Federal Government Executive branch agencies, there is one Root Certificate Authority named _Federal Common Policy Certificate Authority (COMMON)_, and dozens of Intermediate Certificate Authorities, and Bridged Certificate Authorities.  

*  [A graph of the federal public key infrastructure, including the business communities](https://fpki-graph.fpki-lab.gov/)




<!-- TODO: Reuse same information and visuals from here https://github.com/GSA/piv-guides/blob/staging/pages/certchains.md -->


