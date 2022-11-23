<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de produto</title>
        <link rel="shortcut icon" href="img/Logo_oishii.png">
        <link href="css/styleProduto.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div>
            <h1>Cadastrar produto</h1>
            <div>
                <form class="row g-3" action="CadastrarProduto" method="post">
                    <input type="text" name="idProduto" value="${produto.idProduto > 0 ? produto.idProduto : ""}" hidden>            
                    <div style="display: flex; justify-content: center;">
                        <div>
                            <div class="col">
                                <label for="nome">Nome</label>
                                <input id="nome" type="text" name="nomeProduto" value="${produto.nomeProduto}">
                            </div>
                            <div class="col">
                                <label for="valor">Valor</label>
                                <input id="valor" type="text" name="vlrVenda" value="${produto.valorProduto}">
                            </div>
                            <div class="col">
                                <label for="codigo">Código de barra</label>
                                <input id="codigo" type="number" name="codigoBarra" value="${produto.codigoBarra}">
                            </div>
                            <div class="col">
                                <label for="obs">Observação sobre o produto</label>
                                <textarea id="obs" name="obsProduto" rows="5" cols="10">${produto.obsProduto}</textarea>
                            </div>

                            <div class="col">
                                <button type="submit">Cadastrar</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>