# Napisati program koji sa standardnog ulaza ucitava ceo broj n, a zatim na standardni izlaz ispisuje poruku o
# ostatku koji taj broj daje kada se podeli sa pet. Nakon toga,koristeci for i while petlju ispisati prvih n prirodnih brojeva.
import sys

print("Unesite ceo broj n: ")
n = int(input())

print("Kada se ceo broj ", n, " podeli sa brojem 5 dobije se ostatak: ", n%5);

print("For petljom ispisujemo prvih ", n, " brojeva: ")
for i in range(n):
    print(i)
    i+=1

j = 0
print("While petljom ispisujemo prvih ", n, " brojeva: ")
while(j < n):
    print(j)
    j += 1
    
print("Kraj zadatka")
