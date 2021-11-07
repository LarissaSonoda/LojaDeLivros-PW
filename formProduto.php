<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Cadastro de Produto</title>
	
<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="sourtout icon" href="imagens/logo.ico"/>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
<script src="jquery.mask.js"></script>

<!--Fonte do logo-->
	<link href='https://fonts.googleapis.com/css?family=Caesar Dressing' rel='stylesheet'>
	<link href='https://fonts.googleapis.com/css?family=Bebas Neue' rel='stylesheet'>
<script>
	
	
	
$(document).ready(function(){
	
$('#preco').mask('000.000.000.000.000,00', {reverse: true});
$("#isbn").mask('000-00-000-0000-0');
	
});
	
</script>
	
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

	include 'conexao.php';	
	include 'navbar.php';
	
	
	//se a sessão id estiver vazia ou se o status for diferente de adm(1) então execute
	if(empty($_SESSION['STATUS']) || $_SESSION['STATUS'] != 1){
		header('location:index.php');
	}
	
	$consultaCategoria = $cn -> query("select * from tbl_categoria");
	$consultaAutor = $cn -> query("select * from tbl_autor");
	?>
	
	
	<div class="container-fluid">
	
		<div class="row">
		
			<div class="col-sm-4 col-sm-offset-4">
				
				<h2>Inclusão de Livros</h2>
				
				<form method="post" action="insprod.php" name="incluiProd" enctype="multipart/form-data">
				
					<div class="form-group">
				
						<label for="txtisbn">ISBN</label>
						<input name="txtisbn" type="text" class="form-control" required id="txtisbn">
					</div>
					
					<div class="form-group">					
					
					<label for="sltcat">Categoria</label>
					
					<select class="form-control" name="sltcat">
					  <option value="">Selecione</option>
					  <?php while($listaCat = $consultaCategoria->fetch(PDO::FETCH_ASSOC)) { ?>
					  <option value="<?PHP echo $listaCat['cd_categoria']; ?>"><?php echo $listaCat['ds_categoria']; ?></option>	
					  <?php } ?>
					</select>
					
			
					</div>
					
					<div class="form-group">
				
						<label for="txtlivro">Nome do Livro</label>
						<input name="txtlivro" type="text" class="form-control" required id="txtlivro">
					</div>
				
				    <div class="form-group">
					<label for="sltautor">Autor</label>
					
					<select class="form-control" name="sltautor">
					  <option value="">Selecione</option>
					  <?php while($listaAutor = $consultaAutor->fetch(PDO::FETCH_ASSOC)) { ?>
					  <option value="<?PHP echo $listaAutor['cd_autor']; ?>"><?php echo $listaAutor['nm_autor']; ?></option>	
					  <?php } ?>
					</select>
					
					</div>					
					
					<div class="form-group">
				
					<label for="txtpag">Número de páginas</label>
					
					<input type="number" class="form-control" name="txtpag" required id="txtpag">

					</div>
					
					
					<div class="form-group">
				
					<label for="txtpreco">Preço</label>
					
					<input type="text" class="form-control"  name="txtpreco"  required id="txtpreco">

					</div>
					
					
					<div class="form-group">
				
					<label for="txtqtde">Quantidade em Estoque</label>
					
					<input type="number" class="form-control" name="txtqtde" required id="txtqtde">

					</div>
					
					
					<div class="form-group">
				
					<label for="txtresumo">Resumo da obra</label>
					
						<textarea rows="5" class="form-control" name="txtresumo"></textarea>
						

					</div>					
					
					
					<div class="form-group">
				
					<label for="txtfoto1">Foto Principal</label>
					
					<input type="file" accept="image/*" class="form-control" name="txtfoto1" required id="txtfoto1">

					</div>
					
					<div class="form-group">
				
					<label for="sltlanc">Lançamento?</label>
					
					<select class="form-control" name="sltlanc">
					  <option value="">Selecione</option>
					  <option value="S">Sim</option>
					  <option value="N">Não</option>					  
					</select>
						

					</div>
					
							
				<button type="submit" class="btn btn-lg btn-default">
					
					<span class="glyphicon glyphicon-pencil"> Cadastrar </span>
					
				</button>
				
				</form>
				
			</div>
		</div>
	</div>
	
	<?php include 'rodape.html' ?>
	
	
	
	
</body>
</html>