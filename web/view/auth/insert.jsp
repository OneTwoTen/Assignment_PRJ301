<%-- 
    Document   : insert
    Created on : Oct 26, 2021, 9:20:12 AM
    Author     : doan7
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="insert" method="Post">
            Username:<input style="margin-left: 58px" type="text" name="user"/><br>
            PassWord:<input style="margin-left: 59px" type="text" name ="pass"/><br>
            Confirm PassWord:<input type="text" name ="pass2"/><br>
            <input type="submit" value="Sign In"/>
        </form>
    </body>
</html>
