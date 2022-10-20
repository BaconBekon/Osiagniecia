def oblicz(n):
    if n==1:
        return 2
    return oblicz(n-1) + 3


print(oblicz(5))
print()


def oblicz(n):
    if n==1:
        return 4
    return oblicz (n-1) * 2


print(oblicz(5))
print()


def oblicz(n):
    if n==1:
        return 0.2
    return oblicz (n-1) * 3


print(oblicz(5))
print()


def oblicz(n):
    if n==1:
        return -10
    return oblicz (n-1) / 2


print(oblicz(5))
print()
