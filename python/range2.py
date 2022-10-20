
print("a")
for x in range(0, 100):
	print(x,end=' ')
print("b")
for g in range(100, 200):
	print(g,end=' ')

print("c")
for z in range(100, 200, 5):
	print(z,end=' ')

print("d")
for c in range(50, 30, -3):
	print(c,end=' ')

print("zadanie 2")
print("a")
for l in range(3 , 24, -4 ):
	print(l, end=' ')
print("b")
for w in range(9 , 4 , -1):
	print(w, end=' ')
print("c")
for e in range(12 , -7, -3):
	print(e, end=' ')
	
print("zadanie 3 ")

for r in range(2 , 17):
	if r %3&5 != 0:
		print(r, end=' ')

for k in range(24, 9, -1):
	if k %4&7 != 0:
		print(k,end=' ')




a=1
while a < 82:
	print(a,end=' ')
	a *= 3

i=1
while i >-65:
	if i!=128:
		print(i, end=' ')
		i *= -2

p=19
while p >= 3:
	print(p, end=' ')
	p -= 4
else:
	print("STOP")


x=0
y=0
while x <= 10:
	print("x= ",x , "y= ", y)
	x += 1
	y = 3*x

a=0
b=0
while a<=100:	
	b+=a
	a+=2 
print("suma liczb nieparzystych =", p)

a=1
b=0
while a<=100:
	b+=a
	b+=2 
print("suma liczb parzystych =", p)
	
