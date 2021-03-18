import constraint
# Grncarstvo

"""

Solja   6min    75g     2e
Tanjir  3min   100g   1.5e

        20h   250kg maksZarada?
"""

problem = constraint.Problem()
problem.addVariable('s', range(201))
problem.addVariable('t', range(401))

def vremensko_ogranicenje(s, t):
    if s*6 + t*3 <= 1200:
        return True
def ogranicenje_materijala(s, t):
    if s*75 + t*100 <= 250000:
        return True

problem.addConstraint(vremensko_ogranicenje, ['s', 't'])
problem.addConstraint(ogranicenje_materijala, ['s', 't'])

resenja = problem.getSolutions()
solje = 0
tanjiri = 0
maks_dobit = 0

for resenje in resenja:
    if resenje['s'] * 2 + resenje['t'] * 1.5 >= maks_dobit:
        maks_dobit = resenje['s'] * 2 + resenje['t'] * 1.5 
        solje = resenje['s']
        tanjiri = resenje['t']

print("Maksimalna dobit je :{} evra, a to ce postici sa {} solja i {} tanjira".format(maks_dobit, solje, tanjiri))