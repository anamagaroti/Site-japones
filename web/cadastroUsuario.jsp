<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Cadastro Usuário</title>
        <link rel="shortcut icon" href="img/Logo_oishii.png">
        <link rel="stylesheet" href="css/StyleLogin.css">
        <link rel="stylesheet" href="css/reset.css">
        <link rel="stylesheet" href="css/grid.css">
        <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="css/StyleCadastro.css">
    </head>
    <body>
        <img src="img/Logo_oishii.png.png" alt="logo do oishii" class="logodooishii">
        <form  style="margin-top: 15.5em;" class="login" action="CadastrarUsuario" method="post">
            <h2>Cadastre-se</h2>
            <input type="text" id="idusuario" name="idUsuario" readonly hidden/>
            <div class="box-user">
                <input type="text" name="nomePessoa" required>
                <label>Nome completo</label>
            </div>
            <div class="box-user">
                <input type="text" name="dataNascimentoPessoa" required>
                <label>Data de nascimento</label>
            </div>
            <div class="box-user">
                <input type="text" name="enderecoPessoa" required>
                <label>Endereço</label>
            </div>
            <div class="box-user">
                <input type="text" name="cidadePessoa" required>
                <label>Cidade</label>
            </div>
            <div class="box-user">
                <input type="text" name="estadoPessoa" required>
                <label>Estado</label>
            </div>
            <div class="box-user">
                <input type="text" name="cepPessoa" required>
                <label>CEP</label>
            </div>
            <div class="box-user">
                <input type="text" name="celularPessoa" required>
                <label>Celular</label>
            </div>
            <div class="box-user">
                <input type="email" name="emailPessoa" required>
                <label>Email</label>
            </div>
            <div class="box-user">
                <input type="password" name="senhaPessoa" required>
                <label>Senha</label>
            </div> 
            <button style="border: none;" class="btn" type="submit">Criar conta </button>
            <a href="login.jsp" class="btn">
                Voltar
            </a>               
        </form>
    </body>
</html>