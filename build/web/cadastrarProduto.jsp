<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="img/Logo_oishii.png">
        <title>Oishii Jales</title>
        <link href="css/styleProduto.css" rel="stylesheet" type="text/css"/>
        <link href="css/Style.css" rel="stylesheet" type="text/css"/>
        <link href="css/grid.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
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
        <div style="display: flex; margin-left: 32rem; margin-top: 50px;">
            <section>           
                <h2>Cadastrar Produto</h2>
                <form action="CadastrarProduto" method="post">
                    <input type="text" name="idProduto" value="${produto.idProduto > 0 ? produto.idProduto : ""}" hidden>
                    <div class="nome">
                        <label>Nome</label>
                        <input type="text" name="nomeProduto" value="${produto.nomeProduto}">
                    </div>
                    <div class="valor">
                        <label>Valor</label>
                        <input type="text" name="vlrVenda" value="${produto.valorProduto}">
                    </div>
                    <div class="codigobarra">
                        <label class="textocodigodebarra">Código de barra</label>
                        <form action="" method="post">
                            <input type="number" name="codigoBarra" value="${produto.codigoBarra}">
                            </div>
                            <div class="observacao">
                                <label>Observação</label>
                                <textarea name="obsProduto" id="" cols="30" rows="2" value="${produto.obsProduto}" placeholder="Digite a observação do produto"></textarea>
                                <button type="submit" class="botaocadastrar">Cadastrar</button>
                            </div>
                        </form>
                        </section>
                    </div>
                    <br>
                    <div class="one"></div>
                    <div class="footer" style="background-color: black;">
                        <section>
                            <div class="container">
                                <h3>Copyrights © 2022 - Gabriel V. Silva, Todos os direitos reservados.</h3>
                            </div>
                        </section>
                    </div>
                    </body>
                    </html>
