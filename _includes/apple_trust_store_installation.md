* [TEST]({{site.baseurl}}/truststores/apple_solutions/test), 


To limit the impact to your agency, you'll need to redistribute the COMMON root CA certificate as a _trusted root certificate_ to all government-furnished Apple devices.

To redistribute COMMON, follow these procedures:
1. [Download a Copy of COMMON](#download-a-copy-of-common)
1. [Verify Your Copy of COMMON](#verify-your-copy-of-common)
1. Redistribute COMMON
     - [macOS Solutions](#macos-solutions)
     - [iOS Solutions](#ios-solutions)

### Download a Copy of COMMON
To download a copy of COMMON, use one of the recommended options:
1. Download from http://http.fpki.gov/fcpca/fcpca.crt. 
1. Email fpki@gsa.gov to request an out-of-band copy for download.

{% include alert-warning.html content="You should never install a root certificate without verifying it. Follow the procedures below to verify the authenticity of your copy of COMMON." %} 


### Verify Your Copy of COMMON
The following instructions are intended to be run on **macOS**.
1. Click the *Spotlight* icon and search for _terminal_.
2. Double-click the Terminal icon (black monitor icon with white ">_") to open a window.
3. Verify that the certificate's hash matches the SHA-256 Thumbprint in the certificate details above:<br />

    ```
	$ shasum -a 256 {DOWNLOAD_LOCATION}/fcpca.crt
    ```
    
    **Note:**&nbsp;&nbsp;Replace _{DOWNLOAD_LOCATION}_ with your preferred file download location (e.g., `/Users/Sam.Jackson/Downloads`).

Verify that your downloaded certificate's details and hash match the expected values shown below:

| **Federal Common Policy CA (FCPCA/COMMON)**  | **Certificate Details**                             |
| :--------  | :-------------------------------     |
| Federal Common Policy CA<br>(sometimes shown as _U.S. Government Common Policy_) | http://http.fpki.gov/fcpca/fcpca.crt |
| Distinguished Name | cn=Federal Common Policy CA, ou=FPKI, o=U.S. Government, c=US |
| SHA-1 Thumbprint | 90 5f 94 2f d9 f2 8f 67 9b 37 81 80 fd 4f 84 63 47 f6 45 c1 |
| SHA-256 Thumbprint | 89 4e bc 0b 23 da 2a 50 c0 18 6b 7f 8f 25 ef 1f 6b 29 35 af 32 a9 45 84 ef 80 aa f8 77 a3 a0 6e |

**Note:** These steps are seen in the video below:
<br>
<video width="600" controls>
  <source src="{{site.baseurl}}/video/create_profile.mp4" type="video/mp4">
</video>

### macOS Solutions
Install COMMON on your agency's government-furnished Apple macOS devices using any of these options: 
* [Install using an Apple Configuration Profile](#install-using-an-apple-configuration-profile)
* [Install using command line](#install-using-command-line)
* [Install using Apple Keychain](#install-using-apple-keychain)

### iOS Solutions
Install COMMON on your agency's government-furnished Apple iOS devices using any of these options: 
* [Install using an Apple Configuration Profile](#install-using-an-apple-configuration-profile)
* [Install using Safari web browser](#install-using-safari-web-browser)

