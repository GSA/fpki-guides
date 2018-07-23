<br>

### Where can I find a copy of the FNR webinar briefing slides?
A PDF version of the webinar briefing can be found <a target="_blank" href="{{site.baseurl}}/docs/FPKI_Trust_Removal_-_FNR_Webinar_07182018.pdf">here</a>.


### Can you explain this change to me in a different way?
- Current State: With our current distribution of COMMON within Microsoft’s certificate store, certificates issued from the Federal PKI can be validated to a known root certification authority.
- Future State: Upon our removal of COMMON from Microsoft’s certificate store, certificates issued from the Federal PKI will no longer be validated to a known root certification authority. Failure to successfully validate a certificate’s chain will prevent authentication and digital signature validation. We can prevent errors by redistributing COMMON.


### What happens if I don’t distribute COMMON?

**1.  Authentication issues (High Impact)**
- Workstations 
- Websites  
- Applications (internal or cross-agency)
- VPNs

**2.  Error fatigue (Medium Impact)**
- Removal of COMMON could result in unexpected application errors or system behavior for legacy and GOTS products

**3.  Digital signature validation (Low Impact)**
- Email
- Documents and files (e.g., Microsoft Word)


### Can you provide an example of what errors might look like if I do not redistribute COMMON?

Sample error in Chrome while navigating to an intranet site whose SSL/TLS certificate does not chain to a trusted root CA:
![error_navigation]({{site.baseurl}}/img/error_navigation.png)

Sample error in Chrome where client (PIV) authentication fails due to a user’s certificate not chaining to a trusted root CA:
![error_piv_auth]({{site.baseurl}}/img/error_piv_auth.png)

Sample error in Outlook where a signed email does not chain to a trusted root CA:
![error_sig_val]({{site.baseurl}}/img/error_sig_val.png)


### Which Microsoft products will be affected?
The table below presents Windows versions affected by this change:

| **Personal Computer** |  **Server** | 
| :-------- |  :-------- | 
| Windows 10  | Windows Server 2016 |
| Windows 8.1   | Windows Server 2012 R2 |
| Windows 8   | Windows Server 2008 R2 |
| Windows 7   | |
| Windows Vista   | | 

If you have other versions of Windows installed in your environment, please let us know!


### Is COMMON changing?

No. COMMON’s certificate will not change. The only change will be in how COMMON is distributed to devices.


### How can I verify that COMMON has been redistributed to my system?

1. Open Microsoft Certificate Viewer:  **Start**, type **certmgr.msc**, and then press **Enter**

2. Navigate to **Trusted Root Certification Authorities** -> **Certificates** 


You may see two (or more) copies of COMMON, depending on how it is being distributed.

Typically, **enterprise** distributed copies will be presented with an **Intended Purposes** value of *ALL* and a **Friendly Name** of *None*.
**Microsoft** distributed copies will be presented with multiple Intended Purposes values and a Friendly Name of *U.S. Government Common Policy*.

![Sample Steps]({{site.baseurl}}/img/verify_trust.png){:style="width:85%;"}

In the screenshot above, we see three entries for COMMON.
- The first entry (surrounded by a “dashed” line) is being populated from the Microsoft CTL. Note the values associated with Intended Purposes and Friendly Name.
- The remaining two entries result from following the procedures in this Playbook.


****
2. Display physical certificate stores 

     **View** -> **Options** -> ensure the Physical certificate stores entry is *checked*
****


### Can multiple copies of COMMON coexist in my certificate store?

Yes! An enterprise distributed copy of COMMON will not conflict with the Microsoft distributed copy.


### My agency gets PIV cards from [Issuer Name]. I won’t be affected by this, right?

Incorrect. Your PIV credential issuer has no impact on whether your agency is affected by this change. The impact is related to how COMMON is distributed to federal enterprise devices by agency-specific, configuration management practices.  It is not related to how credentials are generated or issued.

### Will my PIV credentials break or need to be updated when this change happens?

No. PIV credentials will not break, need to be updated, or replaced. Our credentials will not be changing or affected by this update.


### How can I test the impact of Microsoft’s removal of COMMON?

It is possible to simulate the Microsoft certificate store’s future state.  It is **not** recommended due to the potential for **destructive outcomes**. If interested in learning more, please contact us at fpki@gsa.gov.


### Should I be concerned with “Bring Your Own Device” (BYOD) program devices?
If BYOD program users are performing any of the following activities, redistributing COMMON is required to avoid issues:
- PIV smart card logon (to VPNs or intranet sites) 
- Validate PIV digital signatures (emails or documents)
- Navigate to intranet pages whose SSL/TLS certificates chain to COMMON


Yes, COMMON will need to be redistributed to BYOD resources to prevent issues.
