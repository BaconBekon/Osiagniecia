def suma (n):
    k = 5
    i = 0
    suma = 0

    for i in range(n):
        print(k,end="")
        suma+= k
        k*=3
    print("suma=", suma)

suma(4)
suma(10)
