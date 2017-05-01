---
layout: default
title: Certification Authorities
permalink: /ca/
---

A **_certification authority_** is a system that issues digital certificates.  These digital certificates are based on _cryptography_, and follow the X.509 standards defined for information security.

The Federal PKI is a network of hundreds of certification authorities that are either _root_, _intermediate_ or _issuing_ certification authorities. 

Any CA in the Federal PKI may be referred to as a Federal PKI CA.   The four highest level CAs in the Federal PKI hierarchy are the **Federal PKI Trust Infrastructure CAs** and are operated and managed by the Federal PKI Management Authority (FPKIMA) program office.  

These four main CAs are referred to as Federal PKI Trust Infrastructure CAs.

![FPKI Trust Infrastructure]({{site.baseurl}}/img/fpki_trust_cas.png){:style="width:35%;float:right;"}

* [Federal Common Policy Certification Authority](#federal-common-policy-certification-authority)
* [Federal Bridge Certification Authority 2013](#federal-bridge-certification-authority)
* [Federal Bridge Certification Authority 2016](#federal-bridge-certification-authority)
* [SHA-1 Federal Root Certification Authority G2](#sha-1-federal-root-certification-authority)

These Federal PKI Trust Infrastructure CAs serve as the _root_ and _trust anchors_ for the _intermediate_ and _issuing_ certification authorities operated by:  

- Federal Government Agencies  
- State, Local, Tribal, Territorial, and International Governments  
- Commercial Partners 


{% include alert-info.html heading="Public trust for websites" content="A new effort is in the planning stages to establish another Federal Government Root and Issuing CAs dedicated to Public Trust Transport Layer Security (TLS) device certificates. Follow or contribute to the development of the Federal Government's new certificate policy for this Public Trust effort at https://github.com/uspki/policies" %}

### Federal Common Policy Certification Authority

<!--- ![Example of COMMON Serving as the Trust Anchor]({{site.baseurl}}/img/fcpca-chainV5.png){:style="width:40%;float:right;"}
*Example of COMMON as the Trust Anchor*{:style="float:right;clear:both;font-size:14px;text-align:center;margin:20px 0 0 0;width:40%;"} --->

For the Federal Government executive branch agencies, there is one Root Certification Authority.  This certification authority is named _Federal Common Policy CA_ and may be referenced by either the acronym _FCPCA_ or as _COMMON_ in documents. 

FCPCA serves as the Federal PKI trust anchor for the Federal Government to support government enterprise devices and person trust, including [Personal Identity Verification (PIV) credentials](https://piv.idmanagement.gov/#what-is-piv){:target="_blank"}. The design of FCPCA enables any certificate issued by any Federal PKI CA to validate its certificate path to a single root CA. 

Many commercial vendors include the FCPCA root certificate in their commercial-off-the-shelf (COTS) products' [Trust Stores](../truststores/). This enables Federal Government systems to trust person and enterprise device certificates issued by Federal PKI CAs. It is also possible to add the Federal Common Policy CA root certificate into trust stores for _government managed_ devices and servers, if it is not available by default.

{% include alert-warning.html content="The Federal Common Policy CA certificate is included in the trust stores for some platforms such as Microsoft and Adobe. Other platforms including Mozilla and Firefox do not include the Federal Common Policy CA by default. " %}

### Federal Bridge Certification Authority

![FPKI Federal Bridge Logo]({{site.baseurl}}/img/fbca-logo.png){:style="float:left;width:15%;"}
The Federal Bridge Certification Authority (FBCA) is a PKI Bridge or link between the Federal Common Policy CA and other CAs that comprise the Federal PKI network and which may operate under comparable but _different_ certificate policies.  

The FBCA provides a means to map these certificate policies and CAs to allow the certificates to validate to the Federal Common Policy Certification Authority root certificate.  

<!--- ![Example of the FBCA Certification Path]({{site.baseurl}}/img/fbca-chainV2.png){:style="width:40%;float:right;"}
*Example of a FBCA Certification Path*{:style="float:right;clear:both;font-size:14px;text-align:center;margin:20px 0 0 0;width:40%;"} --->

There are two Federal Bridge Certification Authorities:  

- Federal Bridge CA 2013
- Federal Bridge CA 2016

The CAs signed by these Federal Bridge CAs are _cross-certified_.  These CAs have established a trust relationship and are audited for conformance to the certificate policies. This cross-certification process has extended the reach of the Federal PKI well beyond the boundaries of the Federal Government.

### SHA-1 Federal Root Certification Authority

The SHA-1 Federal Root CA G2 (SHA-1 FRCA) is a Certification Authority supporting Federal entities that still have certificates that have the deprecated SHA-1 signature hash algorithm. The SHA-1 Federal Root CA was created and maintained to facilitate backwards interoperability for those legacy systems unable to fully transition to SHA-256 and to support the migrations over time.

The SHA-1 hash algorithm has been deemed to be not secure enough for today’s standards.  Federal organizations should no longer be using certificates with this hash.  

{% include alert-warning.html content="Certificates using the SHA-1 signature hash algorithm under current policy are limited to legacy enterprise systems and are being completely phased out." %}

### All Federal PKI Certification Authorities

![FPKI Participating CAs]({{site.baseurl}}/img/participatingCAsV3.png){:style="width:35%;float:right;"}

A Certification Authority that is part of the Federal PKI is called a _participating Certification Authority_.  There are hundreds of participating Certificate Authorities that form the Federal PKI network.  

We might _label_ or identify the certification authority systems by a category that shows _when_ the system was established, what types of _communities_ it is or was used for, and for historical records purposes.  

We realize all the acronyms and labels may be confusing, and welcome your input to help us improve and add information over time. 

|**Certification Authority Category**|**Description**|
|-----------|---------------|
| PKI Shared Service Provider | A Shared Service Provider (SSP) CA is *subordinate* to the Federal Common Policy CA (FCPCA).  Any certificate the SSP CA creates, signs and issues to people or devices are in the trust chain of the FCPCA. An SSP must adhere to strict Federal IT security, standards and requirements.  The Shared Service Providers are granted a FISMA Authority to Operate (ATO), undergo continuous monitoring, and are contracted by the Federal government to issue certificates to Federal employees, contractors and federal devices that are deployed in Federal agency networks. |
| Private Sector Certification Authorities | A Private Sector Certification Authority that is cross-certified has shown a valid need to either conduct business or provide PKI services to the Federal government. |
| Access Certificates for Electronic Services (ACES) Certification Authorities | The ACES Certification Authorities issues certificates to authorized U.S. business representatives who have a need to digitally sign documents or access some web based systems.  ACES was established in the late 1990's and was the predecessor for the development of today's Federal Public Key Infrastructure. |
| Other Government Certification Authorities | These are CAs managed and operated by State, Local, Tribal, Territorial, or international government organizations. |
| Bridge Certification Authorities | Bridge CAs connect member PKIs and are designed to enable interoperability between different PKIs operating under their own Certificate Policy. A Bridge CA is not a Root. |
| Federal Agency Legacy | Prior to 2004, there were agencies that had already deployed and invested in their own PKI and Certification Authorities. Some of these agencies opted out of migrating to the Shared Service Provider program and continue to manage their existing infrastructures. These Federal Agencies Legacy one or more Certification Authorities that is cross-certified with one or more FPKI Trust Infrastructure CAs.|
