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

On April 22, 2019, the Federal Public Key Infrastructure Management Authority will migrate the hosting of HyperText Transfer Protocol (HTTP) repository services to a cloud-based solution. Existing Federal PKI CA certificate Uniform Resource Locators (URLs) **will not** change as a result of this migration.

## What will be impacted?

This change will affect the hosting of certificate revocation lists, CA certificates, and certificate bundles for the following Federal PKI CAs:
- Federal Bridge CA 2016
- Federal Common Policy CA
- SHA1 Federal Root CA
- Some Test CAs operating for the FPKI Community Interoperability Test Environment (CITE)

## When will this change take place?
The migration will take place on April 22, 2019.

## What should I do?
This change will be transparent to Relying Parties, and should not require any agency action. 

The FPKI Community Interoperability Test Environment HTTP repository (http://http.cite.fpki-lab.gov) has used the new service since June 2018 with no reported issues. 

A new base URL is available for anyone who would like to test the planned repository service update before the April 22, 2019 migration. For example, to download a copy of the Federal Common Policy CA certificate using the cloud-based hosting solution, navigate to http://cdn.http.fpki.gov/fcpca/fcpca.crt. 

Contact fpki-help@gsa.gov with the subject “CDN Test Issue” if you'd like to learn more about testing, or if you have any issues.

## Who can I contact for help or more information?
Email us at fpki@gsa.gov. 
