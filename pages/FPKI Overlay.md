---
layout: page
title: Using the FPKI Overlay of NIST SP 800-53
permalink: /Using-FPKI-Overlay/
---

**FPKI Overlay Playbook**
======================
**_Background_**
======================
NIST updated Special Publication (SP) 800-53 to include the concept of “Overlays”.  [NIST SP 800-53](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf) defines an overlay as follows “An overlay provides a set of security controls, control enhancements, and supplemental guidance for community-wide use or to address specialized requirements, technologies, or unique missions and environments of operation. For example, the federal government may decide to establish a government-wide set of security controls and implementation guidance for public key infrastructure (PKI) systems that could be uniformly applied to information systems. Multiple overlays can be applied to a single security control baseline. The tailored baselines that result from the overlay development process may be more or less stringent than the original security control baselines. Risk assessments provide information necessary to determine if the risk from implementing the tailored baselines falls within the risk tolerance of the organizations or communities of interest developing the overlays.”

The FPKI developed the [FPKI Overlay](https://www.idmanagement.gov/IDM/servlet/fileField?entityId=ka0t0000000TNQtAAO&field=File__Body__s) to specify a set of controls against which Federal Agency PKIs could perform their FISMA assessment.  However, commercial PKIs are encouraged to use the FPKI Overlay to assess and evaluate the robustness of their PKI systems.  It should be noted that PKI Audits are still required for PKIs cross-certified with the FPKI.  See the [FPKI Compliance Audit Requirements] (https://www.idmanagement.gov/IDM/s/document_detail?Id=kA0t00000008OcsCAE) for the specific PKI Audit requirements.

**_Rationale and Approach_**
======================
 
The FPKI Overlay was created to define a standard set of security controls against which PKIs could be assessed across the Government.  PKIs are Infrastructures that support other applications, systems, and networks and provide:
- Identity authentication
- Technical non-repudiation
- Data integrity and 
- Confidentiality  

Therefore, PKIs require higher levels of security, access control, and operational rigor than the data and systems they protect.  In addition, certain provisions and techniques specified in SP 800-53 were incompatible with PKI system and the FPKI certificate policy requirements.  Applying the FPKI Overlay will result in:
- Standard application of security controls in PKIs across Government
      - Specifies security controls unique to and critical for PKI operation
      - Standardizes the way PKIs Security Assessments are performed
- Cost savings 
      - The FPKI Profile reduces assessor time and staff required to determine what requirements to evaluate and how
- Enhanced the Trust across the Government
      - Builds upon the assurance provided by Policy Mapping

The FPKI Overlay was developed in a collaborative effort. The FPKI established a Special Multi-Agency WG comprised of FPKI Member Agencies.  The group started with the High Baseline of NIST 800-53. The group then evaluated each control and determined if there was anything special for PKI related to the control.  Then, the controls were tailored for PKI (Added, modified or removed control text / enhancements and assessment guidance was developed).

The following plays will provide guidance in how to use the FPKI Overlay

1. [Play 1 Start with the FPKI Overlay](#play-1-start-with-the-fpki-overlay)
2. [Play 2 Review the Controls](#play-2-review-the-controls)
3. [Play 3 Use 800-53A Guidance](#play-3-use-800-53a-guidance)

Questions related to this playbook should be directed to  [idmanagement@gsa.gov](mailto:idmanagement@gsa.gov).

#***Play 1 Start with the FPKI Overlay***

A typical 800-53 assessment requires the auditor to start with a baseline and select the controls that apply to the assessed system. The Overlay provides that set of tailored controls for a PKI system. The example below shows how the High Baseline requires assessment using controls in AC\-2 with enhancements (1), (2), (3), and (4).

![enter image description here](https://raw.githubusercontent.com/dasgituser/fpki-guides/staging/img/Overlay-AC-2_Enhancements_Table.jpg) 

The user of the FPKI Overlay, however, can ignore the controls listed in the High Baseline and use the controls in the FPKI Overlay.  The controls specified in the FPKI Overlay for AC-2 are shown below and this set of controls should be used by the assessor to evaluate the PKI System – no additional tailoring of the controls is necessary.

![enter image description here](https://raw.githubusercontent.com/dasgituser/fpki-guides/staging/img/Overlay-AC-2_Overlay_Table.jpg) 

###**Checklist**

 - [ ] Do NOT tailor the NIST SP 800-53 Baseline Controls
 - [ ] Use the FPKI Overlay for PKI Systems

###**Key Questions**

1. Do you understand that the NIST SP 800-53 Baseline set of security controls does not need to be tailored?
2. Do you recognize that the FPKI Overlay is a pre-tailored set of security controls assessors can use to evaluate PKI systems?

#***Play 2 Review the Controls***

The next step in the assessment is to evaluate the system against each control listed in the Overlay.  For AC-2, the assessor should review the controls and associated Enhancements.  As mentioned previously, the FPKI modified the controls in the High Baseline.  For AC-2, the group modified AC\-2a and decided some controls were not applicable.  The figure below show the controls that were selected for the Overlay and how they were modified.

![enter image description here](https://raw.githubusercontent.com/dasgituser/fpki-guides/staging/img/Overlay-AC-2_Table.jpg) 

The FPKI determined that some controls were not applicable. AC-2a needed modification to prohibit group, guest, and temporary accounts. The figure below shows the details of AC-2 controls in selected by the Overlay.

![enter image description here](https://raw.githubusercontent.com/dasgituser/fpki-guides/staging/img/Overlay-AC-2.jpg)

The FPKI created specific PKI Enhancement controls where additional specification was needed for the PKI system.  In addition, the assessor must evaluate the system against each control enhancement identified in the Overlay as shown below.  While the High Baseline required Enhancements 1\-4, the FPKI Overlay requires a different set of enhancements and adds two PKI\-specific enhancements for assessors to evaluate as shown in the figure below.

![enter image description here](https://raw.githubusercontent.com/dasgituser/fpki-guides/staging/img/Overlay-AC-2_Enhancements_FPKI.jpg) 

###**Checklist**

 - [ ] Review the controls specified in the FPKI Overlay
 - [ ] Identify any controls that do not apply 
 - [ ] Begin Assessing the PKI system against those controls

###**Key Questions**

1. Do you understand how the High Baseline security controls were modified to apply to PKI Systems?
2. Do you understand that tailoring is not necessary \- although some controls may not apply in your environment?

#***Play 3 Use 800-53A Guidance***

Once the assessor has identified the controls to be used in the assessment, the FPKI Overlay of 800\-53A can be used as guidance for performing the assessment.  The figure below shows how the controls in the Overlay map to the Overlay Guidance.

![enter image description here](https://raw.githubusercontent.com/dasgituser/fpki-guides/staging/img/Overlay-FPKI_Overlay_Guidance.jpg) 

###**Checklist**

- [ ] Understand that the FPKI Overlay is a list of WHAT to check 
- [ ] Understand that the FPKI Overlay of 800-53A is a list of HOW to check the controls

###**Key Questions**

1. Do you understand that the FPKI Overlay of 800-53 is a list of security controls used in an assessment of a PKI System?
2. Do you understand that the FPKI Overlay of 800-53A provides guidance on how to evaluate a system against the security controls identified in the Overlay?
