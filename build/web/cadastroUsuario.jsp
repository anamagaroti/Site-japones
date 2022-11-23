<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro Usuário</title>
        <link rel="shortcut icon" href="img/Logo_oishii.png">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    </head>
    <body>
            <h1 style="text-align: center;">Cadastro do Usuário</h1>
            <br>
            <form class="row g-3" action="CadastrarUsuario" method="post">
                <input type="text" name="idUsuario" hidden>             
                <div style="display: flex; justify-content: center;">
                   
                    <div>
                        <div class="col">
                            <label for="nome">Nome completo</label>
                            <input id="nome" type="text" name="nomePessoa">
                        </div>
                        <div class="col">
                            <label for="nascimento">Data de nascimento</label>
                            <input id="nascimento" type="date" name="dataNascimentoPessoa">
                        </div>
                        <div class="col">
                            <label for="endereco">Endereço</label>
                            <input id="endereco" type="text" name="enderecoPessoa">
                        </div>
                        <div class="col">
                            <label for="cidade">Cidade</label>
                            <input id="cidade" type="text" name="cidadePessoa">
                        </div>
                        <div class="col">
                            <label for="estado">Estado</label>
                            <input id="estado" type="text" name="estadoPessoa">        
                        </div>
                    </div>
                    <div>
                        <div class="col">
                            <label for="cep">CEP</label>
                            <input id="cep" type="text" name="cepPessoa">
                        </div>
                        <div class="col">
                            <label for="celular">Celular</label>
                            <input id="celular" type="text" name="celularPessoa">
                        </div>
                        <div class="col">
                            <label for="email">Email</label>
                            <input id="email" type="email" name="emailPessoa">
                        </div>
                        <div class="col">
                            <label for="senha">Senha</label>
                            <input id="senha" type="password" name="senhaPessoa">
                        </div>
                        <div class="col">
                            <button type="submit">Cadastrar</button>
                        </div>
                    </div>
                </div>
            </form>
    </body>
</html>
