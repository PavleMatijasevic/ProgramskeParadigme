import json
import sys

arg2 = sys.argv[1]

with open(arg2,"r") as f:
    podaci = json.load(f)

godine_uneto = float(input())
pozicija_uneto = int(input())

visina_konacno = -1

for igrac in podaci:
    if igrac['visina'] >= 200:
        pozicija = 5
    elif igrac['visina'] < 190:
        pozicija = 1
    else:
        pozicija = 3
    if pozicija == pozicija_uneto and godine_uneto >= igrac['godine'] and igrac['visina'] > visina_konacno:
        visina_konacno = igrac['visina']
    
print(visina_konacno)
        









