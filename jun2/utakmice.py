import sys
import json
import re


datoteka = sys.argv[1]
with open(datoteka, "r") as f:
    podaci = json.load(f)

utakmice = []

pocetak_utakmice = input("Unesite pocetak intervala: ")
kraj_utakmice = input("Unesite kraj intervala: ")

sati_p, minuti_p = re.split(':', pocetak_utakmice)
sati_k, minuti_k = re.split(':', kraj_utakmice)

if int(minuti_p)> 59 or int(minuti_k) > 59 or int(sati_p) > 23 or int(sati_k) > 23:
    print("Pogresno uneto vreme!")
    exit(1)

#print("Zeljeni termin: ", sati_p,":",minuti_p, ", a zavrsava se u: ", sati_k,":",minuti_k)

for mec in podaci:
    vreme = str(mec['Vreme'])
    pocetak, kraj = re.split(':',vreme)
    #print("Utakmica pocinje u : ", pocetak,":",kraj)
    if(sati_p < pocetak and sati_k > pocetak) or (sati_p==pocetak and minuti_p < kraj) or(pocetak ==sati_k and kraj <= minuti_k):
        utakmice.append(mec)

    
print(utakmice)


    