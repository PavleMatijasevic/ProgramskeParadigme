import sys
import json
import math


try:
    f = open("studenti.json", "r")
    datoteka = f.readlines()
except IOError:
    sys.exit(1)

studenti = {}

for linija in datoteka: