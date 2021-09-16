<?php
	$servidor = "Localhost";
	$usuario = "loja";
	$senha = "123456";
	$banco = "db_loja";
	
	$cn = new PDO("mysql:host=$servidor; dbname=$banco", $usuario, $senha);
?>