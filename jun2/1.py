import sys
import json


class Player:
    def __init__(self, dres, ime, prezime, visina, godine):
        self.dres = dres
        self.ime = ime 
        self.prezime = prezime
        self.visina = visina
        self.godine = godine
        if self.visina >= 200:
            self.pozicija = 5
        elif self.visina <= 190:
            self.pozicija = 1
        else:
            self.pozicija = 3
        
    def get_visina(self):
        return self.visina
    def get_pozicija(self):
        return self.pozicija 
    def get_godine(self):
        return self.godine 
    

datoteka = sys.argv[1]

with open(datoteka, "r") as f:
    podaci = json.load(f)

unete_godine = float(input())
uneta_pozicija = float(input())

igraci = []

for igrac in podaci:
    igraci.append(Player(igrac['dres'], igrac['ime'], igrac['prezime'], igrac['visina'], igrac['godine']))

visina = -1

for igrac in igraci:
    if uneta_pozicija == igrac.get_pozicija() and unete_godine >= igrac.get_godine() and visina < igrac.get_visina():
        visina = igrac.get_visina()

print(visina)

