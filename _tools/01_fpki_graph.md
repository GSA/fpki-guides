---
layout: default 
title: FPKI Graph
collection: tools
permalink: tools/fpkigraph/
---

The [FPKI graph](https://fpki-graph.fpki-lab.gov/){:target="_blank"} displays the relationships between the Certification Authorities in the Federal PKI ecosystem.   It graphically depicts how each Certification Authority links to another, through cross-certificates or subordinate certificates or bridge CAs.  

Federal Common Policy CA (COMMON) is shown at the center of the graph with rings of dots representing Certification Authorities moving outward.  Each ring represents *one* certificate in a chain from COMMON.

- Click on any dot in the FPKI Graph to see a Certification Authority's inbound and outbound _CA_ certificates
- _Inbound_ means the Certification Authority is signed by the _Inbound_ Certification Authority
- _Outbound_ means the Certification Authority has signed the _Outbound_ Certification Authority
- In the upper left hand of the webpage is a Search function.  You can enter a name of a CA to quickly find it on the graph.
- In the lower left hand corner of the webpage is a Zoom scroll bar.  You can zoom in for closer views and see the CA names.

You cannot download the certificates from the graph.  To download the certificates, you need to use the FPKI Crawler or retrieve the certificates from the Authority Information Access (AIA) or Subject Information Access (SIA) URIs.     

### How the Graph Works
The graph uses information published in the Authority Information Access (AIA) and Subject Information Access (SIA) extensions of each CA certificate.  This is public information and all Certification Authorities in Federal PKI are required to publish and maintain their AIA certificate bundles. 

Each CA certificate and all end entity certificates that has a certificate path (chain) to COMMON will have an AIA extension in its public certificate.  In the AIA extension is a URL where you can retrieve the certificate(s) used to sign that certificate.  Most CA certificates will also have the SIA extension that provides a URL to the CA certificates that have been issued **by** that CA. 

As an example, the SIA for COMMON is http://http.fpki.gov/fcpca/caCertsIssuedByfcpca.p7c. 

- Retrieve the file (.p7c) at this link and open it.  
- You will find a dozen or more certificates that are issued by COMMON as a Root to other intermediate or issuing CAs.  
- The SIA URIs from each of those certificates can then be retrieved to find the next set of signed certificates.

The graph is built using the same tools and code as the [Berkley ICSI SSL Notary](https://notary.icsi.berkeley.edu/trust-tree/){:target="_blank"}. 
