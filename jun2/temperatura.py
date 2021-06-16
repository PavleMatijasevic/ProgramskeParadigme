import sys
import json

def fja(a):
    return a['temp']
def fja2(a):
    return a['vlaznost']

# vraca listu gradova cija je temp veca od zadate
# a vlaznost manja od zadate
def najtopliji(gradovi, min_temp, max_vlaznost):
    povratna_lista = []
    for grad in gradovi:
        if grad['temp'] > min_temp and grad['vlaznost'] <max_vlaznost:
            povratna_lista.append(grad)
    return povratna_lista



datoteka = sys.argv[1]
print(datoteka)

temperatura = float(input())
vlaznost = float(input())


with open(datoteka, "r") as f:
    podaci = json.load(f)

konacna_lista = najtopliji(podaci,temperatura,vlaznost)
konacna_lista = sorted(konacna_lista, key=fja, reverse=True)
for grad in konacna_lista:
    print(grad['grad'], grad['temp'], grad['vlaznost'])



# sort po temperaturi opadajuce, vlaznost opadajuce    