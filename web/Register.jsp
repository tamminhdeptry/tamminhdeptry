<%-- 
    Document   : Register
    Created on : 8 thg 1, 2023, 14:23:03
    Author     : nguye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet"
              href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"> 
        <script
            src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script
            src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <title>JSP Page</title> 
                
    </head>
    <body>
        <div class="container" style="margin-top: 10px">    
            <div class="row"
                 style="border: 1px darkgrey solid; border-radius: 10px; width: 50%; margin: 0 auto; padding: 20px;">
                <div class="col-sm-12">
                    <h2>Register</h2>
                    <form action="RegisterServlet" method="post">
                        <div class="form-group">
                            <label>UserName</label>
                            <input type="text" name="username" class="form-control" placeholder="Enter UserName">
                        </div>
                        
                        <div class="form-group">
                            <label>Age</label>
                            <input type="text" name="age" class="form-control" placeholder="Enter Age" value="0">
                        </div>
                        <div class="form-group">
                            <label for="Country">Country</label>
                            <select class="form-control" name="country">
                                <option>Viet Nam</option>
                                <option>America</option>
                                <option>Japan</option>
                                <option>China</option>
                                <option>ThaiLand</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Gender</label>
                            <div class="radio">
                                <label class="checkbox-inline">
                                    <input type="radio" name="gender" value="1">Male</label>
                                 <label class="checkbox-inline">
                                     <input type="radio" name="gender" checked="checked" value="0">FeMale</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Hobby</label>
                            <div class="form-check form-check-inline">
                                <input name ="hobbies" value="Music" class="form-check-input" type="checkbox">
                                <label class="form-check-label">Music</label>
                                <input name ="hobbies" value="Reading" class="form-check-input" type="checkbox">
                                <label class="form-check-label">Reading</label>
                                <input name ="hobbies" value="Shopping" class="form-check-input" type="checkbox">
                                <label class="form-check-label">Shopping</label>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary">Save</button>
                        <button type="reset" class="btn btn-primary">Cancel</button>
                        
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
