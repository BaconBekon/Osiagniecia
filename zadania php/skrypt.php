<html>
<head>
     <title>
    <?php
        $php = $_POST["h2"];
        echo $php ;
        ?>
    </title>
</head>

<body>

<?php
//zadanie 1

$tytul = $_POST["tytul"];
echo "<h1>".$tytul."</h1>";


//zadanie 2

$php = $_POST["h2"];
echo "<h2>".$php."</h2>";

//zadanie 3

$a = $_POST["wartosc_a"]; 
$b = $_POST["wartosc_b"]; 
$c = $_POST["wartosc_c"]; 

echo $a." to liczba pierwsza <br> ";
echo "Liczba PI to: ".$b."<br>" ;
echo $c." to język skryptowy <br><br>";


//zadanie 4

echo "Wartość x wynosi: $_POST[wartosc_x]<br>"; 
echo "Wartość Y wynosi: $_POST[wartosc_y]<br>"; 
echo "Dodawanie: $_POST[wartosc_x] + $_POST[wartosc_y]<br>";
echo "Odejmowanie: $_POST[wartosc_x] - $_POST[wartosc_y]<br>";
echo "Mnożenie: $_POST[wartosc_x] * $_POST[wartosc_y]<br>";
echo "Dzielenie: $_POST[wartosc_x] / $_POST[wartosc_y]<br>";
echo "Modulo:$_POST[wartosc_x] % $_POST[wartosc_y]<br><br>";

//zadanie 5


$zmienna1 = $_POST["zmienna1"];
$zmienna2 = $_POST["zmienna2"];

$nowe_1 = $_POST["zmienna2"];
$nowe_2 =  $_POST["zmienna1"];

echo "Zmienna1: ".$nowe_1."<br>";
echo "Zmienna2: ".$nowe_2."<br><br>";


//zadanie 6

$a2 = $_POST["a2"];
$b2 = $_POST["b2"];

echo "Pole prostokąta = " . $a2 * $b2. "<br>";
echo "Pole prostokąta = " . (2 * $a2 + 2 * $b2). "<br><br>";

//zadanie 7

$x = $_POST["x2"];

if ($x > 100)
{
    echo "Jest większe niż 100";
}
else
{
    echo "Jest mniejsze niż 100<br><br>";
}


//zadanie 8

$x3 = $_POST["x3"];

if (strlen($x3 >= 3))
{
    echo "Jest trzycyfrowe<br><br>";
}
else
{
    echo "Nie jest<br><br>";
}

//zadanie 9

$x4 = $_POST["x4"];

if ($x4 > 0 AND $x4 < 1000)
{
    echo "Mieści sie w przedziałach<br><br>";
}
else
{
    echo "Nie mieści się w przedziałach<br><br>";
}

echo "";

//zadanie 10

$x5 = $_POST["x5"];

if ($x5%2 == 0)
{
    echo "Liczba jest parzysta";
}
else
{
    echo "Liczba jest nie parzysta<br><br>";
}

//zadanie 11

$wiek = $_POST["wiek"];

switch ($wiek)
{
    case ($wiek < 18):
        echo"Jeszcze nie możesz głosować Don't care	+<br>
		didn't ask + cry about it + stay mad +<br>
		get real + L + mald seethe cope harder +<br>
		ho mad + basic + skill issue + ratio :)<br><br>";
        break;


    case ($wiek >= 18 and $wiek < 21):
        echo"Możesz tylko głosować<br><br>";
        break;


    case ($wiek >= 21 and $wiek < 30):
        echo"Możesz głosować i kandydować do Sejmu<br><br>";
        break;


    case ($wiek >= 30 and $wiek < 35):
        echo"Możesz głosować i kandydować do Sejmu i senatu<br><br>";
        break;

    case ($wiek >= 35):
        echo"Możesz głosować i kandydować do Sejmu i senatu oraz na Prezydenta<br><br>";
        break;
}

//zadanie 12

$plus = $_POST["plus"];

switch ($plus)
{
	case ($plus == 1):
		echo"+<br><br>";
		break; 
		
	case ($plus == 2):
		echo"++<br><br>";
		break;
		
	case ($plus == 3):
		echo"+++<br><br>";
		break;
		
	case ($plus == 4):
		echo"++++<br><br>";
		break;
		
	case ($plus == 5):
		echo"+++++<br><br>";
		break;
		
	case ($plus == 6):
		echo"++++++<br><br>";
		break;
		
	case ($plus == 7):
		echo"+++++++<br><br>";
		break;
		
	case ($plus == 8):
		echo"++++++++<br><br>";
		break;
		
	case ($plus == 9):
		echo"+++++++++<br><br>";
		break;
}		

//zadanie 13

$miesiac = $_POST["miesiac"];

switch ($miesiac)
{
	case ($miesiac == 1 or $miesiac == 2 or $miesiac == 3):
		echo"Kwartał I <br><br>";
		break;
		
	case ($miesiac == 4 or $miesiac == 5 or $miesiac == 6):
		echo"Kwartał II <br><br>";
		break;
		
	case ($miesiac == 7 or $miesiac == 8 or $miesiac == 9):
		echo"Kwartał III <br><br>";
		break;
		
	case ($miesiac == 10 or $miesiac == 11 or $miesiac == 12):
		echo"Kwartał IV <br><br>";
		break;
		
	case ($miesiac < 1 or $miesiac > 12):
		echo"Błędny numer miesiąca <br><br>";
		break;
}

//zadanie 14

$a14 = $_POST["a14"];
$b14 = $_POST["b14"];
$c14 = $_POST["c14"];

if ($a14 > $b14 and $a14 > $c14){
		echo "Liczba a $a14 jest Największa<br><br>";
}
	elseif ($b14 > $a14 and $b14 > $c14){
		echo "Liczba b $b14 jest Największa<br><br>";
}
	elseif ($c14 > $a14 and $c14 > $b14){
		echo "Liczba c $c14 jest Największa<br><br>";
}

//zadanie 15
$od5do15 = $_POST["od5do15"];

for ($od5do15 = 5; ; $od5do15++) {
    if ($od5do15 > 15) {
        break;
    }
    echo "$od5do15<br>";
}
echo "<br>";

//zadanie 16
$od10do0 = $_POST["od10do0"];

for ($od10do0 = 10; $od10do0 > 0; $od10do0-=0.5)
{
    echo "$od10do0<br>";
}
	echo "<br>";

//zadanie 17
$PHP = $_POST["PHP"];
$PHP = 1;
while ($PHP <= 10) {
	echo "PHP$PHP ";
	$PHP++;
}
	echo "<br><br>";

//zadanie 18
$text = $_POST["text"];
$element = 1;
while ($element <= 4) {
	echo "<li>$text nr $element<br>";
	$element++;
}
echo "<br>";

//zadanie 19
$nieparzyste = $_POST["nieparzyste"];
$suma = 0;
for ($nieparzyste = 0; $nieparzyste<21;$nieparzyste++)
{
    if ($nieparzyste%2!=0)
	{
		$suma+=$nieparzyste;
		continue;
	}
}
echo $suma;
	
echo "<br><br>";	
	
//zadanie 20
$petla = $_POST["petla"];
$petla = 1;
for ($petla = 1; ; $petla++)
{
    if ($petla > 8)
	{
        break;
    }
    echo "$petla-";
}
echo "9";

echo "<br><br>";

//zadanie 21
  $liczbasilni = $_POST['liczbasilni'];
$silnia = 1;
       for ($i=1; $i<=$liczbasilni; $i++) {
         $silnia *= $i;
       }
       echo ("$liczbasilni! = $silnia");
echo"<br><br>";

//zadanie 22
$ilosc_wierszy = 5;

$ilosc_wierszy = 5;
$ktory_wiersz = 0;
 
while($ktory_wiersz++ < $ilosc_wierszy){
 
	for($gwiazdka = 0; $gwiazdka < $ktory_wiersz; $gwiazdka++)
 
		echo "*";
 
	echo "<br>";
}
?>
</body>
</html>