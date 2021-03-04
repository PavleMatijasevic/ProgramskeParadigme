#Napisati program koji sa standardnog ulaza učitava listu celih brojeva, 
# a zatim na standardni izlaz ispisuje njenu dužinu, sumu njenih elemenata, 
# njen maksimalni element kao i broj pojavljivanja broja jedan u unetoj listi.

import sys
import math

lista = [2, 4, 6, 3, 7, 1, 5, 1, 4]

print(lista)

duzinaListe = int(len(lista))
print("Duzina liste: ", duzinaListe)

suma = 0
for i in lista:
    suma += i

print("Suma elemenata je: ", suma)

maksimum = max(lista)
minimum = min(lista)
print("Najveci element u listi: ", maksimum)
print("Najmanji element u listi: ", minimum)

brojPojavljivanjaKeca = 0
for i in lista:
    if(i == 1):
        brojPojavljivanjaKeca += 1
# moze i sa lista.count(1) valjda

print("Broj 1 se u listi pojavio ", brojPojavljivanjaKeca, " puta")