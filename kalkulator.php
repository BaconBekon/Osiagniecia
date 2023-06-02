<html>
<body>
<form action="kalkulator.php" method="POST" style="margin-left: 50%; margin-right:50%;">
	X <input type="number" name="x" size="10"/><br>
	<select name="wynik">
		<option value="+">+</option>
		<option value="-">-</option>
		<option value="*">*</option>
		<option value="/">/</option>
		<option value="%">%</option>
		<option value="x^">x^</option>
	</select><br>
	Y <input type="number" name="y" size="10"/><br>
	<input type="submit" value="Oblicz">
</form>
<?php
$x = $_REQUEST["x"];
$y = $_REQUEST["y"];
$wynik = $_POST["wynik"];

switch($wynik)
{
	case "+":
		echo $x+$y;
		break;
	case "-":
		echo $x-$y;
		break;
	case "*":
		echo $x*$y;
		break;
	case "/":
		echo $x/$y;
		break;
	case "%":
		echo $x%$y;
		break;
	case "x^":
		echo $x**$y;
		break;
}
?>
</body>
</html>