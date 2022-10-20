from math import*
a = float(input("podaj a = "))
b = float(input("podaj b = "))

w = a ** 3 + cos(b) * sqrt(a + b)

print("w = ", w)

a = float(input("podaj a = "))
b = float(input("podaj b = "))

w = fabs(a-b) + sin(a) * sqrt(b)

print("w = ", w)

a = float(input("podaj a = "))
b = float(input("podaj b = "))

w = sqrt((3 + sqrt(a*b))/fabs(b**2 - 20))

print("w = ", w)

a = float(input("podaj a = "))
b = float(input("podaj b = "))

w = sin(((a+b)**4)/sqrt(11)+sin(b))

print("w = ", w)

a = float(input("podaj a = "))
b = float(input("podaj b = "))

w = (cos(a +1)/fabs(sqrt(5)-b))**3

print("w = ", w)
