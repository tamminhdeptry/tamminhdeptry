<%-- 
    Document   : form
    Created on : 8 thg 1, 2023, 21:32:37
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
        <form action="UploadServlet" method="post" enctype="multipart/form-data">
            <input type="file" name="photo_file"><br>
            <input type="file" name="doc_file"><br>
            <hr>
            <button> upload</button>
        </form>
    </body>
</html>
