<!---
layout: default 
title: FPKI Crawler
collection: tools
permalink: tools/fpkicrawler/
---

When you look deeply into<!--Deeply is grammatical. What about "study"?--> the Certification Authority relationships in the Federal PKI, it's clear that they are complex.

You might need to understand their relationships more fully, analyze certificates, or download them. How can you see these relationships? Where do you get these certificates? Which ones you need?

The FPKI Crawler can help you sort it all out. The [FPKI Crawler](https://fpki-graph.fpki-lab.gov/crawler/){:target="_blank"} offers output files in CSV, HTML, XML, and .p7b formats to help you understand and administer the certificates. Information on the files provided by the FPKI Crawler includes:
 
* [Public Certificates for Analysis and Reporting](#public-certificates-for-analysis-and-reporting)
* [Public Certificates for Download](#public-certificates-for-download)

## Public Certificates for Analysis and Reporting

#### 1. Federal Common Policy Tree (_FederalCommonPolicyTree.csv_)

The _FederalCommonPolicyTree.csv_ gives you certificate data on:

* All CAs that validate to COMMON
* All cross-certified CAs 

This file will help you to understand the relationships that exist between each CA and COMMON (similar to the FPKI Graph's visual data).<!--Should we add a link to the Graph here?-->

#### 2. All Certificates (_AIACrawler.html_)

The _AIACrawler.html_ file gives you a list of all CA certificates found by the FPKI Crawler (grouped into four sections):

* **Certificates with Validated AIA Chains &mdash;** All CA certificates with validated paths to COMMON and the certificate policies to which they validate. 
* **Certificates with Validated Chains Other than AIA &mdash;** All CA certificates with validated paths to COMMON and the certificate policies to which they validate.   
* **Certificates with No Validated Chains &mdash;** All CA certificates with no validated path to COMMON. This file lists only certificate information. These tend to be cross-certificates issued to FPKI CAs that allow a partner PKI to use its own Root CA as the trust anchor instead of COMMON.
* **All Certificates &mdash;** All CA certificates in the FPKI.

* You can click on any CA certificate to see _Cert_ and _Issuer_ data and status. For example:

   ```
  Issuer CN=Federal Bridge CA 2016,OU=FPKI,O=U.S. Government,C=US serial# 0x03F42  status GOOD
   ```
#### 3. Certificates with AIA Information (_allcertsfoundaturi.xml_)

The _allcertsfoundaturi.xml_ file gives you a list of all AIA URLs and any extraction errors found.

#### 4. Certificates with AIA Information (_allcertsfoundaturi.csv_)

The _allcertsfoundaturi.csv_ file gives you a list of all AIA URLs, CA certificates, and extraction errors found. 

* The key columns include:&nbsp;&nbsp;Error (if any), Certificate DN, Issuer (DN), Serial Number, Not Before, Sig Alg (Signing Algorithm), Subject Key, and Authority Key.

#### 5. All Certificates File (_allcerts.csv_)

The _allcerts.csv_ file gives you a list of all CA certificates found, along with detailed certificate data. This file is helpful if you want to analyze certificates. 

* The key columns include:&nbsp;&nbsp;Subject DN, Issuer DN, (Certificate) Group, Serial (Number), Sig Alg (Signing Algorithm) (typically SHA1 or SHA-256), Subject Key, and Authority Key.
* If found in a certificate, the Online Certificate Status Protocol (OCSP) and the Certificate Revocation List (CRL) Distribution Point (DP) URLs will be listed.
* The AIA and SIA URLs for Object Identifiers (OIDs) will be listed. The OIDs are id-ad-caIssuers, id-ad-caRepository, and id-ad-timeStamping.

## Public Certificates for Download

The FPKI Crawler gives you all CA public certificates found for download.

{% include alert-warning.html heading = "Do not import certificates into a Trust Store before analysis!" content="These certificates are available for analysis only. Please determine all applicable trust relationships before importing any certificate." %}

#### 1. All CA Certificates in a Single File (_CACertificatesValidatingToCommonPolicy.p7b_)

_CACertificatesValidatingToCommonPolicy.p7b_ contains all CA certificates found. You can easily sort these by expiration date, issuer, or subject. 

#### 2. All CA Certificates Broken Down into Eight Files (_CACertificatesValidatingToCommonPolicy_1.p7b_ through _8.p7b_)

_CACertificatesValidatingToCommonPolicy_1.p7b_ through _CACertificatesValidatingToCommonPolicy_8.p7b_ contain all CA certificates found, broken down into eight files for easier analysis and download.

#### 3. Certificate Files Grouped by Type and Organization (Additional _.p7b_ Certificates)

For these _.p7b_ files, the CA certificates are grouped by _Type_ and _Organization_ into two files: 

* All CA certificates found
* All CA certificates found, plus any other certificate needed to validate to COMMON.

For example:&nbsp;&nbsp;the _US_Government_VA.p7b_ (U.S. Department of Veterans Affairs) contains two CA certificates issued by the Verizon Federal Shared Service Provider CA. To validate their paths to COMMON requires a Betrusted cross-certificate, so the _US_Government_VA_FullPath.p7b_ contains the two CA certificates, plus the Betrusted cross-certificate.
