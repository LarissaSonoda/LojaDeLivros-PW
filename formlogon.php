<! DOCTYPE HTML>
<html lang="pt-br"> 
<head>
<title>Minha Loja</title>
<meta charset="utf-8"> 

<meta name="viewport" content="width=device-width, initial-scale=1">
	
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
<link href='https://fonts.googleapis.com/css?family=Bebas Neue' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Caesar Dressing' rel='stylesheet'>
	
<style>

.navbar{
	margin-bottom: 0;
}	

		body {
			font-family: 'Bebas Neue';font-size: 22px;
		}
</style>
</head>

<body>
<?php
	
	include 'conexao.php';	
	include 'navbar.php';
	
	?>
	
	
	<div class="container-fluid">
	
		<div class="row">
		
			<div class="col-sm-4 col-sm-offset-4">
				
				<h2>Logon de Usuário</h2>
				<form name="frmusuario" method="post" action="validausuario.php">
					<div class="form-group">
				
						<label for="email">Email</label>
						<input name="email" type="email" class="form-control" required id="email">
					</div>
				
				<div class="form-group">
				
						<label for="senha">Senha</label>
						<input name="senha" type="password" class="form-control" required id="senha">
				</div>
				
							
				<button type="submit" class="btn btn-lg btn-default">
					
					<span class="glyphicon glyphicon-ok"> Entrar</span>
					
				</button>
				<br>
				
				<button type="submit" class="btn btn-lg btn-link">
					<a href="formusuario.php">
					Ainda não sou cadastrado
					</a>
				</button>
				
				</form>
			</div>
		</div>
	</div>
	<br><br>
	<?php include 'rodape.html' ?>
	
</body>
</html> 