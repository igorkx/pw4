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
        <div class="navbar">
  <div class="navbar-inner">
    <div class="container">
 
      <!-- .btn-navbar é usado como alternador para conteúdo de barra de navegação colapsável -->
      <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>
 
      <!-- Tenha certeza de deixar a marca se você quer que ela seja mostrada -->
      <a class="brand" href="#">Jornal</a>
      <li><a href="#">Listar Noticias</a></li>
 
      <!-- Tudo que você queira escondido em 940px ou menos, coloque aqui -->
      <div class="nav-collapse collapse">
          <ul class="nav nav-tabs">
  <li class="dropdown">
    <a class="dropdown-toggle"
       data-toggle="dropdown"
       href="#">
        Autor
        <b class="caret"></b>
      </a>
    <ul class="dropdown-menu">
      <li><a href="#">Cadastrar</a></li>
  <li><a href="#">Editar</a></li>
  <li><a href="#">Excluir</a></li>
      
    </ul>
  </li>
</ul>
      </div>
      
      
      <div class="nav-collapse collapse">
          <ul class="nav nav-tabs">
  <li class="dropdown">
    <a class="dropdown-toggle"
       data-toggle="dropdown"
       href="#">
        Noticia
        <b class="caret"></b>
      </a>
    <ul class="dropdown-menu">
      <li><a href="cadastrarNoticia.jsp">Cadastrar</a></li>
  <li><a href="#">Editar</a></li>
  <li><a href="#">Excluir</a></li>
      
    </ul>
  </li>
</ul>
      </div>
      
      <li><a href="sair.jsp">Sair</a></li>
 
    </div>
  </div>
</div>
        
    </body>
</html>

