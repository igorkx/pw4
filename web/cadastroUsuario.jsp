<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro Usuario</title>
    </head>
    <body>
        <form method="post" action="RegistroServlet">
            <center>
                <table border="1" width="30%" cellpadding="5">
                    <thead>
                        <tr>
                            <th colspan="2">Entre com suas informações aqui</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Nome</td>
                            <td><input type="text" name="nome" required/></td>
                        </tr>                       
                        <tr>
                            <td colspan="2">
                                <label><input type="radio" name="categoria1" value="Administrador">Administrador</label><br>
                                <label><input type="radio" name="categoria1" value="Autor">Autor</label><br>
                            </td>
                        <tr>
                        <tr>
                            <td colspan="2">
                                <label><input type="radio" name="categoria2" value="Entretenimento">Entretenimento</label><br>
                                <label><input type="radio" name="categoria2" value="Moda">Moda</label><br>
                                <label><input type="radio" name="categoria2" value="Esporte">Esporte</label><br>
                                <label><input type="radio" name="categoria2" value="Política">Política</label><br>
                            </td>
                        <tr>
                            <td>Email</td>
                            <td><input type="text" name="email" required/></td>
                        </tr>
                        <tr>
                            <td>Login</td>
                            <td><input type="text" name="login" required/></td>
                        </tr>
                        <tr>
                            <td>Senha</td>
                            <td><input type="text" name="senha" required/></td>
                        </tr>
                        <tr>
                            <td><input type="submit" value="Enviar" /></td>
                            <td><input type="reset" value="Limpar" /></td>
                        </tr>
                        <tr>
                            <td colspan="2">Já Registrado!! <a href="index.jsp">Acessar Aqui</a></td>
                        </tr>
                    </tbody>
                </table>
            </center>
        </form>
    </body>
</html>
