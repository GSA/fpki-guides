---
layout: default
navtitle: Chrome TLS Certificate Lifetime Updates
title: Updates to Chrome TLS Certificate Lifetime Requirements
pubDate: May 20, 2018
collection: announcements
permalink: announcements/chrometlslifetime/
description: Recent changes to Chrome could affect your agency. This change requires all TLS/SSL certificates issued on or after March 1, 2018 to have a maximum validity of 825 days.<br><br>
---

This notice is for federal agency IT staff.

{% include alert-info.html content="Government end users may be receiving security "untrusted certificate" errors on some federal intranet websites and applications when using the Chrome browser. These errors may be caused by SSL/TLS certificates issued from Federal Government Certification Authorities in Federal PKI." %} 

- [What Will Be Impacted?](#what-will-be-impacted)
- [When Will This Start?](#when-will-this-start)
- [What Should I Do?](#what-should-i-do)
- [Additional Resources](#additional-resources)

## What Will Be Impacted?
Federal government users may be experiencing new errors when browsing to some government intranet websites and applications.
Errors will be shown as "untrusted" site errors.

Cause: 
- A combination of our US Government root being distributed in commercially distributed Trust Stores and our federal government certificates not being updated to comply with required certificate policies.

Symptoms:
Users will be experiencing the errors if all the following is true:
- The intranet website has a SSL/TLS certificate issued from a Federal Government Certification Authority in Federal PKI
- The intranet website's SSL/TLS certificate was issued on or after March 1, 2018
- The end user is using the Chrome browser

![Chrome Error Screen]({{site.baseurl}}/img/google_ballot193_hot_topic_error.png){:style="width:55%;float:center;"}


## When Will This Start?
Chrome began enforcement on March 1, 2018. No other major browser vendors have indicated they will enforce the 825 day validity requirement. If additional browers release information or timelines associated with enforcement of CA|B Forum Ballot 193, we will post updates to this announcement. Please check the GitHub Issues in the GSA's fpki-guides Playbook repository for any in-progress discussions.

## What Should I Do?
Please request your PKI team or Federal Shared Service Provider team update your certificate profiles for SSL/TLS device certificates in the Federal Government Certification Authorities.
- The certificate profiles should be updated to have a lifetime of less than 825 days
- After updating the certificate profiles, please issue and reinstall new SSL/TLS certificates on the impacted intranet websites and applications

## Additional Resources
1. [CA|B Forum - Ballot 193](https://cabforum.org/2017/03/17/ballot-193-825-day-certificate-lifetimes/){:target="_blank"}
