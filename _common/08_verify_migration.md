---
layout: default 
title: 8. Verify migration to the Federal Common Policy CA G2
collection: common
permalink: common/verify-migration/
---

The easiest way to verify your migration to the Federal Common Policy CA G2 is to validate one of your PIV credential certificates.

### Verify Migration on Windows

1. Click **Start**, type **certmgr.msc**, and then press **Enter**.
1. Double-click on **Personal** and then **Certificates**.
1. Browse to and select any of the certificates found on your PIV credential (the "Issued To" column will list your name).
1. Double-click the certificate and select the **Certification Path** tab.
1. Verify the certificate chain begins with the **Federal Common Policy CA G2** (pictured below).  <br><br>**Note:** It's okay if you see different certification authorities named below the Federal Common Policy CA G2. 

![verify_common_migration]({{site.baseurl}}/img/verify-migration-windows.png){:style="width:40%;"}




### Verify Migration on macOS

1. Click the **Spotlight** icon and search for *Keychain Access*.
2. Double-click the **Keychain Access** icon to open the application.
3. Click the *Login* keychain from the left-hand navigation.
4. Browse to and select any of the certificates found on your PIV credential (the "Name" column will list your name).
5. Verify the "This certificate is valid" message appears beneath the certificate details.

![verify_common_migration]({{site.baseurl}}/img/verify-migration-macos.png){:style="width:70%;"}


### Troubleshooting
- If you're building a path to the Federal Common Policy CA (generation 1)
	- [Verify you have distrusted the Federal Common Policy CA]({{site.baseurl}}/common/migrate/#2-distrust-the-federal-common-policy-ca)
- If a path isn't building at all
	- [Verify your distribution of the Federal Common Policy CA G2]({{site.baseurl}}/common/verify-os-distribution/)
	- [Distribute the CA certificates issued by the Federal Common Policy CA G2]({{site.baseurl}}/common/certificates/)

## Need Help?

View the [Frequently Asked Questions]({{site.baseurl}}/common/faq/) page for more information, or email us at fpkirootupdate@gsa.gov .
