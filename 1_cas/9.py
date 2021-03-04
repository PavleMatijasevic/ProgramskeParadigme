#Napisati program koji definiše praznu (bez tela) funkciju tri argumenta, kvadratnu funkciju, kao i funkciju translacije, 
# koja prosleđeni argument umanjuje za jedan. 
# Ilustrovati kompoziciju kvadratne funkcije i translacije. Funkciju kvadriranja definisati kao anonimnu funkciju

import sys
import math

def prazna_fja(x, y, z):
    pass

prazna_fja(3, 5, 6)
prazna_fja("Pavle", "Matijasevic", "PP")

def kvadratna_fja(x):
    y = x*x
    print(y)
    return y

kvadratna_fja(5)
kvadratna_fja(4)
# kvadratna_fja("Pavle") izbacuje gresku

def umanjiZaJedan(x):
    y = x - 1
    print(y)
    return y

umanjiZaJedan(5)
umanjiZaJedan(8)


# kompozicija
umanjiZaJedan(kvadratna_fja(5))
kvadratna_fja(umanjiZaJedan(5))