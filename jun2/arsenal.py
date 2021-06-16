import sys
import json

def fja(a):
    return a['Golovi']

datoteka = sys.argv[1]

with open(datoteka, "r") as f:
    podaci = json.load(f)

nacija = sys.argv[2]

ciljni = []

for igrac in podaci:
    if igrac['Nacionalnost'] == nacija:
        ciljni.append(igrac)

sortirano = sorted(ciljni, key=fja)

print(sortirano)