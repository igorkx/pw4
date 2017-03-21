<%-- 
    Document   : sair
    Created on : 26/01/2017, 13:54:00
    Author     : igor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.removeAttribute("login");
            pageContext.forward("index.jsp");
        %>
    </body>
</html>
