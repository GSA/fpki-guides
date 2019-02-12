<br>

### Where can I get the DHS Federal Network Resilience (FNR) Webinar slides?<br>
The FNR Webinar slides (.pdf) can be found [here.]({{site.baseurl}}/docs/FPKI_Trust_Removal_-_FNR_Webinar_07182018.pdf){:target="blank"}

### I'm still not sure I get it. Can you explain this change to me in a different way?
- **Current State**: Microsoft distributes the Federal Common Policy CA (FCPCA) (i.e., COMMON) root certificate from its certificate store to all Microsoft workstations and devices. This means that Microsoft *trusts* COMMON as a *known root certification authority*. Because Microsoft *trusts* COMMON, it trusts all Federal PKI CA-issued certificates because they validate to COMMON.
- **Future State**: When COMMON is removed from Microsoft’s certificate store, Microsoft *will not trust* COMMON or any Federal PKI CA-issued certificates. If an agency has not redistributed COMMON by this time, users could experience [authentication errors and other issues](#what-happens-if-i-dont-redistribute-common). **You can prevent errors and issues by redistributing COMMON as soon as possible.**


### What happens if I don’t redistribute COMMON?

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


### What kinds of errors could I see?

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

### Which Microsoft products will be affected?

| **Personal Computer** |  **Server** | 
| :-------- |  :-------- | 
| Windows 10  | Windows Server 2016 |
| Windows 8.1   | Windows Server 2012/2012 R2 |
| Windows 8   | Windows Server 2008/2008 R2 |
| Windows 7   | |
| Windows Vista   | | 

If you use other Windows versions in your environment, please let us know (fpki@gsa.gov)!

### When will this change occur?

The Federal PKI's target date for mitigation actions was *December 31, 2018*.  We anticipate that COMMON will be removed from the Microsoft certificate store in early 2019.

### Is COMMON changing?

No. *COMMON is **not** changing.* The only change will be the way in which COMMON is distributed to workstations and devices.

### How can I verify that COMMON has been successfully redistributed to my workstation or device?

Please review [Verify Redistribution of COMMON](#verify-redistribution-of-common).

### Can multiple copies of COMMON coexist in my workstation's or device's certificate store?

Yes! But don't worry - an enterprise-distributed copy of COMMON won't conflict with Microsoft's distributed copy.

### My agency gets PIV cards from [Issuer Name]. I won’t be affected by this change, right?

Incorrect. Your PIV credential issuer and how agency credentials are generated or issued will *not* be impacted by this change. The impact relates to COMMON's removal from Microsoft's trust stores and how to mitigate this impact by redistributing COMMON to federal enterprise workstations and devices. (See [What happens if I don’t redistribute COMMON?](#what-happens-if-i-dont-redistribute-common).)  

### Will my PIV credentials break or need to be updated or replaced when this change occurs?

No. PIV credentials will *not* be affected by this change. 

### Do I need to redistribute COMMON to my “Bring Your Own Device” (BYOD) program device?

As a BYOD program device user, you'll need to redistribute COMMON if you:
- Use your PIV credential to log into intranet sites or VPNs 
- Validate PIV digital signatures (emails or documents)
- Navigate to intranet pages whose SSL/TLS certificates chain to COMMON

### Can I test the impact of Microsoft’s removal of COMMON?

It is possible to simulate the Microsoft certificate store’s future state.  It is **not** recommended due to the potential for **destructive outcomes**. If you're interested in learning more, please contact us at fpki@gsa.gov.
