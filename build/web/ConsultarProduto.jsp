<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Produto</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

    </head>
    <body>
        <div style="display: flex; justify-content: center; margin-top: 10rem;">
            <div class="card" style="width: 18rem; margin-left: 15px; margin-bottom: 10px;">
                <div class="card-body">                              
                    <h2 class="card-title">${produto.nomeProduto}</h2>
                    <p class="card-text">R$${produto.vlrVenda}</p>
                    <p class="card-text">${produto.obsProduto}</p>
                    <a class="btn" style="background-color: #B22222; color: white;" 
                       href="ExcluirProduto?idProduto=${produto.idProduto}">Excluir produto</a>
                    <a class="btn" style="background-color: #B22222; color: white;" 
                       href="ListarProduto">Voltar</a>
                </div>
            </div>
        </div>
    </body>
</html>
