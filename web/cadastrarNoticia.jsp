<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro Usuario</title>
    </head>
    <body>
        <form method="post" action="RegistrarNoticia">
            <center>
                <table border="1" width="30%" cellpadding="5">
                    <tbody>
                        <tr>
                            <td>Titulo</td>
                            <td><input type="text" name="titulo" required/></td>
                        </tr>                       
                        <tr>
                            <td>Conteudo</td>
                            <td><input type="text" name="texto" required/></td>
                        </tr>
                        <tr>
                            <td>Imagem</td>
                            <td><input type="text" name="imagem" required/></td>
                        </tr>
                        <tr>
                            <td>Categoria</td>
                            <td><input type="text" name="categoria" required/></td>
                        </tr>
                        <tr>
                            <td><input type="submit" value="Enviar" /></td>
                            <td><input type="reset" value="Limpar" /></td>
                        </tr>
                    </tbody>
                </table>
            </center>
        </form>
    </body>
</html>
