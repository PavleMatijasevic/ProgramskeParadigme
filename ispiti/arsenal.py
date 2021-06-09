import sys
import json

def fja_sortiranja(e):
    return e['Golovi']


datoteka = sys.argv[2]
with open(datoteka, "r") as f:
    podaci = json.load(f)
ciljanaNacija = sys.argv[1]

igraci = []

for igrac in podaci:
    if ciljanaNacija == igrac['Nacionalnost']:
        igraci.append(igrac)

igraci =  sorted(igraci,key=fja_sortiranja)

for it in igraci:
    print(it)
