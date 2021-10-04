 <! DOCTYPE HTML>
<html lang="pt-br"> <!-- indicando a linguagem que iremos usar no codigo html -->
<head>
	<title>Minha Loja</title>
	<meta charset="utf-8"> <!-- indicando o sistema de caractere utf-8 -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--
		o nosso site será responsivo, para isto precisaremos usar uma metatag
		que irá conter informações da viewport(area que o site aparece no browser)
		Na viewport informaremos que a largura sera = a largura da janela
	    do meu navegador (Browser), seja em um tablet ou celular.
	 -->
	 <!-- CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

	<!-- jQuery livraria -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

	<!-- JavaScript compilado-->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<style type="text/css">
		.navbar{
			margin-bottom: 0;
		}
	</style>
	
	<!--Fonte do logo-->
	<link href='https://fonts.googleapis.com/css?family=Caesar Dressing' rel='stylesheet'>
	<link href='https://fonts.googleapis.com/css?family=Bebas Neue' rel='stylesheet'>
	<style>
		body {
			font-family: 'Bebas Neue';font-size: 22px;
		}
	</style>
</head>
<body>
	<?php 
		session_start();
		
		include 'conexao.php';
		include 'navbar.php';
		include 'cabecalho.html';
		
		$consulta = $cn->query('select nm_livro,vl_preco,ds_capa, qt_estoque from vw_livro;');
	?> 
	
	<div class="container-fluid">
		<div class="row">
		<?php while($exibe = $consulta->fetch(PDO::FETCH_ASSOC)){		?>
			<div class="col-sm-3">
				
				<img src="imagens/<?php echo $exibe['ds_capa'];?>.jpg" class="img-responsive" style="width: 100%; height: 480px;">
				<div><h3><?php echo mb_strimwidth($exibe['nm_livro'],0,30,'...');?></h3></div>
				<div><h4>R$ <?php echo number_format($exibe['vl_preco'],2,',','.');?></h4></div>
				
				<div class="text-center" style="font-family: 'Bebas Neue'; margin-top: 5 px; margin-bottom: 5px;">
					<button class="btn btn-lg btn-block btn-warning">
						<span class="glyphicon glyphicon-info-sign"> Detalhes</span>
					</button>
				</div>
				
				<div class="text-center" style="font-family: 'Bebas Neue'; margin-top: 5 px; margin-bottom: 5px;">
				<?php if ($exibe['qt_estoque']>0){?>
					<button class="btn btn-lg btn-block btn-danger">
						<span class="glyphicon glyphicon-shopping-cart"> Comprar</span>
					</button>
				<?php } else{ ?>
					<button class="btn btn-lg btn-block btn-secondary">
						<span class="glyphicon glyphicon-remove-circle"> Indisponível</span>
					</button>
					<?php }?>
				</div>
			</div>
			
				<?php } ?>
		</div>
	</div>
	
	<?php include 'rodape.html'; ?>
</body>
</html>