---
title: System Changes and Notifications
permalink: /notifications/
layout: default
---
This page lists the changes to certification authorities and supporting systems operating within the Federal PKI community.  

- [List of Notifications](#notifications)
- [Add New Notification](http://github.com/GSA/fpki-guides/issues/new?title=System%20Notification%20for%3A%20%3CYour%20Organization%3E&amp;body=%23%23%23%23%20notice_date%3A%20%0A%0A%3Cie%2C%2007%2F21%2F2017%2015%3A34%20EST%20%3E%0A%0A%23%23%23%23%20change_type%3A%0A%0A%20%3Cie%2C%20CA%20Certificate%20Issuance%20%3E%0A%0A%23%23%23%23%20start_datetime%3A%20%0A%0A%3Cie%2C%20%2007%2F21%2F2017%2015%3A34%20EST%20%3E%0A%0A%23%23%23%23%20end_datetime%3A%0A%0A%20%20%3Cie%2C%2007%2F21%2F2017%2015%3A34%20EST%20%3E%0A%0A%23%23%23%23%20system%3A%0A%0A%20%3Cie%2C%20Federal%20Bridge%20CA%202016%20%3E%0A%0A%23%23%23%23%20change_description%3A%20%0A%0A%3Cie%2C%20sample%20change_description%20%20%3E%0A%0A%23%23%23%23%20impact%3A%0A%0A%20%3Cie%2C%20sample%20non%20impact%20%3E%0A%0A%23%23%23%23%20contact%3A%0A%0A%20%3Cie%2C%20sampleuser%40sampleagency.gov%20%3E%0A%0A%23%23%23%23%20ca_certificate_hash%3A%0A%0A%20%3Cie%2C%20SHA256%3E%0A%0A%23%23%23%23%20ca_certificate_issuer%3A%0A%20%0A%3Cie%2C%20Federal%20Bridge%20CA%202016%20%3E%0A%0A%23%23%23%23%20ca_certificate_subject%3A%0A%20%0A%3Cie%2C%20john%20Dou%3E%0A%0A%23%23%23%23%20cdp_uri%3A%0A%20%0A%3Cie%2C%20http%3A%2F%2Fpki.treas.gov%2Fdhsca4.crl%3E%0A%0A%23%23%23%23%20aia_uri%3A%0A%20%0A%3Cie%2C%20http%3A%2F%2Fpki.treas.gov%2Fsample.p7b%3E%0A%0A%23%23%23%23%20sia_uri%3A%0A%20%0A%3Cie%2C%20http%3A%2F%2Fpki.treas.gov%2Fsample.p7b%3E%0A%0A%23%23%23%23%20ocsp_uri%3A%0A%20%0A%3Cie%2C%20http%3A%2F%2Fpki.treas.gov%2Fdhsca4.crl%3E&amp;labels[]=System%20Notification)
-[How to Add New Notification](data/UserGuide/)

The communication of changes, and planned or unplanned system outages, is required by the certificate policies and the incident management process.  Strong communication allows for planning and response and benefits the Federal PKI community as a whole.  Planned changes of the these types require notifications two (2) weeks in advance:

- Changes to Certificate Revocation List Distribution Points
- Changes to Online Certificate Status Protocol (OCSP) endpoints
- Introducing new URIs or retiring old URIs referenced in the Certificates profiles in use
- Signing or revoking a _Certificate Authority (CA)_ certificate

System **outages** - either through a planned maintenance activity or unplanned event - may also be posted on this page, and may trigger the Incident Management process.    

To report a change **or** system outage not listed below, please email fpki@gsa.gov.

## Notifications
<!-- This block loops through the notifications yml file under the data directory. -->

<div class="usa-width-one-whole">
<hr>
{% for notification in site.data.notifications reversed %}
  <ul class="usa-unstyled-list">
    <li><strong>Notice date: </strong> {{ notification.notice_date }}</li>
    <li><strong>System:</strong> {{ notification.system }}</li>
    <li><strong>Type:</strong> {{ notification.change_type }}</li>
    <li><strong>Start Date and Time:</strong> {{ notification.start_datetime }}</li>
    <li><strong>End Date and Time:</strong> {{ notification.end_datetime }}</li>
    <li><strong>Change Description:</strong> {{ notification.change_description }}</li>
    <li><strong>Contact:</strong> {{ notification.contact }}</li>
  </ul>  
    {% if notification.ca_certificate_issuer %}
      <ul class="usa-unstyled-list">
        <li><strong>Certificate Issuer:</strong> {{ notification.ca_certificate_issuer }}</li>
        <li><strong>Certificate Subject:</strong> {{ notification.ca_certificate_subject }}</li>
        <li><strong>Certificate SHA1 HASH:</strong> {{ notification.ca_certificate_hash }}</li>  
      </ul>
    {% endif %}
    {% if notification.cdp_uri %}
      <ul class="usa-unstyled-list">
        <li><strong>Certificate Revocation List:</strong> {{ notification.cdp_uri }}</li>
      </ul>
    {% endif %}
    {% if notification.aia_uri %}
      <ul class="usa-unstyled-list">
        <li><strong>Certificate Bundle (AIA):</strong> {{ notification.aia_uri }}</li>
      </ul>
    {% endif %}
    {% if notification.sia_uri %}
      <ul class="usa-unstyled-list">
        <li><strong>Certificate Bundle (SIA):</strong> {{ notification.sia_uri }}</li>
      </ul>
    {% endif %}
    {% if notification.ocsp_uri %}
      <ul class="usa-unstyled-list">
        <li><strong>OCSP:</strong> {{ notification.ocsp_uri }}</li>
      </ul>
    {% endif %}
  <hr>
{% endfor %}
</div>
