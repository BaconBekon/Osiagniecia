osoba1 = {
    "name": "Robert",
    "surname": "Lewandowski",
    "sport": "piłka nożna",
    "gender": "meżczyzna",
    "team_sport":True,
    "age":32
}
osoba2 = {
    "name": "Kamil",
    "surname": "Stoch",
    "sport": "skoki narciarskie",
    "gender": "meżczyzna",
    "team_sport":False,
    "age":33
}
osoba3 = {
    "name": "Iga",
    "surname": "Świątek",
    "sport": "tenis",
    "gender": "kobieta",
    "team_sport":False,
    "age":19
}
osoba4 ={
    "name": "Leo",
    "surname": "Messi",
    "sport": "piłka nożna",
    "gender": "meżczyzna",
    "team_sport":True,
    "age":33
}
osoba5 ={
    "name": "Łukasz",
    "surname": "Kubot",
    "sport": "tenis",
    "gender": "meżczyzna",
    "team_sport":False,
    "age":38
}

#Zad2

sportowcy = [osoba1,osoba2,osoba3,osoba4,osoba5]
print("Wszyscy Sportowcy:\n", sportowcy)


print()

#Zad3

pilkarze=[]
for osoba in sportowcy:
    if osoba['sport'] == 'piłka nożna':
        pilkarze.append(osoba)
print('Piłkarze : ',pilkarze)
print()

#zad4

team = individual = 0
for osoba in sportowcy:
    if osoba['team_sport']:
        team += 1
    else:
        individual += 1

print('Liczba w danych sportach:')
print('indywidualne : ', individual)
print('zespołowe: ', team)

print()

#zad5

for osoba in sportowcy:
    if osoba['surname'] == 'Messi':
        osoba['country'] = 'Argentyna'  
    else:
        osoba.update({'country': 'Polska'})
