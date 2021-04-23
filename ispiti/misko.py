import json
import sys

datoteka = sys.argv[1]
players = []
with open(datoteka, 'r') as f:
    players = (json.load(f))

#print(players)

godine = float(input())
pozicija = int(input())

visina = -1



for player in players:
    if(int(player['visina']) >= 200):
        player['pozicija'] = 5
    elif(int(player['visina']) >= 190):
        player['pozicija'] = 3
    else:
        player['pozicija'] = 1

for player in players:
    if(int(player['godine'] <= godine) and int(player['pozicija']) == pozicija and int(player['visina']) > visina):
        visina = int(player['visina'])
print(visina)

