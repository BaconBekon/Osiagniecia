#Zad 1
f = open("imie.txt", "a") 

print("Podaj imię i nazwisko")

f.writelines(input())

f.close()


x = open("ulica.txt", "a") 

print("Podaj ulice i numer domu")

x.writelines(input())

x.close()

d = open("miejsce.txt", "a") 

print("Podaj miejsce zamieszkania")

d.writelines(input())

d.close()
