---
layout: default
title: Public Key Infrastructure 
permalink: /pki/
collection: pkifundamentals
---
## Public Key Infrastructure

Public Key Infrastructure topics are to help program managers and engineers understand what a Public Key Infrastructure is, and what the Federal Public Key Infrastructure contains. 

We are migrating topics and content developed by the US Government and engineers, from sources that currently exists in word, pdf and other formats.  

Examples of topics we're working on:

* What is Public Key Infrastructure?
* Why Use PKI?
* What are the components of the Federal PKI?
* What is a digital signature?
* What is encryption?
* What are the Different Types of Certificates and their Purpose?

We invite you to contribute or send in links to US Government sites or pages with information we can share! 
 
[Contribute]({{ site.baseurl }}/contribute/) to this effort or open an [Issue]({{site.github.repository_url}}/issues) to make a suggestion.

### **Certificate Policy**

The Federal PKI helps Relying Parties make well-informed decisions (like what PKI credentials to accept for what purposes) via best-practice technical, operating, and policy requirements.  Much of that material directly addresses two essential PKI elements: 

- **Certificates**; and 
- **Certificate Revocation Lists** (almost always referred to as CRLs)

The degree to which a Relying Party can rely on (trust) a certificate for any purpose depends upon the policies associated with that certificate. Then,   as long as a certificate is valid (not expired, not revoked, legitimate CA signature), the certificate can be relied upon and used for its intended purpose(s). 

> The more strict the certificate policy associated with the certificate, the more a Relying Party can trust the certificate.  

### **Public Key Certificates**

Public key certificates are signed data structures that bind attributes of an entity (e.g., person or device) with its corresponding public key. Certificates are signed by a recognized and trustworthy CA, thus providing a guarantee that a specific public key belongs to a specific entity, and that the entity possesses the corresponding private key as well.

Certificates can be used to perform various tasks such as authentication, digital signing, and encryption as specified in the certificate.
