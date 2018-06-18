---
layout: default
navtitle: Microsoft Removal Solutions
title: Microsoft Removal Solutions
collection: trust-stores
permalink: trust-stores/microsoft-removal-solutions/
---
## Background 
In FY 2019, the U.S. Government is removing the Federal Public Key Infrastructure (FPKI) root certificate from the Microsoft certificate store. This change will affect all federal agencies and may have impact on the following services: 
- personal identity verification (PIV) authentication to the government networks
- agency web applications implementing client authentication (e.g. PIV authentication)
- authentication to Office 365
- validation of digital signatures
- other applications leveraging the Microsoft certificate store

To mitigate any impact this change may have, agencies will have to manually retrieve the U.S Government root CA certificate, import this certificate into the agency enterprise certificate stores, and ensure this change is propagated throughout their networks. The root certificate is available immediately and will remain unchanged. 

**All agencies are encouraged to complete this action by December 31, 2018.**

## Solutions ##
To limit the impact to your agency, you'll need to install COMMON as a trusted root certificate on all government-furnished, Windows workstations and devices. You should use a group policy object (GPO) managed in your agency network domain. You can also publish the root certificate from the enterprise network domain using certutil. 

- [Install Using Group Policy Objects](#install-using-group-policy-objects)
- [Install Using Certutil](#install-using-certutil)

The certificate details for COMMON are:  

| **Federal Common Policy CA (FCPCA/COMMON)**  | **Certificate Details**                             |
| :--------  | :-------------------------------     |
| Federal Common Policy CA<br>(sometimes shown as _U.S. Government Common Policy_) | http://http.fpki.gov/fcpca/fcpca.crt |
| Distinguished Name | cn=Federal Common Policy CA, ou=FPKI, o=U.S. Government, c=US |
| SHA-256 Thumbprint | 89 4e bc 0b 23 da 2a 50 c0 18 6b 7f 8f 25 ef 1f 6b 29 35 af 32 a9 45 84 ef 80 aa f8 77 a3 a0 6e |

{% include alert-warning.html content="You should never install a root certificate without verifying it." %} 

To verify it, download the certificate or email **fpki@gsa.gov** for an out-of-band copy.

Use _certutil_ to verify that the SHA-256 thumbprint of the certificate file matches the SHA-256 value provided above.

``` 
	certutil -hashfile fcpca.crt SHA256
```



### Install Using Group Policy Objects

You can add COMMON to the **Trusted Root Certification Authorities** certificate store by using group policy objects.

Microsoft TechNet articles and other online resources outline the general procedures for setting up group policy objects. Specific to the installation of COMMON: 

- You must have Enterprise Administrator privileges
- You can set up a group policy object from a Domain Controller (or other approaches you use in your agency)
- You may need to use multiple group policy objects to apply the configurations to all workstations in all groups and containers
- Settings are under:

```
	Computer Configuration\Policies\Windows Settings\Security Settings\Public Key Policies\
```

- Import the `fcpca.crt` into **Trusted Root Certification Authorities**



### Install Using Certutil

You can add COMMON to the **Enterprise Trust** certificate store by using _certutil_.

- You must have Enterprise Administrator privileges
- You can run _certutil_ from a Domain Controller 
- To publish/add a certificate to the **Enterprise Trust** certificate store:

```
	certutil –dspublish –f fcpca.crt RootCA
```

- To view all certificates in the **Enterprise Trust** certificate store:

```
	certutil –viewstore –enterprise RootCA
```

- To propagate from the Domain Controller(s) to the enterprise:

```
	gpupdate /force
```
