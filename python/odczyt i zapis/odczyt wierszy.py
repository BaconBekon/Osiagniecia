w_pliku = open('notatnik.txt', 'r',)
print(w_pliku.read())


w_pliku = open('notatnik.txt', 'r',)
print(w_pliku.read(20))
for line in w_pliku:
    print(w_pliku.readline())
