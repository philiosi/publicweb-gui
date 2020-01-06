<%@ include file="header.jsp" %>
  <%--
  <!-- <h1 class="title">Welcome to the public KISTI CA (Certificate Authority) web site.</h1>
  <ul>
    <li>KISTI Certification Authority is operated by the Grid Technology Research Team of KISTI (Korea Institute of Science and Technology Information).</li>
    <li>The authority satisfies requirements from APGrid PMA.</li>
    <li>Certificate issues by the KISTI Grid CA are compatible with the Globus Toolkit middleware.</li>
    <br>
    <li>The public key cryptography is the basis of grid security architecture.</li>
    <li>Certification Authority(CA) is a mandatory componant of public key infrastructure(PKI).</li>
    <li>Please read <a href="http://www.globus.org/security/overview.html" target="_blank">"Overview of the Grid Security Infrastructure"</a> from Globus site.</li>
  </ul>

  <h2 class="title">Reference</h2>
  <h2>Enroll</h2>
  <ul>
	  <li>Create Browser Certificate - Install a certificate in your web browser. This certificate may be exportable depending on browser and browser settings.</li>
	  <li>Create Certificate from CSR -  Send a PKCS#10 certificate request generated by your server, and receive a certificate that can be installed on the server. Consult your server documentation.</li>
	  <li>Create Keystore - Create a server generated keystore in PEM, PKCS#12 or JKS format and save to your disc. This keystore can be installed in a server, browser or in other applications.</li>
	  <li>Create CV Certificate -  Used for EU EAC ePassport PKI. Send a CVC certificate request generated by an Inspection System, and receive a CV certificate. Note: this can not be used for regular certificates, CV certificates are completely different.</li>
      <% if(org.ejbca.config.WebConfiguration.getRenewalEnabled()) { %>
	  <li>Renew Browser Certificate - Authenticate using a browser certificate and request it to be renewed. Requires client certificate authentication.</li>
      <% } %>
  </ul>
  <h2>Retrieve</h2>
  <ul>
	  <li>Fetch CA Certificates - Browse and download CA certificates.</li>
	  <li>Fetch CA CRLs - Download Certificate Revocation Lists.</li>
	  <li>Fetch User's Latest Certificate - Download the last issued certificate for a user for whom you know the certificate Distinguished Name.</li>
  </ul>
  <h2>Inspect</h2>
  <ul>
	  <li>Inspect certificate/CSR - Inspect a dump of a CSR or a certificate. This gives an output of a CVC or ASN.1 dump, suitable for technical inspection and debugging.</li>
  </ul>
  <h2>Miscellaneous</h2>
  <ul>
	  <li>List User's Certificates - List certificates for a user for whom you know the certificate Distinguished Name.</li>
	  <li>Check Certificate Status - Check revocation status for a certificate where you know the Issuer Distinguished Name and the serial number.</li>
	  <li>Administration - Go to the EJBCA Admin-GUI. Requires client certificate authentication.</li>  
      <% if (!"disabled".equalsIgnoreCase(org.ejbca.config.WebConfiguration.getDocBaseUri())) { %>
	  <li>Documentation - Go to the on-line EJBCA documentation.</li>  
      <% } %>
  </ul>  -->
  --%>
  

<%@ include file="footer.inc" %>
