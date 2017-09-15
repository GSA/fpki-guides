---
layout: default 
title: How To Use the FPKI Crawler
permalink: /fpkicrawler/
---

When you delve deeply into Certification Authority relationships in the FPKI, it's clear that they are complex!

You might need to understand their relationships more fully, analyze certificates, or download them. How can you see these relationships? Where do you get these certificates? Which ones you need?

The FPKI Crawler can help you sort it all out.
 
* [FPKI Graph](#fpki-graph)
* [FPKI Crawler Outputs](#fpki-crawler-outputs)
  * [Public Certificates for Analysis and Reporting](#public-certificates-for-analysis-and-reporting)
  * [Public Certificates for Download](#public-certificates-for-download)

## FPKI Graph

The FPKI Crawler provides an [FPKI Graph](https://fpki-graph.fpki-lab.gov/){:target="_blank"} to help you see the relationships between the CAs and Bridges in the FPKI ecosystem and the cross-certified CAs. It also shows you how each CA certificate validates to the Root, COMMON.

* Click on any dot in the FPKI Graph to see that CA's inbound and outbound relationships.

The FPKI Crawler uses Authority Information Access (AIA) and Subject Information Access (SIA) extensions to find all CA certificates. Each CA that validates to COMMON should have an AIA extension in its public certificate that gives a URL where you can see the certificates issued to the signing CA. If you follow each CA certificate’s AIA chain, it will lead you to the COMMON-certified certificate. Each CA should also have an SIA extension in its public certificate that gives a URL where you can see all CA certificates that it has issued.

## FPKI Crawler Output Files

The [FPKI Crawler](https://fpki-graph.fpki-lab.gov/crawler/){:target="_blank"}_ (_AIA Crawler Results_ webpage) offers output files in CSV, HTML, XML, and .p7b formats to help you understand and administer your certificate Key Store and build a Trust Store. 

### Public Certificates for Analysis and Reporting

> **Note:**&nbsp;&nbsp;The Crawler categorizes CA certificates by _Type_ (_U.S. Government_, _State_, or _Company_) and _Organization_ (_Agency_, _State Name_, and _Company Name_), which is extracted from the Distinguished Name (DN).

#### 1. Federal Common Policy Tree (_FederalCommonPolicyTree.csv_)

The _FederalCommonPolicyTree.csv_ (Microsoft Excel) gives you the certificate data for:

* All CAs that validate to COMMON
* All cross-certified CAs 

This file will help you to understand the relationships that exist between each CA and COMMON (similar to the FPKI Graph's visual data).

#### 2. All Certificates (_AIACrawler.html_)

The _AIACrawler.html_ (HTML) file lists all CA certificates found by the FPKI Crawler (in four Sections):

* **Certificates with Validated AIA Chains &mdash;** All CA certificates with validated paths to COMMON and the certificate policies to which they validate. 
* **Certificates with Validated Chains Other than AIA &mdash;** All CA certificates with validated paths to COMMON and the certificate policies to which they validate.   
* **Certificates with No Validated Chains &mdash;** All CA certificates with no validated path to COMMON. This file lists only certificate information. These tend to be cross-certificates issued to FPKI CAs that allow a partner PKI to use its own Root CA as the trust anchor instead of COMMON.
* **All Certificates &mdash;** All CA certificates in the FPKI.

For each CA certificate listed, you will see _Cert_ and _Issuer_ data and status. For example:

   ```
  Issuer CN=Federal Bridge CA 2016,OU=FPKI,O=U.S. Government,C=US serial# 0x03F42   status GOOD
   ```
For detailed data about CA certificates or issuers, click any link in the _AIACrawler.html_ file.

#### 3. Certificates with AIA Information (_allcertsfoundaturi.xml_)

The _allcertsfoundaturi.xml_ (XML) file lists all AIA URLs and extraction errors found.

#### 4. Certificates with AIA Information (_allcertsfoundaturi.csv_)

The _allcertsfoundaturi.csv_ (Microsoft Excel) file lists all AIA URLs and CA certificates and extraction errors found. 

* The key columns include:&nbsp;&nbsp;Error (if any), Certificate DN, Issuer (DN), Serial Number, Not Before, Sig Alg (Signing Algorithm), Subject Key, and Authority Key.

#### 5. All Certificates File (_allcerts.csv_)

The _allcerts.csv_ (Microsoft Excel) file lists all CA certificates found. This file is helpful when you want to analyze certificates. 

* The key columns include:&nbsp;&nbsp;Subject DN, Issuer DN, (Certificate) Group, Serial (Number), Sig Alg (Signing Algorithm) (typically SHA1 or SHA-256), Subject Key, and Authority Key.
* If found in a certificate, the Online Certificate Status Protocol (OCSP) and the Certificate Revocation List Distribution Point (CRLDP) URLs will be listed in the file.
* The AIA and SIA URLs for Object Identifiers (OIDs) will be listed in the file. The OIDs are id-ad-caIssuers, id-ad-caRepository, and id-ad-timeStamping.

### Public Certificates for Download

The FPKI Crawler provides all CA public certificates that it finds for analysis and download.

{% include alert-warning.html heading = "Do not import certificates into a Trust Store before analysis!" content="These certificates are available for analysis only. Please determine all applicable trust relationships before importing any certificate." %}

#### 1. All CA Certificates in a Single File (_CACertificatesValidatingToCommonPolicy.p7b_)

The _CACertificatesValidatingToCommonPolicy.p7b_ file contains all CA certificates found. You can easily sort these by expiration date, issuer, or subject. 

#### 2. All CA Certificates Broken Down into Eight Files (_CACertificatesValidatingToCommonPolicy_1.p7b_ through _8.p7b_)

_CACertificatesValidatingToCommonPolicy_1.p7b_ through _CACertificatesValidatingToCommonPolicy_8.p7b_ contain all CA certificates found, broken down into eight files to simplify analysis and download.

#### 3. Certificate Files Grouped by Type and Organization (Additional _.p7b_ Certificates)

For these .p7b files, the CA certificates are grouped by _Type_ and _Organization_ into two files: 

* All CA certificates found
* All CA certificates found, plus any other certificate needed to validate to COMMON.

For example:&nbsp;&nbsp;the _US_Government_VA.p7b_ (U.S. Department of Veterans Affairs) contains two CA certificates issued by the Verizon Federal Shared Service Provider CA. To validate their paths to COMMON requires a Betrusted cross-certificate, so the _US_Government_VA_FullPath.p7b_ contains the two CA certificates, plus the Betrusted cross-certificate.
