import sys

a = int(input())
niska = input()

print(type(a))
print(type(niska))
print("Ispisivanje vise stringova: ")
print("Unesite broj b:")
b = int(input())
print("Unesite broj c:")
c = int(input())

if(b > c):
    print(b, ">" , c)
elif(c > b):
    print(c , ">", b)
else:
    print(c, "=", b)
    
