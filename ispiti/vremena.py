import sys
import json

datoteka = sys.argv[1]
with open(datoteka,"r") as f:
    podaci = json.load(f)

utakmice = []
pocetak = input()
kraj = input()



for utakmica in podaci:
    if pocetak < utakmica['Vreme']:
        utakmice.append(utakmica)

print(utakmice)