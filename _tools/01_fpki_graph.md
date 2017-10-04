---
layout: default 
title: FPKI Graph
collection: tools
permalink: tools/fpkigraph/
---

The FPKI Graph {:target="_blank"} helps you see the relationships between the CAs and Bridges in the FPKI ecosystem and the cross-certified CAs. It also shows you how each CA certificate validates to the Root, COMMON.

Click on any dot in the FPKI Graph to see that CA's inbound and outbound relationships.

The FPKI Graph uses Authority Information Access (AIA) and Subject Information Access (SIA) extensions to find all CA certificates. Each CA that validates to COMMON should have an AIA extension in its public certificate that gives a URL where you can see the certificates issued to the signing CA. If you follow each CA certificate’s AIA chain, it will lead you to the COMMON-certified certificate. Each CA should also have an SIA extension in its public certificate that gives a URL where you can see all CA certificates that it has issued.
