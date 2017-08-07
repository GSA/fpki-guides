---		
 layout: default		
 title: README		
 collection: data		
 permalink: data/README/		
---		

 This directory (_data) contains YML data file notifications.yml. The format for the notification.yml is located at the beginning comment section of the yml file. The pages/notifications.md processes data in notifications.yml	for display.	The latest notification entry in notification.yml are displayed first, in reverse order of entry. The notification data can be entered as github issue with following the link: [Add New Notification](http://github.com/GSA/fpki-guides/issues/new?title=System%20Notification%20for%3A%20%3CYour%20Organization%3E&amp;body=%23%23%23%23%20notice_date%3A%20%0A%0A%3Cie%2C%2007%2F21%2F2017%2015%3A34%20EST%20%3E%0A%0A%23%23%23%23%20change_type%3A%0A%0A%20%3Cie%2C%20CA%20Certificate%20Issuance%20%3E%0A%0A%23%23%23%23%20start_datetime%3A%20%0A%0A%3Cie%2C%20%2007%2F21%2F2017%2015%3A34%20EST%20%3E%0A%0A%23%23%23%23%20end_datetime%3A%0A%0A%20%20%3Cie%2C%2007%2F21%2F2017%2015%3A34%20EST%20%3E%0A%0A%23%23%23%23%20system%3A%0A%0A%20%3Cie%2C%20Federal%20Bridge%20CA%202016%20%3E%0A%0A%23%23%23%23%20change_description%3A%20%0A%0A%3Cie%2C%20sample%20change_description%20%20%3E%0A%0A%23%23%23%23%20impact%3A%0A%0A%20%3Cie%2C%20sample%20non%20impact%20%3E%0A%0A%23%23%23%23%20contact%3A%0A%0A%20%3Cie%2C%20sampleuser%40sampleagency.gov%20%3E%0A%0A%23%23%23%23%20ca_certificate_hash%3A%0A%0A%20%3Cie%2C%20SHA256%3E%0A%0A%23%23%23%23%20ca_certificate_issuer%3A%0A%20%0A%3Cie%2C%20Federal%20Bridge%20CA%202016%20%3E%0A%0A%23%23%23%23%20ca_certificate_subject%3A%0A%20%0A%3Cie%2C%20john%20Dou%3E%0A%0A%23%23%23%23%20cdp_uri%3A%0A%20%0A%3Cie%2C%20http%3A%2F%2Fpki.treas.gov%2Fdhsca4.crl%3E%0A%0A%23%23%23%23%20aia_uri%3A%0A%20%0A%3Cie%2C%20http%3A%2F%2Fpki.treas.gov%2Fsample.p7b%3E%0A%0A%23%23%23%23%20sia_uri%3A%0A%20%0A%3Cie%2C%20http%3A%2F%2Fpki.treas.gov%2Fsample.p7b%3E%0A%0A%23%23%23%23%20ocsp_uri%3A%0A%20%0A%3Cie%2C%20http%3A%2F%2Fpki.treas.gov%2Fdhsca4.crl%3E&amp;labels[]=System%20Notification). Just replace the example entries between < and > with your content.

The notification data can also be emailed by end user to  fpki@gsa.gov and a technical person with back end access to paste the notification to the end of file _data/notifications.yml
 
 ### The end user email should contain data in following format
 
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
### Using github Issue approach, the technical person should:
     
     1. browser to https://github.com/GSA/fpki-guides/issues
     2. select 'System Notification' tag
     3. copy the latest 'System Notification'
     4. Paste it into _data/notifications.yml file as below 3 - 6
     5. ensure the notification entry you pasted does not have unnecessary empty lines.
     
### After receiving the email, the technical person should:
     
     1. browse to following github url, https://github.com/GSA/fpki-guides/blob/change-notifications/_data/notifications.yml. 
     2. click on edit icon
     3. copy/paste the the the abov content from the email to the end of _data/notifications.yml file. 
     4. Add a dash "-" at the beginnig of what you pasted (refer to existing notification entries for postion and spacing).
     5. Commit the change to the file.
     6. test the new entry with following url: https://federalist-proxy.app.cloud.gov/preview/gsa/fpki-guides/change-notifications/notifications/#notifications
     

     
 
