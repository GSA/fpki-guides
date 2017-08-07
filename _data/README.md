---		
 layout: default		
 title: README		
 collection: data		
 permalink: data/README/		
---		

 This directory (_data) contains YML data file notifications.yml. The format for the notification.yml is located at the beginning comment section of the yml file. The pages/notifications.md processes data in notifications.yml	for display.	The latest notification entry in notification.yml are displayed first, in reverse order of entry. The notification data can be emailed by end user to  fpki@gsa.gov and a technical person with back end access to paste the notification to the end of file _data/notifications.yml
 
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
     
### After receiving the email, the technical person should:
     
     1. browse to following github url, https://github.com/GSA/fpki-guides/blob/change-notifications/_data/notifications.yml. 
     2. click on edit icon
     3. cut/paste the the the abov content from the email to the end of _data/notifications.yml file. 
     4. Add a dash "-" at the beginnig of what you pasted (refer to existing notification entries for postion and spacing).
     5. Commit the change to the file.
     6. test the new entry with following url: https://federalist-proxy.app.cloud.gov/preview/gsa/fpki-guides/change-notifications/notifications/#notifications
     
 
