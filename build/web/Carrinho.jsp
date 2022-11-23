<%@page import="model.Pedido"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carrinho</title>
        <link rel="shortcut icon" href="img/Logo_oishii.png">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    </head>
    <body>
        <div style="display: flex; justify-content: space-evenly; margin-bottom: 30px; margin-left: 23rem;">
            <h1 style="text-align: center; margin-right: 20px;">Carrinho</h1>
            <div style="margin-top: 13px;">
                <a href="ListarProduto" style="border-radius: 10px; padding: 10px; text-align: center; color: white; text-decoration: none; background-color: #B22222;"
                   border-radius: 5px; color: white; text-decoration: none;" 
                   >Voltar</a>
                <a href="ExcluirLista " style="border-radius: 10px; padding: 10px; text-align: center; color: white; text-decoration: none;
                   margin-left: 5px; text-align: center; background-color: #B22222;"
                   border-radius: 5px; color: white; text-decoration: none;" 
                   >Enviar pedidos</a>
            </div>
        </div>
        <div style=" margin-bottom: 20px; margin-left: 205px;">       
            <%
                List<Pedido> lista = (List<Pedido>) request.getAttribute("pedidos");
            %>
            <div class="container row row-cols-4 row-cols-md-4 col-10">
                <%
                    for (Pedido pedido : lista) {
                %>
                <div class="card" style="width: 18rem; margin-left: 15px; margin-bottom: 15px;">
                    <div class="card-body">
                        <p hidden><%=pedido.getProduto().getIdProduto()%></p>
                        <p><strong><%=pedido.getProduto().getNomeProduto()%></strong></p>
                        <p><%=pedido.getProduto().getObsProduto()%></p>
                        <p>R$<%=pedido.getProduto().getVlrVenda()%></p>   
                        <a href="ExcluirPedido?idPedido=<%=pedido.getIdVenda()%>" 
                           class="btn" style="background-color: #B22222; color: white;">Excluir</a>
                    </div>
                </div>
                <%
                    }
                %>
            </div>       
        </div>

    </body>
</html>
