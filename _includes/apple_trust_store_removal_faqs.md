<br>

### Where can I get the DHS Federal Network Resilience (FNR) Webinar slides?
The FNR Webinar slides (.pdf) can be found <a target="_blank" href="{{site.baseurl}}/docs/FPKI_Trust_Removal_-_FNR_Webinar_08022018.pdf">here</a>. Upcoming FNR Webinar dates are:
* Wednesday, September 5, 2018 - 1:00 pm – 2:30 pm (Eastern time)

Adobe Connect Webinar:
https://dhsconnect.connectsolutions.com/FPKICertificateStore/
Dial-in:  1-855-852-7677, Access code: 9999 2977 3169#

Additional webinars may be scheduled if needed.

### If I redistribute COMMON today, it won’t get erased when I update to the next major release of my Apple device’s operating system, right?
Correct. We have verified this on both macOS and iOS. 

### I'm still not sure I get it. Can you explain this change to me in a different way?
- **Current State**: Apple distributes COMMON from its certificate stores to all Apple devices. This means that Apple *trusts* COMMON as a *known root certification authority*. Because Apple *trusts* COMMON, it trusts all Federal PKI CA-issued certificates because they validate to COMMON.
- **Future State**: When COMMON is removed from Apple’s certificate stores, Apple devices *will not trust* COMMON or any Federal PKI CA-issued certificates. If an agency has not redistributed COMMON by this time, users could experience [authentication errors and other issues](#what-happens-if-i-dont-redistribute-common). **We can prevent errors and issues by redistributing COMMON.**


### What happens if I don’t redistribute COMMON?

#### 1. (High Impact) Authentication failures
- Workstations 
- Websites  
- Applications (internal and cross-agency)
- Virtual Private Networks (VPNs)

#### 2. (Medium Impact) Error fatigue
- Removal of COMMON could result in unexpected application errors and system behavior for legacy and Government, off-the-Shelf (GOTS) products

#### 3. (Low Impact) Digital-signature validation failures
- Email
- Documents and files (e.g., Microsoft Word)


### What kinds of errors or messages would I see (macOS)?

*Sample Safari error when a user navigates to an intranet site whose SSL/TLS certificate doesn't chain<br>to a trusted root CA:*
     <br>
     ![safari_untrusted_ssl]({{site.baseurl}}/img/safari_untrusted_ssl.png){:style="width:85%;"}
    
*Sample Safari error where client (PIV) authentication fails due to a user’s certificate not chaining to a trusted root CA:*
     <br>
     ![safari_untrusted_auth]({{site.baseurl}}/img/safari_untrusted_auth.png){:style="width:85%;"}
   
*Sample Chrome error when a user navigates to an intranet site whose SSL/TLS certificate doesn't chain<br>to a trusted root CA:*
     <br>
     ![chrome_untrusted_ssl]({{site.baseurl}}/img/chrome_untrusted_ssl.png){:style="width:85%;"}

*Sample Chrome error where client (PIV) authentication fails due to a user’s certificate not chaining to a trusted root CA:*
     <br>
     ![chrome_untrusted_auth]({{site.baseurl}}/img/chrome_untrusted_auth.png){:style="width:85%;"}


### What kinds of errors or messages would I see (iOS)?

*Sample Safari error when a user navigates to an intranet site whose SSL/TLS certificate doesn't chain<br>to a trusted root CA:*
     <br>
     ![ios_safari_untrusted_ssl]({{site.baseurl}}/img/ios_safari_untrusted_ssl.png){:style="width:30%;"}

*Sample Chrome error when a user navigates to an intranet site whose SSL/TLS certificate doesn't chain<br>to a trusted root CA:*
     <br>
     ![ios_chrome_untrusted_ssl]({{site.baseurl}}/img/ios_chrome_untrusted_ssl.png){:style="width:30%;"}


### Which Apple product operating systems will be affected?

| **macOS** |  **iOS** | **tvOS** | 
| :-------- |  :-------- | :-------- | 
| Mojave (10.14)  | iOS 12 | tvOS 12 |

If you use other Apple operating system versions (e.g., tvOS, watchOS) in your environment, please let us know (fpki@gsa.gov)!

### When will this change occur?

The Federal PKI community's target date for mitigation actions is *August 31, 2018*.  COMMON will be removed from the Apple certificate stores in the releases of _macOS Mojave_ and _iOS 12_ (anticipated September-October 2018).

### Is COMMON changing?

No. COMMON will not change. The only change will be in how COMMON is distributed to workstations and devices.

### How can I verify that COMMON has been redistributed to my system (macOS)?

1. Click the **Spotlight** icon and search for *Keychain Access*.

2. Double-click the **Keychain Access** icon.

3. Ensure an entry for COMMON exists in either the **login** or **System** Keychain Certificates repository.

![verify_common_macOS]({{site.baseurl}}/img/verify_common_macOS.png){:style="width:85%;"}

### How can I verify that COMMON has been redistributed to my system (iOS)?

1. Navigate to…
     - **Settings** 
     - **About**  
     - **Certificate Trust Settings**
     
2. Then, verify that the Federal Common Policy CA is listed with “full trust.”

![verify_common_iOS]({{site.baseurl}}/img/verify_common_iOS.png){:style="width:30%;"}



### Can multiple copies of COMMON coexist in my workstation's or device's certificate store?

Yes! But don't worry - an enterprise-distributed copy of COMMON won't conflict with Apple's distributed copy. 


### My agency gets PIV cards from [Issuer Name]. I won’t be affected by this change, right?

Incorrect.  Your PIV credential issuer has no impact on whether your agency is affected by this change. 
The impact is related to how COMMON is distributed to federal enterprise devices by agency-specific configuration management practices.  It is not related to how credentials are generated or issued.  (See [What happens if I don’t redistribute COMMON?](#what-happens-if-i-dont-redistribute-common).)   

### Will my PIV credentials break or need to be updated or replaced when this change occurs?

No. PIV credentials will not break, need to be updated, or replaced. Our credentials will not be changing or affected by this update.

### Do I need to redistribute COMMON to my “Bring Your Own Device” (BYOD) program device?

As a BYOD program device user, if you perform one of these activities, you'll need to redistribute COMMON:
- PIV credential login (to intranet sites or VPNs) 
- Validating PIV digital signatures (emails or documents)
- Navigating to intranet pages whose SSL/TLS certificates chain to COMMON


### How can I test the impact of the Federal	Common Policy CA's removal?

If interested in learning more about Apple’s public Beta test program, please contact us at fpki@gsa.gov.
