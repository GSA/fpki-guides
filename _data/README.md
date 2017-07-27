----		
 -layout: default		
 -title: README		
 -collection: data		
 -permalink: data/README/		
 ----		
 -		
 -This directory (_data) contains YML data file to be translated into Chagne Notification files as markdown files.  The template.txt has the format of		
 -the JSON files. The template file provides an array of name/value pairs. Replace "< ... >" with your content and same to a new MD file using sequential		
 
#data file for fpki-guides change notification
#format:
#notice_date: "<date in MM/DD/YYYY HH:MM EST format>"
#change_type: "< CA Certificate Issuance, CA Certificate Revocation, New CA, CA Termination, New OCSP URI, New CRL Distribution Point, OCSP Outage, CRL Outage >"
#start_datetime: "<in MM/DD/YYYY HH:MM format>"
#end_datetime: "<in MM/DD/YYYY HH:MM format>"
#system: "<Operating system, Application etc>"
#change_description: "<detailed statement>"
#impact: "<impact statement>"
#contact: "<email, phone etc>"
# ca_certificate: <pem encoded>
# cdp_uri:
# aia_uri:
# sia_uri:
# ocsp_uri:
