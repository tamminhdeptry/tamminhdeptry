<%-- 
    Document   : Login
    Created on : 8 thg 1, 2023, 13:52:44
    Author     : nguye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="CSS/Style.css"/>
    </head>
    <body>
        <header>
        <h1>Login</h1>
    </header>
    <main>
        <form id="login_form" class="form_class" action="login" method="post">
            <div class="form_div">
                <label>Login:</label>
                <input class="field_class" name="txtUserName" type="text" placeholder="Enter UserName" autofocus>
                <label>Password:</label>
                <input id="pass" class="field_class" name="txtPassword" type="password" placeholder="Enter Password">
                <p style="color: red"> ${MESSAGE}</p>
                <button class="submit_class" type="submit" form="login_form" >Login</button>
            </div>
            <div class="info_div">
                <p>Don't have account? <a href="register">Register!</a></p>
            </div>
        </form>
    </main>
    <footer>
        <p>Desenvolvido por <a href="#">JM_Code&trade;</a></p>
    </footer>
    </body>
</html>
