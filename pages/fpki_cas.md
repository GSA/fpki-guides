---
layout: default
title: Certification Authorities
permalink: /ca/
---

A **_certification authority_** is a system that issues digital certificates. These digital certificates are based on _cryptography_ and follow the X.509 standards defined for information security.

The Federal PKI (FPKI) is a network of certification authorities (CAs) that are either _root_, _intermediate_, or _issuing_ CAs.

Any CA in the FPKI may be referred to as a _Federal PKI CA_. The two highest level CAs in the FPKI hierarchy are the **_FPKI Trust Infrastructure CAs_**, which are operated and managed by the Federal PKI Management Authority (FPKIMA) Program Office:

![FPKI Trust Infrastructure]({{site.baseurl}}/img/fpki_trust_cas.png){:style="width:35%;float:right;"}

* [Federal Common Policy Certification Authority](#federal-common-policy-certification-authority)
* [Federal Bridge Certification Authority](#federal-bridge-certification-authority)

The FCPCA serves as the _root_ and _trust anchor_ for the _intermediate_ and _issuing_ CAs operated by:  

- Federal Government Executive Branch Agencies  

<br><br><br><br>

{% include alert-info.html content="<strong>Public trust for websites</strong><br>A new effort is in the planning stages to establish another Federal Government root and issuing CAs dedicated to Public Trust Transport Layer Security (TLS) device certificates. Follow or contribute to the development of the Federal Government's new certificate policy for this Public Trust effort at https://github.com/uspki/policies" %}

<br>

### Federal Common Policy Certification Authority

<!--- ![Example of COMMON Serving as the Trust Anchor]({{site.baseurl}}/img/fcpca-chainV5.png){:style="width:40%;float:right;"}
*Example of COMMON as the Trust Anchor*{:style="float:right;clear:both;font-size:14px;text-align:center;margin:20px 0 0 0;width:40%;"} --->

The _Federal Common Policy CA_ may be referred to as the _FCPCA_, or as _COMMON_ in documents. As the FPKI root and trust anchor for the Federal Government, the FCPCA supports government person trust and and a small number of agency intranet enterprise devices, including [Personal Identity Verification (PIV) credentials](https://piv.idmanagement.gov/#what-is-piv){:target="_blank"}. The FCPCA's design enables any certificate issued by any FPKI CA to validate its certificate path to a single root CA.

A few commercial vendors include the FCPCA root certificate in the commercial-off-the-shelf (COTS) products' [Trust Stores](../truststores/). This enables Federal Government systems to trust person and enterprise device certificates issued by FPKI CAs. It is possible to add the FCPCA root certificate to trust stores for _government-managed_ devices and servers, if it's not available by default.

{% include alert-warning.html content="The FCPCA root certificate is included in the trust stores for some platforms such as Microsoft and Adobe. Other platforms, such as Mozilla and Apple, do not include the FCPCA by default. " %}

### Federal Bridge Certification Authority

The FBCA is the _**Federal Bridge CA 2016**_ or the new _**Federal Bridge CA G4**_

![FPKI Federal Bridge Logo]({{site.baseurl}}/img/fbca-logo.png){:style="float:left;width:15%;"}
The FBCA is a PKI Bridge or link between the FCPCA and other CAs that comprise the FPKI network and that may operate under comparable but _different_ certificate policies.  

The FBCA provides a means to map these certificate policies and CAs and allow certificates to validate to the FCPCA root certificate.

<!--- ![Example of the FBCA Certification Path]({{site.baseurl}}/img/fbca-chainV2.png){:style="width:40%;float:right;"}
*Example of a FBCA Certification Path*{:style="float:right;clear:both;font-size:14px;text-align:center;margin:20px 0 0 0;width:40%;"} -->

The CAs with certificates signed by the Federal Bridge CA 2016 or Federal Bridge CA G4 are _cross-certified_. These CAs have established a trust relationship with the FPKI and are audited annually for conformance to the certificate policies. This cross-certification process has extended the reach of the FPKI well beyond the boundaries of the Federal Government.


### All Federal PKI Certification Authorities

![FPKI Participating CAs]({{site.baseurl}}/img/participatingCAsV3.png){:style="width:35%;float:right;"}

A CA that is part of the FPKI is called a _participating certification authority_.  Over a hundred participating CAs form the FPKI network.<!--We say in 2nd para at top: "The Federal PKI is a network of hundreds of certification authorities (CAs)" (redundant idea).-->  

For historical records, we might _label_ or identify CA systems using a category that shows _when_ the system was established and for what types of _communities_ it is or was used.  

We realize all the acronyms and labels may be confusing and welcome your input to help us improve, add information over time, and simplify where needed. 

|**Certification Authority Category**|**Description**|
|-----------|---------------|
| PKI Shared Service Provider (SSP) Certification Authorities | An SSP CA is *subordinate* to the FCPCA.  Any certificate that an SSP CA creates, signs, and issues to people or devices is in the FCPCA _trust chain_. An SSP must adhere to strict federal IT security standards and requirements.  The SSPs are granted a FISMA Authority To Operate (ATO), undergo continuous monitoring, and are contracted by the Federal Government to issue certificates to federal employees and contractors, as well as devices that are deployed in federal agency networks. |
| Private Sector Certification Authorities | A Private Sector CA that is cross-certified has shown a valid need to conduct business or provide PKI services to the Federal Government. |
| Other Government Certification Authorities | These CAs are managed and operated by State, Local, Tribal, Territorial, or International Governments. |
| Bridge Certification Authorities | Bridge CAs connect member PKIs and are designed to enable interoperability between different PKIs operating under their own certificate policies. A Bridge CA is not a _root_. |
| Federal Agency Legacy | Prior to 2004, some agencies had already deployed and invested in their own PKI and CAs. Some of these agencies opted out of migrating to the SSP Program and continued to manage their existing infrastructures. These Federal Agencies Legacy operate one or more CAs that are cross-certified with a Federal PKI Trust Infrastructure CA.|
