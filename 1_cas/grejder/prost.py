import sys

def isPrime(n):
    i = 1
    brojac = 0
    while(i <= n):
        if(brojac > 2):
            return False;
        if(n % i == 0):
            brojac += 1
        i += 1
    if(brojac == 2):
        return True;
    else:
        return False;
    
broj = int(input())

print(isPrime(broj))
