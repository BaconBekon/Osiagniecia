import random

ilosc_liczb = 5
suma = 0

print("Program losuje", ilosc, "liczb(y) całkowitych od 0 do 100")
print("a nastepnie znajduje najmniejsza z nich")
print("oraz oblicza wartosc srednia ze wszystich wylosowanych liczb.")

min = random.randint(0, 100)
print()

print("Wylosowano liczbę:", min)

max = min
suma += max

for i in range(ilosc_liczb -1):
    liczba = random.randit(0, 100)
    print(liczba)

    if max < liczba:
        max = liczba
    if max < min:
        min = liczba
    suma += liczba

print("Najwieksza liczba:" , max)
print("Najmniejsza: " , min )
print("Srednia:", suma/ilosc)






