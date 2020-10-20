---
layout: default 
title: 5. Distribute the certificate to applications
collection: common
permalink: common/distribute-apps/
---

{% include alert-info.html content="<strong>We're calling for all solutions!</strong> If you'd like to share one of your agency's playbooks to distribute a trusted root CA certificate to an application trust store, create an <a href=\"https://github.com/GSA/fpki-guides/issues/new\" target=\"_blank\">issue on GitHub</a> or email us at fpki@gsa.gov." %}

Though many software applications leverage the underlying Operating System [trust store]({{site.baseurl}}/truststores/) to verify whether a certificate should be trusted, not all do. 

Work across your agency teams to identify applications that rely on custom trust stores and ensure the Federal Common Policy CA G2 certificate is distributed.

**Example applications with custom trust stores:**
- Java and all Java-based applications (e.g., Apache Tomcat)
- Mozilla products (e.g., Firefox, Thunderbird, etc.)
- OpenSSL-based applications (e.g., Apache HTTP Server, Nginx)


{% include alert-warning.html content="<strong>Important!</strong> Depending on how these applications are configured, it's likely you'll also need to distribute the <a href=\"../certificates\">intermediate CA certificates</a> issued by the Federal Common Policy CA G2.  These certificates will available after November 18, 2020." %}

<br>

Optionally, [distribute the CA certificates issued by the Federal Common Policy CA G2]({{site.baseurl}}/common/certificates/).
