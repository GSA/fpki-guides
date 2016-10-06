---
layout: default
title: CRLs And Certificates
permalink: /crls/
---

This section will help you quickly understand the concept of and relationship between public key certificates (also known as digital certificates), certificate policy, and certificate revocation lists. The section will also provide you with important links and information pertaining to the  Federal PKI Trust Infrastructure Certification Authorities (CAs) that are commonly requested by Federal agencies.

1. [Certificate Policy](#certificate-policy)
2. [Public Key Certificates](#public-key-certificates)
3. [Certificate Revocation Lists](#certificate-revocation-lists)
4. [Illustration of a Certificate and CRL](#illustration-of-a-certificate-and-crl)
5. [Federal PKI CRLs and Certificates](#federal-pki-crls-and-certificates)
6. [Federal PKI Certificate Polices and Profiles](#federal-pki-certificate-polices-and-profiles)

### **Certificate Policy**

The Federal PKI helps Relying Parties make well-informed decisions (like what PKI credentials to accept for what purposes) via best-practice technical, operating, and policy requirements.  Much of that material directly addresses two essential PKI elements: 

- **Certificates**; and 
- **Certificate Revocation Lists** (almost always referred to as CRLs)

The degree to which a Relying Party can rely on (trust) a certificate for any purpose depends upon the policies associated with that certificate. Then,   as long as a certificate is valid (not expired, not revoked, legitimate CA signature), the certificate can be relied upon and used for its intended purpose(s). 

> The more strict the certificate policy associated with the certificate, the more a Relying Party can trust the certificate.  

### **Public Key Certificates**

Public key certificates are signed data structures that bind attributes of an entity (e.g., person or device) with its corresponding public key. Certificates are signed by a recognized and trustworthy CA, thus providing a guarantee that a specific public key belongs to a specific entity, and that the entity possesses the corresponding private key as well.

Certificates can be used to perform various tasks such as authentication, digital signing, and encryption as specified in the certificate.

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











