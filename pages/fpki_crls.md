---
layout: default
title: CRLs And Certificates
permalink: /crls/
---

This section is to provide you the information and links for the Federal PKI Trust Infrastructure CA certificates, the certificate revocation lists (CRLs), and online certificate status protocol (OCSP).

1. [Certificate Revocation Lists](#certificate-revocation-lists)
1. [Illustration of a Certificate and CRL](#illustration-of-a-certificate-and-crl)
1. [Federal PKI CRLs and Certificates](#federal-pki-crls-and-certificates)
1. [Federal PKI Certificate Policies and Profiles](#federal-pki-certificate-policies-and-profiles)



### ***Federal PKI CRLs and Certificates***
* ***Federal Common Policy Certification Authority (Common or FCPCA)***

     * [Common CA Root Certificate](http://http.fpki.gov/fcpca/fcpca.crt)

     * [CRL](http://http.fpki.gov/fcpca/fcpca.cr) 

     * FCPCA DN:  **cn=Federal Common Policy CA, ou=FPKI, o=U.S. Government, c=US** 

     * sha1 Thumbprint: **90 5f 94 2f d9 f2 8f 67 9b 37 81 80 fd 4f 84 63 47 f6 45 c1**

     * [P7Cs (Issued By)](http://http.fpki.gov/fcpca/caCertsIssuedByfcpca.p7c)

     * [P7Cs (Issued To):](http://http.fpki.gov/fcpca/caCertsIssuedTofcpca.p7c)

* ***Federal Bridge Certification Authority (Bridge or FCPCA)***

     * [FBCA CRL](http://http.fpki.gov/bridge/fbca.crl)

     * [FBCA2013 CRL](http://http.fpki.gov/bridge/fbca2013.crl)    

     * [P7Cs (Issued By)](http://http.fpki.gov/bridge/caCertsIssuedByfbca2013.p7c)

     * [P7Cs (Issued To)](http://http.fpki.gov/bridge/caCertsIssuedTofbca2013.p7c)

* ***SHA-1 Federal Root Certification Authority (SHA1 FRCA)***

     * [SHA1 FRCA CRL](http://http.fpki.gov/sha1frca/sha1frca.cr)

     * [P7Cs (Issued By)](http://http.fpki.gov/sha1frca/caCertsIssuedBysha1frca.p7c)

     * [P7Cs (Issued To)](http://http.fpki.gov/sha1frca/caCertsIssuedTosha1frca.p7c)

* ***Legacy Federal Common Policy Certification Authority (Legacy FCPCA)***

     * [Legacy FCPCA CRL](http://fpkia.gsa.gov/CommonPolicy/CommonPolicy%281%29.crl)

### ***Federal PKI Certificate Polices and Profiles***

* ***Federal PKI Certificate Policies***

     * [Current Common CA and Bridge CA Certificate Policies](https://www.idmanagement.gov/IDM/s/article_content_old?tag=a0Gt0000000SfwS) 

- ***Federal PKI Certificate Profiles***

     * [FPKI X.509 Certificate and CRL Extensions Profile](https://www.idmanagement.gov/IDM/s/document_detail?Id=kA0t00000008Od8CAE)

     * [X.509 Certificate and Certificate Revocation List (CRL) Extensions Profile for PIV-I Cards](https://www.idmanagement.gov/IDM/s/document_detail?Id=kA0t00000008ObiCAE)

     * [X.509 Certificate and CRL Extensions Profile for the Shared Service Provider (SSP) Program](https://www.idmanagement.gov/IDM/s/document_detail?Id=kA0t0000000GmdcCAC)




### **Certificate Revocation Lists**
Various events can occur that require a certificate (or a set of certificates) to no longer be trusted.  When those events occur, the certificate needs to be revoked and Relying Parties notified,  Examples of such events include:

- Lost, stolen, damaged, or misused certificate.  
- Compliance issues with or a security breach of the Certification Authority that issued the certificate.  
- Termination of employment of certificate holder.
- Certificate holder switches to a different job role (e.g., switching from Role A to Role B, and the certificate is designated for use only by Role A), 
- Certification Authority that issued the certificate terminates its relationship with the Federal PKI.

> In technical terms, *a certificate should be revoked when the binding between the subject and the subject’s public key defined within a certificate is no longer considered valid*.

To notify Relying Parties of revoked certificates, CAs publish Certificate Revocation Lists (CRLs), which are simple lists of certificates that have been revoked and should no longer be relied upon.  

> Relying Parties Parties should obtain CRLs on an ongoing basis and process them accordingly. CAs publish CRLs on a regular schedule and on an emergency basis - as specified by applicable certificate policy.

> To help Relying Parties find CRLs, CAs make public both a description of how to obtain revocation information for the certificates they publish and an explanation of the consequences of using out of date revocation information.  

### ***Illustration of a Certificate and CRL***

<img src="/img/crls_diagram1.jpg"/>






