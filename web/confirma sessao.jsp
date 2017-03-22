

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Sessão</title>
        <link rel="stylesheet" href="CSS\stylerForm.css">
    </head>

    <body>
        <%
            if ((session.getAttribute("login") == null) || (session.getAttribute("login") == "")) {
        %>
        <div><h3>Você não esta logado</h3><br/>
            <a href="index.jsp">Faço o login</a>
            <%} else {
            %>
            <h3>Bem vindo</h3><br>
            <h3><%=session.getAttribute("login")%></h3>
            <div><a href='autorPage.jsp'>Sua Noticias</a><br></div>
            <div><a href='sair.jsp'>Sair</a><br></div>
                <%
                    }
                %>
    </body>
</html>
