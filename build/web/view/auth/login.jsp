<%-- 
    Document   : login
    Created on : Oct 24, 2021, 11:18:58 AM
    Author     : doan7
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="Login" method="Post">
        UserName:<input type="text" name="user"/><br>
        PassWord:<input type ="text" name="pass"/><br>
        <input type="submit" value="Login"/>
        </form>
    </body>
</html>
