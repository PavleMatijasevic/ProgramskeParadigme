import json
import sys

def najtopliji(gradovi, min_temperatura, max_vlaznost):
    zadovoljivi = []
    for grad in gradovi:
        if float(grad['temp']) > min_temperatura and float(grad['vlaznost']) < max_vlaznost:
            zadovoljivi.append(grad)
    return zadovoljivi

datoteka = sys.argv[1]

gradovi = []

with open(datoteka, 'r') as f:
    gradovi = (json.load(f))

min_temperatura = float(input())
max_vlaznost = float(input())


zadovoljavaju = najtopliji(gradovi, min_temperatura, max_vlaznost)

for grad in sorted(zadovoljavaju):
    #sortirano = grad.
    print(grad['grad'], grad['temp'], grad['vlaznost'])

