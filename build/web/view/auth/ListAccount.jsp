<%-- 
    Document   : ListAccount
    Created on : Oct 25, 2021, 4:50:05 PM
    Author     : doan7
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
               <script>
            function doUpdate(username){
                
                window.location.href = "update?username="+username;
            }
        </script>  
    </head>
    <body>
        <table border="1px">
            <tr>
                <td>Username</td>
                <td>Password</td>
                <td></td>

            </tr>
            <c:forEach items="${requestScope.Accounts}" var="acc">
                <tr>
                    <td>${acc.username}</td>
                    <td>${acc.password}</td>
                    <td><input type="button" onclick="doUpdate(`${acc.username}`)" value="Update"/></td>
                </tr>
            </c:forEach>
        </table>
        <a href="insert">Insert</a>
    </body>
</html>
