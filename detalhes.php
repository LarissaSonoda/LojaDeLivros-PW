<!doctype html>

<html lang="pt-br">
<head>
<meta charset="utf-8">
<title>Half Blood Books</title>
	<link rel="sourtout icon" href="imagens/logo.ico"/>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
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
			text-align: justify;
		}
	.detalhes{
		margin-top:50px;
		margin-right: 8.33333333%;
	}
	.info{
		text-align: center;
		font-size: 18px;
	}
	
	</style>
	
	
	
</head>

<body>	
	
	<?php
	
	session_start();
	
	include 'conexao.php';	
	include 'navbar.php';


	if(!empty($_GET['cd'])){
	$cd_livro=$_GET['cd'];
	$consulta=$cn->query("select * from vw_livro where cd_livro='$cd_livro'");
	$exibe=$consulta->fetch(PDO::FETCH_ASSOC);
	}
	else{
		header("location:index.php");
	}
	?>
	
<div class="container-fluid">
	
	
	
	<div class="row detalhes">
		
		 <div class="col-sm-4 col-sm-offset-1">
			 
			 <h1 style="color: #000080;">Detalhes do Produto</h1>
			 
			 <img src="imagens/<?php echo $exibe['ds_capa'];?>" class="img-responsive" style="width:100%;">
			
		</div>
				
 		 <div class="col-sm-7"><h1 style="color: #000080;"><?php echo $exibe['nm_livro'];?></h1>
		
		<p><?php echo $exibe['ds_resumo_obra']; ?></p>
		
		<hr></hr>
		
		
		<p style="font-size: 28px;">Preço</p>
		<p style="font-size: 28px;">R$ <?php echo number_format($exibe['vl_preco'],2,',','.');?></p>

		<hr></hr>
		<div class="container-fluid">
			 <div class="row">
				<div class="col-sm-4 info">
					<span class="glyphicon glyphicon-barcode"></span>
					<p>ISBN</p>
					<b><P><?php echo $exibe['no_isbn']; ?></p></b>
				</div>
				<div class="col-sm-4 info">
					<span class="glyphicon glyphicon-duplicate"></span>
					<p> Número de páginas </p>
					<b><P><?php echo $exibe['no_pag']; ?> Páginas</p></b>
				</div>
				<div class="col-sm-4 info">
					<span class="glyphicon glyphicon-user"></span>
					<p> Autor</p>
					<b><p><?php echo $exibe['nm_autor']; ?></p></b>
				</div>
			 </div>
		</div>
		
		<hr>
		<?php if($exibe['qt_estoque']>=1){ ?>	 
			<button class="btn btn-lg btn-success"><span class="glyphicon glyphicon-shopping-cart"></span>  Comprar</button>
		<?php }else{ ?>
			<button class="btn btn-lg btn-secondary" style="font-size: 23px;">Esgotado</button>
		<?php } ?>
		</div>		
	

	
</div>
	<br><br>
	<?php
	
	include 'rodape.html';
	
	?>	
</body>
</html>