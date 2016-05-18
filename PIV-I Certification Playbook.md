**PIV-I Certification Playbook**
======================

Personal Identity Verification Interoperability (PIV-I) guidance has been issued to facilitate the issuance of identity credentials by organizations that are interoperable with Federal PIV-conformant systems and can be trusted by Federal organizations. In order to achieve this level of trust, PIV-I credentials must include digital credentials from a certification authority cross-certified with the Federal Bridge Certification Authority (FBCA) at the Medium Hardware Level of Assurance or above whose cross certificate relationship includes   PIV-I policy object identifiers (OID).

The Federal government has established a  [PIV-I cross certification list](http://idmanagement.gov/approved-piv-i-entities) for entities that have demonstrated the ability to provide digital credentials that meet the expectations of the PIV-I guidance by demonstrating comparability with the appropriate FBCA policies.

This playbook provides information and activities related to the cross-certification process for prospective PIV-I Providers, resulting in inclusion on the  [PIV-I cross certification list](http://idmanagement.gov/approved-piv-i-entities). It also describes requirements that must be met to maintain cross-certification.

Questions related to this playbook should be directed to  [idmanagement@gsa.gov](mailto:idmanagement@gsa.gov).

#***Play 1: Understand Roles and Responsibilities***

The Federal Public Key Infrastructure Policy Authority (FPKIPA) is the interagency body set up under the CIO Council to enforce digital certificate standards for trusted identity authentication across the federal agencies and between federal agencies and outside bodies, such as universities, state and local governments and commercial entities.

The FPKI Certificate Policy Working Group (CPWG) reviews a prospective PIV-I Provider’s documentation for cross-certification of the PIV-I Provider with the Medium Hardware/PIV-I requirements specified in the  [X.509 Certificate Policy (CP) for the Federal Bridge Certification Authority (FBCA)](http://idmanagement.gov/documents/federal-bridge-certificate-authority-cp), and makes recommendations for cross-certification to the FPKIPA. The CPWG is comprised of representatives from organizations that are members of the FPKIPA.


The Identity, Credential, and Access Management (ICAM) Lab performs PIV-I card interoperability testing. A favorable recommendation from the CPWG (after successful card interoperability testing) will be presented to the FPKIPA members for a vote to approve the applicant as a PIV-I Provider at their earliest convenience.

#***Play 2: Know The PIV-I Components***
The PIV-I Provider must implement six distinct components: 

- Certification Authority (CA); 
- Registration Authority (RA); 
- Card Management System (CMS); 
- Repository; 
- Archive; and 
- Online Certificate Status Protocol Server (OCSP) for PIV-I Providers   that support PIV-I authentication and/or PIV-I card authentication. 

While there are many ways to architect, deploy and manage these components, the responsibilities of the components remain the same:

- The CA issues X.509 certificates and certificate revocation lists (CRL) that conform to FBCA Medium Hardware/PIV-I; 
- The RA performs identity proofing for prospective certificate subjects in a manner that conforms to FBCA Medium Hardware/PIV-I; 
- The CMS issues PIV-I cards; 
- The Repository publishes CA certificates and CRLs; and 
- The Archive provides long-term secure storage for certificates and CRLs issued by the CA, CA and RA electronic and physical audit logs, audit results, and policy documents. 
- The OCSP servers provide revocation status of X.509 certificates 

The FPKIPA does not limit outsourcing of specific PKI services by the PIV-I Provider. For example, RA responsibilities may be outsourced to an external organization. However, the responsibility for the continuing conformance of the RA remains between the organization and the PIV-I Provider.

###**Checklist**

 - [ ] Determine if you need to implement OCSP servers
 - [ ] Determine your PIV-I architecture 
 - [ ] Fully understand FBCA Medium Hardware/PIV-I requirements

###**Key Questions**

o	Do you fully understand what each PIV-I component does and how it fits into the overall PIV-I solution you are providing?
o	Will you be outsourcing any of your PIV-I components?
o	If outsourcing, do you understand your ongoing responsibilities in that context?

#***Play 3: Prepare for PIV-I Cross-certification***

PIV-I cross certification with the FBCA is an adjunct to the process for cross certification with the FBCA at Medium Hardware, and is comprised of the same six primary activities:

- Application for Cross Certification 
- Policy Mapping 
- Technical Testing 
- Audit Review 
- Memorandum of Agreement 
- Cross Certification 

All entities must complete the full cross certification process for FBCA cross certification at Medium Hardware and PIV-I, which is discussed in detail in the following section.

###**Checklist**

- [ ] Fully Understand what each PIV-I certification step entails 
- [ ] Resources needed for PIV-I Cross-certification process ready and available
- [ ] Approval of senior management to offer PIV-I services

###**Key Questions**

o	Does your PIV-I solution support smart cards conforming to  [NIST Special Publication 800-73-3 and listed on the  FIPS 201  Evaluation Program Approved Products List (APL)](http://csrc.nist.gov/publications/PubsSPs.html).

#***Play 4: Submit Application for PIV-I Cross-certification*** 

The first step in achieving PIV-I cross certification with the FBCA is to submit an application to the FPKIPA. The application template is available at  [IDManagement.gov](http://idmanagement.gov/documents/cross-certification-application-template-application-cross-certification).

The application must indicate that FBCA Medium Hardware cross certification is sought in addition to PIV-I cross certification.

Upon receipt, the FPKIPA will review the application and make a determination as to whether cross certification is in the best interest of the U.S. Federal Government. The Applicant will be notified of the FPKIPA’s decision. Those whose applications have been approved will move into the mapping and technical testing phase.

Organizations whose applications are rejected by the FPKIPA may request a written decision and an interview with the FPKIPA for reconsideration.

###**Checklist**

- [ ] Obtain the latest application template
- [ ] Application fully and correctly completed
- [ ] Application indicates FBCA Medium Hardware cross certification is sought in addition to PIV-I cross certification
- [ ] Application submitted to correct FPKIPA email address
- [ ] Receipt of application by FPKIPA confirmed


###**Key Questions**

o	

#***Play 5: Perform a Policy Mapping***

The FBCA Certificate Policy includes specific requirements pertaining to PIV-I. PIV-I service Providers must achieve comparability with the FBCA Medium Hardware policy as part of the PIV-I alignment. Entities should familiarize themselves with the following documents prior to beginning the mapping process:

- [X.509 CP for the Federal Bridge Certification Authority (FBCA)](http://idmanagement.gov/documents/federal-bridge-certificate-authority-cp) 
- [PIV Interoperability for Non-Federal Issuers](http://www.idmanagement.gov/documents/personal-identity-verification-piv-interoperability-non-federal-issuers) 
- [Criteria and Methodology for Cross Certification with the FBCA](http://idmanagement.gov/documents/criteria-methodology-cross-certification-us-federal-bridge-certification-authority-fbca) 
- [X.509 Certificate and CRL Extensions Profile for PIV-I Cards](http://idmanagement.gov/documents/certificate-and-crl-extensions-profile-piv-i-cards) 

Each PIV-I Provider must submit the following in order to initiate the mapping process:

- X.509 CP governing the PKI that will provide the PIV-I service formatted according to RFC 3647 
- X.509 Certification Practices Statement (CPS) that implements the associated Certificate Policy 
- Completed mapping matrices available at [IDManagement.gov](http://www.idmanagement.gov/documents/fpki-certification-applicant-mapping-%20tables):  
- Any additional documentation referenced in either the CP or the CPS that is required to determine mapping comparability. 

The CPWG will review the PIV-I mapping matrices to determine their overall satisfaction of alignment with the FBCA CP. Questions or concerns that cannot be answered by consulting the supporting documentation provided with the matrix will be referred back to the applicant for resolution. If necessary, the CPWG will invite the applicant to a meeting to resolve open issues. In some cases, the applicant may be asked to provide copies of additional documents cited in the CP, where these are considered critical to resolving particular issues or concerns. This is an iterative process and may be repeated several times before successful completion. Any areas of concern will be discussed with the PIV-I Provider and resolved prior to providing a mapping recommendation to the FPKIPA.

Once the review has been completed successfully, the PIV-I Technical Testing will be scheduled.

The PIV-I Provider shall operate their PKIs in a manner that ensures continuing alignment with the FBCA CP. Each PIV-I Provider shall develop and operate their systems according to a CPS governing operation of its PKI. The PIV-I Provider’s CPS must be in compliance with their Certificate Policy.

###**Checklist**

- [ ] Completely familiar with pertinent documents before mapping begins
- [ ] Meet with CPWG mapping support team before mapping begins to fully understand how best to complete mapping tables
- [ ] All tabs, questions, tables in the mapping form completely addressed 
- [ ] Latest and correctly-formatted CP included in the application package
- [ ] Latest CPS that implements the associated CP included in the application package
- [ ] All documentation referenced in either the CP or the CPS that is required to determine mapping comparability included in the application package
- [ ] Point of Contact specified in case iterations with the CPWG are needed to fix mappings  
- [ ] Mapping material submitted to correct CPWG email address
- [ ] Receipt of mapping material by the CPWG confirmed

###**Key Questions**
o	Does my CP or CPS reference any documents that I need to include in the mapping package?

#***Play 6: Complete Technical Testing***

The PIV-I applicant must successfully complete technical testing in accordance with the  [PIV-I Test Plan](http://www.idmanagement.gov/documents/piv-i-test-plan). Technical testing can occur at any time after the initial mapping review activity has completed. The purpose of technical testing is to validate the ability of a PIV-I candidate to issue PIV-I cards that meet the test requirements. This test requirement goes beyond the testing conducted for FBCA Medium Hardware and is required of all applicants.

At a minimum, PIV-I Providers who operate under the PIV-I program must support smart cards conforming to  [NIST Special Publication 800-73-3](http://csrc.nist.gov/publications/PubsSPs.html) and listed on the  [FIPS 201  Evaluation Program Approved Products List (APL)](http://fips201ep.cio.gov/apl.php).

If the PIV-I applicant does not successfully complete the requirements of the  [PIV-I Test Plan](http://www.idmanagement.gov/documents/piv-i-test-plan), the applicant will be provided with a list of criteria that were not met. Depending upon the severity of the issues, the FPKIPA may choose from the following options:

- If the issues are judged to be minor, the FPKIPA may accept a written attestation that the issues have been corrected and approve the technical testing; or 
- The PIV-I applicant repeats some portion or all of the Technical Testing. 

If remediation requires a change to the applicant’s CP, the CPWG will require an update to the compliance audit.

Successful PIV-I implementation is dependent on the Card Management System (CMS). As a result, the CMS must be identified during the testing process. Organizations that plan to utilize multiple CMS products shall submit at least one test card associated with each CMS for testing. Once complete, the approved PIV-I Provider shall list their approved CMS(s).  New testing shall be performed whenever a new CMS is to be instantiated in association with a specific PIV-I Provider .

Upon successful completion of the  [PIV-I Test Plan](http://www.idmanagement.gov/documents/piv-i-test-plan), the results  are reported to the FPKIPA.

###**Checklist**

- [ ] Technical resources are identified and available if requested to support technical testing or to fix identified issues
- [ ] All CMS(s) identified and communicated to the ICAM Lab
- [ ] At least one test card per identified CMS submitted to the ICAM Lab
- [ ] Upon approval, each approved CMS listed on XXXX

###**Key Questions**

    o Does your PIV-I solution use more than one CMS?
    o Know when testing is scheduled and who the ICAM Lab contacts are?

#***Play 7: Complete an Audit Review***

To provide assurance of that their CP and CPS reflect their operations, PIV-I Providers must submit a compliance audit from a qualified, independent, third party auditor, in accordance with Section 8 of the FBCA CP, that establishes:

- The PIV-I Provider CPS is in compliance with its Certificate Policy; 
- The PIV-I PKI, excluding customer responsibilities, is operated in compliance with the CPS. 

For an initial audit review, operational compliance may be determined by a Day Zero Audit, which covers all aspects of the PKI operations except issuance and management of end user certificates.

The PIV-I Provider and their third party auditor should consult the  [Auditor Letter of  Compliance, Compliance Audit Requirements](http://idmanagement.gov/documents/auditor-letter-compliance-compliance-audit-requirements) for guidance on preparing the audit letter to the FPKIPA.

###**Checklist**

- [ ] Obtain qualified, independent, third party auditor to perform PIV-I audit
- [ ] Appropriate audit performed (full audit vs day zero audit)
- [ ] Audit compliance performed in accordance with FBCA CP Section 
- [ ] Latest FPKIPA Letter of Compliance requirements document reviewed and fully understood
- [ ] Audit Compliance Letter completed, reviewed, signed
- [ ] Audit Compliance Letter submitted to correct FPKIPA email address
- [ ] Receipt of Audit Compliance Letter by the FPKIPA confirmed

###**Key Questions**

o Is this an initial audit review, in which case a Day Zero Compliance Audit can be performed instead of full audit?

#***Play 8: Execute a Memorandum of Agreement*** 

Once all of the above criteria have been successfully completed, the CPWG will submit a recommendation to the FPKIPA to cross certify with the applicant at the identified levels of assurance, including PIV-I. Upon a favorable vote, the applicant and the Chairs of the FPKIPA shall complete the  [Memorandum of Agreement (MOA)](http://idmanagement.gov/documents/memorandum-agreement-moa-template) citing each organization’s rights and responsibilities associated with the cross certification.

###**Checklist**

- [ ] Obtain a copy of the final proposed MOA
- [ ] Proposed MOA reviewed by appropriate personnel
- [ ] Any changes negotiated and agreed to are reflected in the latest proposed MOA
- [ ] Fully understand the rights and responsibilities of all parties to the proposed MOA
- [ ] Receive copy of fully-executed MOA

###**Key Questions**

o	Are any changes to the proposed MOA needed that should be communicated to the FPKIPA?   
o	Who is the appropriate person to sign the MOA on behalf of the PIV-I Provider?

#***Play 9: Coordinate Cross-certificate Issuance*** 

Once the MOA is complete, the Federal PKI Management Authority (FPKIMA) and the applicant will coordinate the steps necessary to issue the cross certificates.

The entity will then be added to the  [PIV-I cross certification list](http://idmanagement.gov/approved-piv-i-entities).

###**Checklist**

- [ ] Establish contact with FPKIMA to initiate exchange of cross-certificates
- [ ] Fully understand process to exchnage cross-certificates
- [ ] Confirm listing on the PIV-I Cross-certification List

###**Key Questions**

o	   

#***Play 10: Perform Annual Compliance Audit*** 
[Compliance Audit Requirements](http://idmanagement.gov/documents/fpki-compliance-audit-requirements) mandates yearly compliance audits performed by a competent, independent third party. The PIV-I Provider has ongoing audit and analysis responsibilities to ensure that the PKI continues to operate at the appropriate level of trustworthiness.

The PIV-I Provider shall submit a compliance audit letter each year covering PIV-I operated components for as long as they continue. If it is determined that a PIV-I Provider is out of compliance, the PIV-I Provider shall submit a remediation plan to the CPWG for consideration. Failure to submit an annual compliance audit letter, or findings that indicate the PIV-I Provider is out of alignment with the FBCA CP will result in removal from the  [PIV-I  cross certification list](http://www.idmanagement.gov/drilldown.cfm?action=pivi_cross_cert) and/or revocation of the cross certificates.

###**Checklist**

- [ ] Understand ongoing compliance audit requirements and due dates 
- [ ] Performed annual compliance audit and submit Annual Compliance Audit Letter to the FPKIPA
- [ ] If notified of non-compliance, fully understand non-compliance items, and determine degree of agreement.
- [ ] If disagreement with non-compliance items, begin discussions with FPKIPA
- [ ] If notified of non-compliance, gather appropriate staff and begin remediation process
- [ ] If requested, understand scope/content of Remediation Plan and submit Remediation Plan to the FPKIPA

###**Key Questions**

o	If notified of non-compliance, do you fully understand and agree with the list of non-compliance items?




##**Glossary**
| Term| Description |
| --- | --- |
| Access Control | The process of granting or denying requests to access physical facilities or areas, or logical systems (i.e., computer networks or software applications). See also “logical access control system” and “physical access control system”. |
| Accreditation | Formal declaration by a Designated Approving Authority that an Information System is approved to operate in a particular security mode using a prescribed set of safeguards at an acceptable level of risk.|
| Affiliated Organization| Organizations that authorize affiliation with subscribers of PIV-I certificates.|
| Applicant| Any organization seeking to participate in the Federal Certified PKI Personal Identity Verification Interoperability (PIV-I) program.|
| Archive| Long-term, physically separate storage.|
| Audit| Independent review and examination of records and activities to assess the adequacy of system controls, to ensure compliance with established policies and operational procedures, and to recommend necessary changes in controls, policies, or procedures.|
| Authentication| The process of establishing confidence in the identity of users or information systems.|
| Authorization| The process of giving individuals access to specific areas or systems based on their authentication.|
| Biometric | A measurable physical characteristic used to recognize the identity of an individual. Examples include fingerprints and facial images. A biometric system uses biometric data for authentication purposes.|
| Cardholder Unique Identifier (CHUID)| The PACS Implementation Guidance [PACS](http://idmanagement.gov/documents/smart-card-enabled-physical-access-control-systems) defines the CHUID data object; this description is refined in  [NIST SP 800-73](http://csrc.nist.gov/publications/PubsSPs.html). The PIV Card shall include the CHUID as defined in  [NIST SP 800-73](http://csrc.nist.gov/publications/PubsSPs.html). The CHUID includes an element, the Federal Agency Smart Credential – Number (FASC-N), which uniquely identifies each card. The PIV CHUID shall be accessible from both the contact and contactless interfaces of the PIV Card without card activation. The PIV FASC-N shall not be modified post-issuance.|
| Card Management System (CMS)| The Card Management System is responsible for managing smart card token content.|
| Certificate| A digital representation of information which at least (1) identifies the certification authority issuing it, (2) names or identifies its user,(3) contains the user's public key, (4) identifies its operational period, and (5) is digitally signed by the certification authority issuing it.|
| Certification Authority (CA)| An authority trusted by one or more users to issue and manage X.509 public key certificates and CRLs. |
| Certification Policy (CP)| A certificate policy is a specialized form of administrative policy tuned to electronic transactions performed during certificate management. A certificate policy addresses all aspects associated with the generation, production, distribution, accounting, compromise, recovery and administration of digital certificates. Indirectly, a certificate policy can also govern the transactions conducted using a communications system protected by a certificate-based security system.  By controlling critical certificate extensions, such policies and associated enforcement technology can support provision of the security services required by particular applications.  |
| Certification Practice Statement (CPS)| A statement of the practices that a CA employs in issuing, suspending, revoking, and renewing certificates and providing access to them, in accordance with specific requirements (i.e., requirements specified in this CP, or requirements specified in a contract for services). |
| Certificate Revocation List (CRL)| Lists maintained by a certification authority of the certificates that it has issued that are revoked prior to their stated expiration date.|
|Compliance Analysis| Independent review of documentation and operations to ensure the systems are operated in accordance with their governing documentation. |
|Zero Day Audit| Independent review and examination of records and activities to assess the adequacy of system controls, to ensure compliance with established policies and operational procedures, on the core PKI Service Offering. This review does not include the operational aspects associated with the issuance of credentials to end users since these operations have not been initiated at the time of the Day Zero Audit. |
|Digital Signature |The result of a transformation of a message by means of a cryptographic system using keys such that a relying party can determine: (1) whether the transformation was created using the private key that corresponds to the public key in the signer’s digital certificate; and (2) whether the message has been altered since the transformation was made.|
|Federal Public Key Infrastructure Policy Authority (FPKIPA) |The FPKIPA is a Federal Government body responsible for setting,implementing, and administering policy decisions regarding the Federal PKI Architecture.|
|Online Certificate Status Protocol (OCSP) |An Internet protocol used for obtaining the revocation status of an X.509 digital certificate.|
|Operational Capabilities Demonstration (OCD) |Evaluation process to determine the ability of the applicant service to perform a set of prescribed functions.|
|Personal Identity Verification (PIV) |Term referring to the HSPD-12 compliant identity credential issued to all Federal employees and select Federal contractors.|
|PIV-Interoperable (PIV-I)Providers |Providers of PKI Services that have successfully completed the review and evaluation activities described in this guidance.|
|Public Key Infrastructure (PKI) |A set of policies, processes, server platforms, software, and workstations used for the purpose of administering certificates and public/private key pairs, including the ability to issue, maintain, and revoke public key certificates.|
|Registration Authority (RA) |An entity that is responsible for identification and authentication of certificate subjects, but that does not sign or issue certificates (i.e., a registration authority is delegated certain tasks on behalf of an authorized CA).|
|Repository |A database containing information and data relating to certificates as specified in this CP; may also be referred to as a directory.|
|Risk|An expectation of loss expressed as the probability that a particular threat will exploit a particular vulnerability with a particular harmful result.|
|Root CA|In a hierarchical PKI, the CA whose public key serves as the most trusted datum (i.e., the beginning of trust paths) for a security domain. |
|Server| A system component that provides a service in response to requests from clients.|
|Smart Card|Any pocket-sized card with embedded integrated circuits that allows storage and retrieval of information. For the purposes of this document, a smart card is a dual-interface card, allowing both contact and contactless access to a microprocessor that contains, among other features a cryptographic engine capable of generating strong asymmetric key pairs.|
|Smart Card||




##**References**

HSPD-12: Policy for a Common Identification Standard for Federal Employees and Contractors
 http://www.dhs.gov/homeland-security-presidential-directive-12

FIPS 201: Personal Identity Verification (PIV) of Federal Employees and Contractors  
http://csrc.nist.gov/publications/PubsFIPS.html

NIST Special Publication 800-37 Revision 1: Guide for Applying the Risk Management Framework to Federal Information Systems  
http://csrc.nist.gov/publications/PubsSPs.html

NIST Special Publication 800-63 Version 1.0.2: Electronic Authentication Guideline  
http://csrc.nist.gov/publications/PubsSPs.html

NIST Special Publication 800-73-3: Interfaces for Personal Identity Verification (4 Parts)  
http://csrc.nist.gov/publications/PubsSPs.html

NIST Special Publication 800-76-1: Biometric Data Specification for Personal Identity Verification
http://csrc.nist.gov/publications/PubsSPs.html

NIST Special Publication 800-78-3: Cryptographic Algorithms and Key Sizes for Personal Identity Verification
http://csrc.nist.gov/publications/PubsSPs.html

NIST Special Publication 800-79-1: Guidelines for the Accreditation of Personal Identity Verification Card Issuers
http://csrc.nist.gov/publications/PubsSPs.html

NIST Special Publication 800-104: A Scheme for PIV Visual Card Topography  
http://csrc.nist.gov/publications/PubsSPs.html

NIST Special Publication 800-116: A Recommendation for the Use of PIV Credentials in Physical Access Control Systems (PACS)
http://csrc.nist.gov/publications/PubsSPs.html

OMB M-04-04: E-Authentication Guidance for Federal Agencies  http://www.whitehouse.gov/sites/default/files/omb/memoranda/fy04/m04-04.pdf

OMB M-05-05: Electronic Signatures: How to Mitigate the Risk of Commercial Managed Services  
http://www.whitehouse.gov/sites/default/files/omb/memoranda/fy2005/m05-05.pdf

OMB M-05-24: Implementation of Homeland Security Presidential Directive (HSPD) 12– Policy for a Common Identification Standard for Federal Employees and Contractors  
https://www.fismacenter.com/m05-24.pdf

Personal Identity Verification Interoperability for Non-Federal Issuers  
http://www.idmanagement.gov/documents/personal-identity-verification-piv- interoperability-non-federal-issuers

Request for Comments (RFC) 3852: Cryptographic Message Syntax (CMS)  http://www.ietf.org/rfc/rfc3852.txt

Request for Comments (RFC) 4122: A Universally Unique IDentifier (UUID) URN Namespace
http://www.ietf.org/rfc/rfc4122.txt

Technical Implementation Guidance: Smart Card Enabled Physical Access Control Systems, Version 2.3  
http://idmanagement.gov/documents/smart-card-enabled-physical-access-control-systems

X.509 Certificate and Certificate Revocation List (CRL) Extensions Profile for Personal Identity Verification Interoperable (PIV-I) Cards  http://idmanagement.gov/documents/certificate-and-crl-extensions-profile-piv-i-cards

X.509 Certificate Policy for the Federal Bridge Certification Authority (FBCA)  
http://idmanagement.gov/documents/federal-bridge-certificate-authority-cp

Personal Identity Verification Interoperable (PIV-I) Frequently Asked Questions (FAQ)  
http://idmanagement.gov/documents/federal-identity-credential-and-access-management- ficam-personal-identity-verification


 







   












