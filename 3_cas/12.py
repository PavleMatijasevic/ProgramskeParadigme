import constraint

#Komsija preprodavac racunara

"""
Racunari    360dcm  200e    400e    dobit po jednom 200e
Stampaci    240dcm   60e    140e    dobit po jednom  80e
          30000dcm 14k e
          min 30 racunara i bar 50% vise racunara od stampaca

"""

problem = constraint.Problem()

problem.addVariable('r', range(30, 71))
problem.addVariable('s', range(125)) # da li moze odmah da se kaze range(36) jer mora bar duplo da ih ima manje od maks racunara?

def prostorno_ogranicenje(r, s):
    if r*360 + s*240 <= 30000:
        return True
def nabavna_cena(r, s):
    if r*200 + s*60:
        return True
def kolicinsko_ogranicenje1(r):
    if r >= 30:
        return True
def kolicinsko_ogranicenje2(r, s):
    if s*2<=r:
        return True

problem.addConstraint(prostorno_ogranicenje,['r', 's'])
problem.addConstraint(nabavna_cena, ['r', 's'])
problem.addConstraint(kolicinsko_ogranicenje1,['r'])
problem.addConstraint(kolicinsko_ogranicenje2, ['r', 's'])

resenja = problem.getSolutions()

racunari = 0
stampaci = 0
maks_dobit = 0

for resenje in resenja:
    if resenje['r']*200 + resenje['s']*80 >= maks_dobit:
        maks_dobit = resenje['r']*200 + resenje['s']*80
        racunari = resenje['r']
        stampaci = resenje['s'] 

print("Maksimalna dobit je:{} evra, a to se postize tako sto proda {} racunara i {} stampaca".format(maks_dobit,racunari, stampaci))