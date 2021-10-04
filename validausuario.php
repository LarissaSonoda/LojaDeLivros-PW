<?php
	include 'conexao.php';
	
	session_start();
	
	$Vemail = $_POST['email'];
	$Vsenha = $_POST['senha'];
	
	echo $Vemail.'<br>';
	echo $Vsenha.'<br>';
	
	$consulta = $cn->query("select cd_usuario, ds_email, nm_usuario, ds_senha, ds_status from tbl_usuario
	where ds_email= '$Vemail' and ds_senha='$Vsenha'");
	
	if($consulta->rowCount() == 1){
		$exibeUsuario = $consulta->fetch(PDO::FETCH_ASSOC);
		
		if($exibeUsuario['ds_status'] == 0){
			$_SESSION['ID'] = $exibeUsuario['cd_usuario'];
			$_SESSION['STATUS']=0;
			header('location: index.php');
		}
		else{
			$_SESSION['ID'] = $exibeUsuario['cd_usuario'];
			$_SESSION['STATUS']=1;
			header('location: index.php');
		}
	}
	else{ 
		header('location: erro.php');
	}
?>