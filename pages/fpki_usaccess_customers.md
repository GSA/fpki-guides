---
title: USAccess Customer Agencies
permalink: /usaccess/
layout: default
---

The GSA HSPD-12 Managed Service Office established the [USAccess program](https://www.fedidcard.gov/){:target="_blank"} as an efficient way for Federal agencies to issue common HSPD-12 approved credentials to their employees and contractors. The list below presents USAccess program customer agencies and components, along with the name of the Certification Authority (CA) responsible for issuing their PIV credential certificates.

{% include alert-info.html content="This table was last updated on <b>June 21, 2019</b>. If you'd like to suggest an update or correction, please email fpki@gsa.gov." %} 

<style>
	.title {font-size: 16px; color: white; background-color: #112e51; font-weight: 900;text-align: center;}
	.body {font-size: 14px;text-align: center;}

	h4:before {
	content: "";
	display: block;
	padding-top: 125px;
	margin-top: -110px;
	}
	
</style>

<table style="width:100%">
	<tr>
		<th class="title">Branch</th>
		<th class="title">Agency</th>
		<th class="title">Component</th> 
		<th class="title">Acronym</th>
		<th class="title">Shared Service Provider (SSP)</th>		
		<th class="title">Issuing CA</th>
	</tr>

{% for customer in site.data.customers %}  
  
  <tr>
	<td class="body">{{customer.branch}}</td>
	<td class="body">{{customer.agency}}</td>
	<td class="body">{{customer.component}}</td> 
	<td class="body">{{customer.acronym}}</td>
	<td class="body">{{customer.ssp}}</td>
	<td class="body">{{customer.ca}}</td>
  </tr>
  
{% endfor %}

</table>



## Active Issuing CA Certificate Details 

#### Department of Veterans Affairs CA
- Subject: OU = Department of Veterans Affairs CA, OU = Certification Authorities, OU = Department of Veterans Affairs, O = U.S. Government, C = US
- Issuer: OU = US Treasury Root CA, OU = Certification Authorities, OU = Department of the Treasury, O = U.S. Government, C = US
- Serial #: 5ccb3215
- Validity: June ‎22, ‎2019 to June ‎22, ‎2029
- SHA-1 Hash: 76cc898f03eb0fc7e0877aac30a0c1340bb34879

#### Entrust Managed Services SSP CA (effective 9/27/2019)
- Subject: OU = Entrust Managed Services SSP CA, OU = Certification Authorities, O = Entrust, C = US
- Issuer: OU = Entrust Managed Services Root CA, OU = Certification Authorities, O = Entrust, C = US
- Serial #: 448107b6
- Validity: August ‎13, ‎2019 to July ‎13, ‎2029
- SHA-1 Hash: 722e8abbe6b66e47d1bcec3c7ec47aa5bbe4d3c5

#### OCIO CA
- Subject: OU = OCIO CA, OU = Certification Authorities, OU = Department of the Treasury, O = U.S. Government, C = US
- Issuer: OU = US Treasury Root CA, OU = Certification Authorities, OU = Department of the Treasury, O = U.S. Government, C = US
- Serial #: 5ccb31fe
- Validity: June ‎22, ‎2019 to June ‎22, ‎2029
- SHA-1 Hash: e651a5dc6a1305613a22e46548e1666650c2825f

#### ORC SSP 4
- Subject: CN = ORC SSP 4, O = ORC PKI, C = US
- Issuer: CN = Federal Common Policy CA, OU = FPKI, O = U.S. Government, C = US
- Serial #: 2ef9
- Validity: ‎August ‎31, ‎2015 to ‎January ‎21, ‎2024
- SHA-1 Hash: 3a70323069a4c41bc95663152e9ccc7111bb0623

#### U.S. Department of Education Agency CA - G4
- Subject: CN = U.S. Department of Education Agency CA - G4, OU = U.S. Department of Education, O = U.S. Government, C = US
- Issuer: CN = Symantec SSP Intermediate CA - G4, O = Symantec Corporation, C = US
- Serial #: 224ad7d35a9d34350671f9b8be45a23a
- Validity: ‎July ‎20, ‎2015 to ‎November ‎11, ‎2024 
- SHA-1 Hash: 69e2abc173047f844e3f53cb2cbd138ba9063de8

#### Veterans Affairs User CA B1
- Subject: CN = Veterans Affairs User CA B1, OU = PKI, OU = Services, DC = va, DC = gov
- Issuer: CN = Verizon SSP CA A2, OU = SSP, O = Verizon, C = US
- Serial #: 251ea36536cfebb0e9d1334d0cb96102bab16589
- Validity: ‎January ‎25, ‎2017 to ‎January ‎25, ‎2027
- SHA-1 Hash: 671461948b8ef765fe5e1248222af3fcdd457564


## Maintenance Mode Issuing CA Certificate Details

#### Department of Veterans Affairs CA (1)
- Subject: OU = Department of Veterans Affairs CA, OU = Certification Authorities, OU = Department of Veterans Affairs, O = U.S. Government, C = US
- Issuer: OU = US Treasury Root CA, OU = Certification Authorities, OU = Department of the Treasury, O = U.S. Government, C = US
- Serial #: 4e398179
- Validity: ‎October ‎17, ‎2015 to October ‎17, ‎2025 
- SHA-1 Hash: e2edb0df1fe8068717a08e38741b5bc4c38029d0 

#### Department of Veterans Affairs CA (2)
- Subject: OU = Department of Veterans Affairs CA, OU = Certification Authorities, OU = Department of Veterans Affairs, O = U.S. Government, C = US
- Issuer: OU = US Treasury Root CA, OU = Certification Authorities, OU = Department of the Treasury, O = U.S. Government, C = US
- Serial #: 4e397f22 
- Validity: ‎August ‎28, ‎2012 to August ‎28, ‎2022 
- SHA-1 Hash: 519d3222a15eee034980fc0da727314f70af78c0 

#### Entrust Managed Services SSP CA (1)
- Subject: OU = Entrust Managed Services SSP CA, OU = Certification Authorities, O = Entrust, C = US
- Issuer: OU = Entrust Managed Services Root CA, OU = Certification Authorities, O = Entrust, C = US
- Serial #: 448063d5 
- Validity: ‎July ‎30, ‎2015 to ‎July ‎23, ‎2025 
- SHA-1 Hash: dec01bf40c153fbc38bf2ca766b04f9dfbda3064 

#### OCIO CA (1)
- Subject: OU = OCIO CA, OU = Certification Authorities, OU = Department of the Treasury, O = U.S. Government, C = US
- Issuer: OU = US Treasury Root CA, OU = Certification Authorities, OU = Department of the Treasury, O = U.S. Government, C = US
- Serial #: 4e398101 
- Validity: April ‎19, ‎2015 to ‎April ‎19, ‎2025 
- SHA-1 Hash: 5ad254c3ecebb5b7e108caa0cc8030598a7b7709 

#### OCIO CA (2)
- Subject: OU = OCIO CA, OU = Certification Authorities, OU = Department of the Treasury, O = U.S. Government, C = US
- Issuer: OU = US Treasury Root CA, OU = Certification Authorities, OU = Department of the Treasury, O = U.S. Government, C = US
- Serial #: 4a61d192 
- Validity: ‎November ‎7, ‎2010 to November ‎7, ‎2020 
- SHA-1 Hash: 918a68d87fb6011afe3666076319ed0462df0940 

#### OCIO CA (3)
- Subject: OU = OCIO CA, OU = Certification Authorities, OU = Department of the Treasury, O = U.S. Government, C = US
- Issuer: OU = US Treasury Root CA, OU = Certification Authorities, OU = Department of the Treasury, O = U.S. Government, C = US
- Serial #: 4a61d147 
- Validity: ‎September ‎12, ‎2010 to September ‎12, ‎2020
- SHA-1 Hash: f9299790eb271125fd91e661cede4ee202d7e758 