<br>

### Where can I get the DHS Federal Network Resilience (FNR) Webinar slides?
The FNR Webinar slides (.pdf) can be found <a target="_blank" href="{{site.baseurl}}/docs/FPKI_Trust_Removal_-_FNR_Webinar_07182018.pdf">here</a>. Upcoming FNR Webinar dates are:
* Thursday, August 2, 2018 – 1:00 pm – 2:30 pm (Eastern time)
* Wednesday, September 5 - 1:00 pm – 2:30 pm (Eastern time)

Adobe Connect Webinar:
https://dhsconnect.connectsolutions.com/FPKICertificateStore/
Dial-in:  1-855-852-7677, Access code: 9999 2977 3169#

Additional webinars may be scheduled if needed.

### I'm still not sure I get it. Can you explain this change to me in a different way?
- **Current State**: Microsoft distributes COMMON from its certificate store to all Microsoft workstations and devices. This means that Microsoft *trusts* COMMON as a *known root certification authority*. Because Microsoft *trusts* COMMON, it trusts all Federal PKI CA-issued certificates because they validate to COMMON.
- **Future State**: When COMMON is removed from Microsoft’s certificate store, Microsoft *will not trust* COMMON or any Federal PKI CA-issued certificates. If an agency has not redistributed COMMON by this time, users could experience [authentication errors and other issues](#what-happens-if-i-dont-redistribute-common). **We can prevent errors and issues by redistributing COMMON.**


### What happens if I don’t redistribute COMMON?

#### 1. (High Impact) Authentication failures
- Workstations 
- Websites  
- Applications (internal or cross-agency)
- Virtual Private Networks (VPNs)

#### 2. (Medium Impact) Error fatigue
- Removal of COMMON could result in unexpected application errors and system behavior for legacy and Government, off-the-Shelf (GOTS) products

#### 3. (Low Impact) Digital-signature validation failures
- Email
- Documents and files (e.g., Microsoft Word)


### What kinds of errors or messages would I see?

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
These Windows versions will be affected:

| **Personal Computer** |  **Server** | 
| :-------- |  :-------- | 
| Windows 10  | Windows Server 2016 |
| Windows 8.1   | Windows Server 2012 R2 |
| Windows 8   | Windows Server 2008 R2 |
| Windows 7   | |
| Windows Vista   | | 

If you use other Windows versions in your environment, please let us know (fpki@gsa.gov)!

### When will this change occur?

The Federal PKI community's target date for mitigation actions is *December 31, 2018*.  We anticipate that COMMON will be removed from the Microsoft certificate store in early 2019.

### Is COMMON changing?

No. COMMON will not change. The only change will be in how COMMON is distributed to workstations and devices.

### How can I verify that COMMON has been redistributed to my workstation or device?

1. Open Microsoft Certificate Manager:  **Start**, type **certmgr.msc**, and then press **Enter**.

2. Navigate to **Trusted Root Certification Authorities** -> **Certificates**. 

3. You may see 2 (or more) copies of COMMON, depending on how they were distributed. The screenshot below lists 3 entries for COMMON:
* The first entry (“dashed” border) is from the Microsoft Certificate Trust List (CTL) (i.e., certificate store). Microsoft-distributed copies show multiple **Intended Purposes** values and a **Friendly Name** of *U.S. Government Common Policy*.
* The remaining two entries (examples of enterprise-distributed copies) result from following the procedures in this Playbook. Enterprise-distributed copies show an **Intended Purposes** value of *ALL* and a **Friendly Name** of *None*.

![Sample Steps]({{site.baseurl}}/img/verify_trust.png){:style="width:85%;"}

*Optionally, you can use this method:* 

1. From the **Trusted Root Certification Authorities** screen, select **View** -> **Options**.
2. In the **View Options** box, *check* the **Physical certificate stores** checkbox. 
3. At the main screen's side panel, click the **>** next to **Trusted Root Certification Authorities** to see a list of sub-directories: *Registry*, *Third Party*, *Group Policy*, *Enterprise*, and *Smart Card*

If you redistributed COMMON via _certutil_ (for example), COMMON will be listed in the *Enterprise* sub-directory.

### Can multiple copies of COMMON coexist in my workstation's or device's certificate store?

Yes! But don't worry - an enterprise-distributed copy of COMMON won't conflict with Microsoft's distributed copy. 


### My agency gets PIV cards from [Issuer Name]. I won’t be affected by this change, right?

Incorrect. Your PIV credential issuer and how credentials are generated or issued will not be impacted by this change. COMMON removal from the Microsoft certificate store will impact federal agencies' workstations, devices, etc. (See [What happens if I don’t redistribute COMMON?](#what-happens-if-i-dont-redistribute-common))   

### Will my PIV credentials break or need to be updated or replaced when this change occurs?

No. Our PIV credentials will *not* be affected by this change. 

### Do I need to redistribute COMMON to my “Bring Your Own Device” (BYOD) program device?

As a BYOD program device user, if you perform one of these activities, you'll need to redistribute COMMON:
- PIV credential login (to intranet sites or VPNs) 
- Validating PIV digital signatures (emails or documents)
- Navigating to intranet pages whose SSL/TLS certificates chain to COMMON


### Can I test the impact of Microsoft’s removal of COMMON?

It is possible to simulate the Microsoft certificate store’s future state.  It is **not** recommended due to the potential for **destructive outcomes**. If interested in learning more, please contact us at fpki@gsa.gov.
