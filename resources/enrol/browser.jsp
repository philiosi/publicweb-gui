<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="THIS_TITLE" value="Certificate Enrollment" />
<%@ include file="header.jsp" %>

<jsp:useBean id="internalConfiguration" class="org.ejbca.config.InternalConfiguration" scope="request" />

<c:set var="THIS_FILENAME" value="/${internalConfiguration.appNameLowerDynamic}/enrol/browser.jsp" />
<c:set var="PASSWORD_TERMINOLOGY" value="enrollment_code" />
<section id="about" class="about-area pt-90">
    <div class="navigation-2nd">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <nav class="navbar navbar-expand-lg">
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav ml-auto">
                                <span class="nav-item emphasis-mid pr-30"><b>Enroll</b></span>
                                <li class="nav-item pr-15"><a href="browser.jsp">Create Browser Certificate</a></li>
                                <li class="nav-item pr-15"><a href="server.jsp">Create Certificate from CSR</a></li>
                                <li class="nav-item pr-15"><a href="keystore.jsp">Create Keystore</a></li>
                                <li class="nav-item pl-30 pr-15 emphasis-mid"><a href="retrieve/list_certs.jsp">Fetch Certificate</a></li>
                            <li class="nav-item  pl-30 pr-15 emphasis-mid"><a href="inpect/request.jsp">Inspect Certificate</a></li>
                            </ul>
                        </ul>
                        </div> <!-- navbar collapse -->
                    </nav> <!-- navbar -->
                    <h6 class="title">Create Browser Certificate</h6>
                    <p class="pt-10">Install a certificate in your web browser. This certificate may be exportable depending on browser and browser settings.</span>
                </div>
            </div>
        </div>
    </div>
</section>

<%@ include file="apply/apply_main.jsp" %>
<%@ include file="footer.inc" %>
