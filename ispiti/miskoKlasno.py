import sys
import json

datoteka = sys.argv[1]

class Player:
    def __init__(self, dres, ime, prezime, visina, godine):
        self.dres = dres
        self.ime = ime
        self.prezime = prezime
        self.visina = visina
        self.godine = godine
    
    
godine_granica = float(input())
zeljena_pozicija = int(input())



def izrPoziciju(visina):
    if(visina >= 200):
        return 5
    elif(visina >= 190):
        return 3
    else:
        return 2

max_visina = 0

with open(datoteka, "r") as f:
    players = json.load(f)
    for player in players:
        dres = int(player['dres'])
        ime = player['ime']
        prezime = player['prezime']
        visina = player['visina']
        godine = int(player['godine'])
        pozicija = izrPoziciju(visina)

        #print(pozicija)
        #print(player['dres'], player['ime'], player['prezime'], player['visina'], player['godine'])
        #print(dres, ime, prezime, visina, godine)
        
        Player(dres, ime, prezime, visina, godine)
        if pozicija == zeljena_pozicija and godine_granica >= godine and max_visina<visina:
            max_visina = visina


if max_visina == 0:
    print("-1")
print(max_visina)






