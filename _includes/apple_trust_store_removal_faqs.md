<br>

### Where can I get the DHS Federal Network Resilience (FNR) Webinar slides?
The FNR Webinar slides (.pdf) can be found [here.]({{site.baseurl}}/docs/FPKI_Trust_Removal_-_FNR_Webinar_08022018.pdf){:target="blank"} 

### If I redistributed COMMON already, won’t it get erased when I update to the next major release of my Apple device’s operating system?
Incorrect. If you redistributed COMMON already, it will *not* get erased when you upgrade to the next major release of your Apple device’s operating system. We have verified this for both macOS and iOS.  So, if you haven't already done so, please redistribute COMMON today!  

### I'm still not sure I get it. Can you explain this change to me in a different way?
- **Current Status**: In the past, Apple distributed COMMON from its certificate stores to all Apple workstations and devices. This meant that Apple *trusted* COMMON as a *known root certification authority*. Because Apple *trusted* COMMON, it also trusted all Federal PKI CA-issued certificates because they validate to COMMON. **This has changed - Apple no longer distributes COMMON from its certificate stores.**
- **Immediate Agency Action Needed**: Because Apple has removed COMMON from its certificate stores, Apple workstations and devices *will not trust* COMMON or any Federal PKI CA-issued certificates. Agencies should **redistribute COMMON as soon as possible** to prevent their users from experiencing [authentication errors and other issues](#what-happens-if-i-dont-redistribute-common).


### What happens if I don’t redistribute COMMON?

#### 1. (High Impact) Authentication failures:
- Workstations 
- Websites  
- Applications (internal and cross-agency)
- Virtual Private Networks (VPNs)

#### 2. (Medium Impact) Error fatigue:
- Removal of COMMON could result in unexpected application errors and system behavior for legacy and government-off-the-shelf (GOTS) products

#### 3. (Low Impact) Digital-signature validation failures:
- Email
- Documents and files (e.g., Microsoft Word)


### What kinds of errors or messages would I see (macOS)?

*Sample Safari error when a user navigates to an intranet site whose SSL/TLS certificate doesn't chain<br>to a trusted root CA:*
     <br>
     ![safari_untrusted_ssl]({{site.baseurl}}/img/safari_untrusted_ssl.png){:style="width:85%;"}
    
*Sample Safari error where client (PIV) authentication fails because a user’s certificate doesn't chain to a trusted root CA:*
     <br>
     ![safari_untrusted_auth]({{site.baseurl}}/img/safari_untrusted_auth.png){:style="width:85%;"}
   
*Sample Chrome error when a user navigates to an intranet site whose SSL/TLS certificate doesn't chain<br>to a trusted root CA:*
     <br>
     ![chrome_untrusted_ssl]({{site.baseurl}}/img/chrome_untrusted_ssl.png){:style="width:85%;"}

*Sample Chrome error where client (PIV) authentication fails because a user’s certificate doesn't chain to a trusted root CA:*
     <br>
     ![chrome_untrusted_auth]({{site.baseurl}}/img/chrome_untrusted_auth.png){:style="width:85%;"}


### What kinds of errors or messages would I see (iOS)?

*Sample Safari error when a user navigates to an intranet site whose SSL/TLS certificate doesn't chain<br>to a trusted root CA:*
     <br>
     ![ios_safari_untrusted_ssl]({{site.baseurl}}/img/ios_safari_untrusted_ssl.png){:style="width:30%;"}

*Sample Chrome error when a user navigates to an intranet site whose SSL/TLS certificate doesn't chain<br>to a trusted root CA:*
     <br>
     ![ios_chrome_untrusted_ssl]({{site.baseurl}}/img/ios_chrome_untrusted_ssl.png){:style="width:30%;"}


### Which Apple operating systems will be affected?

| **macOS** |  **iOS** | **tvOS** | 
| :-------- |  :-------- | :-------- | 
| Mojave (10.14) | iOS 12 | tvOS 12 |

If you use another Apple operating system (e.g., watchOS) in your environment, please let us know (fpki@gsa.gov)!

### When will this change occur?

The Federal PKI's target date for mitigation actions was *August 31, 2018*.  Apple's affected operating system release dates were:

| **macOS** |  **iOS** | **tvOS** | 
| :-------- |  :-------- | :-------- | 
| Release 9/24/2018  | Release 9/17/2018  | Release 9/17/2018  |

### Is COMMON changing?

No. No. *COMMON is **not** changing.* The only change will be the way in which COMMON is distributed to workstations and devices.

### How can I verify that COMMON has been redistributed to my system (macOS)?

1. Click the **Spotlight** icon and search for *Keychain Access*.

2. Double-click the **Keychain Access** icon.

3. Ensure that an entry for COMMON exists in the **login** or **System** Keychain Certificates repository.

![verify_common_macOS]({{site.baseurl}}/img/verify_common_macOS.png){:style="width:85%;"}

### How can I verify that COMMON has been redistributed to my system (iOS)?

1. Click through **Settings** -> **About** -> **Certificate Trust Settings**.
     
2. Verify that the _Federal Common Policy CA_ is listed with “full trust.”

![verify_common_iOS]({{site.baseurl}}/img/verify_common_iOS.png){:style="width:30%;"}


### Can multiple copies of COMMON coexist in my workstation's or device's certificate store?

Yes! But don't worry - an enterprise-distributed copy of COMMON won't conflict with Apple's distributed copy. 


### My agency gets PIV cards from [Issuer Name]. I won’t be affected by this change, right?

Incorrect.  Your PIV credential issuer and how agency credentials are generated or issued will *not* be impacted by this change. The impact relates to COMMON's removal from Apple's trust stores and how to mitigate this impact by redistributing COMMON to federal enterprise workstations and devices. 
(See [What happens if I don’t redistribute COMMON?](#what-happens-if-i-dont-redistribute-common).)   

### Will my PIV credentials break or need to be updated or replaced when this change occurs?

No. PIV credentials will not break, need to be updated, or replaced. Our credentials will not be affected by this change.

### Do I need to redistribute COMMON to my “Bring Your Own Device” (BYOD) program device?

As a BYOD program device user, if you do any of the following, you'll need to redistribute COMMON:
- PIV credential login (to intranet sites or VPNs) 
- Validate PIV digital signatures (emails or documents)
- Navigate to intranet pages whose SSL/TLS certificates chain to COMMON


### How can I test the impact of the Federal	Common Policy CA's removal?

If you are interested in learning more about Apple’s public Beta testing program, please contact us at fpki@gsa.gov.
