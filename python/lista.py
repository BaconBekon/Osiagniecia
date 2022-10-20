T = [3, 4, 5, 5, 7, 8, 4, 2, 1]

s=0
for i in range(len(T)):
    s+= T[i]
print("suma = ", s)
s=1
for i in range(len(T)):
    if T[i] < 6:
        s *= T[i]
print("iloczyn = ", s)
s=0
for i in range(len(T)):
    if i % 5 !=0:
        s+=1
        print("liczba elementów =", s)
for i in range(3, 8, 2):
    T[i] = 0
print("Wyzerowana lista =", T)
print(len(9))
