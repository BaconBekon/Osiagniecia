n=10
tablica = [[0 for i in range(n)] for j in range(n)]
for i in range(n):
	for j in range(n):
		if(i==j):
			tablica[i][j]=1
		else:
			tablica[i][j]=0


for i in range(n):
	for j in range(n):
		print(tablica[i][j]," ",end="")
	print()
print()
suma=0


for i in range(n):
	suma +=tablica[i][j]

print("suma = ", suma)

a=[[1 for i in  range (n)] for j in range(n)]
print("Macierz a ")
for i in range(n):
	for j in range(n):
		print(a[j][j],"",end="")
print()

b=[[2 for a in  range (n)] for i in range(n)]
print("Macierz b ")
for a in range(n):
	for i in range(n):
		print(a[i][i],"",end="")
print()
