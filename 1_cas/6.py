import sys

#Ako je prvi dan u mesecu ponedeljak napisati funkciju radni_dan(dan)koja kao argument dobija dan u mesecu i vraća tačno ako je dan radni dan. Napisati program koji testira ovu funkciju, korisnik sa standardnog ulaza u petlji unosi deset dana i dobija o poruku o tome da li su uneti dani radni ili ne.

def radni_dan(dan):
    n = int(dan)
    if(n % 7 == 6 or n % 7 == 0):
        return False;
    else:
        return True;

for i in range(10):
    f = int(input())
    if(f > 31 or f < 1):
        print("Nije dobar dan u mesecu!")
        exit(1)
    if(radni_dan(f) == False):
        print("Neradan dan!")
    else:
        print("Radni dan!")
