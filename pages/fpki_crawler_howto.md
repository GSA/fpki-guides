# Introduction
The FPKI Crawler provides a relationship view of all CA certificates that are cross certified with the Federal Bridge Certification Authority (FBCA). It also validates each CA’s certificate path to the FPKI Common Policy Certification Authority (CA).
The FPKI Crawler website can be found at https://fpki-graph.fpki-lab.gov/

# FPKI Graph
The FPKI Graph is very useful in finding the relationship that exists between each CA root certificate with other certificates in the Federal Public Key Infrastructure ecosystem. The inbound and outbound links of any certificate can be easily identified by clicking on the certificates in the graph.

The graph allows us to view how a certificate is linked to the root Federal Common Policy CA. It also shows the relationship to the federal bridges that exist in the Federal PKI infrastructure.

Each CA validating to COMMON should have an AIA extension in its public certificate that defines a Uniform Resource Locator (URL) where it’s signing CA certificate can be found. Following each CA certificate’s AIA chain should result in finding the certificate that is cross-certified with COMMON. Each CA should also have a Subject Information Access (SIA) extension in its public certificate that defines a URL where each of its subordinate CA public certificates can be found. The crawler application will use these AIAs and SIAs to find all CA certificates.

# FPKI Crawler Outputs
The FPKI crawler generates data that can be useful to any government agency in understanding and administering their certificate key store as well as building the trust store. The output files provide detailed information about the certificates. The information includes path validation, certificate policy validation, organized certificate lists, and Comma Separated Value (CSV) Spreadsheets for review in Microsoft Excel or OpenOffice.

The crawler outputs are available at https://fpki-graph.fpki-lab.gov/crawler/.

The CAs are categorized by type and agency or company using information from the CA certificate DN. The type can be U.S. Government, State or Commercial. For U.S. Government, the Agency is extracted from the DN. For State Governments, the state name is extracted. For commercial CAs, the company name is extracted.

# Public Certificates for Reporting & Analysis

## 1.	Federal Common Policy Tree
The file ‘FederalCommonPolicyTree.csv’ provides a data view of the relationship of all the Certification Authorities (CAs) that cross certify with the Federal Common Policy. The data also contains the CAs that cross certify with each of those CAs as well. Hence, this data is useful to understand the relationships that exist between each CA and the Federal Common Policy similar to the data presented in the graph in a visual format.

## 2.	All Certificates in Web Page (HTML)
The data found at https://fpki-graph.fpki-lab.gov/crawler/AIACrawler.html provides the list of each certificate that has a valid AIA chain with the Federal Common Policy. The CA Certificates are broken down into three categories:

a)	Certificates Found with Validated AIA Chains to COMMON. All valid paths are printed, and for each path, the FPKI certificate policies for which they validate are listed.
b)	Certificates Found with Validated Chains to COMMON not through AIA. Only the valid path found using [JDK PKIX] is listed, and the certificate policies for which they validate are listed.
c)	Certificates Found with NO Validated Chains to COMMON. Those certificates that do not path validate, only the certificate information is listed.

Each CA certificate is listed as a hyperlink to its detailed certificate information. The data also provides the current validation status of each certificate. An example is shown below.

Issuer CN=Federal Bridge CA 2016,OU=FPKI,O=U.S. Government,C=US serial# 0x03F42   status GOOD

## 3.	All Certificates in CSV Format

The ‘allcerts.csv’ output file contains a line item for each CA certificate found by the crawler. This file will be useful for analyzing the list of certificates. The certificate details are presented as raw data in a spreadsheet format. The columns include Subject DN, Issuer DN, Certificate Group, Serial Number, Signing Algorithm (typically SHA1 or SHA-256), the Subject Key as a hexadecimal number, Authority Key.

The Online Certificate Status Protocol (OCSP) URL found in the certificate, if any, is listed in a separate column. Any Certificate Revocation List Distribution Point (CRLDP) URLs will be listed in one column for HTTP, one for LDAP CRLDP, and one Unknown/Error column.

The AIA and SIA URLs are listed in separate columns for each OID and HTTP, LDAP or Unknown/Error. The OIDs include id-ad-caIssuers, id-ad-caRepository, and id-ad-timeStamping.

## 4.	Certificates with AIA Information in CSV Format
The file ‘allcertsfoundaturi.csv’ lists each AIA URL and either the error retrieving certificates or the list of CA certificates found at that AIA. It includes the following certificate information: Subject DN, Issuer DN, Serial Number, Signing Algorithm, Not Before, Subject Key and Authority Key as hexadecimal numbers.

## 5.	Certificates with AIA Information in XML Format
The file ‘allcertsfoundaturi.xml’ contains a listing of each AIA URL in XML format. For each AIA URL, if there was an error extracting the certificates, this will be listed, otherwise all certificates found at that AIA are listed.

# Public Certificates for Download
The crawler provides the public certificate information as binary data for download and analysis by any FPKI validating agency or organization. The data involves all certificates retrieved by the FPKI Crawler.

## 1.	All CA Certificates in One File
CACertificatesValidatingToCommonPolicy.p7b contains all certificates retrieved by the FPKI Crawler. This file can be unwieldy for importing into a trusted authorities list.

## 2.	All CA Certificates Broken Down into Eight Files
The certificates found in the files ‘CACertificatesValidatingToCommonPolicy_1.p7b’ through ‘CACertificatesValidatingToCommonPolicy_8.p7b’ contain all of the CA certificates found by the crawler, broken evenly into eight separate files. The certificates are broken down into 8 different files for easier  analysis.

## 3.	Certificate Files by Groups
The CA certificates are partitioned into types and categories as defined in the Certificate Grouping section. For each of these groups, all CA certificates are organized into a single PKCS#7 file. In addition, another PKCS#7 file is generated containing all of the CA certificates plus all additional certificates required for path validation to COMMON.

As an example, the Federal Government’s Veterans Affairs Agency from the Verizon Shared Service Provider Certification Authority has two CAs that can be found in ‘US_Government__VA.p7b’. In order to path validate these CAs to COMMON, a Betrusted cross certificate is required. Therefore, the file ‘US_Government__VA_FullPath.p7b’ contains both the CAs plus the cross certificate.

# FPKI Crawler Design
The AIA Crawler performs two main processing passes prior to generating the results in several formats.

## First Pass: Search for CA Certificates
The first processing pass involves gathering all CA certificates issued by COMMON.  It will start with all the certificates found in the FPKIMA directory.
```sh
- ldap://ldap.fpki.gov/cn=Federal Common Policy CA,ou=FPKI,o=U.S. Government,c=US?cACertificate;binary,crossCertificatePair;binary
- http://http.fpki.gov/fcpca/caCertsIssuedByfcpca.p7c
```
The application will check each CA or Cross Certificates found for their AIA & SIA id-ad-caIssuers or id-ad-caRepository values, which contain either or both HTTP and LDAP URLs.  The application will then search each of these locations for more CA or Cross Certificates, until no more new AIA / SIA URLs are discovered.

For this pass, known test and development AIA URLs are skipped.  For LDAP, both binary and text fields will be searched regardless of the LDAP URL provided, but only CA and Cross Certificate Pairs found at the specified entry will be retrieved.

At this point, the application will generate several listings of the certificates found.

## Second Pass: Path and FBCA Certificate Policy Validation
Once all the certificates are gathered, each CA certificate is path-validated to COMMON.

```sh
CN=Federal Common Policy CA,OU=FPKI,O=U.S. Government,C=US
(Serial #01:30)
```

### AIA Path Validation
For each CA certificate, all HTTP and LDAP URLs found in the AIA field under the id-ad-caIssuers policy will be searched for any issuers of that CA certificate.  The process is repeated for each issuer, until one is found that is issued (or cross-certified) by COMMON.  The path processing for any particular path will be ignored if the chain becomes too long, repeats itself, or ends at a root other than COMMON.

Once all paths are found, only the shortest validating paths are retained.  Full path validation on each of these certificate chains is performed.

### PKIX Path Validation
If no validating chain can be found using the AIA, the Java Development Kit (JDK) PKIX [JDK PKIX] path builder will be used to find any path to COMMON.  The full list of CA certificates will be included in the search, except that only the newest of each re-issued certificate is included.

## Federal PKI Certificate Policy Validation
For each validating certificate chain, each of the Federal PKI policy Object Identifiers (OIDs) will be validated for that chain.

#### Federal PKI Policy OIDs
| Federal PKI Policy | Policy OID                | Description                          |
|--------------------|---------------------------|--------------------------------------|
| Federal Bridge     | 2.16.840.1.101.3.2.1.3.1  | id-fpki-certpcy-rudimentaryAssurance |
| Federal Bridge     | 2.16.840.1.101.3.2.1.3.2  | id-fpki-certpcy-basicAssurance       |
| Federal Bridge     | 2.16.840.1.101.3.2.1.3.3  | id-fpki-certpcy-mediumAssurance      |
| Federal Bridge     | 2.16.840.1.101.3.2.1.3.4  | id-fpki-certpcy-highAssurance        |
| COMMON             | 2.16.840.1.101.3.2.1.3.6  | id-fpki-common-policy                |
| COMMON             | 2.16.840.1.101.3.2.1.3.7  | id-fpki-common-hardware              |
| COMMON             | 2.16.840.1.101.3.2.1.3.8  | id-fpki-common-devices               |
| Federal Bridge     | 2.16.840.1.101.3.2.1.3.12 | id-fpki-certpcy-mediumHardware       |
| COMMON             | 2.16.840.1.101.3.2.1.3.13 | id-fpki-common-authentication        |
| Federal Bridge     | 2.16.840.1.101.3.2.1.3.14 | id-fpki-certpcy-medium-CBP           |
| Federal Bridge     | 2.16.840.1.101.3.2.1.3.15 | id-fpki-certpcy-mediumHW-CBP         |
| COMMON             | 2.16.840.1.101.3.2.1.3.16 | id-fpki-common-high                  |
| COMMON             | 2.16.840.1.101.3.2.1.3.17 | id-fpki-common-cardAuth              |
| Federal Bridge     | 2.16.840.1.101.3.2.1.3.18 | id-fpki-certpcy-pivi-hardware        |
| Federal bridge     | 2.16.840.1.101.3.2.1.3.19 | id-fpki-certpcy-pivi-cardAuth        |
| Federal Bridge     | 2.16.840.1.101.3.2.1.3.20 | id-fpki-certpcy-pivi-contentSigning  |
| FPKI SHA-1    | 2.16.840.1.101.3.2.1.3.21 | id-fpki-SHA1-medium-CBP              |
| FPKI  SHA-1   | 2.16.840.1.101.3.2.1.3.22 | id-fpki-SHA1-mediumHW-CBP            |
| FPKI SHA-1    | 2.16.840.1.101.3.2.1.3.23 | id-fpki-SHA1-policy                  |
| FPKI SHA-1    | 2.16.840.1.101.3.2.1.3.24 | id-fpki-SHA1-hardware                |
| FPKI SHA-1     | 2.16.840.1.101.3.2.1.3.25 | id-fpki-SHA1-devices                 |
| FPKI SHA-1 | 2.16.840.1.101.3.2.1.3.26 | id-fpki-SHA1-authentication          |
| FPKI SHA-1 | 2.16.840.1.101.3.2.1.3.27 | id-fpki-SHA1-cardAuth                |

