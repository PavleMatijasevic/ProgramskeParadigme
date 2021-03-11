# Prolazi 100% na grejderu
#Napisati program koji za uneti broj n ispisuje sve proste brojeve od 2, n, koristeci Eratostenovo sito.
#Eratostenovo sito (takođe Eratostenovo rešeto) je algoritam koji pronalazi sve proste brojeve u rasponu od 1 do N. Osmislio ga je starogrčki naučnik i upravnik Aleksandrijske biblioteke Eratosten.
#Algoritam radi na nizu brojeva od 1 do N. Na početku, iz niza uklanja broj jedan, jer on po definiciji nije prost. Nakon toga, algoritam uzima sljedeći broj u nizu (broj 2), označava ga da je prost i iz niza uklanja sve njegove sadržioce (tj. brojeve djeljive sa 2), jer sigurno nisu prosti. Zatim se ponovo uzima sljedeći broj koji nije izbačen (broj 3) i uklanjaju se svi njegovi sadržioci. Obzirom da je broj 4 uklonjen iz niza, jer je djeljiv sa 2, algoritam će uzeti broj 5. Ovaj postupak će se ponavljati i na kraju će u nizu ostati samo prosti brojevi.
#Kada implementiramo Eratostenovo sito, dovoljno je obraditi brojeve koji su manji ili jednaki √N. Dakle, ako tražimo proste brojeve od 1 do 100, dovoljno je da iz niza izbacimo sadržioce brojeva koji su manji ili jednaki 10.

import sys
import math

try:
    n = int(input())
except ValueError:
    sys.exit()
"""
na pocetku je -> 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 .... 100
izbacim 1 ->       2 3 4 5 6 7 8 9 10 11 12 13 14 15 .... 100

uzmem 2 kazem da je prost i izbacim njegove sadrzaoce
                   2 3 5 7 9 11 13 15 ... 99

uzmem 3 i kazem da je prost i izbacim njegove sadrzaoce        
                   2 3 5 7 11 13 ... 97
uzmem 5 i kazem da je prost i izbacim sve njegove sadrzaoce
                    isto


"""
def sadrzalac(a, b):
    if(a % b == 0):
        return True
    else:
        return False

niz_konacno = []
if n < 0:
    sys.exit()

koren_n = int(math.sqrt(n))
tmp = []

for i in range(2, n+1):
    niz_konacno.append(i)

pokazivac = 2
pozicija_pokazivaca = 0

while pokazivac <= koren_n:
    j = 0
    i = 0
    while i <= pozicija_pokazivaca:
        tmp.append(niz_konacno[i])
        i += 1
    
    k = 0
    while k < (len(niz_konacno) - i):
        if sadrzalac(niz_konacno[i+k], niz_konacno[pozicija_pokazivaca])==False:
            tmp.append(niz_konacno[i+k])
        k += 1

    pozicija_pokazivaca += 1
    pokazivac = niz_konacno[pozicija_pokazivaca] 
    
    niz_konacno.clear()
    niz_konacno = tmp.copy()
    tmp.clear()

for i in niz_konacno:
   print(i, end=" ")