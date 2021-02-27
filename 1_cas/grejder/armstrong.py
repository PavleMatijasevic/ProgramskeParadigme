import sys

def numLen(a):
    brojac = 0
    while(a > 0):
        a = int(a/10)
        brojac = brojac + 1
    return brojac
    
    
def isArmstrong(n):
    a = numLen(n)
    b = 0
    original = n
    for i in range(a):
        b += int(pow(n%10, a))
        n = int(n / 10)
    if(b == original):
        return True;
    else:
        return False;

k = int(input())
print(isArmstrong(k))

# 153
# 1^3 + 5^3 + 3^3 = 1 + 125 +27
# true
