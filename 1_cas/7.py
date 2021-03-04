#Napisati program koji ilustruje osnovne sistemske funkcije i module programskog jezika
# Python tako što koristi funkcije faktorijel, logaritam (math), generise pseudoslucajne
#  brojeve(modul random), ispisuje argumente komandne linije na izlaz (modul sys), 
# poziva sistemski pozivlistanja tekuceg direktorijuma (modul os),
#  ispisuje broj sekundi od 1.1.1970. godine , finalno unosi string sa ulaza za koji
#  proverava (korišćenjem regularnih izraza) da li predstavlja zapis celog broja.

import sys
import math
import random

try:
    a = int(input("Uneti jedan broj: "))
except ValueError:
    sys.exit("Greska pri unosu broja a")

print("Faktorijel broja " , a,  " je: ")
faktorijel = int(math.factorial(a))
print(faktorijel)
print("Logaritam broja ", a, " je :")
logaritam = int(math.log10(a))
print(logaritam)

print(a," pseudo slucajnih brojeva izmedju 0 i 1: ")
for i in range(a):
    psb = random.random()
    print(psb)

print(a, " celih pseudo slucajnih brojeva izmedju 0 i 10: ")
for i in range(a):
    cpsb = int(random.randrange(10))
    print(cpsb)