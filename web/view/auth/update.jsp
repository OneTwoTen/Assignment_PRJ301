<%-- 
    Document   : update.jsp
    Created on : Oct 26, 2021, 10:40:57 AM
    Author     : doan7
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="update" method="Post">
            Username:${requestScope.Account.username} <input  type="hidden" name="user"/><br>
            Old PassWord:<input style="margin-left: 30px" type="text" name ="pass"/><br>
            Confirm PassWord:<input type="text" name ="pass2"/><br>
            <input type="submit" value="Update"/>
        </form>
    </body>
</html>
