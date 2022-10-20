zadanie = ['Jakub', 'Bartosz', 'Max', 'Filip']
liczby = [100, 200, 300, 400, 500]
for i in range(len(zadanie)):
    if i < 1:
        print("Wyswietlane krotki:", zadanie)
imina = list(zadanie)
imina.sort()
imina2 = tuple(imina)

print("Wyswietlanie: " , imina2)

liczby1 = list(liczby)
print(sum(liczby1))

srednia = sum(liczby1)/len(liczby1)
print(srednia)
