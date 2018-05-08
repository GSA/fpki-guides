---
layout: default
navtitle: Chrome TLS Certificate Lifetime Impact
title: Chrome Enforces TLS Certificate Lifetime Requirement
pubDate: May 10, 2018
collection: announcements
permalink: announcements/chrometlslifetime/
description: Recent changes to Chrome could affect your agency. Chrome users may receive errors when browsing to government intranet websites and applications. Starting **March 1, 2018**, Chrome requires all TLS/SSL certificates to have a maximum lifetime of 825 days. You can mitigate the impact for government intranets, applications, and government-furnished equipment by using these procedures.<br><br>
---

Recent changes to Chrome could affect your agency. Chrome now requires TLS/SSL certificates issued on or after **March 1, 2018**, must have a maximum lifetime of 825 days. The recent Certification Authority/Browser (CA/B) Forum decision<sup>[1](#1)</sup> recommends this step to increase internet/intranet security.  

- [What Will Be Impacted?](#what-will-be-impacted)
- [What Other Browsers Enforce This Requirement?](#what-other-browsers-enforce-this-requirement)
- [What Should I Do?](#what-should-i-do)
- [Additional Resources](#additional-resources)

## What Will Be Impacted?
<!--Trying to follow LaChelle's style on the other Hot Topics-->
A government user will receive an "untrusted site" error when browsing to an intranet website or application on government-furnished equipment if all of the following are true: 

1. The intranet website's TLS/SSL certificate was issued by a Certification Authority in the Federal PKI
2. The TLS/SSL certificate was issued on or after March 1, 2018, with a lifetime greater than 825 days
3. Using the Chrome browser

![Chrome Error Screen]({{site.baseurl}}/img/google_ballot193_hot_topic_error.png){:style="width:55%;float:center;"}

### What Causes This Error?<!--I think we've already covered most of this above in What Will Be Impacted except the Trust Store issue. How does the distribution of COMMON from MS and Apple figure into the errors? Add to previous section?  Suggesting deleting this section.--> 
A Chrome "untrusted site" error occurs because our U.S. Government Root CA (Federal Common Policy CA) is globally distributed through the Microsoft and Apple Trust Stores<!--Should we remove the COMMON and Trust Stores issue? When COMMON is removed, then what?--> and our TLS/SSL certificates don't currently meet the 825-day lifetime requirement.

## What Other Browsers Enforce This Requirement?
Chrome is the only browser currently enforcing this requirement for TLS/SSL certificates. If other browser vendors decide to enforce this requirement, we will post updates to this announcement. Please also check the GSA FPKI-Guides' GitHub Issues for in-progress discussions.

## What Should I Do?
To prevent Chrome browsing errors:
1. Request that your PKI team or Federal Shared Service Provider update the certificate profiles for TLS/SSL device certificates in the Federal PKI Certification Authorities,<!--In the CAs meaning?--> **OR** update the TLS/SSL certificate profiles to give certificates a lifetime of less than 825 days.
2. Re-issue and re-install new TLS/SSL certificates for the impacted intranet websites and applications.<!--Can PKI team/SSP do this step also? Update client TLS certificates also?-->

## Additional Resources
<a name="1">1</a>. The [CA/B Forum - Ballot 193](https://cabforum.org/2017/03/17/ballot-193-825-day-certificate-lifetimes/){:target="_blank"} recently passed Ballot 193, which recommends implementing this change. 
