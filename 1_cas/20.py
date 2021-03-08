# Sa standardnog ulaza se unose reči do reči quit. Napisati program koji ispisuje unete reči eliminišući duplikate.

import sys


lista = []

while True:
    rec = input("Unesite rec: ")
    if(rec == "quit"):
        break
    else:
        lista.append(rec)

print(lista) # sadrzi duplikate
skup = set(lista)
print(skup)  # ne sadrzi duplikate