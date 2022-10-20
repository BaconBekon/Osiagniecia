Lista = [2,1]
ListaB = [3,7]

listaC = Lista + ListaB

print(listaC)

listaC.sort()

print(listaC)

listaC.reverse()

print(listaC)

listaC.append(11)
print(listaC)

rr=[]
for i in range(0, 100, 5):
    rr.append(i)

print(rr)

T = [1,2,3,4,5,6,7,8,9,10]

n=0
for i in range(len(T)):
    n+=T[i] 
    print("suma = ", n)

T = [1,2,3,4,5,6,7,8,9,10]

s=0
for i in range(len(T)):
    s+= T[i] / 10
print("średnia = ", s)
