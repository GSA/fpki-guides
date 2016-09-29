---
layout: page
title: CRLs And Certificates
permalink: /CRLs-And-Certificates/
---


This section will help you quickly understand the concept of and relationship between public key certificates (also known as digital certificates), certificate policy, and certificate revocation lists. The section will also provide you with important links and information pertaining to the  Federal PKI Trust Infrastructure Certification Authorities that are commonly requested by Federal agencies.

1. [Certificate Policy](#certificate-policy)
2. [Public Key Certificates](#public-key-certificates)
3. [Certificate Revocation Lists](#certificate-revocation-lists)
4. [Some Important Links and Information](#some-important-links-and-information)

###**Certificate Policy**
The reason why the Federal PKI works so well, and participants as well as Relying Parties can make well-informed decisions (like what PKI credentials to accept for what purposes) is because the Federal PKI Policy Authority has established clear technical, operating, and policy requirements as well as best practices.  Much of that material directly addresses the core artifacts within the Federal PKI (actually, any PKI):  

- **Certificates**; and 
- **Certificate Revocation Lists** (almost always referred to as CRLs)

In short, Federal PKI policies dictate how to issue, use, and maintain certificates.  The degree to which a Relying Party can rely on (trust) a certificate depends upon the rigor of the policies associated with that certificate (the more rigorous the policy, the more trust a Relying Party has in that certificate).  In general, as long as a certificate is valid, the certificate can be relied upon and used for its intended purpose(s). 

###**Public Key Certificates**

Public key certificates are signed data structures that bind attributes of an entity (such as a person or device) with its corresponding public key. Certificates are signed by a recognized and trustworthy CA, thus providing a guarantee that a specific public key indeed belongs to a specific entity, and that the entity possesses the corresponding private key as well.

> Federal PKI member Certification Authorities issue IETF X.509 certificates in accordance with Federal PKI Certificate Profiles.

The certificate includes information about the public key, information about the identity of the certificate owner (to who the certificate is issued), and the digital signature of an Certification Authority that verified the certificate's contents are correct. 

> Certificates can be used to perform various tasks such as authentication, digital signing, and encryption as specified in the certificate.
>  
> If the certificate is valid (not expired, not revoked, verified digital signature of the Certification Authority in the certificate), then a relying party can trust the certificate.

###**Certificate Revocation Lists**
Things happen that require a certificate (or even a whole set of certificates) to no longer be trusted.  This includes a certificate being lost, stolen, damaged, or misused by the designated certificate holder.  It may also include issues not with the certificate itself, but rather "external" events such as compliance issues with or a security breach of the Certification Authority that issued the certificate.  More mundane reasons include the certificate holder being terminated,  the certificate holder  switching to different role (e.g., the end user switched from Role A to Role B, and the certificate is designated for use only by Role A), and the issuing Certification Authority terminating its relationship with the Federal PKI.

> Technically speaking, *a certificate should be revoked when the binding between the subject and the subject’s public key defined within a certificate is no longer considered valid*.

In all such cases, Relying Parties need to be notified that they should no longer trust the affected certificates.  To do accomplish this, the Certification Authorities that issued the certificates publish CRLs that Relying Parties need to obtain and process accordingly.

> Simply stated, a CRL is list of certificates that have been revoked and should no longer be relied upon.

> Certification Authorities routinely publish CRLs on a periodic basis with the time interval between publications specified by the policy applicable to the Certification Authority. 

>Emergency CRLs may be published as needed, in accordance with the policy applicable to the Certification Authority.

To help Relying Parties find CRLs, CAs make public both a description of how to obtain revocation information for the certificates they publish and an explanation of the consequences of using out of date revocation information.  

Just so you are aware, there are other mechanisms for Relying Parties to obtain revocation information including Server-based Certificate Validation Protocol (SCVP) and Online Certificate Status Protocol (OCSP).  Both SCVP and OCSP work in real time as opposed to CRLs which are processed at specified time intervals.  

> Relying Parties should assess and determine which revocation status approach is best for them, weighing issues such as cost, technical/infrastructure capabilities, and the benefits of obtaining status information as soon as possible.

###**Some Important Links and Information**
The following provides important links and information pertaining to the  Federal PKI Trust Infrastructure Certification Authorities that are commonly requested by Federal agencies.

####***A. Illustration of a Certificate and CRL***

<img src="/img/crls_diagram1.jpg"/>

####***B. Federal Common Policy Certification Authority (Common or FCPCA)***

Common CA Root Certificate:   [http://http.fpki.gov/fcpca/fcpca.crt](http://http.fpki.gov/fcpca/fcpca.crt)

> To request a secure distribution of the Common CA Root Certificate, please contact the FPKIMA at fpki-help@gsa.gov

The DN for the Common Policy CA is:  **cn=Federal Common Policy CA, ou=FPKI, o=U.S. Government, c=US** 

The sha1 Thumbprint is:   **90 5f 94 2f d9 f2 8f 67 9b 37 81 80 fd 4f 84 63 47 f6 45 c1**

P7Cs (Issued By):  [http://http.fpki.gov/fcpca/caCertsIssuedByfcpca.p7c](http://http.fpki.gov/fcpca/caCertsIssuedByfcpca.p7c)

P7Cs (Issued To):  [http://http.fpki.gov/fcpca/caCertsIssuedTofcpca.p7c](http://http.fpki.gov/fcpca/caCertsIssuedTofcpca.p7c)

FCPCA CRL: [http://http.fpki.gov/fcpca/fcpca.cr](http://http.fpki.gov/fcpca/fcpca.cr) 

####***C. Federal Bridge Authority (Bridge or FBCA)***

P7Cs (Issued By): [http://http.fpki.gov/bridge/caCertsIssuedByfbca2013.p7c](http://http.fpki.gov/bridge/caCertsIssuedByfbca2013.p7c)

P7Cs (Issued To): [http://http.fpki.gov/bridge/caCertsIssuedTofbca2013.p7c](http://http.fpki.gov/bridge/caCertsIssuedTofbca2013.p7c)

FBCA CRL: [http://http.fpki.gov/bridge/fbca.crl](http://http.fpki.gov/bridge/fbca.crl)

FBCA2013 CRL: [http://http.fpki.gov/bridge/fbca2013.c](http://http.fpki.gov/bridge/fbca2013.crl)

####***D. SHA-1 Federal Root Certification Authority (SHA1 FRCA)***

P7Cs (Issued By): [http://http.fpki.gov/sha1frca/caCertsIssuedBysha1frca.p7c](http://http.fpki.gov/sha1frca/caCertsIssuedBysha1frca.p7c)

P7Cs (Issued To): [http://http.fpki.gov/sha1frca/caCertsIssuedTosha1frca.p7c](http://http.fpki.gov/sha1frca/caCertsIssuedTosha1frca.p7c)

SHA1 FRCA CRL: [http://http.fpki.gov/sha1frca/sha1frca.cr](http://http.fpki.gov/sha1frca/sha1frca.cr)

####***E. Legacy Federal Common Policy Certification Authority*** (Legacy FCPCA)***

Legacy FCPCA CRL: [http://fpkia.gsa.gov/CommonPolicy/CommonPolicy(1).crl](http://fpkia.gsa.gov/CommonPolicy/CommonPolicy%281%29.crl)

####***F. Federal PKI Certificate Policies***

The Current Common CA and Bridge CA Certificate Policies are located at: [https://www.idmanagement.gov/IDM/s/article_content_old?tag=a0Gt0000000SfwS](https://www.idmanagement.gov/IDM/s/article_content_old?tag=a0Gt0000000SfwS) 

####***G. Federal PKI Certificate Profiles***

[FPKI X.509 Certificate and CRL Extensions Profile](https://www.idmanagement.gov/IDM/s/document_detail?Id=kA0t00000008Od8CAE)

[X.509 Certificate and Certificate Revocation List (CRL) Extensions Profile for PIV-I Cards](https://www.idmanagement.gov/IDM/s/document_detail?Id=kA0t00000008ObiCAE)

[X.509 Certificate and CRL Extensions Profile for the Shared Service Provider (SSP) Program](https://www.idmanagement.gov/IDM/s/document_detail?Id=kA0t0000000GmdcCAC)










