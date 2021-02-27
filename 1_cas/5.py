import sys

try:
    n = int(input())
except ValueError:
    print("Neuspesno ucitavanje!")
    exit(1)
    
print("Uspesno prosao ucitavanje!")

# konkatenacija stringa
niska = "Ovo je pocetna niska"

print(niska)

niska += ", prvo dodavanje"

print(niska)

niska += ", drugo dodavanje"

print(niska)

# imutabilnost stringa

niska1 = "Pavle"
niska2 = "Matijasevic"
niska3 = "Pavle" 

if(niska1 == niska2):
    print("Niska1 i niska2 su jednake")
else:
    print("Niska1 i niska2 su razlicite") # ovo se ispisuje

if(niska1 == niska3):
    print("Niska1 i niska3 su jednake") # ovo se ispisuje
else:
    print("Niska1 i niska3 su razlicite")
    
if(niska2 == niska3):
    print("Niska2 i niska3 su jednake") # ovo se ispisuje
else:
    print("Niska2 i niska3 su razlicite")
    
