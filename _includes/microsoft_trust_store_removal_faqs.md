<br>

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

1. Open Microsoft Certificate Viewer

     **Start**, type **certmgr.msc**, and then press **Enter**

2. Display physical certificate stores 

     **View** -> **Options** -> ensure the Physical certificate stores entry is *checked*

3. Navigate to **Trusted Root Certification Authorities** -> **Certificates** 


You may see two (or more) copies of COMMON, depending on how it is being distributed.

Typically, **enterprise** distributed copies will be presented with an Intended Purposes value of *ALL* and a Friendly Name of *None*.
**Microsoft** distributed copies will be presented with multiple Intended Purposes values and a Friendly Name of *U.S. Government Common Policy*.

![Sample Steps]({{site.baseurl}}/img/verify_trust.png){:style="width:85%;"}

In the screenshot above, we see three entries for COMMON.
- The first entry (surrounded by a “dashed” line) is being populated from the Microsoft CTL. Note the values associated with Intended Purposes and Friendly Name.
- The remaining two entries resulted from following procedures in this Playbook.


### My agency gets PIV cards from [Issuer Name]. I won’t be affected by this, right?

Incorrect. Your PIV credential issuer has no impact on whether your agency is affected by this change. The impact is related to how COMMON is distributed to federal enterprise devices by agency-specific configuration management practices.  It is not related to how credentials are generated or issued.


### How can I test the impact of Microsoft’s removal of the Federal Common Policy CA (COMMON)?

It is possible to simulate the Microsoft certificate store’s future state.  It is **not** recommended due to the potential for **destructive outcomes**. If interested in learning more, please contact us at fpki@gsa.gov.


### My agency has a "Bring Your Own Device" (BYOD) program. Will COMMON need to be pushed to these non-GFE devices?

Yes, COMMON will need to be redistributed to BYOD resources to prevent issues.
