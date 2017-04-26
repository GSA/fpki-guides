---
layout: default
title: Certificate Authorities
permalink: /ca/
---

A **Certificate Authority (CA)** is an entity (i.e., system) that issues digital certificates. These digital certificates are based on **cryptography** and follow the X.509 standard format for public key certificates required for information security. <!-- Term is "X.509 standard"... Definition correct? -->

Any CA in the FPKI may be referred to as an **FPKI CA**; however, the three highest level CAs in the Federal Government's FPKI are the **FPKI Trust Infrastructure CAs**. These CAs are operated, managed, and maintained by the **FPKI Management Authority (FPKIMA)** program office. The FPKI Trust Infrastructure CAs are:

![FPKI Trust Infrastructure]({{site.baseurl}}/img/fpki_trust_cas.png){:style="width:35%;float:right;"}

* [Federal Common Policy Certification Authority (referred to as _COMMON_)](#federal-common-policy-certification-authority-common)
* [Federal Bridge Certification Authority (FBCA)](#federal-bridge-certification-authority-fbca)
* [SHA-1 Federal Root Certification Authority (SHA1 FRCA)](#sha-1-federal-root-certification-authority-sha1-frca)

The FPKI Trust Infrastructure CAs serve as the **Root** and **Trust Anchors** for the **Intermediate** and **Issuing CAs** operated by:

  * Federal Government Agencies
  * State, Local, Tribal, Territorial, and International Governments
  * Commercial Partners  

{% include alert-info.html content="A new effort is underway to establish Federal Government Root and Issuing CAs <!-- In this case, Root is not referring back to the idea that the FPKI Trust Infrastructure CAs are the "Root" as stated above?-->dedicated to Public Trust Transport Layer Security (TLS)/Secure Socket Layer (SSL) device certificates. <!--Suggest adding a lay-person's explanation of how Root and Issuing CAs in this case relate to P.T. TLS/SSL device certicates, what these devices are, and why this is important. -->Follow or contribute to the development of the Federal Government's new certificate policy for this Public Trust effort: https://github.com/uspki/policies" %}

The three FPKI Trust Infrastructure CAs' detailed functions are as follows:

### Federal Common Policy Certification Authority (_COMMON_) #### <!-- What do the 4 hash marks do re: formatting? --> 

For the Federal Government agencies, there is only one Root Certificate Authority--**COMMON**. 

COMMON serves as the FPKI Trust Anchor for the Federal Government and supports [Personal Identity Verification (PIV) credentials](https://piv.idmanagement.gov/#what-is-piv){:target="_blank"}. COMMON's design enables any certificate issued by any FPKI CA to validate its certificate path to a single Root CA. <!-- The uninitiated may not understand what the previous sentence means. Translation for lay audience? -->(See the following example where a person certificate, issued by a FPKI CA, can validate its certificate path back to COMMON, an FPKI Trust Anchor.)

![Example of COMMON Serving as the Trust Anchor]({{site.baseurl}}/img/fcpca-chainV5.png){:style="width:40%;float:right;"}
*Example of COMMON as the Trust Anchor*{:style="float:right;clear:both;font-size:14px;text-align:center;margin:20px 0 0 0;width:40%;"}

Many commercial vendors include the COMMON Trust Anchor (i.e., root certificate) in their commercial-off-the-shelf (COTS) products' Trust Stores<!--product(s)? for what?  Give example. --> [trust stores](../truststores/). This enables Federal Government systems to trust FPKI person and device certificates issued by FPKI CAs. It is also possible for commercial vendors to manually add the COMMON Trust Anchor to <!-- Correct? -->their products' Trust Stores, if it isn't available in their product by default. <!-- By default = meaning? -->

{% include alert-warning.html content="For example, the COMMON Trust Anchor <!-- Inconsistent terms:  "COMMON root certificate" above vs. "COMMON Trust Anchor" here? -->is included in the Trust Stores for browsers such as Chrome and Internet Explorer. Other browsers, such as Mozilla, do not include the COMMON Trust Anchor by default. " %}

### Federal Bridge Certificate Authority (_FBCA_) <!-- Re: decision to change all references to "certificate authority."  Okay in these names? -->

![FPKI Federal Bridge Logo]({{site.baseurl}}/img/fbca-logo.png){:style="float:left;width:15%;"}
The FBCA is the PKI Bridge, or link, between COMMON and the other CAs that comprise the FPKI, including Issuing CAs operated by Federal Government agencies; state, local, tribal, territorial, and international governments; and commercial partners<!-- Used same gov't and commercial terms as used above. -->. The FBCA provides a way <!-- Does FBCA provide the way or is IT the way? -->to map participating Issuing CAs so that their certificates validate to the COMMON Root Anchor (certificate).

![Example of the FBCA Certification Path]({{site.baseurl}}/img/fbca-chainV2.png){:style="width:40%;float:right;"}
*Example of a FBCA Certification Path*{:style="float:right;clear:both;font-size:14px;text-align:center;margin:20px 0 0 0;width:40%;"}The Issuing CAs related to the FBCA are cross-certified. <!-- Explain "cross-certified." -->These Issuing CAs have established a trust relationship with the FBCA and are audited <!-- Who audits (active voice)? -->for conformance to the certificate policies <!-- Policies are standards or something else?  Reference to these? -->. Commercial partners have extended the reach of the FPKI well beyond the boundaries of the Federal Government<!-- Because of the FBCA?  What is the point of this statement? -->.

### SHA-1 Federal Root Certificate Authority (_SHA1 FRCA_)

The SHA-1 Federal Root CA (SHA-1 FRCA) supports Federal Government agencies that still use certificates based on <!-- Based on? -->the deprecated SHA-1 signature hash algorithm. (The SHA-1 hash algorithm is an older algorithm that has been deemed as not secure enough for today’s standards.) Federal Government agencies should no longer be using this method of encryption (hash) for certificates.  However, the SHA-1 FRCA was created and maintained to facilitate the "backwards" interoperability for those systems unable to fully move to using the SHA-256 signature hash algorithm and to support system migrations to updated methods over time.

{% include alert-warning.html content="Use of certificates using the SHA-1 signature hash algorithm under current policy should be limited to applications in which the risks associated with the use of the deprecated SHA-1 algorithm have been deemed acceptable and will only be asserted within the SHA-1 FPKI." %}

### All FPKI Certificate Authorities

![FPKI Participating CAs]({{site.baseurl}}/img/participatingCAsV3.png){:style="width:35%;float:right;"}

A CA that is part of the FPKI is called a *Participating Certificate Authority*. Participating Certification Authorities include US Federal agencies, State, Local, Tribal, Territorial, international and commercial partners. The following sections describe the various FPKI Participating Certification Authorities.

Over 150 Participating Certificate Authorities form the FPKI network. The following table _labels_ or identifies individual CA categories that show when the CA was established, what types of communities it serves, or <!-- Or...?? -->


|**Certification Authority Category**|**Description**|
|-----------|---------------|
| **PKI Shared Service Provider (SSP) CA** | An SSP CA is **subordinate** to the Federal Common Policy CA (FCPCA). This means that its Root Certificate has been signed and issued by another CA--in this case by the FCPCA. Any certificate that the SSP CA creates, signs, and issues to people or devices is in the **trust chain** of the FCPCA. An SSP CA implementation must go through a certification process and adhere to strict Information Technology (IT) security and federal policy standards and requirements.  Once the CA meets these specifications, the SSP organization receives an **Authority to Operate (ATO)** and is contracted by the Federal Government to issue certificates to federal employees, contractors, and federal devices that are deployed in agency networks. |
| **Private Sector Certification Authorities** | A Private Sector Certification Authority that is cross-certified has shown a valid need to either conduct business or provide PKI services to the Federal government. |
| **Access Certificates for Electronic Services (ACES) Certification Authorities** | In a service model similar to the PKI SSP program, the ACES Certificate Authorities issues certificates to U.S. persons and authorized business representatives who have demonstrated need to access Federal network systems.  ACES was established in the late 1990s and was the predecessor for the development of the COMMON root and today's Federal Public Key Infrastructure. |
| Other Government Certification Authorities | These are CAs managed and operated by State, Local, Tribal, Territorial, or international government organizations. |
| Bridge Certification Authorities | Bridge CAs connect member PKIs and are designed to enable interoperability between different PKIs operating under their own Certificate Policy. A Bridge CA is not a Root. |
| Federal Agency Legacy | Prior to 2004, there were a number of agencies that had already deployed and invested significant funding into their own PKI and Certificate Authorities. Some of these agencies opted out of migrating to the PKI SSP program and continue to manage the existing infrastructures. These Federal Agency Legacy PKIs operate an internal PKI that is cross-certified with one or more FPKI Trust Infrastructure CAs.|
