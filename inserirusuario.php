<?php

include "conexao.php";

$user = $_POST["txtnome"];
$email = $_POST["txtemail"];
$senha = $_POST["txtsenha"];
$ende = $_POST["txtendereco"];
$cidade = $_POST["txtcidade"];
$cep = $_POST["txtcep"];


$find = $cn->query("select * from tbl_usuario where ds_email = '$email';");
$show = $find->fetch(PDO::FETCH_ASSOC);

if($find->rowCount() >= 1)
{
	header("location:erro1.php");
}
else
{
	$insert = $cn->query("insert into tbl_usuario values (default, '$user', '$email', '$senha', 0, '$ende', '$cidade','$cep')");
	header("location:formusuario.php");
}
?>