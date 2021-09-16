 <! DOCTYPE HTML>
<html lang="pt-br"> <!-- indicando a linguagem que iremos usar no codigo html -->
<head>
	<title>Minha Loja - Teste</title>
	
</head>
<body>
	<?php
		include 'conexao.php';
		$consulta = $cn->query('select * from vw_livro');
		
		//TRANSFORMAR EM ARRAY
		while($exibe = $consulta->fetch(PDO::FETCH_ASSOC)){ 
		
		echo $exibe['nm_livro'].'<br>';
		echo $exibe['vl_preco'].'<br>';
		echo $exibe['ds_categoria'].'<br>';
		echo '<hr>';
		}
	?>
</body>
</html>