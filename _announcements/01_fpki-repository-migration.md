---
layout: default
navtitle: Upcoming Migration of Federal PKI Certificate Repository Services
title: Upcoming Migration of Federal PKI Certificate Repository Services
pubDate: April 1, 2019
collection: announcements
permalink: announcements/fpki-repository-migration/
description: On April 22, 2019, the Federal Public Key Infrastructure Management Authority will migrate the hosting of HyperText Transfer Protocol (HTTP) repository services to a cloud-based solution. This announcement provides additional information related to the upcoming migration.
---

{% include alert-info.html content="Upcoming changes to the hosting of Federal Public Key Infrastructure Certification Authority (CA) data repositories could impact your agency." %}

The week of April 22, 2019, the Federal Public Key Infrastructure Management Authority will migrate the hosting of HyperText Transfer Protocol (HTTP) repository services to a cloud-based solution. Existing Federal PKI CA certificate Uniform Resource Locators (URLs) **will not** change as a result of this migration.

## What will be impacted?

This change will affect the hosting of certificate revocation lists, CA certificates, and certificate bundles for the following Federal PKI CAs:
- Federal Bridge CA 2016
- Federal Common Policy CA
- SHA-1 Federal Root CA G2

## When will this change take place?
The migration will take place the week of April 22, 2019.

## What should I do?
This change will be transparent to Relying Parties, and should not require any agency action. 

The FPKI Community Interoperability Test Environment HTTP repository (http://http.cite.fpki-lab.gov) has used the new service since June 2018 with no reported issues. 

To test access to the new service follow the below procedures:
  1) Copy and paste the following link to access the FCPCA root certificate

  http://cdn.http.fpki.gov/fcpca/fcpca.crt

  2) If anything happens besides downloading the root certificate, please send an email to FPKI-Help@gsa.gov with the subject “CDN Test Issue”. In the body of the email, include your agency, office, and physical location so the FPKIMA can follow-up with your agency PKI or network operations team.
  
If the FPKIMA does not receive adverse feedback, this implementation will take place the week of April 22, 2019.

## Who can I contact for help or more information?
Email us at fpki-help@gsa.gov. 
