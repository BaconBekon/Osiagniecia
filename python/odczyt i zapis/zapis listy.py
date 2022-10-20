lista = ['tak', 'nie', 'może', 'cztery']

with open('krotkiitd.txt', 'w')as plik:
    for napis in lista:
        print(napis, file=plik)
