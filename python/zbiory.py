zbior1 = set([1,2,3,4.5,5.5])
zbior2 = set([1,3,6.5,7.5,8.5])

print("zbiory:\n",zbior1,"\n",zbior2)

zbior1.update([7,8])

print("zbior 1 po update:\n",zbior1)

suma1 = zbior1.union(zbior2)
suma2 = zbior1|zbior2

print("suma zbiorow:\n",suma1,"\n",suma2)

roz1 = zbior1.difference(zbior2)
roz2 = zbior1 - zbior2

print("roznice zbiorow:\n",roz1,"\n",roz2)

iloczyn = zbior1.intersection(zbior2)

print("iloczyn zbiorow:\n",iloczyn)

dif = zbior1.symmetric_difference(zbior2)

print("roznica symetryczna zbiorow:\n",dif)

wszystko = len(zbior1)+len(zbior2)

print("ilosc elementow w zbiorach:\n",wszystko)

