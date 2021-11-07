<link href='https://fonts.googleapis.com/css?family=Bebas Neue' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Caesar Dressing' rel='stylesheet'>
	<style>
		nav{
			font-family: 'Bebas-Neue';
		}
	</style>
<nav class="navbar navbar-inverse bg-dark">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#" style="font-family: 'Caesar Dressing';font-size: 22px; color: #FFD700;">Half Blood Books</a>
    </div>
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="font-family: 'Bebas Neue'; font-size: 22px;">
      <ul class="nav navbar-nav">
        <li class="active"><a href="index.php">Home <span class="sr-only">(current)</span></a></li>
        <li><a href="lanc.php">Lançamentos</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Categoria<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="categoria.php?cat=Romance">Romance</a></li>
            <li><a href="categoria.php?cat=Mistério">Mistério</a></li>
            <li><a href="categoria.php?cat=Ficção">Ficção</a></li>
            <li><a href="categoria.php?cat=Fantasia">Fantasia</a></li>
            <li><a href="categoria.php?cat=Terror">Terror</a></li>
          </ul>
        </li>
      </ul>
      <form class="navbar-form navbar-left" name="frmpesquisa" method="get" action="busca.php" role="search">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search" name="txtBuscar">
        </div>
        <button type="submit" class="btn btn-default">Pesquisar</button>
      </form>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">Contato</a></li>
		<?php if(empty($_SESSION['ID'])){?> <!-- se estiver vazio a sessão id-->
		<li class="formulario">
          <a href="formlogon.php"><span class="glyphicon glyphicon-user"></span> Logon</a>
		</li>
		<?php } else{ //se estiver vazio a sessão id
			
			if($_SESSION['STATUS']!=1){
			$consulta_usuario = $cn->query("select nm_usuario from tbl_usuario where cd_usuario = '$_SESSION[ID]'");
			$exibe_usuario = $consulta_usuario->fetch(PDO::FETCH_ASSOC);
		?>
		
		<li>
			<a href="#"><span class="glyphicon glyphicon-user"></span> <?php echo $exibe_usuario['nm_usuario'];?></a>
		</li>
		<li>
			<a href="sair.php"><span class="glyphicon glyphicon-log-out"></span> Sair</a>
		</li>
		<?php } else{ ?>
			<li><a href="adm.php"><button class="btn btn-sm btn-danger">Administrador</button></a></li>
			<li><a href="sair.php"><span class="glyphicon glyphicon-log-out"> Sair</a></li>
		<?php } } ?>
		
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>