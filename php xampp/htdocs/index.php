<!DOCTYPE html>
<html>
<head>
<title>strona z semantyką</title>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<div id="pojemnik">
	<header>
	<img src="car2.jpg" style="width:1280px; height:100px;">
	
	
	</header>
	<nav>
		<div id="klienci" class="nawigacja">
		<a href="index.php?p=dodaj_klienta">klienci</a>
		</div>
		<div class="nawigacja">
		<a href="index.php?p=dodaj_mechanika">mechanicy </a>
		</div>
		<div class="nawigacja">
		<a href="index.php?p=dodaj_samochod">samochody</a>
		</div>
		<div class="nawigacja">
		<a href="index.php?p=dodaj_naprawe">naprawy</a>
		</div>
		<div class="nawigacja">
		<a href="index.php?p=dodaj_czesc">części</a>
		</div>
		<div id="wylogowanie">
		wyloguj
		</div>
		
		<div style="clear:both;"></div>
		
		
	
	</nav>
	<section>
	
	<?php
	if (isset($_GET['p']) && $_GET['p'] != ''){	
	$page = $_GET['p'];
		include('podstrony/' . $page . '.php');
	} else{
		include('podstrony/glowna.php');
	}
	
	?>
	
	
	</section>
	<footer>
	placeholder
	
	</footer>
	

	



</div>
</body>
</html>