import sys

with open("datoteka.txt", "r") as f:
    for linija in f:
        for karakter in linija:
            print(karakter)

# dodajem nisku u datoteku pa ispisujem celu datoteku na izlaz

niska = 'Water'

with open("datoteka.txt", "a+") as e:
    e.write(" niska")
    print(e.readlines())

