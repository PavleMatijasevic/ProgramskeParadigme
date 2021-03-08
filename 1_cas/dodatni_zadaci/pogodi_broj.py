import sys
import math
import random

zamisljeniBroj = int(random.randrange(1, 100))

print("--------- IGRA : Pogodi broj! ---------")

ime = input("Unesite Vase ime: ")
print("Zdravo ", ime, " :)")
print("Zamislio sam neki broj od 1 do 100. Da li mozes da pogodis koji je to broj?")

while True:
    pokusaj = int(input("Unesi broj: "))
    if(pokusaj == zamisljeniBroj):
        print("BRAVO!! Pogodio si! Zamislio sam ",zamisljeniBroj,'. ', "Bilo je lepo igrati se sa tobom. :)" )
        break
    elif(pokusaj > zamisljeniBroj):
        print("Broj koji sam zamislio je MANJI od ", pokusaj)
    else:
        print("Broj koji sam zamislio je VECI od ", pokusaj)
