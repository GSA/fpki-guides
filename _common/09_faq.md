---
layout: default 
title: Frequently Asked Questions
collection: common
permalink: common/faq/
---

<br>
 
### Will my PIV credentials break or need to be updated or replaced when this change occurs?

No. PIV credentials will *not* be affected by this change. 

<br>

### Is the Federal Common Policy CA changing?

Yes. In **October 2020**, the Federal Government established a new Federal Public Key Infrastructure (FPKI) Root Certification Authority (CA) known as the **Federal Common Policy CA G2**. 

Between December 2020 and May 2021, CAs cross-certified by the existing Federal Common Policy CA will be migrated to the Federal Common Policy CA G2.  Once the migration is complete, the existing Federal Common Policy CA (FCPCA) will be decommissioned (planned for May 2021). 

<br> 

### When will this change occur?

Tentative time-line:
- **October 14, 2020**: The Federal PKI Management Authority (FPKIMA) established the new Federal Common Policy CA G2
- **October 15, 2020**: The FPKIMA issued and distributed a cross certificate from the Federal Common Policy CA G2 to the Federal Bridge CA G4
- **November 18, 2020**: The FPKIMA will issue and distribute certificates to migrate agency and affiliate CAs cross-certified by the Federal Common Policy CA to the Federal Common Policy CA G2 
- **December 2020 to May 2021**: All agencies will need to transition from using the Federal Common Policy CA as a trust anchor to the Federal Common Policy CA G2 *(approximately six months)*
- **May 2021**: The FPKIMA will decommission the existing Federal Common Policy CA

<br>

### Which operating systems will be affected?

All major operating systems (i.e., Microsoft Windows, macOS, iOS, *nix) will be affected.

<br>

### What happens if I don’t distribute the Federal Common Policy CA G2 (FCPCA G2) CA certificate?

#### 1. (High Impact) Authentication failures:
- Workstations 
- Websites  
- Applications (internal and cross-agency)
- Virtual Private Networks (VPNs)

#### 2. (Medium Impact) Error fatigue:
- Unexpected application errors and system behavior for legacy and government-off-the-shelf (GOTS) products

#### 3. (Low Impact) Digital-signature validation failures:
- Email
- Documents and files (e.g., Microsoft Word)


<br>

### What kinds of errors could I see (Windows)?

*Sample Chrome error when a user navigates to an intranet site whose SSL/TLS certificate doesn't chain<br>to a trusted root CA:*
     <br>
     ![error_navigation]({{site.baseurl}}/img/error_navigation.png)

*Sample Chrome error when PIV authentication fails because the user’s certificate doesn't chain<br>to a trusted root CA:*
     <br>
     ![error_piv_auth]({{site.baseurl}}/img/error_piv_auth.png)

*Sample Microsoft Outlook error when a digital signature certificate for an email doesn't chain<br>to a trusted root CA:*
     <br>
     <br>
     ![error_sig_val]({{site.baseurl}}/img/error_sig_val.png)
	 
<br>

### What kinds of errors or messages would I see (macOS)?

*Sample Safari error when a user navigates to an intranet site whose SSL/TLS certificate doesn't chain<br>to a trusted root CA:*
     <br>
     ![safari_untrusted_ssl]({{site.baseurl}}/img/safari_untrusted_ssl.png){:style="width:85%;"}
    
*Sample Safari error where client (PIV) authentication fails because a user’s certificate doesn't chain to a trusted root CA:*
     <br>
     ![safari_untrusted_auth]({{site.baseurl}}/img/safari_untrusted_auth.png){:style="width:85%;"}
   
*Sample Chrome error when a user navigates to an intranet site whose SSL/TLS certificate doesn't chain<br>to a trusted root CA:*
     <br>
     ![chrome_untrusted_ssl]({{site.baseurl}}/img/chrome_untrusted_ssl.png){:style="width:85%;"}

*Sample Chrome error where client (PIV) authentication fails because a user’s certificate doesn't chain to a trusted root CA:*
     <br>
     ![chrome_untrusted_auth]({{site.baseurl}}/img/chrome_untrusted_auth.png){:style="width:85%;"}

<br>

### What kinds of errors or messages would I see (iOS)?

*Sample Safari error when a user navigates to an intranet site whose SSL/TLS certificate doesn't chain<br>to a trusted root CA:*
     <br>
     ![ios_safari_untrusted_ssl]({{site.baseurl}}/img/ios_safari_untrusted_ssl.png){:style="width:30%;"}

*Sample Chrome error when a user navigates to an intranet site whose SSL/TLS certificate doesn't chain<br>to a trusted root CA:*
     <br>
     ![ios_chrome_untrusted_ssl]({{site.baseurl}}/img/ios_chrome_untrusted_ssl.png){:style="width:30%;"}

<br>

### How can I verify that FCPCA G2 has been successfully distributed to my workstation or device?

Please review [verify distribution of FCPCA G2]({{site.baseurl}}/common/verify-os-distribution/).

<br>

### My agency gets PIV cards from [Issuer Name]. I won’t be affected by this change, right?

Incorrect. Your PIV credential issuer and how agency credentials are generated or issued will *not* be impacted by this change. The impact relates to how federal enterprise workstations and devices validate PIV credential certificates.  

<br>

### Do I need to distribute FCPCA G2 to my “Bring Your Own Device” (BYOD) program device?

As a BYOD program device user, you'll need to distribute FCPCA G2 if you:
- Use your PIV credential to log into intranet sites or VPNs 
- Validate PIV digital signatures (emails or documents)
- Navigate to intranet pages whose SSL/TLS certificates chain to FCPCA G2
