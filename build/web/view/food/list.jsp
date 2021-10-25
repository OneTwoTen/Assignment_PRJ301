<%-- 
    Document   : list
    Created on : Oct 25, 2021, 10:49:59 AM
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
        <table border="1px">
            <tr>
                <td>ID</td>
                <td>Name</td>
                <td>Category</td>
                <td>Price</td>                
            </tr>
            <c:forEach items="${requestScope.Foods}" var="f">
                <tr>
                    <td>${f.id}</td>
                    <td>${f.name}</td>
                    <td><c:forEach items="${requestScope.Cates}" var="c">
                            <c:if test="${c.id == f.category.id }">
                            ${c.name}
                    </c:if>
                        </c:forEach>
                    </td>
                    <td>${f.price}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
