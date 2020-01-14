<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="THIS_TITLE" value="Certificate Enrollment from CSR" />
<%@ include file="header.jsp" %>
<section id="about" class="about-area pt-90">
    <div class="navigation-2nd">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <nav class="navbar navbar-expand-lg">
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav ml-auto">
                                <span class="nav-item emphasis-mid pt-10 pb-10 pr-30 nav-sub nav-alink-b">Enroll</span>
                                <li class="nav-item pt-10 pb-10 pr-12"><a href="browser.jsp" class="nav-alink">Create Browser Certificate</a></li>
                                <li class="nav-item pt-10 pb-10 pr-12"><a href="server.jsp" class="nav-alink nav-alink-b">Create Certificate from CSR</a></li>
                                <li class="nav-item pt-10 pb-10 pr-12"><a href="keystore.jsp" class="nav-alink">Create Keystore</a></li>
                                <li class="nav-item pt-10 pb-10 pl-30 pr-12"><a href="retrieve/list_certs.jsp" class="nav-alink-b emphasis-mid">Fetch Certificate</a></li>
                                <li class="nav-item pt-10 pb-10 pl-30 pr-12"><a href="inpect/request.jsp" class="nav-alink-b emphasis-mid">Inspect Certificate</a></li>
                            </ul>
                        </ul>
                        </div> <!-- navbar collapse -->
                    </nav> <!-- navbar -->
                </div>
            </div>
        </div>
    </div>
</section>

<section id="certificate" class="service-area gray-bg pt-30 pb-25">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="section-title text-center pb-30">
                    <h6 class="title" style="font-size:30px;">CERTIFICATE ENROLLMENT FROM A CSR</h6>
                    <p class="pt-10"> Send a PKCS#10 certificate request generated by your server, and receive a certificate that can be installed on the server. Consult your server documentation.</span>
                </div>
            </div>
        </div> <!-- row END -->
        <div class="row justify-content-center">
            <div class="col-lg-8 col-md-11 col-sm-12">
                <p class="mr-45 ml-45">Please give your username and enrollment code, select a PEM- or DER-formated certification request file (CSR) for upload, 
                    or paste a PEM-formated request into the field below and click OK to fetch your certificate. </p>
                <p><span><i class="fas fa-info-circle icon"><i>
                        A PEM-formatted request is a BASE64 encoded certificate request <br />
                        starting with <code class="emphasis-mid"><b>-----BEGIN CERTIFICATE REQUEST-----</code></b><br />
                        and ending with <code class="emphasis-mid"><b>-----END CERTIFICATE REQUEST-----</code></b>
                </span></p>        
                <div class="card text-center mt-10 ml-45 mr-45">
                    <div class="card-header "> 
                        <h3 class="title"> Enroll </h3>
                    </div> <!-- card-header END -->
                    <div class="card-body">
                        <form name="EJBCA" action="../certreq" method="post" enctype="multipart/form-data">
                    
                            <input type="hidden" name="hidemenu" value="<c:out value='${hidemenu}' />" />
                            <input type="hidden" name="showResultPage" value="true" />
                            
                            <div class="input-group form-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-user"></i></span>
                                </div>
                                <label for="user"></label>
                                <input type="text" class="form-control" placeholder="username" name="user" id="user" accesskey="u" />
                            </div>

                            <div class="input-group form-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-key"></i></span>
                                </div>
                                <label for="password" title="Please enter your one-time authentication code. This is NOT the same as the certificate passphrase."></label>
                                <input type="password" autocomplete="off" class="form-control" placeholder="Enrollment Code" name="password" id="password" accesskey="p" />
                            </div>

                            <p class="emphasis-mid text-left">Upload CSR file</p>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-upload icon"></i><label for="pkcs10file"></label></span>
                                </div>
                                <div class="custom-file">
                                    <input type="file" class="custom-file-input" name="pkcs10file" id="pkcs10file"></input>
                                    <label class="custom-file-label" for="inputGroupFile01">Certificate Signing Request (CSR) file</label>
                                </div>
                            </div>
                            <p class="emphasis-mid text-left">or copy and paste your CSR block below:</p>
                            <div class="input-group">
                                <%-- <textarea class="form-control" rows="15" cols="66" name="pkcs10req" id="pkcs10req" aria-label="With textarea"
                                placeholder="-----BEGIN CERTIFICATE REQUEST-----

                                -----END CERTIFICATE REQUEST-----"></textarea> --%>
                                <textarea class="form-control" rows="15" cols="66" name="pkcs10req" id="pkcs10req" aria-label="With textarea" placeholder="please check a PEM-formatted request infomation above!">
                                </textarea>
                            </div>

                            <br />
                            <br />
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <label for="resulttype" class="input-group-text mr-10"><i class="lni-certificate icon"></i>Result type</label>
                                </div>
                                <select class="custom-select" name="resulttype" id="resulttype">
                                    <option value="<%=org.ejbca.ui.web.CertificateResponseType.ENCODED_CERTIFICATE.getNumber()%>">PEM  - certificate only</option> 
                                    <option selected="selected" value="<%=org.ejbca.ui.web.CertificateResponseType.ENCODED_CERTIFICATE_CHAIN.getNumber()%>">PEM  - full certificate chain</option> 
                                    <option value="<%=org.ejbca.ui.web.CertificateResponseType.ENCODED_PKCS7.getNumber()%>">PKCS#7 certificate</option>
                                    <option value="<%=org.ejbca.ui.web.CertificateResponseType.BINARY_CERTIFICATE.getNumber()%>">Binary certificate</option>
                                </select>
                            </div>
                            
                            <br />
                            <label for="ok"></label>
                            <input class="main-btn" type="submit" id="ok" value="OK" /></input>
                        </form>
                    </div>
                </div>
            </div>
        </div> <!-- row END -->
    </div>
</section>

<%@ include file="footer.inc" %>
