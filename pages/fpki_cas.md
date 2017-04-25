---
layout: default
title: Certificate Authorities
permalink: /ca/
---

A **Certificate Authority (CA)** is an entity (i.e., system) that issues digital certificates. These digital certificates are based on **cryptography** and follow the X.509 standard format for public key certificates required for information security.  <!-- Term is "X.509 standard"... Definition correct? -->

The FPKI <!-- acronym defined in Introduction --> has three CAs, which are operated by the **FPKI Management Authority (FPKIMA)**. The FPKIMA is a program office established by the Federal Government to manage, operate, and maintain the three CAs that serve as the **Root** and **Anchors** <!-- Is Anchor the same as Trust Anchor? --> for the **Intermediate** and **Issuing CAs**, which are operated by Federal Government agencies; State, Local, Tribal, Territorial, international governments; and commercial partners.  These CAs are collectively referred to as the **FPKI Trust Infrastructure CAs** and include:  
![FPKI Trust Infrastructure]({{site.baseurl}}/img/fpki_trust_cas.png){:style="width:35%;float:right;"}

* [Federal Common Policy Certification Authority (COMMON)](#federal-common-policy-certification-authority-common)
* [Federal Bridge Certification Authority (FBCA)](#federal-bridge-certification-authority-fbca)
* [SHA-1 Federal Root Certification Authority (SHA1 FRCA)](#sha-1-federal-root-certification-authority-sha1-frca)

Any CA in the FPKI can be referred to as a **FPKI CA**, but only these three operated by the FPKIMA are **FPKI Trust Infrastructure CAs** and they are the highest level CAs in the hierarchy.

These next sections describe the three FPKI Trusted Infrastructure CAs. <!-- Trust or Trusted? Used both ways. -->

{% include alert-info.html content="A new effort is underway to establish a Federal root and issuing certificate authorities dedicated to Public Trust TLS/SSL device certificates. Follow or contribute to the development of the new Federal certificate policy for this Public Trust effort: https://github.com/uspki/policies" %}

### Federal Common Policy Certification Authority (_COMMON_) ####

![Example of COMMON Serving as the Trust Anchor]({{site.baseurl}}/img/fcpca-chainV5.png){:style="width:40%;float:right;"}
*Example of COMMON as the Trust Anchor*{:style="float:right;clear:both;font-size:14px;text-align:center;margin:20px 0 0 0;width:40%;"}
For the US Federal Government agencies, there is one Root Certificate Authority named Federal Common Policy Certification Authority (COMMON).

COMMON serves as the Federal PKI (FPKI) trust anchor for the Federal Government in support of [Personal Identity Verification (PIV) credentials](https://piv.idmanagement.gov/#what-is-piv){:target="_blank"}. COMMON was designed so any certificate issued by any FPKI CA can validate a certificate path to a single Root CA. See the example to the right where a person certificate, issued by a FPKI CA, can validate its certificate path back to COMMON.

The COMMON root certificate is distributed by commercial vendors who include it in their commercial off the shelf product [trust stores](../truststores/).  This enables Federal Government systems to be able to trust FPKI person and device certificates issued by FPKI CAs. It is also possible to manually add the Federal Common Policy CA root certificate into trust stores, if it is not available by default.

{% include alert-warning.html content="Currently, the Federal Common Policy Certificate Authority is included in some Trust Stores by default (i.e. Chrome and Internet Explorer browsers include the COMMON trust anchor). Other browsers, such as Mozilla, do not include the Federal Common Policy Certification Authority by default. " %}

### Federal Bridge Certification Authority (_FBCA_)

![FPKI Federal Bridge Logo]({{site.baseurl}}/img/fbca-logo.png){:style="float:left;width:15%;"}
The Federal Bridge Certification Authority (FBCA) is the PKI Bridge or link between the Federal Common Policy CA and the other CAs that comprise the FPKI, including Issuing CAs operated by Federal agencies, commercial organizations, state, local, and foreign governments. The FBCA provides a means to map participating Issuing CAs so the certificates validate to the Federal Common Policy Certification Authority root certificate.

![Example of the FBCA Certification Path]({{site.baseurl}}/img/fbca-chainV2.png){:style="width:40%;float:right;"}
*Example of a FBCA Certification Path*{:style="float:right;clear:both;font-size:14px;text-align:center;margin:20px 0 0 0;width:40%;"}The Issuing CAs related to the FBCA are cross-certified.  These Issuing CAs have established a trust relationship with the FBCA and are audited for conformance to the certificate policies. The partners have extended the reach of the FPKI well beyond the boundaries of the Federal Government.

### SHA-1 Federal Root Certification Authority (_SHA1 FRCA_)

The SHA-1 Federal Root CA (SHA-1 FRCA) is a Certificate Authority supporting Federal entities that still require using certificates that have the deprecated SHA-1 signature hash algorithm. The SHA-1 hash algorithm is an older algorithm that has been deemed to be not secure enough for today’s standards.  Federal organizations should no longer be using certificates with this hash.  However, the SHA-1 FPKI CA was created and maintained to facilitate the backwards interoperability for those systems unable to fully transition to SHA-256 and to support the migrations over time.

{% include alert-warning.html content="Use of certificates using the SHA-1 signature hash algorithm under current policy should be limited to applications in which the risks associated with the use of the deprecated SHA-1 algorithm have been deemed acceptable and will only be asserted within the SHA-1 FPKI." %}

### All FPKI Certificate Authorities

![FPKI Participating CAs]({{site.baseurl}}/img/participatingCAsV3.png){:style="width:35%;float:right;"}

A Certification Authority that is part of the FPKI is called a *Participating Certificate Authority*. Participating Certification Authorities include US Federal agencies, State, Local, Tribal, Territorial, international and commercial partners. The following sections describe the various FPKI Participating Certification Authorities.

There are over 150 Participating Certificate Authorities that form the Federal PKI network.    We might _label_ or identify the individual certificate authority systems by a category that shows when the system was established, what types of communities it is used for, or


|**Certification Authority Category**|**Description**|
|-----------|---------------|
| PKI Shared Service Provider | A Shared Service Provider (SSP) CA is *subordinate* to the Federal Common Policy CA (FCPCA) which means its Root Certificate has been signed and issued by another Certification Authority, in this case the FCPCA. Any certificate the SSP CA creates, signs and issues to people or devices are in the trust chain of the FCPCA. An SSP CA implementation must go through a certification process and must adhere to strict IT security and Federal policy standards and requirements.  Once they meet these specifications, the SSP organization receives an Authority to Operate (ATO) and is contracted by the Federal government to issue certificates to Federal employees, contractors and Federal devices that are deployed in Federal agency networks. |
| Private Sector Certification Authorities | A Private Sector Certification Authority that is cross-certified has shown a valid need to either conduct business or provide PKI services to the Federal government. |
| Access Certificates for Electronic Services (ACES) Certification Authorities | In a similar service model to the PKI SSP program, the ACES Certificate Authorities issues certificates to U.S. persons and authorized business representatives who have demonstrated need to access Federal network systems.  ACES was established in the late 1990's and was the predecessor for the development of the COMMON root and today's Federal Public Key Infrastructure. |
| Other Government Certification Authorities | These are CAs managed and operated by State, Local, Tribal, Territorial, or international government organizations. |
| Bridge Certification Authorities | Bridge CAs connect member PKIs and are designed to enable interoperability between different PKIs operating under their own Certificate Policy. A Bridge CA is not a Root. |
| Federal Agency Legacy | Prior to 2004, there were a number of agencies that had already deployed and invested significant funding into their own PKI and Certificate Authorities. Some of these agencies opted out of migrating to the PKI SSP program and continue to manage the existing infrastructures. These Federal Agency Legacy PKIs operate an internal PKI that is cross-certified with one or more FPKI Trust Infrastructure CAs.|
