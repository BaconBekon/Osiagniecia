import random

ilosc_liczb = 5
suma = 0

print ("Program losuje", ilosc_liczb, "liczb(y) całkowitych(e) od 0 do 100,")
print ("a nastepnie znajduje najmniejsza z nich")
print ("oraz oblicza wartosc srednia ze wszystkich wylosowanych liczb")



min = random.randint(0, 100)
print()

print("Wylosowano: \n", min)


max = min

suma += max



for i in range(ilosc_liczb - 1):
    liczba = random.randint(0, 100)
    print(liczba)

    if max < liczba:
        max = liczba
    if liczba < min:
        min = liczba
    suma += liczba
print ("Największa: ", max)
print ("najmniejsza: ", min)
print ("Średnia: ", suma/ilosc_liczb)

for y in range(1,11):
     for x in range(1,11):
          print ("   |",x*y, end="|")
     print()
     print()

for i in range(65,91):
    litera = chr(i)
    print(litera, "", end = "")

print()

for i in range(90, 64, -1 ):
    litera = chr(i)
    print(litera, "", end ="")
print()






