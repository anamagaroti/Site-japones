<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="shortcut icon" href="img/Logo_oishii.png">
        <link href="css/reset.css" rel="stylesheet" type="text/css"/>
        <link href="css/Style.css" rel="stylesheet" type="text/css"/>
        <link href="css/grid.css" rel="stylesheet" type="text/css"/>
        <link href="css/normalize.css" rel="stylesheet" type="text/css"/>
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

    <div>
    <nav class="grid-12 topo" >

    <ul>
        <li class="A"><a href="index.jsp" class="AA">início</a></li> 
        <li class="A"><a href="ListarProduto" class="AA">Cardápio</a></li>
        <li class="A"><a href="cadastrarProduto.jsp" class="AA">Cadastro Produto</a></li>
        <li class="A"><a href="Sobrenos.jsp" class="AA">Sobre</a></li>
        <li class="A"><a href="paginaContato.jsp" class="AA">Contato</a></li>
        <li class="A"><a href="RealizarLogout" class="AA">Sair</a></li>
    </ul>
  

    </nav>

    </div>
       
</header>
<!--Fim menu-->

<!--Benner do Site-->
    <section class="banner">
        <div class="container">           
            
            <a href="cardapio.jsp" target="_blank"> Fazer meu pedido agora</a>
        </div>
           
        <h1>O MELHOR<br> DA CULINÁRIA<br>JAPONESA!!!</h1>
        
    </section>
<!--Fim do banner-->  

<!--Combos-->
        <section class="combinados">
            <div class ="container">

                <ul class="combos">
                    <h2>Os melhores combos para sua noite</h2>

                    <li class="grid-1-3">
                        <h3>combinado oishii <br>especial</h3>
                        <img src="img/combo_especial.png" alt="combinado especial oishii" height="220px">
                        <p>44 unidades<br> 5 sashimis de salmão, 5 sashimis de peixe branco, 5 sashimis de polvo, 3 niguiris de salmão, 2 niguiris de camarão, 2 niguiris de peixe branco, 2 niguiris especiais, 2 joes de salmão, 2 joes cheese, 2 joes de ovas, 4 uramakis de salmão, 4 uramakis grelhado, 4 hossomakis de salmão e 2 acelgamakis.</p>
                        <h5>129,90</h5>
                        <h4><a href="ListarProduto">Fazer o pedido</a></h4>
                    </li>
                    
                    <li class="grid-1-3">
                        <h3>Combo <br> light</h3>
                        <img src="img/combo_light.png" alt="combo light" height="220px">
                        <p>40 unidades<br> 15 sashimis variados e 25 sushis sem arroz <br><br><br><br><br><br><br><br></p>
                        <h5 class="espaçamentoh5">154,90</h5>
                        <h4><a href="ListarProduto">Fazer o pedido</a></h4>
                    </li>

                    <li class="grid-1-3">
                        <h3>combo <br> salmão especial</h3>
                        <img src="img/combo_salmão.png" alt="combo salmão" alt="combo salmão especial" height="220px">
                        <p>60 unidades <br> 15 sashimis de salmão, 4 niguiris de salmão, 3 niguiris skin, 4 joes de salmão, 4 uramakis de salmão, 4 uramakis grelhados, 4 joes cheese, 4 hossomakis de salmão, 4 acelgamakis, 4 acelgamakis cru e 5 hots filadelfia oishi. <br><br><br></p>
                        <h5 class="espaçamentoh55"> 144,90</h5>
                        <h4><a href="ListarProduto">Fazer o pedido</a></h4>
                    </li>
 

                </ul>


            </div>
        </section>

            <!--FinalCombos-->

            <!--combosfestivalmão-->
            <section class="combinados">
                <div class ="container">
    
                    <ul class="combos">
                        <h2>Combinados Festival de salmão</h2>
    
                        <li class="grid-1-3">
                            <h3>Festival de Salmão <br>Oishii</h3>
                            <img src="img/Festival_salmão _oishii.jpeg" alt="Festival salmão oishii" height="220px"/>
                            <p>44 unidades<br>ceviche, 10 sashimis de salmão e 5 sushis light. Cozinha: camarão apimentado e tepan especial.</p>
                            <h5>106,90</h5>
                            <h4><a href="ListarProduto" >Fazer o pedido</a></h4>
                        </li>
                        
                        <li class="grid-1-3">
                            <h3>Combo <br>Festival especial</h3>
                            <img src="img/Festival_oishii.jpeg" alt="Festival oishii" height="220px">
                            <p>1 tepan de salmão com shimeji e legumes, 2 rolinhos de queijo e 1 combo (1 temaki hot, 1 temaki de salmão e 8 hots filadélfia)</p>
                            <h5>72,90</h5>
                            <h4><a href="ListarProduto" >Fazer o pedido</a></h4>
                        </li>
    
                        <li class="grid-1-3">
                            <h3>combo <br> Festival de salmão </h3>
                            <img src="img/Festival_salmão.jpeg" alt="Festival Salmão" height="220px">
                            <p>1 tepan de salmão com shimeji e legumes, 2 rolinhos de queijo e 1 combo (1 temaki hot, 1 temaki de salmão e 8 hots filadélfia)</p>
                            <h5>58,90</h5>
                            <h4><a href="ListarProduto" >Fazer o pedido </a></h4>
                        </li>
     
    
                    </ul>
    
    
                </div>
            </section>
           
            <!--finalcombosfestivalsalmão-->

            <!--slide-->
            <section class="slide">
                <div class="container">
                    <h3>acompanhamentos</h3>
                    <p>Que tal uma bebida para acompanhar?</p>
                    <div class="itens">
                        <img src="img/coca.lata-removebg-preview.png" alt="coca-cola" height="200px">
                        <img src="img/fanta-removebg-preview.png" alt="fantaLaranja" height="200px">
                        <img src="img/fanta.uva-removebg-preview.png" alt="fanta uva" height="200px">
                        <img src="img/Kuat.png" alt="Kaut" height="230px">
                        <img src="img/Guarana.png" alt="Guarana antartica" height="200px" >
                        <img src="img/sweeps-removebg-preview.png" alt="sweeps" height="200px" >                       
                        <img src="img/sprite (2).png" alt="Sprit" height="180px">
                        <img src="img/monster.png" alt="monster" height="200px">
                        <img src="img/heineguem-removebg-preview.png" alt="heineguem" height="200px">
                        <img src="img/Agua.png" alt="Agua mineral" height="200px" >
                        
                    </div>


                </div>                  
                 
            </section>
            <!--fianl slide-->

            <!--localização-->
            <section class="localização">
            <div class="container">

                <h2>Nossa localização</h2>
                <p>Confira onde estamos localizados</p>
                <iframe class="localização2" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3742.6676456968407!2d-50.54731804996897!3d-20.272613986346126!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94982f2d78c25d2d%3A0xd5d583b746bf045b!2sOishi%20Sushi%20Bar%20%26%20Restaurante!5e0!3m2!1spt-BR!2sbr!4v1667870048630!5m2!1spt-BR!2sbr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                
                

            </div>

            </section>
            <!--fimlocalização-->

            <!--Rodapé-->

            <div div class="one"></div>
            <section class="footer">
            <div class="container">
                <h3>Copyrights © 2022 - Gabriel V. Silva, Todos os direitos reservados.</h3>

            </div>

            </section>

            <!--FimRodapé-->

    </body>
</html>
