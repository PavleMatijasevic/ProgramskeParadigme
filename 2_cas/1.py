# oop koncepti u python-u
# koriscenjem liste implementirati klasu stek

import sys


class Stek:

    def __init__(self):
        self.stek = []
    
    def push(self, a):
        self.stek.append(a)
    
    def pop(self):
        try:
            return self.stek.pop()
        except IndexError:
            print("Praza je stek!")
            return None
    def peek(self):
        try:
            return self.stek[-1]
        except IndexError:
            print("Prazan je stek!")
            return None
        
stek = Stek()
stek.push(3)
stek.push(5)
stek.push(8)
# stek : 3 5 8

print("Na vrhu steka se nalazi: ", stek.peek())
stek.pop()
print("A sada se na steku nalazi: ", stek.peek())
