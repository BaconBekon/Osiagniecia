<div>
<?php

$p = $_GET['p']

if(isset($_GET['p']; && $GET['p'] != ''){
	$p = $_GET['p'];
	include('podstrony/' .$p . '.php');
}else{
	echo "<h2>Witamy na naszej stronie</h2>";
}

//dodaj klienta.php

?>
</div>

<a href="index