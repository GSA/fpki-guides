---		
 layout: default		
 title: User Guide		
 collection: pages		
 permalink: pages/UserGuide/		
---		

### Submit Notification Via GitHub Issue

1.	Click on the ‘Add New Notification’.
2.	Enter all relevant data and click 'Submit new issue' to submit the notification.

### Submit Notification Via Email

The notification data can also be emailed by end user to fpki@gsa.gov and a technical person with back end access to paste the notification to the end of file _data/notifications.yml
The end user email should contain data in following format
 ```
  notice_date: <ie, 07/21/2017 15:34 EST >
  change_type: <ie, CA Certificate Issuance >
  start_datetime: <ie,  07/21/2017 15:34 EST >
  end_datetime:  <ie, 07/21/2017 15:34 EST >
  system: <ie, Federal Bridge CA 2016 >
  change_description: <ie, sample change_description sample change_description sample change_description sample change_description sample change_description sample change_description sample change_description sample change_description sample change_description sample change_description sample change_description sample change_description sample change_description sample change_description sample change_description sample change_description sample change_description >
  impact: <ie, sample non impact >
  contact: <ie, sampleuser@sampleagency.gov >
  ca_certificate_hash: <ie, SHA256>
  ca_certificate_issuer: <ie, Federal Bridge CA 2016 >
  ca_certificate_subject: <ie, john Dou>
  cdp_uri: <ie, http://pki.treas.gov/dhsca4.crl>
  aia_uri: <ie, http://pki.treas.gov/sample.p7b>
  sia_uri: <ie, http://pki.treas.gov/sample.p7b>
  ocsp_uri: <ie, http://pki.treas.gov/dhsca4.crl>    
  
  ```
