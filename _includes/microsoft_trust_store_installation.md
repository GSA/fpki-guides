To limit the impact to your agency, you'll need to install COMMON as a trusted root certificate on all government-furnished, Windows workstations and devices.  You should use a group policy object (GPO) managed in your agency network domain.   You can also publish the root certificate from the enterprise network domain using certutil. 

- [Install Using Group Policy Objects](#install-using-group-policy-objects)
- [Install Using Certutil](#install-using-certutil)

The certificate details for COMMON are:  

| **Federal Common Policy CA (FCPCA/COMMON)**  | **Certificate Details**                             |
| :--------  | :-------------------------------     |
| Federal Common Policy CA<br>(sometimes shown as _U.S. Government Common Policy_) | http://http.fpki.gov/fcpca/fcpca.crt |
| Distinguished Name | cn=Federal Common Policy CA, ou=FPKI, o=U.S. Government, c=US |
| SHA-1 Thumbprint | 90 5f 94 2f d9 f2 8f 67 9b 37 81 80 fd 4f 84 63 47 f6 45 c1 |

{% include alert-warning.html content="You should never install a root certificate without verifying it." %} 

To verify it, download the certificate or email **fpki@gsa.gov** for an out-of-band copy.  

Use a utility (_certutil_ on Windows or _openssl_ or _sha1sum_ on UNIX platforms) to verify that the SHA-1 thumbprint of the certificate file matches the SHA-1 value provided above.  

``` 
	certutil -hashfile fcpca.crt SHA1
```

```	
	openssl dgst -sha1 fcpca.crt
```

```	
	sha1sum fcpca.crt
```

### Install Using Group Policy Objects

You can add COMMON to the **Trusted Root Certification Authorities** certificate store by using group policy objects.  

Microsoft TechNet articles and other online resources outline the general procedures for setting up group policy objects.  Specific to the installation of COMMON: 

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
	certutil –viewstore –enterprise Root
```

- To propagate from the Domain Controller(s) to the enterprise:

```
	gpupdate /force
```
