#Napisati program za rad sa stekom.
#• Definisati stek koji sadrži elemente 9 8 7
#• Dodati na stek elemente 6 5
#• Skinuti sa steka element i ispisati ga na standardni izlaz

import sys 
import math


stek = [9, 8, 7]
print("Na pocetku je stek definisan kao: ", stek)

stek.append(6)
stek.append(5)

print("Sada je stek ovakav: ", stek)

vrhSteka = stek.pop()
print("Na vrhu steka se nalazi element: ", vrhSteka, " i kada njega skinemo stek je: ", stek)
