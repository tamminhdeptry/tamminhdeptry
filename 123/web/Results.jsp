<%-- 
    Document   : Results
    Created on : 8 thg 1, 2023, 14:14:46
    Author     : nguye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>1.Hinh: ${img.name}</h2>
        <img src="${pageContext.request.contextPath}/fpoly/files/${img.name}" height="100" alt="">
        
        <h2>2.Tai Lieu: ${doc.name}</h2>
        <a href="${pageContext.request.contextPath}/fpoly/files/${doc.name}" >Tai ve</a>
    </body>
</html>
