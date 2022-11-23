<%@page import="java.util.List"%>
<%@page import="model.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cardápio</title>
        <link rel="shortcut icon" href="img/Logo_oishii.png">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <link href="css/reset.css" rel="stylesheet" type="text/css"/>
        <link href="css/Style.css" rel="stylesheet" type="text/css"/>
        <link href="css/grid.css" rel="stylesheet" type="text/css"/>
        <link href="css/normalize.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <!-- Topo do Menu Site-->
        <div class="one"></div>
        <header class="header">

            <a href="ListarPedidos" class="grid-4">

                <img src="img/Logo_oishii.png" alt="" height="180px">
                <div class="carrinho">
                    <img src="img/Carrinho.png" alt="Carrinho de compras">
                </div>
            </a>
            <nav class="grid-12 topo">

                <ul>
                    <li class="A"><a href="index.jsp" class="AA">início</a></li> 
                    <li class="A"><a href="ListarProduto" class="AA">Cardápio</a></li>
                    <li class="A"><a href="cadastrarProduto.jsp" class="AA">Cadastrar produto</a></li>
                    <li class="A"><a href="Sobrenos.jsp" class="AA">Sobre</a></li>
                    <li class="A"><a href="paginaContato.jsp" class="AA">Contato</a></li>
                </ul>
            </nav>
    </header>
    <!--Fim menu-->

    <!--catalogocardapio-->
    <%
        List<Produto> lista = (List<Produto>) request.getAttribute("produtos");
    %>
    <main>
        <h1 class="nomeCardapio">Cardápio</h1>

        <div class="container row row-cols-2 row-cols-md-4 col-10">
            <%
                for (Produto produto : lista) {
            %>
            <div class="card" style="width: 18rem; margin-left: 15px; margin-bottom: 10px;">
                <div class="card-body">
                    <form action="CadastrarPedido" method="post">  
                        <input type="text" name="idPedido" hidden/>                             
                        <input name="idProduto" value="<%= produto.getIdProduto()%>" hidden/>    
                        <h5 class="card-title"><strong><%= produto.getNomeProduto()%></strong></h5>
                        <p class="card-text"><%= produto.getObsProduto()%></p>
                        <p class="card-text">R$<%= produto.getVlrVenda()%></p>
                        <button type="submit" class="btn" style="background-color: #B22222; color: white; margin-bottom: 2px;">Adicionar ao carrinho</button> 
                        <a class="btn" style="background-color: #B22222; color: white;" 
                           href="ConsultarProduto?idProduto=<%=produto.getIdProduto()%>">Ver mais</a>
                    </form>
                </div>
            </div>
            <%
                }
            %>
        </div>

    </main>





    <!--fimcatalogo-->


    <!--Rodapé-->
    <footer>
        <div div class="one"></div>
        <section class="footer">
            <div class="container">
                <h3>Copyrights © 2022 - Gabriel V. Silva, Todos os direitos reservados.</h3>
            </div>
        </section>
    </footer>
    <!--FimRodapé-->

</body>
</html>
