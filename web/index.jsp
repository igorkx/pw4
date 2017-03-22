<%@page import="br.ufms.model.Noticias"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
    <head>
        <title>inicio</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS\black-theme.css">
        <link rel="stylesheet" href="CSS\bootstrap.css">
        <link rel="stylesheet" href="CSS\style2.css">
        <link rel="stylesheet" href="CSS\font-awesome.min.css">
        <style>
            html,body,h1,h2,h3,h4,h5,h6 {font-family: sans-serif}
        </style>

    </head>
    <body>
        <!-- Menu Superior -->
        <div class="w3-top">
            <div class="w3-bar w3-theme w3-top w3-left-align w3-large">
                <a class="w3-bar-item w3-button w3-right w3-hide-large w3-hover-white w3-large w3-theme-l1" href="javascript:void(0)" onclick="w3_open()"><i class="fa fa-bars"></i></a>
                <a href="#" class="w3-bar-item w3-button w3-theme-l1">Inicio</a>
                <a href="entretenimento.jsp" class="w3-bar-item w3-button w3-hide-small w3-hover-white">Entretenimento</a>
                <a href="moda.jsp" class="w3-bar-item w3-button w3-hide-small w3-hover-white">Moda</a>
                <a href="esporte.jsp" class="w3-bar-item w3-button w3-hide-small w3-hover-white">Esporte</a>
                <a href="politica.jsp" class="w3-bar-item w3-button w3-hide-small w3-hover-white">Política</a>
                <a href="cadastroUsuario.jsp" class="w3-bar-item w3-button w3-hide-small w3-hover-white">Cadastrar</a>

            </div>
        </div>
        <!-- Acesso -->
        <nav class="w3-sidebar w3-bar-block w3-collapse w3-large w3-theme-l5 w3-animate-left" style="z-index:3;width:250px;margin-top:43px;" id="mySidebar">
            <form method="post" action="Servlet?acao=acesso">
                <h4 class="w3-bar-item">login</h4>
                <input type="text" name="login" value="" />
                <h4 class="w3-bar-item">Senha</h4>
                <input type="text" name="senha" value="" />
                <input type="submit" value="Confirmar" />
                <input type="reset" value="Limpar" />
            </form><br>
            <form action="Servlet?acao=listar" method="post">
                <input type="submit" value="Mostrar noticias">
            </form>
        </nav> 
        <!--Falta arrumar as noticias-->
        <%
            if (session.getAttribute("lista") != null) {
                List<Noticias> lista = (List<Noticias>) session.getAttribute("lista");
                for (int i = 0; i < lista.size(); i++) {
        %>
        <!-- Overlay effect when opening sidebar on small screens -->
        <div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>
        <div class="w3-main" style="margin-left:250px">
            <div class="w3-row w3-padding-64">
                <div class="w3-twothird w3-container">
                    <h1 class="w3-text-teal"><%=lista.get(i).getTitulo()%></h1>
                    <p><%=lista.get(i).getImagem()%></p> 
                </div>
            </div>
        </div>
        <%}
            }%>
    </body>
</html>

