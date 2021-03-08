import sys
import json

ime = input("Unesite ime: ")
prezime = input("Unesite prezime: ")
godine = int(input("Unesite godine: "))

junak = {"Ime":ime, "Prezime":prezime, "Godine":godine}

print(junak)
print(json.dumps(junak))

datoteka = open("datoteka.json", "w")
json.dump(junak, datoteka)
datoteka.close()

citamIz = open("datoteka.json", "r")
sadrzaj = json.load(citamIz)

print(sadrzaj['Ime'])
print(sadrzaj['Prezime'])
print(sadrzaj['Godine'])