# FPKI Crawler

## Introduction
As a federal agency or an entity supporting a federal agency, it might be useful to understand the relationships between the various certification authorities (CA) and how it relates to the federal agency security infrastucture. The FPKI Crawler provides a relationship view of all CAs with a relationship to the Federal Public Key Infrastructure (FPKI). It also validates each CA’s certificate path to the FPKI Common Policy Certification Authority (CA).
The FPKI Crawler website can be found at https://fpki-graph.fpki-lab.gov/

## FPKI Graph
The FPKI Graph is very useful in finding the relationship that exists between each CA certificate with other certificates in the FPKI ecosystem. The inbound and outbound links of any certificate can be easily identified by clicking on the dots in the graph.

The graph allows us to view how a certificate is linked to the root Federal Common Policy CA (COMMON). It also shows the relationship to the other CAs and bridges that exist in the Federal PKI infrastructure.

Each CA validating to COMMON should have an AIA extension in its public certificate that defines a Uniform Resource Locator (URL) where certificates issued to signing CA can be found. Following each CA certificate’s AIA chain should result in finding the certificate that is certified by COMMON. Each CA should also have a Subject Information Access (SIA) extension in its public certificate that defines a URL where all CA certificates that it has issued can be found. The crawler application will use these AIAs and SIAs to find all CA certificates.

## FPKI Crawler Outputs
The FPKI crawler generates data that can be useful to any government agency in understanding and administering their certificate key store as well as building the trust store. The output files provide detailed information about the certificates. The information includes path validation, certificate policy validation, organized certificate lists, and Comma Separated Value (CSV) Spreadsheets for review in Microsoft Excel or OpenOffice.

The crawler outputs are available at https://fpki-graph.fpki-lab.gov/crawler/.

The CAs are categorized by type and agency or company using information from the CA certificate DN. The type can be U.S. Government, State or Commercial. For U.S. Government, the Agency is extracted from the DN. For State Governments, the state name is extracted. For commercial CAs, the company name is extracted.

## Public Certificates for Reporting & Analysis

### 1.	Federal Common Policy Tree
The file ‘FederalCommonPolicyTree.csv’ provides a data view of the relationship of all the Certification Authorities (CAs) with a certificate path to COMMON. The data also contains the CAs that cross certify with each of those CAs as well. Hence, this data is useful to understand the relationships that exist between each CA and COMMON similar to the data presented in the graph in a visual format.

### 2.	All Certificates in Web Page (HTML)
The data found at https://fpki-graph.fpki-lab.gov/crawler/AIACrawler.html provides the list of each certificate that has a valid certificate chain with COMMON. The CA Certificates are broken down into three categories:

#### a)	Certificates Found with Validated AIA Chains to COMMON. 
All valid paths are printed, and for each path, the FPKI certificate policies for which they validate are listed.

#### b)	Certificates Found with Validated Chains to COMMON (not via AIA). 
A valid path found using [JDK PKIX] is listed, and the certificate policies for which they validate are listed.

#### c)	Certificates Found with NO Validated Chains to COMMON. 
The certificates that are found while chasing AIA and SIA which do not have a path that validates to COMMON, are listed in this group. Only the certificate information is listed. These certificates tend to be cross-certificates issued to the FPKI that allow a partner PKI to make use of its Root CA as the trust anchor instead of COMMON.

Each CA certificate is listed as a hyperlink to its detailed certificate information. The data also provides the current validation status of each certificate. An example is shown below.

```
Issuer CN=Federal Bridge CA 2016,OU=FPKI,O=U.S. Government,C=US serial# 0x03F42   status GOOD
```

### 3.	All Certificates in CSV Format

The ‘allcerts.csv’ output file contains a line item for each CA certificate found by the crawler. This file will be useful for analyzing the list of certificates. The certificate details are presented as raw data in a spreadsheet format. The columns include Subject DN, Issuer DN, Certificate Group, Serial Number, Signing Algorithm (typically SHA1 or SHA-256), the Subject Key as a hexadecimal number, Authority Key.

The Online Certificate Status Protocol (OCSP) URL found in the certificate, if any, is listed in a separate column. Any Certificate Revocation List Distribution Point (CRLDP) URLs will be listed in one column for HTTP, one for LDAP CRLDP, and one Unknown/Error column.

The AIA and SIA URLs are listed in separate columns for each OID and HTTP, LDAP or Unknown/Error. The OIDs include id-ad-caIssuers, id-ad-caRepository, and id-ad-timeStamping.

### 4.	Certificates with AIA Information in CSV Format
The file ‘allcertsfoundaturi.csv’ lists each AIA URL and either the error retrieving certificates or the list of CA certificates found at that AIA. It includes the following certificate information: Subject DN, Issuer DN, Serial Number, Signing Algorithm, Not Before, Subject Key and Authority Key as hexadecimal numbers.

### 5.	Certificates with AIA Information in XML Format
The file ‘allcertsfoundaturi.xml’ contains a listing of each AIA URL in XML format. For each AIA URL, if there was an error extracting the certificates, this will be listed, otherwise all certificates found at that AIA are listed.

## Public Certificates for Download
The crawler provides the public certificate information as binary data for download and analysis by any FPKI validating agency or organization. The data involves all certificates retrieved by the FPKI Crawler.

```
The certificates from the files should not be used for importing directly into a trust store before they are analysed for applicable trust relationship determination. The certificate data is made available for analysis.
```

### 1.	All CA Certificates in One File
CACertificatesValidatingToCommonPolicy.p7b contains all certificates retrieved by the FPKI Crawler. This file allows you to easily sort the certificates by expiration date, issuer or subject. 

### 2.	All CA Certificates Broken Down into Eight Files
The certificates found in the files ‘CACertificatesValidatingToCommonPolicy_1.p7b’ through ‘CACertificatesValidatingToCommonPolicy_8.p7b’ contain all of the CA certificates found by the crawler, broken evenly into eight separate files. The certificates are broken down into 8 different files for easier  analysis.

### 3.	Certificate Files by Groups
The CA certificates are partitioned into types and categories as defined in the Certificate Grouping section. For each of these groups, all CA certificates are organized into a single PKCS#7 file. In addition, another PKCS#7 file is generated containing all of the CA certificates plus all additional certificates required for path validation to COMMON.

As an example, the Federal Government’s Veterans Affairs Agency from the Verizon Shared Service Provider Certification Authority has two CAs that can be found in ‘US_Government__VA.p7b’. In order to path validate these CAs to COMMON, a Betrusted cross certificate is required. Therefore, the file ‘US_Government__VA_FullPath.p7b’ contains both the CAs plus the cross certificate.
