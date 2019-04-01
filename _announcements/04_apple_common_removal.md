---
layout: default
navtitle: Federal Common Policy CA Removal from Apple Trust Stores Impact
title: Federal Common Policy CA Removal from Apple Trust Stores Impact
pubDate: September 13, 2018
collection: announcements
permalink: announcements/applepkichanges/
description: Upcoming changes regarding Apple devices and operating systems could impact your agency. The Federal PKI Policy Authority has elected to remove our U.S. Government Root CA certificate (Federal Common Policy CA) from the Apple Operating System Trust Stores.  This change will impact government users of Apple iOS, macOS, and tvOS, starting in **September 2018**. <br><br> This change will cause government users to receive errors when encountering instances of a Federal PKI CA-issued certificate. You can mitigate the impact for government intranets and government-furnished equipment.
---

Upcoming changes regarding Apple devices and operating systems could impact your agency. The Federal PKI Policy Authority has elected to remove our U.S. Government Root CA certificate (Federal Common Policy CA [COMMON]) from Apple's pre-installed Operating System Trust Stores. 

{% include alert-info.html content="This announcement will be updated as more information and additional procedures become available. Please watch for additional updates from the Federal PKI listservs, ICAM listservs, and the ICAM Subcommittee." %}

Starting in the release of macOS Mojave, iOS 12, and tvOS 12, government users of Apple devices will receive errors when encountering instances of a Federal PKI CA-issued certificate. You can mitigate the impact for government intranets and the government-furnished Apple devices.

**Apple Operating System Release Dates**
- iOS 12: September 17, 2018
- tvOS 12: September 17, 2018
- macOS Mojave: September 24, 2018

{% include alert-info.html content="The FPKIPA has also elected to remove the Federal Common Policy CA root certificate from Microsoft's Trust Store." %}

- [How Does this Work?](#how-does-this-work)
- [What Will Be Impacted?](#what-will-be-impacted)
- [What Should I Do?](#what-should-i-do)
- [Frequently Asked Questions](#frequently-asked-questions)
- [Additional Resources](#additional-resources)

## How Does This Work?

Apple currently distributes the Federal Common Policy CA (COMMON) through its pre-installed operating system Trust Stores for iOS, macOS, and tvOS. 

Three root CA certificate _types_ reside in Apple's Trust Stores:

- _Trusted Certificates_ &mdash; Trusted certificates that establish a chain of trust.
- _Always Ask_ &mdash; Untrusted certificates that are not blocked. If a resource (e.g., website or signed email) chains to one of these certificates, the Apple operating system will ask you to choose whether or not to trust it.
- _Blocked_ &mdash; Potentially compromised certificates that will never be trusted.

These certificate types are stored within Apple _Keychains_:

- _Login Keychain_ &mdash; Certificates associated with a user account logged into a device.
- _System Keychain_ &mdash; Certificates associated with all user accounts on a device (similar to the Microsoft Windows' _Local Machine_ certificate store). 
- _System Roots Keychain_ &mdash; Includes Apple's _pre-installed_, trusted root CA certificates. COMMON will be removed from this Keychain.
 
## What Will Be Impacted?

These Apple operating system versions (and all subsequent versions) will be impacted:

|**macOS**|**iOS**|**tvOS**|
| :-------- |:-------- |:-------- |
| Mojave (10.14), Release 9/24/18 |	 iOS 12, Release 9/17/18 | tvOS 12, Release 9/17/18 |


Government users will receive errors on government-furnished Apple devices if any of these are true:

1. Logging into a government network with a PIV credential 
2. Authenticating to a government Virtual Private Network (VPN) endpoint with a PIV credential
3. Authenticating to an internet-facing, government collaboration portal with a PIV credential 
4. Browsing with Safari, Chrome, or Edge (iOS) to a government **intranet** website that uses a Federal PKI CA-issued TLS/SSL certificate
5. Opening an Apple Mail or Microsoft Outlook email that was digitally signed using a Federal PKI CA-issued certificate
6. Opening a Microsoft Office document that was digitally signed with a Federal PKI CA-issued certificate

This change will also impact Federal Government partners that rely on COMMON&mdash;for example, a Department of Defense employee sending a digitally signed email to a business partner. 

You can mitigate the risk to government missions, intranets, applications, and government-furnished equipment.

{% include alert-info.html content="If you are unsure whether your applications will be affected, email us at fpki@gsa.gov." %} 

## What Should I Do?
{% include apple_trust_store_installation.md %}

## Frequently Asked Questions

### 1.&nbsp;&nbsp;Is PIV network login impacted?
Yes. 

### 2.&nbsp;&nbsp;What versions are affected?
Please see [What Will Be Impacted?](#what-will-be-impacted). 

## Additional Resources
1. [COMMON Removal from Microsoft Certificate Trust List](https://fpki.idmanagement.gov/announcements/mspkichanges/){:target="_blank"}
1. [macOS Available Trusted Root Certificates List](https://support.apple.com/en-us/HT202858){:target="_blank"}
1. [iOS Available Trusted Root Certificates List](https://support.apple.com/en-us/HT204132){:target="_blank"}
1. [tvOS Available Trusted Root Certificates](https://support.apple.com/en-us/HT207231){:target="_blank"}
1. [Apple Keychains](https://developer.apple.com/documentation/security/keychain_services){:target="_blank"}
1. [Apple Configuration Profile Reference](https://developer.apple.com/library/content/featuredarticles/iPhoneConfigurationProfileRef/Introduction/Introduction.html){:target="_blank"}
1. [Over-the-Air Profile Delivery and Configuration](https://developer.apple.com/library/archive/documentation/NetworkingInternet/Conceptual/iPhoneOTAConfiguration/Introduction/Introduction.html#//apple_ref/doc/uid/TP40009505){:target="_blank"}
1. [Mobile Device Management Best Practices](https://developer.apple.com/library/archive/documentation/Miscellaneous/Reference/MobileDeviceManagementProtocolRef/6-MDM_Best_Practices/MDM_Best_Practices.html#//apple_ref/doc/uid/TP40017387-CH5-SW2){:target="_blank"}
