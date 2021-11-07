<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Administrador</title>
	
<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="sourtout icon" href="imagens/logo.ico"/>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<!--Fonte do logo-->
	<link href='https://fonts.googleapis.com/css?family=Caesar Dressing' rel='stylesheet'>
	<link href='https://fonts.googleapis.com/css?family=Bebas Neue' rel='stylesheet'>

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
	
	session_start();
	
	//se a sessão id estiver vazia ou se o status for diferente de adm(1) então execute
	if(empty($_SESSION['STATUS']) || $_SESSION['STATUS'] != 1){
		header('location:index.php');
	}
	
	include 'conexao.php';	
	include 'navbar.php';
	include 'cabecalho.html';
	
	?>
	
	
	<div class="container-fluid">
	
		<div class="row">
		
			<div class="col-sm-4 col-sm-offset-4 text-center">
				
				<h2>Área administrativa</h2>
				
				
				<a href="formProduto.php">			
				<button type="submit" class="btn btn-block btn-lg btn-primary">
					
					Incluir Produto
					
				</button>
					
				</a>
				
				
				<button type="submit" class="btn btn-block btn-lg btn-warning">
					
					Alterar / Excluir Produto
					
				</button>
				
				
				<button type="submit" class="btn btn-block btn-lg btn-success">
					
					Vendas
					
				</button>
				
				
				
				<button type="submit" class="btn btn-block btn-lg btn-danger">
					
					Sair da Área administrativa
					
				</button>
				
				
				
				
			</div>
		</div>
	</div>
	
	<?php include 'rodape.html' ?>
	
	
	
	
</body>
</html>