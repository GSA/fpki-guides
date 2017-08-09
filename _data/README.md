### FPKI System Changes and Notifications Instructions

Instructions to directly add the notifications to the yml file. 

Please follow the guidelines in this document to insert a system change or planned outage notification into the FPKI system change notifications. 

The data directory (_data) in Github contains a YAML data file structured for notifications. The file is named notifications.yml. The format for the notification.yml is located at the beginning comment section of the yml file. The pages/notifications.md processes the data in the notifications.yml for display. The latest notification entry in notification.yml  will be displayed at the top of the notification list. The other notifications are displayed in the descending order of the notification time. 

The notification data can be provided as a GitHub issue or via email. Once the notification data is received, a member of the FPKI team OR the submitting organization should follow the instructions below to add the notification to the list.

Retrieve notification from GitHub Issue:
	1. Access the FPKI-Guide issues list at https://github.com/GSA/fpki-guides/issues.
	2. Select 'System Notification' tag.
	3. Retrieve the latest issues under 'System Notification'.
	4. Add an Issue comment to each that you are updating the System Notifications

Retrieve notification from an email:
	1. Retrieve the notification data from the email.

Add the Notification to GitHub:
	1. Access the following github notification file - https://github.com/GSA/fpki-guides/blob/staging/_data/notifications.yml 
	2. Click on the edit icon.
	3. Copy/paste the notification content to the end of _data/notifications.yml file. 
	4. Add a dash "-" at the beginning of what you added (refer to existing notification entries for position and spacing).
	4. Submit a Pull Request, OR commit directly to the staging branch if you have permissions
	- In your commit, add the comment "fixes " and the Issue _number_ that you are adding to the notifications page
	5. Test the new entry with following url: https://federalist-proxy.app.cloud.gov/preview/gsa/fpki-guides/staging/notifications/#notifications
     

     
 
