# Napisati program koji implementira igricu Ajnc sa jednim igračem.Igra se sa špilom od 52 karte.
# Na početku igrač unosi svoje ime nakon čega računar deli dve karte igraču i dve karte sebi.  U svakoj sledećoj
# iteraciji računar deli po jednu kartu igraču i sebi. Cilj igre je sakupiti karte koje u zbiru imaju 21 poen. 
# Karte sa brojevima nose onoliko bodova koliki je broj, dok žandar, dama, kralj nose 10 bodova.
# Karta As može da nosi 1 ili 10 bodova, u zavisnosti od toga kako igraču odgovara. 
# Igrač koji sakupi 21 je pobedio. Ukoliko igrač premaši 21 bod, pobednik je njegov protivnik. 

###########
# zandar dama i kralj nisu predstavljeni kako treba i ispis karta u ruci tokom igre nije kako treba, treba postaviti i izbacivanje duplikata(da se ne izvuku 3herc i 3 herc u istoj partiji)
###########

import sys
import random
import math


izvucenaKarta = int(random.randrange(1, 11))
znak = ['Herc', 'Tref', 'Karo', 'Pik']

# RADI
def odaberiZnak():
    pomocna = int(random.randrange(1,5))
    if pomocna == 1:
        return 'Herc'
    if pomocna == 2:
        return 'Tref'
    if pomocna == 3:
        return 'Pik'
    if pomocna == 4:
        return 'Karo'

def izvuciKartu():
    izvucenaKarta = int(random.randrange(1, 11))
    return izvucenaKarta

zbir = 0
print("------------ IGRA: Ajnc -----------")
ime = input("Unesite vase ime: ")
print("Zdravo ", ime, " :)")
print("Igra pocinje")
print("Vase karte su: ")
a = izvuciKartu()
b = izvuciKartu()
zbir = a + b
k1 = odaberiZnak()
k2 = odaberiZnak()

karte = [a, k1, b, k2]

print(a, k1,  b, k2)

while True:
    odluka = input("Izvlacis dalje ili ne?[D/N]: ")
    if(odluka == 'N'):
        print("Zavrsio si sa izvlacenjem, tvoj rezultat je ", zbir)
        break
    elif odluka == 'D':
        novaK = int(izvuciKartu())
        noviZ = odaberiZnak()
        karte.append(novaK)
        karte.append(noviZ)
        zbir += novaK
        print("Vase karte su: ",karte)
        if zbir > 21:
            print("Zao mi je, izgubio si! :(")
            print("Bilo je lepo igrati se sa tobom :)")
            break
        elif zbir == 21:
            print("Cestitam!! Pobedio si!")
            print("Bilo je lepo igrati se sa tobom! :)")
            break



