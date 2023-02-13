<%-- 
    Document   : RegisterResult
    Created on : 8 thg 1, 2023, 15:01:34
    Author     : nguye
--%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>UserName:${requestScope.username}</h3>
        <h3>Age:${requestScope.age}</h3>
        <h3>Country:${requestScope.country}</h3>
        <c:if test="${requestScope.gender == 1}">
            <h3>Gender:Male</h3>
        </c:if>
        <c:if test="${requestScope.gender == 0}">
            <h3>Gender:FeMale</h3>
        </c:if>
        <h3>Hobbies</h3>
        
        <c:forEach var="item" items="${requestScope.hobbies}" >
            ${item}  
        </c:forEach>
        
    </body>
</html>
