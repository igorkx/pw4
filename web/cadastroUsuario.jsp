<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro Usuario</title>
        <link rel="stylesheet" href="CSS\stylerForm.css">
    </head>
    <body>
        <h3>Castro de usuario</h3>
        <div>
            <form action="/action_page.php">
                <label for="nom">Nome</label></td>
                <input type="text" id="nom" name="nome" placeholder="Digite seu nome" required/>

                <label for="log">Login</label>
                <input type="text" id="log" name="login" placeholder="Digite um Lgoin para acesso" required/>
                
                <label for="mail">Email</label>
                <input type="text" id="mail" name="email" placeholder="Digite seu email" required/>

                

                <label for="sen">Senha</label>
                <input type="text" id="sen" name="senha" placeholder="Digite uma Senha para acesso" required/>

                <label for="cat1">Categoria</label>
                <select id="cat" name="categoria1" required>
                    <option value="entretimento">Entretenimento</option>
                    <option value="moda">Moda</option>
                    <option value="esporte">Esporte</option>
                    <option value="politica">Politica</option>
                </select>

                <input type="submit" value="Confirmar">
                <input type="reset" value="Limpar" />
            </form>
        </div>
        <footer>
            <div> 
                <a href='logout.jsp'>Sair</a>
            </div>
        </footer>
    </body>
</html>
