<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="THIS_TITLE" value="Keystore Enrollment" />
<%@ include file="header.jsp" %>

<jsp:useBean id="internalConfiguration" class="org.ejbca.config.InternalConfiguration" scope="request" />

<c:set var="THIS_FILENAME" value="/${internalConfiguration.appNameLowerDynamic}/enrol/keystore.jsp" />

<section id="about" class="about-area pt-90">
    <div class="navigation-2nd">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <nav class="navbar navbar-expand-lg">
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav ml-auto">
                                <span class="nav-item emphasis-mid pr-30"><b>Enroll</b></span>
                                <li class="nav-item pr-15"><a href="browser.jsp" style="color:#8a8fa3">Create Browser Certificate</a></li>
                                <li class="nav-item pr-15"><a href="server.jsp" style="color:#8a8fa3">Create Certificate from CSR</a></li>
                                <li class="nav-item pr-15"><a href="keystore.jsp" style="color:#8a8fa3"><b>Create Keystore</b></a></li>
                                <li class="nav-item pl-30 pr-15"><a href="retrieve/list_certs.jsp" class="emphasis-mid"><b>Fetch Certificate</b></a></li>
                                <li class="nav-item  pl-30 pr-15"><a href="inpect/request.jsp" class="emphasis-mid"> <b>Inspect Certificate</b></li>
                            </ul>
                        </ul>
                        </div> <!-- navbar collapse -->
                    </nav> <!-- navbar -->
                </div>
            </div>
        </div>
    </div>
</section>
<%@ include file="apply/apply_main.jsp" %>

<%@ include file="footer.jsp" %>
