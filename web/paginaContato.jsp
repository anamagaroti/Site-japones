<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="shortcut icon" href="img/Logo_oishii.png">
        <link href="css/StyleContato.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <a href="index.html">
    <img src="img/Logo_oishii.png.png" alt="Logo do oishi" class="logocontato">  
</a>

    <section >
        <h2>Contato</h2>
        <form action="https://api.staticforms.xyz/submit" method="post">
            <label>Nome</label>
            <input type="text" name="name" placeholder="Digite seu nome" autocomplete="off" required>
            <label>Email</label>
            <input type="email" name="email=" placeholder="Digite seu email" autocomplete="off" required>
            <label>Mensagem</label>
            <textarea name="message" cols="30" rows="10" placeholder="Digite sua mensagem" required></textarea>
            <button type="submit">Enviar</button>

            <input type="hidden" name="accessKey" value="24baa48e-bf62-4e3d-a705-fddafc789c51">
            <input type="hidden" name="redirectTo" value="http://127.0.0.1:5500/obrigado.html">
        </form>
    </section>
    </body>
</html>
