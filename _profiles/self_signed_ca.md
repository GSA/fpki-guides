---
layout: default
title: Self-Signed CA Certificate Profile
permalink: /_profiles/selfsignedca/
---

## Worksheet 1: Self-Signed CA Certificate Profile

| **Field** |       |       | **Value**                             |
| :-------- | :---: | :---: | :-------------------------------     |
| Version   |       |       | V3 (2)                                 |
| Serial Number   |       |       | Must be a unique positive number |
| Issuer Signature Algorithm   |       |       |  One of the following: <br>sha256 WithRSAEncryption {1 2 840 113549 1 1 11} <br>ecdsa-with-SHA256 {1.2.840.10045.4.3.2} <br>ecdsa-with-SHA384 {1.2.840.10045.4.3.3} <br>ecdsa-with-SHA512 {1.2.840.10045.4.3.4}   |
| Issuer Distinguished Name   |       |       |  Unique X.500 Issuing CA DN <br>For CAs operating under the Common Policy CP, must use one of the name forms specified in Section 3.1.1 of the Common Policy CP |

