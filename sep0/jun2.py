
def gcd(a,b):
    for i in range(2,max(a,b)):
        if (a % i) == 0 and (b % i) == 0:
            return False
    return True













