---
layout: default 
title: FPKI Graph
collection: tools
permalink: tools/fpkigraph/
---

The [FPKI Graph](https://fpki-graph.fpki-lab.gov/){:target="_blank"} displays the relationships between the Certification Authorities in the Federal PKI (FPKI) ecosystem. It graphically depicts how each Certification Authority links to another, through cross-certificates, subordinate certificates, or Bridge CAs.  

The Federal Common Policy Certificate Authority (CA) (_"COMMON"_) is shown at the center of the Graph, and the rings of dots represent the outbound CAs. 

- Click on any dot in the Graph to see a CA's inbound and outbound _CA_ certificates
- _Inbound_ means the CA certificate is signed by the _Inbound_ CA
- _Outbound_ means the CA has signed the _Outbound_ CA certificate
- See the upper left-hand of the FPKI Graph webpage for the _Search_ function. You can enter a CA name to quickly find it on the Graph.
- In the lower left-hand corner of the webpage is a _Zoom_ scroll bar. You can zoom in for closer views and see the CA names.

You cannot download the certificates from the Graph. To download the certificates, you need to use the [FPKI Crawler](https://fpki-graph.fpki-lab.gov/crawler/){:target="_blank"} or retrieve the certificates from the Authority Information Access (AIA) or Subject Information Access (SIA) URIs. (See below for more information on AIAs and SIAs.)    

### How the FPKI Graph Works

The Graph uses information published in each CA certificate's AIA and SIA extensions. This is public information:&nbsp;&nbsp;all CAs in the FPKI are required to publish and maintain their AIA certificate bundles. <!--But not SIA...?-->

All CA and End Entity certificates that have a certificate path (trust chain) to COMMON will have an AIA extension in their public certificates. An AIA extension contains a URI where you can find the certificate(s) used to sign that CA or End Entity certificate.  

Most CA certificates will also have an SIA extension with a URI to the CA certificates that have been issued **_by that CA_**. For example, you can find the SIA for COMMON at http://http.fpki.gov/fcpca/caCertsIssuedByfcpca.p7c. 

- To use this SIA, retrieve the file (.p7c) using the link above and open it.   
- You will find a dozen or more certificates that are issued by COMMON (Root) to other intermediate or issuing CAs.  
- The SIA URIs from each of these certificates can then be retrieved to find the next set of signed certificates.

### Acknowledgment

The FPKI Graph was built by using the same tools and code as the [Berkley ICSI SSL Notary](https://notary.icsi.berkeley.edu/trust-tree/){:target="_blank"}. 
