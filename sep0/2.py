
import sys
import json

arg1 = sys.argv[1]
arg2 = sys.argv[2]

players = []

def fja_sort(e):
    return e['Golovi']

with open(arg2,"r") as f:
    podaci = json.load(f)

for player in podaci:
    if arg1 == player['Nacionalnost']:
        players.append(player)

players_sort = []
players_sort = sorted(players,key=fja_sort)

for it in players_sort:
    print(it)













