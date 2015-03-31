<?php
        include("includes/conexao.php");
        if(isset($_POST['enviar'])){
            $nome=$_POST['inputNome'];
            $email=$_POST['inputEmail'];
                    
            $consulta=mysql_query("Select * from "
                            . " users where "
                            . "nome='$nome' "
                            . "and email='$email'");
            
            
            $resultado=  mysql_fetch_array($consulta);
            if($resultado){
                header
                ('Location:administrativo/admin.php');
                
            } else {
                echo 'Acesso negado';
            }
        }
        ?>
<!DOCTYPE html>
<html lang="pt-br">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="img/Logo1.png">



	<title>Cadê Água</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="style.css" rel="stylesheet">
	

	<link href="cover.css" rel="stylesheet">

	<script src="js/ie-emulation-modes-warning.js"></script>
	<link href='http://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>

</head>

<body>

	<div class="site-wrapper">

		<div class="site-wrapper-inner">

			<div class="cover-container">

				<div class="masthead clearfix">
					<div class="inner">
						<h3 class="masthead-brand">Cadê Água</h3>
						<nav>
							<ul class="nav masthead-nav">
								<li><a href="index.php">Home</a>
								</li>
								<li><a href="#">Sobre</a>
								</li>
								<li><a href="#">Contato</a>
								</li>
								<li ><a href="cadastro.php">Cadastre-se</a>
								</li>
								<li class="active"><a href="login.php">Login</a>
								</li>
							</ul>
						</nav>
					</div>
				</div>

				<div class="inner cover">
					<form class="form-cadastro" method="post">
          
        <h2 class="form-cadastro-titulo">Login</h2>
          
        <label for="inputNome" class="sr-only">Nome:</label>
        <input type="text" id="inputNome" class="form-control"placeholder="Nome..."required autofocus name="inputNome">
          
        <label for="inputEmail" class="sr-only">Email: </label>
        <input type="email" id="inputEmail" class="form-control" placeholder="Email..." required autofocus name="inputEmail">
          
        
          
          
        <button class="btn btn-lg btn-primary btn-block" id="enviar" name="enviar" type="submit">Logar</button>
      </form>

					</p>
				</div>

				<div class="mastfoot">
					<div class="inner">
						<p>Grupo FIAP - <a href="http://getbootstrap.com">Cadê Água</a>, by <a href="https://twitter.com/mdo">@ForAll</a>.</p>
					</div>
				</div>

			</div>

		</div>

	</div>

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="../../dist/js/bootstrap.min.js"></script>
	<script src="../../assets/js/docs.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>

</html>