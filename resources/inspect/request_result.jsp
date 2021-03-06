 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
 
 <%@ include file="header.jsp" %>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload,org.apache.commons.fileupload.FileItem,java.util.List,java.util.Iterator,java.io.InputStream,org.cesecore.util.FileTools,
org.apache.commons.fileupload.disk.DiskFileItemFactory"%>

<jsp:useBean id="dump" class="org.ejbca.ui.web.pub.inspect.CertAndRequestDumpBean" scope="page" />
         
  <%
// Check that we have a file upload request
boolean isMultipart = ServletFileUpload.isMultipartContent(request);
if (isMultipart) {
  final DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();
  diskFileItemFactory.setSizeThreshold(9999);
  ServletFileUpload upload = new ServletFileUpload(diskFileItemFactory);
  upload.setSizeMax(10000);
  List<FileItem> items = upload.parseRequest(request);
  for(FileItem item : items) {
    if (!item.isFormField()) {
      InputStream is = item.getInputStream();
      byte[] bytes = FileTools.readInputStreamtoBuffer(is);
      dump.setBytes(bytes);
    }
  }
}
  %>

<section id="certificates" class="service-area gray-bg pt-130 pb-25" style="min-height:1000px;">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="section-title text-left pb-30" style="overflow-wrap:break-word;">
                    <h6 class="title" style="font-size:30px;"><c:out value="Certificate/CSR dump" /></h6>
                    <hr/>
                    <p class="pt-10">File is of type: <c:out value="${dump.type}"/></p>
                    <p> <c:out value="${dump.dump}"></c:out> </p>
                </div>
            </div>
        </div> <!-- row END -->
    </div>
</section>

 <%@ include file="footer.inc" %>
