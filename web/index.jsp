<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>home</title>
    </head>
    <body>
        <h1>site de noticias teste</h1>
        <ul>
            <li>
                <a class="inicio" href="#inicio">Início</a>
            </li>
        <!--Menu-->
        <li>
            <h1>Noticias</h1>
            <a href="pagina1.html">Entretenimento</a><br>
            <a href="pagina2.html">Moda</a><br>
            <a href="pagina3.html">Esporte </a><br>
            <a href="pagina4.html">Política</a><br>
        </li>
    </ul>
    <!--Login-->
    <form method="post" action="Servlet">
        <center>
            <table border="1" width="30%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="2">Acesso</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Login</td>
                        <td><input type="text" name="login" value="" /></td>
                    </tr>
                    <tr>
                        <td>Senha</td>
                        <td><input type="text" name="senha" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Confirmar" /></td>
                        <td><input type="reset" value="Limpar" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Não está registrado!! <a href="cadastro.jsp">Registre Aqui</a></td>
                    </tr>
                </tbody>
            </table>
        </center>
    </form>
    <!--Falta arrumar as noticias-->
</body>
</html>
