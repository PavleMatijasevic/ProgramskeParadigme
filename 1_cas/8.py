#Napisati program koji na standardni izlaz ispisuje vrednost 6!, log5 125 i pseudoslucajan broj iz opsega[0,1)

import sys
import math
import random

a = int(math.factorial(6))
print("6! = ", a)

b = math.log(125, 5)
print("log sa osnovom 5 od 125 = ", b)

c = float(random.random())
print("Psudo slucajan broj izmedju [0,1): ", c)