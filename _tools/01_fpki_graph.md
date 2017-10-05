---
layout: default 
title: FPKI Graph
collection: tools
permalink: tools/fpkigraph/
---

The [FPKI Graph](https://fpki-graph.fpki-lab.gov/){:target="_blank"} helps you see the relationships between the CAs and Bridges in the FPKI ecosystem and the cross-certified CAs. It also shows you how each CA certificate validates to the Federal Common Policy Root, also known as COMMON.

Click on any dot in the FPKI Graph to see that CA's inbound and outbound relationships.

The FPKI Graph uses Authority Information Access (AIA) and Subject Information Access (SIA) extensions to link the CA certificates with each other. Each CA that validates to COMMON should have an AIA extension in its public certificate that gives a URL where you can see the certificates issued to the signing CA. If you follow each CA certificate’s AIA chain, it will lead you to the COMMON certificate. Each certificate should also have an SIA extension that gives a link to view the subordinate CA certificates that has been issued.
