---
title: System Changes and Notifications
permalink: /notifications/
layout: default
---
This page lists the changes to certification authorities and supporting systems operating within the Federal PKI community.  

- [List of Notifications](#notifications)

The communication of changes, and planned or unplanned system outages, is required by the certificate policies and the incident management process.  Strong communication allows for planning and response and benefits the Federal PKI community as a whole.  Planned changes of the these types require notifications two (2) weeks in advance:

- Changes to Certificate Revocation List Distribution Points
- Changes to Online Certificate Status Protocol (OCSP) endpoints
- Introducing new URIs or retiring old URIs referenced in the Certificates profiles in use
- Signing or revoking a _Certificate Authority (CA)_ certificate

System **outages** - either through a planned maintenance activity or unplanned event - may also be posted on this page, and may trigger the Incident Management process.    

To report a change **or** system outage not listed below, please email fpki@gsa.gov.

### Notifications
<!-- This block loops through the notifications yml file under the data directory. -->

<div class="usa-width-one-whole">
<hr>
{% for notification in site.data.notifications %}
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
