<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="shortcut icon" href="img/Logo_oishii.png">
        <link href="css/StyleLogin.css" rel="stylesheet" type="text/css"/>
        <link href="css/reset.css" rel="stylesheet" type="text/css"/>
        <link href="css/grid.css" rel="stylesheet" type="text/css"/>
        <link href="css/normalize.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <img src="img/Logo_oishii.png.png" alt="logo do oishii" class="logodooishii">
        
        <form class="login" action="RealizarLogin" method="post">
            <div class="alert alert-primary text-center" role="alert">
                ${mensagem}
            </div>
            <h2>Login</h2>
            <div class="box-user">
                <input type="text" name="emailLogin" required>
                <label>Usuário</label>
            </div>
            <div class="box-user">
                <input type="password" name="senhaLogin" required>
                <label>Senha</label>
            </div>
            <div>
                <a href="cadastroUsuario.jsp" class="forget2">Cadastre-se</a>
            </div>
            <button type="submit" class="btn">Entrar</button>
        </form>
    </body>
</html>
