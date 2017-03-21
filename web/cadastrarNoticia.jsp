<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro Noticias</title>
        <link rel="stylesheet" href="CSS\stylerForm.css">
    </head>
    <body>
        <h3>Registro de Notícias</h3>
        <div>
            <form action="/action_page.php">
                <label for="tittle">Titulo</label></td>
                <input type="text" id="tittle" name="titulo" placeholder="Titulo da noticia" required/>

                <label for="cont">Conteudo</label>
                <input type="text" id="tittle" name="conteudo" placeholder="Conteudo da noticia" required/>

                <label for="img">Imagem</label>
                <input type="text" id="img" name="imagem" placeholder="Insira imagem" required/>

                <label for="cat">Categoria</label>
                <select id="cat" name="categoria" required>
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
