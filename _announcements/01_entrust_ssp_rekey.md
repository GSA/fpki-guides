---
layout: default
navtitle: Entrust Federal SSP CA Re-key
title: Entrust Federal Shared Service Provider CA Re-key
pubDate: October 22, 2019
collection: announcements
permalink: announcements/entrust-ssp-rekey/
description: In August, Entrust re-keyed the Entrust Managed Services Root CA and the Entrust Managed Services SSP CA. Entrust migrated end-entity certificate issuance to the re-keyed Entrust Managed Services SSP CA on September 27, 2019.  This announcement provides details related to the CAs affected by this change, and steps enterprise administrators will need to take to prevent issues. 
---

{% include alert-info.html content="Recent changes to the Entrust Federal Shared Service Provider PKI could impact PIV credential authentication to your agency's systems, networks, and applications." %}

In August, Entrust re-keyed the Entrust Managed Services Root CA and the Entrust Managed Services SSP CA. The re-key activity was necessary to allow the Entrust Managed Services SSP CA to issue a new PIV content signing certificate with the maximum validity period permitted by policy.  Entrust migrated end-entity certificate issuance to the re-keyed Entrust Managed Services SSP CA on September 27, 2019.  

This announcement provides details related to the CAs affected by this change, and steps enterprise administrators will need to take to prevent issues. 

- [What will be impacted by this change?](#what-will-be-impacted-by-this-change)
- [Re-keyed certificate details](#re-keyed-certificate-details)
- [What should enterprise and network administrators do?](#what-should-enterprise-and-network-administrators-do)
- [Who can I contact for help or more information?](#who-can-i-contact-for-help-or-more-information)


## What will be impacted by this change?
- Performing smart card logon to the government networks using PIV credentials issued from the re-keyed Entrust Managed Services SSP CA
- Authenticating to the government virtual private network endpoints (VPNs) using PIV credentials issued from the re-keyed Entrust Managed Services SSP CA
- Authenticating to the government internet-facing authentication and collaboration portals issued from the re-keyed Entrust Managed Services SSP CA
- Agencies using internal OCSP responders will need to add entries for the re-keyed CA certificates


## Re-keyed certificate details
Details of the re-keyed CA certificates are listed below.

### Entrust Managed Services Root CA
- **Subject**: OU = Entrust Managed Services Root CA, OU = Certification Authorities, O = Entrust, C = US
- **Issuer**: CN = Federal Common Policy CA, OU = FPKI, O = U.S. Government, C = US
- **Validity**: August 14, 2019 to August 14, 2029 
- **Serial #**: 734a 
- **Authority Key Identifier**: ad0c7a755ce5f398c479980eac28fd97f4e702fc 
- **Subject Key Identifier**: 4954914c69443bc4f8022cf4f82d335689759810

Certificates *issued by* the re-keyed Entrust Managed Services Root CA will contain the following **updated** Certificate Revocation List (CRL) Distribution Point: http://rootweb.managed.entrust.com/CRLs/EMSRootCA3.crl 

{% include alert-warning.html content="Enterprise administrators may need to update network firewall rules to allow systems to access the CRL Distribution Point listed above. Failure to resolve the uniform resource locater above will prevent a system's ability to validate certificates issued by the re-keyed Entrust Managed Services Root CA." %}


### Entrust Managed Services SSP CA
- **Subject**: OU = Entrust Managed Services SSP CA, OU = Certification Authorities, O = Entrust, C = US
- **Issuer**: OU = Entrust Managed Services Root CA, OU = Certification Authorities, O = Entrust, C = US
- **Validity**: August 13, 2019 to July 13, 2029 
- **Serial #**: 448107b6
- **Authority Key Identifier**: 4954914c69443bc4f8022cf4f82d335689759810
- **Subject Key Identifier**: e6dd1a071acb6bba20b9963993f814dc98033727

Certificates *issued by* the re-keyed Entrust SSP CA will contain the following **updated** CRL Distribution Point: http://sspweb.managed.entrust.com/CRLs/EMSSSPCA3.crl

{% include alert-warning.html content="Enterprise administrators may need to update network firewall rules to allow systems to access the CRL Distribution Point listed above. Failure to resolve the uniform resource locater above will prevent a system's ability to validate certificates issued by the re-keyed Entrust Managed Services SSP CA." %}


## What should enterprise and network administrators do?
1. Download the re-keyed [Entrust Managed Services Root CA](https://enrollwebfed.managed.entrust.com/fssp/cda-docs/certs/FCPCA_to_Entrust_2019_08_14.cer){:rel="noopener noreferrer"} and [Entrust Managed Services SSP CA](https://enrollwebfed.managed.entrust.com/fssp/cda-docs/certs/EntrustRoot_to_EntrustSSP_2018_08_13.cer){:rel="noopener noreferrer"} certificates.
2. Publish the re-keyed certificates to the NTAuth certificate store to prevent issues with smart card logon to the government networks.  Instructions are available [here](https://piv.idmanagement.gov/networkconfig/trustedroots/#ntauth-enterprise-trust-store){:target="_blank"}{:rel="noopener noreferrer"}.
3. Confirm system firewall rules permit access to the new Entrust Federal SSP PKI CRL Distribution Points, outlined [above](#re-keyed-certificate-details).
 
**Note**: There may be additional steps required for administrators to update application certificate trust stores or enterprise certificate validation solutions (e.g., local Online Certificate Status Protocol responders) with the re-keyed CA certificates.   

## Who can I contact for help or more information?
If you need assistance, email us at fpki@gsa.gov. 
